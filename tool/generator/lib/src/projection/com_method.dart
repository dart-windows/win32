// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'method.dart';

/// Represents a Dart projection for a COM method defined by a [Method].
class ComMethodProjection extends MethodProjection {
  /// Creates an instance of this class for a COM [method].
  ComMethodProjection(super.method);

  @override
  String get dartParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.dartProjection)
      ].join(', ');

  @override
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  @override
  String get nativeParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.nativeProjection)
      ].join(', ');

  @override
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  @override
  String get methodArguments => [
        'ptr',
        ...parameters.map((p) => switch (p) {
              // For optional non-reserved parameters, use the `??` operator to
              // provide a default value of `nullptr` if the parameter is `null`
              // and the type is a pointer, or `0` if the type is not a pointer.
              _ when p.isOptional && !p.isReserved =>
                p.type.startsWith(RegExp('(VTable)?Pointer'))
                    ? '${p.identifier} ?? nullptr'
                    : '${p.identifier} ?? 0',

              // For reserved parameters, pass `nullptr` if the type is a
              // pointer; otherwise, pass `0` (i.e. `NULL`).
              _ when p.isReserved =>
                p.type.startsWith(RegExp('(VTable)?Pointer')) ? 'nullptr' : '0',

              // Use the parameter identifier for the rest.
              _ => p.identifier,
            })
      ].join(', ');

  @override
  String toString() {
    try {
      return '''
  ${returnType.dartType} $camelCasedName($methodParams) =>
      _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.
      print('Unable to project COM method: ${method.name}');
      return '';
    }
  }
}
