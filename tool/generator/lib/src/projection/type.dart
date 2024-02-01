// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';

class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  const TypeTuple.fromNativeType(String nativeType, {String? attribute})
      : this(nativeType, nativeType, attribute: attribute);

  /// The type, as represented in the native function (e.g. `Uint32`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint32()`)
  final String? attribute;
}

const baseNativeMapping = <BaseType, TypeTuple>{
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

const specialTypes = <String, TypeTuple>{
  'System.Guid': TypeTuple.fromNativeType('GUID'),
  'Windows.Win32.Foundation.BSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple.fromNativeType('Pointer<Utf8>'),
  'Windows.Win32.Foundation.PWSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
};

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

  /// Whether the resultant Dart type atomic.
  bool get isDartPrimitive =>
      ['bool', 'double', 'int', 'void'].contains(dartType) ||
      dartType.startsWith('Array') ||
      dartType.startsWith(RegExp('(VTable)?Pointer'));

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isEnumType => typeIdentifier.type?.isEnum ?? false;

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isSpecialType => specialTypes.keys.contains(typeIdentifier.name);

  bool get isStruct => typeIdentifier.type?.isStruct ?? false;

  TypeTuple unwrapArrayType() {
    final TypeIdentifier(:arrayDimensions, :typeArg) = typeIdentifier;
    if (arrayDimensions == null || typeArg == null) {
      throw StateError('Array information missing for $typeIdentifier.');
    }

    final typeArgProjection = TypeProjection(typeArg);
    final upperBound = arrayDimensions.first;
    return TypeTuple.fromNativeType(
      'Array<${typeArgProjection.nativeType.safeTypename}>',
      attribute: '@Array($upperBound)',
    );
  }

  TypeTuple unwrapDelegateType() {
    final type = typeIdentifier.type;
    if (type == null) throw StateError('TypeDef missing for $typeIdentifier.');

    final method = typeIdentifier.type!.methods
        .where((m) => m.name == 'Invoke')
        .firstOrNull;
    if (method == null) {
      throw StateError('Callback $typeIdentifier is missing `Invoke` method.');
    }

    if (method.parameters.isEmpty) {
      return const TypeTuple.fromNativeType('Pointer');
    }

    final callbackType = typeIdentifier.type!.safeTypename;
    return TypeTuple.fromNativeType('Pointer<NativeFunction<$callbackType>>');
  }

  TypeTuple unwrapEnumType() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw StateError('Enum $typeIdentifier is missing `value__` field');
    }

    return TypeProjection(fieldType).projection;
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.uint32Type` and
  /// converts it to `Pointer<Uint32>`.
  TypeTuple unwrapPointerType() {
    final typeArg = typeIdentifier.typeArg;
    if (typeArg == null) {
      throw StateError('Pointer type missing for $typeIdentifier.');
    }

    final typeArgProjection = TypeProjection(typeArg);
    final typeArgNativeType = typeArgProjection.nativeType.safeTypename;

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the Win32
    // meaning, which is more like "undefined type". We can model that with a
    // generic Pointer in Dart.
    if (typeArgNativeType == 'Void') {
      return const TypeTuple.fromNativeType('Pointer');
    }

    return TypeTuple.fromNativeType('Pointer<$typeArgNativeType>');
  }

  TypeTuple unwrapStructType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw StateError('Wrapped type TypeDef missing for $typeIdentifier.');
    }

    // A wrapper struct like HWND
    if (wrappedType.isWrapperStruct) {
      final [field] = wrappedType.fields;
      return TypeProjection(field.typeIdentifier).projection;
    }

    if (wrappedType.isNested) {
      final enclosingType = wrappedType.enclosingClass!;
      final index = enclosingType.fields
          .where((f) => f.isNested || f.isNestedArray || f.isNestedPointer)
          .toList()
          .indexWhere((f) => f.isArray || f.isNestedPointer
              ? f.typeIdentifier.typeArg!.type!.name == wrappedType.name
              : f.typeIdentifier.type!.name == wrappedType.name);
      if (index == -1) {
        throw StateError('Could not find the index of $wrappedType in '
            '${enclosingType.fields}.');
      }

      return TypeTuple.fromNativeType('${enclosingType.safeTypename}_$index');
    }

    return TypeTuple.fromNativeType(wrappedType.safeTypename);
  }

  TypeTuple projectType() {
    // Could be a System.Guid or other special type that we want to custom-map
    if (isSpecialType) return specialTypes[typeIdentifier.name]!;

    if (isArrayType) return unwrapArrayType();

    // Could be an intrinsic base type (e.g., Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a struct (e.g., WNDPROC)
    if (isDelegate) return unwrapDelegateType();

    // Could be an enum (e.g., FOLDERFLAGS)
    if (isEnumType) return unwrapEnumType();

    if (isPointerType) return unwrapPointerType();

    // Could be a struct (e.g., MMTIME, HWND)
    if (isStruct) return unwrapStructType();

    if (isInterface) return const TypeTuple.fromNativeType('VTablePointer');

    // TODO(halildurmus): Consider returning the name as returned by metadata
    throw StateError('Type information missing for $typeIdentifier.');
  }
}

extension TypeProjectionHelpers on TypeProjection {
  /// Converts a *typeProjection into a typeProjection.
  TypeProjection dereference() {
    if (typeIdentifier.typeArg case final typeArg?) {
      return TypeProjection(typeArg);
    }

    throw StateError('Type $this cannot be de-referenced.');
  }
}
