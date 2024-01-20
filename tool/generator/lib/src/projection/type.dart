// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import '../model/load_json.dart';

class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  const TypeTuple.fromNativeType(String nativeType, {String? attribute})
      : this(nativeType, nativeType, attribute: attribute);

  /// The type, as represented in the native function (e.g. `Uint64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint64()`)
  final String? attribute;
}

const Map<BaseType, TypeTuple> baseNativeMapping = {
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.int8Type: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.uint8Type: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.int16Type: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.uint16Type: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.int32Type: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.uint32Type: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.int64Type: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.uint64Type: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.intPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uintPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.voidType: TypeTuple('Void', 'void'),
};

const Map<String, TypeTuple> specialTypes = {
  'System.Guid': TypeTuple.fromNativeType('GUID'),
  'Windows.Win32.Foundation.BSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple.fromNativeType('Pointer<Utf8>'),
  'Windows.Win32.Foundation.PWSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
};

final callbackTypeMapping = loadMap('win32_callbacks.json');

class TypeProjection {
  TypeProjection(this.typeIdentifier);

  final TypeIdentifier typeIdentifier;

  TypeTuple? _projection;
  TypeTuple get projection => _projection ??= projectType();

  String get attribute => projection.attribute ?? '';
  String get nativeType => projection.nativeType;
  String get dartType => projection.dartType;

  bool get isArrayType => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isCharArray =>
      isArrayType && typeIdentifier.typeArg?.baseType == BaseType.charType;

  /// Is the resultant Dart type atomic?
  bool get isDartPrimitive =>
      ['void', 'bool', 'int', 'double'].contains(dartType) ||
      dartType.startsWith('Pointer') ||
      dartType.startsWith('Array');

  bool get isDelegate =>
      typeIdentifier.baseType == BaseType.classTypeModifier &&
      typeIdentifier.name.startsWith('Windows.Win32') &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isEnumType => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isReferenceType =>
      typeIdentifier.baseType == BaseType.referenceTypeModifier;

  bool get isSimpleArrayType =>
      typeIdentifier.baseType == BaseType.simpleArrayType;

  bool get isSpecialType => specialTypes.keys.contains(typeIdentifier.name);

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.valueTypeModifier;

  TypeTuple unwrapArrayType() {
    if (typeIdentifier.typeArg == null ||
        typeIdentifier.arrayDimensions == null) {
      throw StateError('Array information missing for $typeIdentifier.');
    }

    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Arrays of nested types have a private _ prefix. This is not a very
    // expensive operation.
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested ?? false
        ? typeArg.nativeType
        : typeArg.nativeType.stripLeadingUnderscores();

    final upperBound = typeIdentifier.arrayDimensions?.first;
    return TypeTuple.fromNativeType('Array<$typeArgNativeType>',
        attribute: '@Array($upperBound)');
  }

  TypeTuple unwrapCallbackType() {
    const voidCallbackTypes = <String, String>{
      'FARPROC': 'Pointer',
      'NEARPROC': 'Pointer',
      'PROC': 'Pointer',
    };

    final callbackType =
        typeIdentifier.name.lastComponent.stripLeadingUnderscores();
    if (voidCallbackTypes.keys.contains(callbackType)) {
      return TypeTuple.fromNativeType(voidCallbackTypes[callbackType]!);
    } else if (callbackTypeMapping.keys.contains(callbackType)) {
      return TypeTuple.fromNativeType(callbackTypeMapping[callbackType]!);
    }

    return TypeTuple.fromNativeType('Pointer<NativeFunction<$callbackType>>');
  }

  TypeTuple unwrapEnumType() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw StateError('Enum $typeIdentifier is missing value__');
    }

    return TypeProjection(fieldType).projection;
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>.
  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw StateError('Pointer type missing for $typeIdentifier.');
    }

    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Strip leading underscores (unless the type is nested, in which
    // case leave one behind).
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested ?? false
        ? '_${typeArg.projection.nativeType.stripLeadingUnderscores()}'
        : typeArg.projection.nativeType.stripLeadingUnderscores();

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the
    // Win32 meaning, which is more like "undefined type". We can
    // model that with a generic Pointer in Dart.
    if (typeArg.projection.nativeType == 'Void') {
      return const TypeTuple.fromNativeType('Pointer');
    }

    return TypeTuple.fromNativeType('Pointer<$typeArgNativeType>');
  }

  TypeTuple unwrapValueType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw StateError(
          'Wrapped type TypeIdentifier missing for $typeIdentifier.');
    }

    // A type like HWND
    if (wrappedType.existsAttribute(nativeTypedefAttribute) ||
        wrappedType.existsAttribute(metadataTypedefAttribute)) {
      final typeIdentifier = wrappedType.fields.first.typeIdentifier;
      return TypeProjection(typeIdentifier).projection;
    }

    if (wrappedType.isNested) {
      return TypeTuple.fromNativeType(wrappedType.mangleName());
    }

    final typeClass = wrappedType.nameWithoutAnsiUnicodeSuffix.lastComponent;
    return TypeTuple.fromNativeType(typeClass);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a string or other special type that we want to custom-map
    if (isSpecialType) return specialTypes[typeIdentifier.name]!;

    // Could be an enum like FOLDERFLAGS
    if (isEnumType) return unwrapEnumType();

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) return unwrapValueType();

    if (isArrayType) return unwrapArrayType();
    if (isDelegate) return unwrapCallbackType();
    if (isPointerType) return unwrapPointerType();

    if (isInterface) return const TypeTuple.fromNativeType('VTablePointer');

    // default: return the name as returned by metadata
    throw StateError('Type information missing for $typeIdentifier.');
  }
}

extension TypeProjectionHelpers on TypeProjection {
  /// Convert a *typeProjection into a typeProjection
  TypeProjection dereference() {
    if (typeIdentifier.typeArg case final typeArg?) {
      return TypeProjection(typeArg);
    }

    throw StateError('Type $this cannot be de-referenced.');
  }
}
