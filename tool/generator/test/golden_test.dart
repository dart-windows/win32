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
    testComInterfaceGolden('Windows.Win32.UI.Shell.IFileOpenDialog');
    testComInterfaceGolden(
        'Windows.Win32.Networking.NetworkListManager.INetwork');

    testFunctionGolden(
        'Windows.Win32.Graphics.Gdi.Apis', 'EnumDisplayMonitors');
    testFunctionGolden('Windows.Wdk.Foundation.Apis', 'NtQueryObject');

    testStructGolden('Windows.Win32.Graphics.Gdi.DEVMODEW');
    testStructGolden('Windows.Win32.System.Variant.VARIANT');
  });

  tearDownAll(MetadataStore.close);
}

/// Compares the contents of a [content] with a golden file specified by the
/// [fileName].
void compareGolden(String fullyQualifiedType, String fileName, String content) {
  File('test/goldens/$fileName.comparison').writeAsStringSync(content);
  var golden = File('test/goldens/$fileName.golden').readAsStringSync();
  if (golden.contains('|')) {
    // Skip the first line containing the fully qualified type name (e.g.,
    // `Windows.Wdk.Foundation.Apis.NtQueryObject|`).
    golden = golden.substring(golden.indexOf('|') + '\n'.length + 1);
  } else {
    throw StateError(
      'The first line of the golden file does not match the expected format.\n'
      'Expected format: Fully qualified type followed by a `|` character.\n'
      'Example: Windows.Wdk.Foundation.Apis.NtQueryObject|',
    );
  }

  expect(content, equals(golden.convertLineEndingsToLF()));
}

void testComInterfaceGolden(String interfaceName) {
  test(interfaceName, () {
    final typeDef = MetadataStore.getMetadataForType(interfaceName);
    expect(
      typeDef,
      isNotNull,
      reason: '`$interfaceName` type is not found in the metadata.',
    );
    final comTypesToGenerate = loadMap('com_types.json');
    final projection = ComInterfaceProjection(typeDef!,
        comment: comTypesToGenerate[interfaceName] ?? '');
    final fileName = typeDef.safeIdentifier.toLowerCase();
    compareGolden(
      typeDef.name,
      'interfaces/$fileName.g',
      projection.toString().format(),
    );
  });
}

void testFunctionGolden(String parent, String functionName) {
  test('function $parent.$functionName', () {
    final typeDef = MetadataStore.getMetadataForType(parent);
    expect(
      typeDef,
      isNotNull,
      reason: '`$parent` type is not found in the metadata.',
    );
    final method = typeDef!.findMethod(functionName);
    expect(
      method,
      isNotNull,
      reason: '`$functionName` function is not found in `$parent`.',
    );
    final projection = FunctionProjection(method!);
    final fileName = method.nameWithoutEncoding.safeIdentifier.toLowerCase();
    compareGolden(
      '${typeDef.name}.${method.name}',
      'functions/$fileName.g',
      projection.toString().format(),
    );
  });
}

void testStructGolden(String type) {
  test('struct $type', () {
    final typeDef = MetadataStore.getMetadataForType(type);
    expect(
      typeDef,
      isNotNull,
      reason: '`$type` type is not found in the metadata.',
    );
    final structsToGenerate = loadMap('win32_structs.json');
    final projection =
        StructProjection(typeDef!, comment: structsToGenerate[type] ?? '');
    final fileName = typeDef.safeIdentifier.toLowerCase();
    compareGolden(
      typeDef.name,
      'structs/$fileName.g',
      projection.toString().format(),
    );
  });
}

extension on String {
  String convertLineEndingsToLF() => replaceAll('\r\n', '\n');

  String format() => DartFormatter(lineEnding: '\n').format(this);
}
