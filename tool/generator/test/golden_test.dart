// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import 'helpers.dart';

void main() {
  setUpAll(loadMetadata);

  group('Golden testing', () {
    group('enum', () {
      testEnumGolden('Windows.Win32.Foundation.WIN32_ERROR');
    });

    group('function', () {
      testFunctionGolden('Windows.Wdk.Foundation.Apis', 'NtQueryObject');

      testFunctionGolden(
        'Windows.Win32.Graphics.Gdi.Apis',
        'EnumDisplayMonitors',
      );
    });

    group('interface', () {
      testComInterfaceGolden(
        'Windows.Win32.Networking.NetworkListManager.INetwork',
      );

      testComInterfaceGolden('Windows.Win32.UI.Shell.IFileOpenDialog');
    });

    group('struct', () {
      testStructGolden('Windows.Win32.Graphics.Gdi.DEVMODEW');

      testStructGolden('Windows.Win32.System.Variant.VARIANT');
    });
  });

  tearDownAll(MetadataStore.close);
}

/// Compares the contents of a [content] with a golden file specified by the
/// [fileName].
void compareGolden(String fullyQualifiedType, String fileName, String content) {
  File(p.join('test', 'goldens', '$fileName.comparison'))
      .writeAsStringSync(content);
  var golden =
      File(p.join('test', 'goldens', '$fileName.golden')).readAsStringSync();
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

@isTest
void testComInterfaceGolden(String interfaceName) {
  test(interfaceName, () {
    final typeDef = getTypeDef(interfaceName);
    final comTypesToGenerate = loadMap(p.join('data', 'com_types.json'));
    final projection = ComInterfaceProjection(typeDef,
        comment: comTypesToGenerate[interfaceName] ?? '');
    final fileName = typeDef.safeIdentifier.toLowerCase();
    compareGolden(
      typeDef.name,
      'interfaces/$fileName.g',
      projection.toString().format(),
    );
  });
}

@isTest
void testEnumGolden(String enumName) {
  test(enumName, () {
    final typeDef = getTypeDef(enumName);
    final enumsToGenerate = loadMap(p.join('data', 'win32_enums.json'));
    final projection =
        EnumProjection(typeDef, comment: enumsToGenerate[enumName] ?? '');
    final fileName = typeDef.safeIdentifier.toLowerCase();
    compareGolden(
      typeDef.name,
      'enums/$fileName.g',
      projection.toString().format(),
    );
  });
}

@isTest
void testFunctionGolden(String parent, String functionName) {
  test('$parent.$functionName', () {
    final typeDef = getTypeDef(parent);
    final method = typeDef.findMethod(functionName);
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

@isTest
void testStructGolden(String structName) {
  test(structName, () {
    final typeDef = getTypeDef(structName);
    final structsToGenerate = loadMap(p.join('data', 'win32_structs.json'));
    final projection =
        StructProjection(typeDef, comment: structsToGenerate[structName] ?? '');
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
