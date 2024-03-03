// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import 'string.dart';

extension FieldHelpers on Field {
  /// The upper bound of the array if the field is an array.
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

  /// The name of the field as it appears in the instance.
  ///
  /// For example, if the field is part of a nested structure, the name includes
  /// all parent field names in the hierarchy.
  String get instanceName {
    // Get the immediate parent type definition.
    var typeDef = parent;

    // Get the name of this field.
    var name = this.name.safeIdentifier;

    // Walk up the tree and append each parent field name to the current name,
    // ensuring that each identifier is valid.
    while (typeDef.enclosingClass != null) {
      // Find the parent field corresponding to the current TypeDef.
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((field) => field.typeIdentifier.type == typeDef);

      // Get the name of the parent field.
      final parentName = parentField.name.safeIdentifier;

      // Append the parent field name to the current name.
      name = '$parentName.$name';

      // Move up the hierarchy to the next enclosing class.
      typeDef = typeDef.enclosingClass!;
    }

    return name;
  }

  /// Whether the field is an array.
  bool get isArray => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  /// Whether the field is a char array.
  bool get isCharArray =>
      isArray && typeIdentifier.typeArg?.baseType == BaseType.charType;

  /// Whether the field is a flexible array.
  bool get isFlexibleArray =>
      isArray && existsAttribute(flexibleArrayAttribute);

  /// Whether the field is a nested type.
  bool get isNested => typeIdentifier.type?.isNested ?? false;

  /// Whether the field is a nested array.
  bool get isNestedArray =>
      isArray && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Whether the field is a nested pointer.
  bool get isNestedPointer =>
      isPointer && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Whether the field is a pointer.
  bool get isPointer => typeIdentifier.baseType == BaseType.pointerTypeModifier;
}
