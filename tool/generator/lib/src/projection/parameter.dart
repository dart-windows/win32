// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/parameter.dart';
import '../extensions/string.dart';
import 'type.dart';

/// Represents a Dart projection for a function parameter defined by a
/// [Parameter].
class ParameterProjection {
  /// Creates an instance of this class for a function [parameter].
  ParameterProjection(this.parameter)
      : isOptional = parameter.isOptional,
        isReserved = parameter.isReserved,
        name = parameter.name,
        typeProjection = TypeProjection(parameter.typeIdentifier);

  /// Whether the parameter is optional (nullable).
  final bool isOptional;

  /// Whether the parameter is reserved.
  final bool isReserved;

  /// The name of the parameter.
  final String name;

  /// The metadata associated with the parameter.
  final Parameter parameter;

  /// The type projection for the parameter.
  final TypeProjection typeProjection;

  /// The Dart type of the parameter, including the nullability suffix (`?`) for
  /// optional parameters (e.g., `int value`, `Pointer<Int32>? value`).
  String get type => '${typeProjection.dartType}${isOptional ? '?' : ''}';

  /// The native projection of the parameter, for use in function signatures
  /// (e.g., `Int32 value`).
  String get nativeProjection => '${typeProjection.nativeType} $identifier';

  /// The Dart projection of the parameter, for use in function signatures
  /// (e.g., `int value`).
  String get dartProjection => '${typeProjection.dartType} $identifier';

  /// The parameter projection for function signatures (e.g., `int value`).
  String get paramProjection => '$type $identifier';

  /// The identifier (name) of the parameter (e.g., `value`).
  String get identifier => name.toCamelCase().safeIdentifier;

  @override
  String toString() => '$type $identifier';
}
