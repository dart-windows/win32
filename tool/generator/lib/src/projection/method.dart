// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import 'parameter.dart';
import 'type.dart';

/// A generic class representing an entry in a COM function v-table.
///
/// Methods have names, a list of parameters, and may return a type.
abstract class MethodProjection {
  MethodProjection(this.method)
      : name = method.uniqueName,
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters
            .map((param) => ParameterProjection(param.name, param))
            .toList();

  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  final List<ParameterProjection> parameters;

  /// Projection for the return type.
  final TypeProjection returnType;

  /// The method name without uppercased first letter.
  ///
  /// COM and Windows Runtime methods and properties are typically named in
  /// TitleCase, but the Dart idiom is camelCase. This also has the significant
  /// advantage of making it easier to avoid name conflicts.
  String get camelCasedName => name.toCamelCase().safeIdentifier;

  /// The parameters exposed by a projected Dart method.
  String get methodParams => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters
      .map((p) => p.paramProjection)
      .join(', ');

  String get dartParams;

  /// The Dart prototype representing the method.
  String get dartPrototype;

  String get nativeParams;

  /// The native prototype representing the method.
  String get nativePrototype;

  /// The names of the parameters to be passed through to the underlying COM
  /// function.
  String get identifiers;
}
