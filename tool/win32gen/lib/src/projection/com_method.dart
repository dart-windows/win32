// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'method.dart';

class ComMethodProjection extends MethodProjection {
  ComMethodProjection(super.method);

  @override
  String get nativeParams => [
        'VTablePointer',
        ...parameters.map((param) => param.ffiProjection)
      ].join(', ');

  @override
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  @override
  String get dartParams => [
        'VTablePointer',
        ...parameters.map((param) => param.dartProjection)
      ].join(', ');

  @override
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  @override
  String get identifiers =>
      ['ptr', ...parameters.map((param) => param.identifier)].join(', ');

  @override
  String toString() {
    try {
      return '''
      ${returnType.dartType} $camelCasedName($methodParams) =>
          _vtable.$name.asFunction<$dartPrototype>()($identifiers);
    ''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      print('Unable to project COM method: ${method.name}');
      return '';
    }
  }
}
