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

  test('BOOL types are projected to int', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND')!;
    final fEnable = typeDef.fields[1]; // BOOL fEnable;
    final fieldProjection = FieldProjection(fEnable);
    final typeProjection = fieldProjection.typeProjection;
    expect(typeProjection.nativeType, equals('Int32'));
    expect(typeProjection.dartType, equals('int'));
    expect(
        fieldProjection.toString(), equals('@Int32()\nexternal int fEnable;'));
  });

  test('Structs are projected appropriately', () {
    final typeDef = scope
        .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT')!;
    final wfx = typeDef.fields.first;
    final fieldProjection = FieldProjection(wfx);
    final typeProjection = fieldProjection.typeProjection;
    expect(typeProjection.nativeType, equals('WAVEFORMATEX'));
    expect(typeProjection.dartType, equals('WAVEFORMATEX'));
    expect(fieldProjection.toString(), equals('\nexternal WAVEFORMATEX wfx;'));
  });

  tearDownAll(MetadataStore.close);
}
