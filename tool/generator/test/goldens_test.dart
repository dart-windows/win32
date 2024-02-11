// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('Golden testing', () {
    group('function', () {
      test('EnumDisplayMonitors', () {
        const type = 'Windows.Win32.Graphics.Gdi.Apis';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final method = typeDef!.findMethod('EnumDisplayMonitors');
        expect(method, isNotNull);
        final projection = FunctionProjection(method!);
        compareGolden('enumdisplaymonitors.g', projection.toString().format());
      });

      test('NtQueryObject', () {
        const type = 'Windows.Wdk.Foundation.Apis';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final method = typeDef!.findMethod('NtQueryObject');
        expect(method, isNotNull);
        final projection = FunctionProjection(method!);
        compareGolden('ntqueryobject.g', projection.toString().format());
      });
    });

    group('struct', () {
      test('DEVMODEW', () {
        const type = 'Windows.Win32.Graphics.Gdi.DEVMODEW';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final structsToGenerate = loadMap('win32_structs.json');
        final projection =
            StructProjection(typeDef!, comment: structsToGenerate[type] ?? '');
        compareGolden('devmode.g', projection.toString().format());
      });

      test('VARIANT', () async {
        const type = 'Windows.Win32.System.Variant.VARIANT';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final structsToGenerate = loadMap('win32_structs.json');
        final projection =
            StructProjection(typeDef!, comment: structsToGenerate[type] ?? '');
        compareGolden('variant.g', projection.toString().format());
      });
    });

    group('COM interface', () {
      test('IFileOpenDialog', () {
        const type = 'Windows.Win32.UI.Shell.IFileOpenDialog';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final comTypesToGenerate = loadMap('com_types.json');
        final projection = ComInterfaceProjection(typeDef!,
            comment: comTypesToGenerate[type] ?? '');
        compareGolden('ifileopendialog.g', projection.toString().format());
      });

      test('INetwork', () async {
        const type = 'Windows.Win32.Networking.NetworkListManager.INetwork';
        final typeDef = MetadataStore.getMetadataForType(type);
        expect(typeDef, isNotNull);
        final comTypesToGenerate = loadMap('com_types.json');
        final projection = ComInterfaceProjection(typeDef!,
            comment: comTypesToGenerate[type] ?? '');
        compareGolden('inetwork.g', projection.toString().format());
      });
    });
  });

  tearDownAll(MetadataStore.close);
}

/// Compares the contents of a [content] with a golden file specified by the
/// [fileName].
void compareGolden(String fileName, String content) {
  File('test/goldens/$fileName.comparison').writeAsStringSync(content);
  final golden = File('test/goldens/$fileName.golden').readAsStringSync();
  expect(content, equals(golden.convertLineEndingsToLF()));
}

extension on String {
  String convertLineEndingsToLF() => replaceAll('\r\n', '\n');

  String format() => DartFormatter().format(this);
}
