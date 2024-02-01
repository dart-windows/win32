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

  test('Special types exist in metadata', () {
    for (final specialType in specialTypes.keys
        .where((type) => type.startsWith('Windows.Win32'))) {
      expect(
        scope.findTypeDef(specialType),
        isNotNull,
        reason: '$specialType missing',
      );
    }
  });

  test('Packing aligment correct for non-packed struct', () {
    final struct =
        scope.findTypeDef('Windows.Win32.Graphics.Printing.JOB_INFO_1W');
    expect(struct, isNotNull);
    final projection = StructProjection(struct!);
    expect(projection.packingAlignment, isZero);
    expect(projection.classPreamble, isNot(contains('@Packed')));
  });

  test('Packing aligment correct for packed but non-nested struct', () {
    final struct =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.DLGTEMPLATE');
    expect(struct, isNotNull);
    final projection = StructProjection(struct!);
    expect(projection.packingAlignment, equals(2));
    expect(projection.classPreamble, contains('@Packed(2)'));
  });

  test('Packing aligment does not overflow for structs with enums', () {
    final struct = scope.findTypeDef(
        'Windows.Win32.Devices.Bluetooth.BLUETOOTH_AUTHENTICATION_METHOD');
    expect(struct, isNotNull);
    final projection = StructProjection(struct!);
    expect(projection.packingAlignment, isZero);
    expect(projection.classPreamble, isNot(contains('@Packed')));
  });

  tearDownAll(MetadataStore.close);
}
