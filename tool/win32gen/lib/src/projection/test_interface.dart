// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'com_interface.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'headers.dart';
import 'method.dart';

class TestInterfaceProjection {
  const TestInterfaceProjection(this.typeDef, this.projection);

  final TypeDef typeDef;
  final ComInterfaceProjection projection;

  String get header => '''
$copyrightHeader

// Tests that COM interface methods are correctly projected

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
''';

  String testMethod(String interfaceName, String instanceName,
          MethodProjection methodProjection) =>
      switch (methodProjection) {
        ComGetPropertyProjection() || ComSetPropertyProjection() => '',
        ComMethodProjection() => '''
  test('Can instantiate $interfaceName.${methodProjection.camelCasedName}', () {
    expect($instanceName.${methodProjection.camelCasedName}, isA<Function>());
  });''',
        _ => ''
      };

  @override
  String toString() {
    final interfaceName = projection.shortName;
    final instanceName = interfaceName.substring(1).toLowerCase();
    return '''
$header

void main() {
  final ptr = calloc<Pointer<IntPtr>>();

  final $instanceName = $interfaceName(ptr);
  ${projection.methodProjections.map((p) => testMethod(interfaceName, instanceName, p)).join()}

  free(ptr);
}
''';
  }
}
