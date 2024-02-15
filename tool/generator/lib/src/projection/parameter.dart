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
        name = parameter.name.toCamelCase().safeIdentifier,
        typeProjection = TypeProjection(parameter.typeIdentifier);

  /// Whether the parameter is optional (nullable).
  final bool isOptional;

  /// Whether the parameter is reserved.
  final bool isReserved;

  /// The name of the parameter converted to camel case and safe for use as an
  /// identifier in Dart code.
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
  String get nativeProjection => '${typeProjection.nativeType} $name';

  /// The Dart projection of the parameter, for use in function signatures
  /// (e.g., `int value`).
  String get dartProjection => '${typeProjection.dartType} $name';

  /// The identifier (name) for the parameter (e.g., `value`, `value ?? 0`) that
  /// will be passed to the native function.
  String get identifier => switch (parameter) {
        // For optional non-reserved parameter, use the `??` operator to provide
        // a default value of `nullptr` if the parameter is `null` and the type
        // is a pointer, or `0` if the type is not a pointer.
        _ when isOptional && !isReserved =>
          typeProjection.isPointer ? '$name ?? nullptr' : '$name ?? 0',

        // For reserved parameter, pass `nullptr` if the type is a pointer;
        // otherwise, pass `0` (i.e. `NULL`).
        _ when isReserved => typeProjection.isPointer ? 'nullptr' : '0',

        // Otherwise, use the parameter name as the identifier.
        _ => name
      };

  @override
  String toString() => '$type $name';
}
