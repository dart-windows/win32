// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  test('Reserved parameters are hidden', () {
    final apis = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    expect(apis, isNotNull);

    final coInitEx = apis!.findMethod('CoInitializeEx');
    expect(coInitEx, isNotNull);

    final projection = FunctionProjection(coInitEx!);
    expect(projection.publicDartParams, equals('int dwCoInit'));
    expect(projection.functionArgs, equals('nullptr, dwCoInit'));
  });

  tearDownAll(MetadataStore.close);
}
