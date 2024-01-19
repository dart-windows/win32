// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  test('Optional parameters are nullable', () {
    final apis = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    expect(apis, isNotNull);

    final coCreateInstanceEx = apis!.findMethod('CoCreateInstanceEx');
    expect(coCreateInstanceEx, isNotNull);

    final projection = FunctionProjection(coCreateInstanceEx!);
    expect(
        projection.functionParams,
        equals('Pointer<GUID> Clsid, VTablePointer? punkOuter, int dwClsCtx, '
            'Pointer<COSERVERINFO>? pServerInfo, int dwCount, '
            'Pointer<MULTI_QI> pResults'));
    expect(
        projection.functionArgs,
        equals('Clsid, punkOuter ?? nullptr, dwClsCtx, pServerInfo ?? nullptr, '
            'dwCount, pResults'));
  });

  test('Reserved parameters are hidden', () {
    final apis = scope.findTypeDef('Windows.Win32.System.Com.Apis');
    expect(apis, isNotNull);

    final coInitEx = apis!.findMethod('CoInitializeEx');
    expect(coInitEx, isNotNull);

    final projection = FunctionProjection(coInitEx!);
    expect(projection.functionParams, equals('int dwCoInit'));
    expect(projection.functionArgs, equals('nullptr, dwCoInit'));
  });

  tearDownAll(MetadataStore.close);
}
