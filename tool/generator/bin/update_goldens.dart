// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

Iterable<File> goldenFiles() => Directory('test/goldens')
    .listSync()
    .whereType<File>()
    .where((file) => file.path.endsWith('.golden'));

final comInterfacesToGenerate = loadMap('com_types.json');
final structsToGenerate = loadMap('win32_structs.json');

void main() async {
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);

  print('Updating golden files...');

  for (final file in goldenFiles()) {
    switch (file.fileName) {
      case 'devmode.g.golden':
        _updateDevModeGolden(file);
      case 'ifileopendialog.g.golden':
        _updateIFileOpenDialogGolden(file);
      case 'inetwork.g.golden':
        _updateINetworkGolden(file);
      case 'variant.g.golden':
        _updateVariantGolden(file);
      default:
        print(
          'Skipping `${file.fileName}` file. Either update it manually or '
          'update the `update_golden_tests.dart` file to support '
          'auto-updating it.',
        );
    }
  }

  print('Done.');
  MetadataStore.close();
}

void _updateDevModeGolden(File file) {
  const type = 'Windows.Win32.Graphics.Gdi.DEVMODEW';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final projection =
      StructProjection(typeDef, comment: structsToGenerate[type]!);
  _updateGoldenFile(file, projection.format());
}

void _updateIFileOpenDialogGolden(File file) {
  const type = 'Windows.Win32.UI.Shell.IFileOpenDialog';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final projection =
      ComInterfaceProjection(typeDef, comment: comInterfacesToGenerate[type]!);
  _updateGoldenFile(file, projection.format());
}

void _updateINetworkGolden(File file) {
  const type = 'Windows.Win32.Networking.NetworkListManager.INetwork';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final projection =
      ComInterfaceProjection(typeDef, comment: comInterfacesToGenerate[type]!);
  _updateGoldenFile(file, projection.format());
}

void _updateVariantGolden(File file) {
  const type = 'Windows.Win32.System.Variant.VARIANT';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final projection =
      StructProjection(typeDef, comment: structsToGenerate[type]!);
  _updateGoldenFile(file, projection.format());
}

void _updateGoldenFile(File file, String projection) {
  // Update the golden file with the latest projection.
  file.writeAsStringSync(projection);
  print('Updated `${file.fileName}` file.');
}

extension on File {
  String get fileName => path.split(RegExp(r'[/\\]')).last;
}

extension on Object {
  String format() => DartFormatter().format(toString());
}
