// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import 'parameter.dart';
import 'type.dart';

class FunctionProjection {
  FunctionProjection(this.method)
      : name = method.nameWithoutEncoding.safeTypename,
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters
            .map((param) => ParameterProjection(param.name, param))
            .toList();

  final Method method;
  final String name;
  final TypeProjection returnType;
  final List<ParameterProjection> parameters;

  // API set names aren't legal Dart identifiers, so we rename them.
  // Also strip off the trailing .dll (or .cpl, .drv, etc.).
  String get lib =>
      method.module.name.toLowerCase().replaceAll('-', '_').split('.').first;

  String get dartParams => parameters.map((p) => p.dartProjection).join(', ');
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  String get nativeParams => parameters.map((p) => p.ffiProjection).join(', ');
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  String get functionParams => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters
      .map((p) => p.paramProjection)
      .join(', ');

  String get functionArgs => parameters
      .map((p) => switch (p) {
            _ when p.isOptional && !p.isReserved =>
              p.type.startsWith(RegExp('(VTable)?Pointer'))
                  ? '${p.identifier} ?? nullptr'
                  : '${p.identifier} ?? 0',
            _ when p.isReserved =>
              p.type.startsWith(RegExp('(VTable)?Pointer')) ? 'nullptr' : '0',
            _ => p.identifier,
          })
      .join(', ');

  @override
  String toString() => '''
${returnType.dartType.safeTypename} $name($functionParams) =>
    _$name($functionArgs);

final _$name = _$lib.lookupFunction<
    $nativePrototype,
    $dartPrototype>('${method.name}');
''';
}
