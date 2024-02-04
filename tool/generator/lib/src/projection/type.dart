// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';

/// Represents a Dart type projection, providing information about a type in the
/// metadata and how it should be represented in Dart.
class TypeProjection {
  /// Creates an instance of this class for a [typeIdentifier].
  TypeProjection(this.typeIdentifier);

  /// Represents a type in the metadata.
  final TypeIdentifier typeIdentifier;

  TypeTuple? _projection;

  /// The type projection of the type.
  TypeTuple get projection => _projection ??= projectType();

  /// The attribute of the type projection.
  String get attribute => projection.attribute ?? '';

  /// The native type of the type projection.
  String get nativeType => projection.nativeType;

  /// The dart type of the type projection.
  String get dartType => projection.dartType;

  /// Whether the type is an array type.
  bool get isArrayType => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  /// Whether the type is a base type.
  bool get isBaseType =>
      _baseNativeTypes.keys.contains(typeIdentifier.baseType);

  /// Whether the type is a COM class.
  bool get isClass => typeIdentifier.type?.isClass ?? false;

  /// Whether the resultant Dart type atomic.
  bool get isDartPrimitive =>
      ['bool', 'double', 'int', 'void'].contains(dartType) ||
      dartType.startsWith('Array') ||
      dartType.startsWith(RegExp('(VTable)?Pointer'));

  /// Whether the type is a delegate.
  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  /// Whether the type is an enum.
  bool get isEnum => typeIdentifier.type?.isEnum ?? false;

  /// Whether the type is a COM interface.
  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  /// Whether the type is a pointer type.
  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.pointerTypeModifier;

  /// Whether the type is a special type.
  bool get isSpecialType => specialTypes.keys.contains(typeIdentifier.name);

  /// Whether the type is a struct.
  bool get isStruct => typeIdentifier.type?.isStruct ?? false;

  /// Unwraps the array type and returns the [TypeTuple] for it.
  TypeTuple unwrapArrayType() {
    final TypeIdentifier(:arrayDimensions, :typeArg) = typeIdentifier;
    if (arrayDimensions == null || typeArg == null) {
      throw StateError('Array information missing for $typeIdentifier.');
    }

    final typeArgProjection = TypeProjection(typeArg);
    final [upperBound] = arrayDimensions;
    return TypeTuple.fromNativeType(
      'Array<${typeArgProjection.nativeType.safeTypename}>',
      attribute: '@Array($upperBound)',
    );
  }

  /// Unwraps the delegate type and returns the [TypeTuple] for it.
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

  /// Unwraps the enum type and returns the [TypeTuple] for it.
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

  /// Unwraps the struct type and returns the [TypeTuple] for it.
  TypeTuple unwrapStructType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw StateError('Wrapped type TypeDef missing for $typeIdentifier.');
    }

    // A wrapper struct like HWND.
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

  /// Projects the Win32 type to its Dart representation.
  TypeTuple projectType() {
    // Could be a System.Guid or other special type that we want to custom-map.
    if (isSpecialType) return specialTypes[typeIdentifier.name]!;

    if (isArrayType) return unwrapArrayType();

    // Could be an intrinsic base type (e.g., Int32).
    if (isBaseType) return _baseNativeTypes[typeIdentifier.baseType]!;

    // Could be a struct (e.g., WNDPROC).
    if (isDelegate) return unwrapDelegateType();

    // Could be an enum (e.g., FOLDERFLAGS).
    if (isEnum) return unwrapEnumType();

    if (isPointerType) return unwrapPointerType();

    // Could be a struct (e.g., MMTIME, HWND).
    if (isStruct) return unwrapStructType();

    // Could be a COM interface (e.g., `IFileDialog`).
    if (isInterface) return const TypeTuple.fromNativeType('VTablePointer');

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

/// Represents a tuple of native and Dart types along with an optional
/// attribute.
class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  const TypeTuple.fromNativeType(String nativeType, {String? attribute})
      : this(nativeType, nativeType, attribute: attribute);

  /// The type, as represented in the native function (e.g., `Uint32`).
  final String nativeType;

  /// The type, as represented in the Dart function (e.g., `int`).
  final String dartType;

  /// The type, as represented as a struct attribute (e.g., `@Uint32()`).
  final String? attribute;

  @override
  String toString() =>
      'TypeTuple(nativeType: $nativeType, dartType: $dartType, '
      'attribute: $attribute)';
}

/// Mapping of Win32 base types to Dart types.
const _baseNativeTypes = <BaseType, TypeTuple>{
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.int8Type: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.int16Type: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.int32Type: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.int64Type: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.intPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uintPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uint8Type: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.uint16Type: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.uint32Type: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.uint64Type: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.voidType: TypeTuple('Void', 'void'),
};

/// Special mapping of certain Win32 types to Dart types.
const specialTypes = <String, TypeTuple>{
  'System.Guid': TypeTuple.fromNativeType('GUID'),

  // Wrapper structs.
  'Windows.Win32.Foundation.BSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple.fromNativeType('Pointer<Utf8>'),
  'Windows.Win32.Foundation.PWSTR': TypeTuple.fromNativeType('Pointer<Utf16>'),
};
