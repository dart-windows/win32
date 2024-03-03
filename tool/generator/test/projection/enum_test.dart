// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadataAndDocs);

  group('EnumProjection', () {
    testEnum('Windows.Win32.System.Com.APTTYPE', (projection) {
      final EnumProjection(
        :name,
        :bits,
        :fieldProjections,
        :isBitwiseEnum,
        :toString
      ) = projection;
      expect(name, equals('APTTYPE'));
      expect(bits, equals(32));
      expect(isBitwiseEnum, isFalse);
      expect(fieldProjections, hasLength(5));
      expect(
        fieldProjections,
        equals([
          'static const APTTYPE_CURRENT = APTTYPE(0xffffffff);',
          'static const APTTYPE_STA = APTTYPE(0x00000000);',
          'static const APTTYPE_MTA = APTTYPE(0x00000001);',
          'static const APTTYPE_NA = APTTYPE(0x00000002);',
          'static const APTTYPE_MAINSTA = APTTYPE(0x00000003);'
        ]),
      );
      expect(
        toString(),
        equalsIgnoringWhitespace(
          '''
/// {@category enum}
extension type const $name(int _) implements int {
${fieldProjections.map((p) => '  $p').join('\n\n')}
}''',
        ),
      );
    });

    testEnum('Windows.Win32.UI.Input.XboxController.XINPUT_CAPABILITIES_FLAGS',
        (projection) {
      final EnumProjection(
        :name,
        :bits,
        :fieldProjections,
        :isBitwiseEnum,
        :toString
      ) = projection;
      expect(name, equals('XINPUT_CAPABILITIES_FLAGS'));
      expect(bits, equals(16));
      expect(isBitwiseEnum, isTrue);
      expect(fieldProjections, hasLength(5));
      expect(
        fieldProjections,
        equals([
          'static const XINPUT_CAPS_VOICE_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0004);',
          'static const XINPUT_CAPS_FFB_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0001);',
          'static const XINPUT_CAPS_WIRELESS = XINPUT_CAPABILITIES_FLAGS(0x0002);',
          'static const XINPUT_CAPS_PMD_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0008);',
          'static const XINPUT_CAPS_NO_NAVIGATION = XINPUT_CAPABILITIES_FLAGS(0x0010);'
        ]),
      );
      expect(
        toString(),
        equalsIgnoringWhitespace(
          '''
/// {@category enum}
extension type const $name(int _) implements int {
${fieldProjections.map((p) => '  $p').join('\n\n')}
}''',
        ),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testEnum(String enumName, void Function(EnumProjection) projection) {
  test(enumName, () {
    final typeDef = getTypeDef(enumName);
    projection(EnumProjection(typeDef));
  });
}
