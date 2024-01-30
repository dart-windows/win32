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

  group('Method', () {
    test('nameWithoutEncoding', () {
      final apis1 =
          scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
      expect(apis1, isNotNull);

      final method1 = apis1!.findMethod('EndMenu');
      expect(method1, isNotNull);
      expect(method1!.nameWithoutEncoding, equals('EndMenu'));

      final method2 = apis1.findMethod('GetClassNameA');
      expect(method2, isNotNull);
      expect(method2!.nameWithoutEncoding, equals('GetClassName'));

      final method3 = apis1.findMethod('GetClassNameW');
      expect(method3, isNotNull);
      expect(method3!.nameWithoutEncoding, equals('GetClassName'));

      final apis2 = scope.findTypeDef('Windows.Win32.UI.Shell.Apis');
      expect(apis2, isNotNull);

      final method4 = apis2!.findMethod('CommandLineToArgvW');
      expect(method4, isNotNull);
      expect(method4!.nameWithoutEncoding, equals('CommandLineToArgv'));
    });

    test('uniqueName', () {
      final ipmTaskInfo = scope.findTypeDef(
          'Windows.Win32.System.ApplicationInstallationAndServicing.IPMTaskInfo');
      expect(ipmTaskInfo, isNotNull);
      final runtimeType = ipmTaskInfo!.findMethod('get_RuntimeType');
      expect(runtimeType, isNotNull);
      expect(runtimeType!.uniqueName, equals('get_RuntimeType_'));

      final inkStrokes =
          scope.findTypeDef('Windows.Win32.UI.TabletPC.IInkStrokes');
      expect(inkStrokes, isNotNull);
      final toString1 = inkStrokes!.findMethod('ToString');
      expect(toString1, isNotNull);
      expect(toString1!.uniqueName, equals('ToUtf16String'));

      final ihtmlDialog =
          scope.findTypeDef('Windows.Win32.Web.MsHtml.IHTMLDialog');
      expect(ihtmlDialog, isNotNull);
      final toString2 = ihtmlDialog!.findMethod('toString');
      expect(toString2, isNotNull);
      expect(toString2!.uniqueName, equals('toUtf16String'));
    });
  });

  tearDownAll(MetadataStore.close);
}
