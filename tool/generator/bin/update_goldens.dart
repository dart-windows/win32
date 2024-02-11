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

var updatedFiles = 0;

void main() async {
  await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);

  print('Updating golden files...');

  for (final file in goldenFiles()) {
    switch (file.fileName) {
      case 'devmode.g.golden':
        _updateDevModeGolden(file);
      case 'enumdisplaymonitors.g.golden':
        _updateEnumDisplayMonitorsGolden(file);
      case 'ifileopendialog.g.golden':
        _updateIFileOpenDialogGolden(file);
      case 'inetwork.g.golden':
        _updateINetworkGolden(file);
      case 'ntqueryobject.g.golden':
        _updateNtQueryObjectGolden(file);
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

  print('Updated $updatedFiles golden file(s).');
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

void _updateEnumDisplayMonitorsGolden(File file) {
  const type = 'Windows.Win32.Graphics.Gdi.Apis';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final method = typeDef.findMethod('EnumDisplayMonitors');
  if (method == null) {
    throw StateError('Could not find `EnumDisplayMonitors` in the metadata.');
  }

  final projection = FunctionProjection(method);
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

void _updateNtQueryObjectGolden(File file) {
  const type = 'Windows.Wdk.Foundation.Apis';
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) {
    throw StateError('Could not find `$type` in the metadata.');
  }

  final method = typeDef.findMethod('NtQueryObject');
  if (method == null) {
    throw StateError('Could not find `NtQueryObject` in the metadata.');
  }

  final projection = FunctionProjection(method);
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
  final needsUpdate = file.readAsStringSync() != projection;
  if (needsUpdate) {
    // Update the golden file with the latest projection.
    file.writeAsStringSync(projection);
    print('Updated `${file.fileName}` file.');
    updatedFiles++;
  }
}

extension on File {
  String get fileName => path.split(RegExp(r'[/\\]')).last;
}

extension on Object {
  String format() => DartFormatter().format(toString());
}
