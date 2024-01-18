// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/parameter.dart';
import '../extensions/string.dart';
import 'type.dart';

/// A parameter.
///
/// Parameters are a tuple of a type and a name.
class ParameterProjection {
  ParameterProjection(this.name, this.parameter)
      : isOptional = parameter.isOptional,
        isReserved = parameter.isReserved,
        type = TypeProjection(parameter.typeIdentifier);

  final bool isOptional;
  final bool isReserved;
  final String name;
  final Parameter parameter;
  final TypeProjection type;

  String get ffiProjection =>
      '${type.nativeType.safeTypename} ${name.safeIdentifier}';

  String get dartProjection =>
      '${type.dartType.safeTypename} ${name.safeIdentifier}';

  String get identifier => name.safeIdentifier;

  @override
  String toString() => '$name (${type.nativeType})';
}
