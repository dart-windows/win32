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

  group('TypeDef', () {
    test('mangleName', () {
      final propVariant = scope.findTypeDef(
          'Windows.Win32.System.Com.StructuredStorage.PROPVARIANT')!;

      final union1 = propVariant.fields.first.typeIdentifier.type;
      expect(union1, isNotNull);
      expect(union1!.mangleName(), equals('_PROPVARIANT__Anonymous_e__Union'));

      final struct1 = union1.fields.first.typeIdentifier.type;
      expect(struct1, isNotNull);
      expect(
        struct1!.mangleName(),
        equals('_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct'),
      );

      final union2 = struct1.fields.last.typeIdentifier.type;
      expect(union2, isNotNull);
      expect(
        union2!.mangleName(),
        equals(
            '_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct__Anonymous_e__Union'),
      );
    });

    test('nameWithoutAnsiUnicodeSuffix', () {
      final typeDef1 = scope.findTypeDef('Windows.Win32.UI.Shell.IFileDialog');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.nameWithoutAnsiUnicodeSuffix,
          equals('Windows.Win32.UI.Shell.IFileDialog'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkA');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.nameWithoutAnsiUnicodeSuffix,
          equals('Windows.Win32.UI.Shell.IShellLink'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.nameWithoutAnsiUnicodeSuffix,
          equals('Windows.Win32.UI.Shell.IShellLink'));
    });

    test('safeIdentifier', () {
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.safeIdentifier, equals('IUIAutomation'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.safeIdentifier, equals('AppEvents'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.safeIdentifier, equals('IShellLink'));
    });

    test('safeTypename', () {
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.safeTypename, equals('IUIAutomation'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.safeTypename, equals('AppEvents'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.safeTypename, equals('IShellLink'));
    });
  });

  tearDownAll(MetadataStore.close);
}
