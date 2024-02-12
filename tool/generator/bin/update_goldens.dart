// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

Iterable<File> get goldenFiles => Directory('test/goldens')
    .listSync(recursive: true)
    .whereType<File>()
    .where((file) => file.path.endsWith('.golden'));

final comInterfacesToGenerate = loadMap('com_types.json');
final structsToGenerate = loadMap('win32_structs.json');

var updatedGoldenFiles = 0;

void main() async {
  await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);

  print('Updating golden files...');

  for (final file in goldenFiles) {
    switch (file.parentDirectory) {
      case 'functions':
        updateFunctionGolden(file);
      case 'interfaces':
        updateInterfaceGolden(file);
      case 'structs':
        updateStructGolden(file);
      default:
        print(
          'Skipping the file `${file.fileName}`. It is not located within a '
          'recognized directory.\nSupported directories include: `functions/`, '
          '`interfaces/`, `structs/`.\nPlease ensure the file is placed in one '
          'of these directories.',
        );
    }
  }

  print('Updated $updatedGoldenFiles golden file(s).');
  MetadataStore.close();
}

void updateFunctionGolden(File file) {
  // The fully qualified type name of the function (e.g.,
  // `Windows.Wdk.Foundation.Apis.NtQueryObject`).
  final fullyQualifiedType = file.fullyQualifiedType;

  // The type that contains the function (e.g., `Windows.Wdk.Foundation.Apis`).
  final parent = (fullyQualifiedType.split('.')..removeLast()).join('.');

  // The function name (e.g., `NtQueryObject`).
  final functionName = fullyQualifiedType.lastComponent;

  final typeDef = MetadataStore.getMetadataForType(parent);
  if (typeDef == null) {
    throw StateError('`$parent` type is not found in the metadata.');
  }

  final method = typeDef.findMethod(functionName);
  if (method == null) {
    throw StateError('`$functionName` function is not found in `$parent`.');
  }

  final projection = FunctionProjection(method);
  updateGoldenFile(file, projection.format());
}

void updateInterfaceGolden(File file) {
  // The fully qualified type name of the COM interface (e.g.,
  // `Windows.Win32.Networking.NetworkListManager.INetwork`).
  final fullyQualifiedType = file.fullyQualifiedType;

  final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
  if (typeDef == null) {
    throw StateError(
      '`$fullyQualifiedType` type is not found in the metadata.',
    );
  }

  final projection = ComInterfaceProjection(
    typeDef,
    comment: comInterfacesToGenerate[fullyQualifiedType]!,
  );
  updateGoldenFile(file, projection.format());
}

void updateStructGolden(File file) {
  // The fully qualified type name of the struct (e.g.,
  // `Windows.Win32.Graphics.Gdi.DEVMODEW`).
  final fullyQualifiedType = file.fullyQualifiedType;

  final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
  if (typeDef == null) {
    throw StateError(
      '`$fullyQualifiedType` type is not found in the metadata.',
    );
  }

  final projection = StructProjection(
    typeDef,
    comment: structsToGenerate[fullyQualifiedType]!,
  );
  updateGoldenFile(file, projection.format());
}

void updateGoldenFile(File file, String projection) {
  final contents = '${file.fullyQualifiedType}|\n$projection';
  final needsUpdate = file.readAsStringSync() != contents;
  if (needsUpdate) {
    // Update the golden file with the latest projection.
    file.writeAsStringSync(contents);
    print('Updated `${file.fileName}` file.');
    updatedGoldenFiles++;
  }
}

extension on File {
  String get fileName => path.split(RegExp(r'[/\\]')).last;

  /// The golden file's first line should be the fully qualified type name of
  /// the function with the trailing `|` (e.g.,
  /// `Windows.Wdk.Foundation.Apis.NtQueryObject|`).
  String get fullyQualifiedType {
    final firstLine = readAsLinesSync().first;
    if (firstLine.contains('|')) return firstLine.split('|').first;
    throw StateError(
      'The first line of the golden file does not match the expected format.\n'
      'Expected format: Fully qualified type followed by a `|` character.\n'
      'Example: Windows.Wdk.Foundation.Apis.NtQueryObject|',
    );
  }

  String get parentDirectory =>
      path.split(RegExp(r'[/\\]')).reversed.skip(1).first;
}

extension on Object {
  String format() => DartFormatter(lineEnding: '\n').format(toString());
}
