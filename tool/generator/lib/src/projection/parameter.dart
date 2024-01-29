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
        typeProjection = TypeProjection(parameter.typeIdentifier);

  final bool isOptional;
  final bool isReserved;
  final String name;
  final Parameter parameter;
  final TypeProjection typeProjection;

  String get type => '${typeProjection.dartType}${isOptional ? '?' : ''}';

  String get ffiProjection => '${typeProjection.nativeType} $identifier';

  String get dartProjection => '${typeProjection.dartType} $identifier';

  String get paramProjection => '$type $identifier';

  String get identifier => name.toCamelCase().safeIdentifier;

  @override
  String toString() => '$typeProjection $identifier';
}
