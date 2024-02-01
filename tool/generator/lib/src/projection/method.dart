// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'parameter.dart';
import 'type.dart';

/// Represents an entry in a COM function v-table, serving as a base class for
/// various projection classes such as [ComMethodProjection],
/// [ComGetPropertyProjection], and [ComSetPropertyProjection].
///
/// Each instance corresponds to an entry in a COM v-table, representing a
/// method or property.
abstract class MethodProjection {
  /// Creates an instance of this class for a COM [method].
  MethodProjection(this.method)
      : name = method.uniqueName,
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters.map(ParameterProjection.new).toList();

  /// The metadata associated with the method.
  final Method method;

  /// A unique name for the method.
  final String name;

  /// The parameter projections for the method.
  final List<ParameterProjection> parameters;

  /// The type projection for the return type of the method.
  final TypeProjection returnType;

  /// The method name in camel case format.
  ///
  /// COM methods and properties are typically named in TitleCase, but the Dart
  /// idiom is camelCase. This also has the significant advantage of making it
  /// easier to avoid name conflicts.
  String get camelCasedName => name.toCamelCase().safeIdentifier;

  /// The Dart parameter list for the method.
  String get dartParams;

  /// The Dart prototype for the method.
  String get dartPrototype;

  /// The native parameter list for the method.
  String get nativeParams;

  /// The native prototype for the method.
  String get nativePrototype;

  /// The parameters exposed by the method.
  String get methodParams => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters
      .map((p) => p.paramProjection)
      .join(', ');

  /// The argument list for the method body.
  String get methodArguments;
}
