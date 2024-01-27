// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import 'string.dart';

extension FieldHelpers on Field {
  /// The upper bound of the array if this field is an array.
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

  /// The name of the field as it appears in the instance (e.g., `Anonymous`,
  /// `Value.ShortUuid`).
  String get instanceName {
    // Walk up the tree and append each item, making sure along the way that
    // each identifier is valid.
    var typeDef = parent;
    var name = this.name.safeIdentifier;

    while (typeDef.enclosingClass != null) {
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((f) => f.typeIdentifier.type == typeDef);
      final parentName = parentField.name.safeIdentifier;
      name = '$parentName.$name';
      typeDef = typeDef.enclosingClass!;
    }

    return name;
  }

  /// Returns `true` if the field is an array.
  bool get isArray => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  /// Returns `true` if the field is a char array.
  bool get isCharArray =>
      isArray && typeIdentifier.typeArg?.baseType == BaseType.charType;

  /// Returns `true` if the field is a flexible array.
  bool get isFlexibleArray =>
      isArray && existsAttribute(flexibleArrayAttribute);

  /// Returns `true` if the field is a nested type.
  bool get isNested => typeIdentifier.type?.isNested ?? false;

  /// Returns `true` if the field is a nested array.
  bool get isNestedArray =>
      isArray && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Returns `true` if the field is a nested pointer.
  bool get isNestedPointer =>
      isPointer && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Returns `true` if the field is a pointer.
  bool get isPointer => typeIdentifier.baseType == BaseType.pointerTypeModifier;
}
