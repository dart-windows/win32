// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void printCallback(
    [String type =
        'Windows.Win32.System.StationsAndDesktops.DESKTOPENUMPROCW']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null) {
    final callbackProjection = CallbackProjection(typeDef);
    print(callbackProjection);
  }
}

void printFunction([String name = 'BroadcastSystemMessageW']) {
  final scope = MetadataStore.scopeCache['Windows.Win32.winmd']!;
  for (final typeDef in scope.typeDefs.where((e) => e.name.endsWith('Apis'))) {
    final method = typeDef.findMethod(name);
    if (method != null) {
      final functionProjection = FunctionProjection(method);
      print(functionProjection.toString().format());
    }
  }
}

void printStruct(
    [String type =
        'Windows.Win32.Devices.Usb.USB_NODE_CONNECTION_INFORMATION_EX']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null) {
    final structProjection = StructProjection(typeDef, type.lastComponent);
    print(structProjection.toString().format());
  }
}

void printComInterface(
    [String type = 'Windows.Win32.UI.Shell.IFileOpenDialog']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null) {
    final interfaceProjection = ComInterfaceProjection(typeDef);
    print(interfaceProjection.toString().format());
  }
}

void printComClass([String type = 'Windows.Win32.UI.Shell.IFileOpenDialog']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null) {
    final classProjection = ComClassProjection.fromInterface(typeDef);
    print(classProjection.toString().format());
  }
}

void printComMethod(String interface, String methodName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(methodName);
  if (method != null) {
    final methodProjection = ComMethodProjection(method);
    print(methodProjection.toString().format());
  }
}

extension on String {
  String format() => DartFormatter().format(this);
}

void main() async {
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  printStruct();
  MetadataStore.close();
}
