// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extensions/string.dart';
import 'type.dart';

/// A parameter.
///
/// Parameters are a tuple of a type and a name.
class ParameterProjection {
  const ParameterProjection(this.name, this.type);

  final String name;
  final TypeProjection type;

  String get ffiProjection =>
      '${type.nativeType.safeTypename} ${name.safeIdentifier}';

  String get dartProjection =>
      '${type.dartType.safeTypename} ${name.safeIdentifier}';

  String get identifier => name.safeIdentifier;

  @override
  String toString() => '$name (${type.nativeType})';
}
