// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';

extension FieldHelpers on Field {
  /// The upper bound of the array if this field is an array.
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

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
}
