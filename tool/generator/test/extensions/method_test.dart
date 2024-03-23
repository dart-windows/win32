// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadataAndDocs);

  group('Method', () {
    test('canBeProjectedAsGetter', () {
      final services =
          getTypeDef('Windows.Win32.Devices.Enumeration.Pnp.IUPnPServices');

      final method1 = services.findMethod('get_Count');
      expect(method1, isNotNull);
      expect(method1!.canBeProjectedAsGetter, isTrue);

      final method2 = services.findMethod('get_Item');
      expect(method2, isNotNull);
      expect(method2!.canBeProjectedAsGetter, isFalse);
    });

    test('canBeProjectedAsSetter', () {
      final container =
          getTypeDef('Windows.Win32.Media.DirectShow.Tv.ITuningSpaceContainer');

      final method1 = container.findMethod('put_MaxCount');
      expect(method1, isNotNull);
      expect(method1!.canBeProjectedAsSetter, isTrue);

      final method2 = container.findMethod('put_Item');
      expect(method2, isNotNull);
      expect(method2!.canBeProjectedAsSetter, isFalse);
    });

    test('nameWithoutEncoding', () {
      final apis1 = getTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');

      final method1 = apis1.findMethod('EndMenu');
      expect(method1, isNotNull);
      expect(method1!.nameWithoutEncoding, equals('EndMenu'));

      final method2 = apis1.findMethod('GetClassNameA');
      expect(method2, isNotNull);
      expect(method2!.nameWithoutEncoding, equals('GetClassName'));

      final method3 = apis1.findMethod('GetClassNameW');
      expect(method3, isNotNull);
      expect(method3!.nameWithoutEncoding, equals('GetClassName'));

      final apis2 = getTypeDef('Windows.Win32.UI.Shell.Apis');

      final method4 = apis2.findMethod('CommandLineToArgvW');
      expect(method4, isNotNull);
      expect(method4!.nameWithoutEncoding, equals('CommandLineToArgv'));
    });

    test('uniqueName', () {
      final ipmTaskInfo = getTypeDef(
          'Windows.Win32.System.ApplicationInstallationAndServicing.IPMTaskInfo');
      final runtimeType = ipmTaskInfo.findMethod('get_RuntimeType');
      expect(runtimeType, isNotNull);
      expect(runtimeType!.uniqueName, equals('get_RuntimeType_'));

      final inkStrokes = getTypeDef('Windows.Win32.UI.TabletPC.IInkStrokes');
      final toString1 = inkStrokes.findMethod('ToString');
      expect(toString1, isNotNull);
      expect(toString1!.uniqueName, equals('ToUtf16String'));

      final ihtmlDialog = getTypeDef('Windows.Win32.Web.MsHtml.IHTMLDialog');
      final toString2 = ihtmlDialog.findMethod('toString');
      expect(toString2, isNotNull);
      expect(toString2!.uniqueName, equals('toUtf16String'));
    });
  });

  tearDownAll(MetadataStore.close);
}