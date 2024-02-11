// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

Iterable<File> goldenFiles() => Directory('test/goldens')
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

  for (final file in goldenFiles()) {
    switch (file.parentDirectory) {
      case 'functions':
        updateFunctionGolden(file);
      case 'interfaces':
        updateInterfaceGolden(file);
      case 'structs':
        updateStructGolden(file);
      default:
        print(
          'Skipping `${file.fileName}` file. It is not a recognized golden '
          'file. Make sure it is in the correct directory. Currently supported '
          'directories are `functions`, `interfaces`, and `structs`.',
        );
    }
  }

  print('Updated $updatedGoldenFiles golden file(s).');
  MetadataStore.close();
}

void updateFunctionGolden(File file) {
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
  updateGoldenFile(file, '|$fullyQualifiedType|\n${projection.format()}');
}

void updateInterfaceGolden(File file) {
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
  updateGoldenFile(file, '|$fullyQualifiedType|\n${projection.format()}');
}

void updateStructGolden(File file) {
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
  updateGoldenFile(file, '|$fullyQualifiedType|\n${projection.format()}');
}

void updateGoldenFile(File file, String content) {
  final needsUpdate = file.readAsStringSync() != content;
  if (needsUpdate) {
    // Update the golden file with the latest projection.
    file.writeAsStringSync(content);
    print('Updated `${file.fileName}` file.');
    updatedGoldenFiles++;
  }
}

extension on File {
  String get fileName => path.split(RegExp(r'[/\\]')).last;

  // The golden file's first line is the fully qualified type name of the
  // function with the leading `|` and trailing `|`. For example,
  // `|Windows.Wdk.Foundation.Apis.NtQueryObject|`.
  String get fullyQualifiedType =>
      readAsLinesSync().first.substring(1).split('|').first;

  String get parentDirectory =>
      path.split(RegExp(r'[/\\]')).reversed.skip(1).first;
}

extension on Object {
  String format() => DartFormatter(lineEnding: '\n').format(toString());
}
