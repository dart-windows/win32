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
  if (typeDef != null && typeDef.isDelegate) {
    final callbackProjection = CallbackProjection(typeDef);
    print(callbackProjection.format());
  }
}

void printFunction([String name = 'BroadcastSystemMessageW']) {
  final scopes = MetadataStore.scopeCache.values;
  for (final typeDef in scopes
      .expand((scope) => scope.typeDefs)
      .where((typeDef) => typeDef.name.endsWith('Apis'))) {
    final method = typeDef.findMethod(name);
    if (method != null) {
      final functionProjection = FunctionProjection(method);
      print(functionProjection.format());
    }
  }
}

void printStruct(
    [String type =
        'Windows.Win32.Devices.Usb.USB_NODE_CONNECTION_INFORMATION_EX']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isStruct) {
    final structProjection = StructProjection(typeDef, type.lastComponent);
    print(structProjection.format());
  }
}

void printComInterface(
    [String type = 'Windows.Win32.UI.Shell.IFileOpenDialog']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isInterface) {
    final interfaceProjection = ComInterfaceProjection(typeDef);
    print(interfaceProjection.format());
  }
}

void printComClass([String type = 'Windows.Win32.UI.Shell.IFileOpenDialog']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isClass) {
    final classProjection = ComClassProjection.fromInterface(typeDef);
    print(classProjection.format());
  }
}

void printComMethod(String interface, String methodName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(methodName);
  if (method != null) {
    final methodProjection = ComMethodProjection(method);
    print(methodProjection.format());
  }
}

void printComGetProperty(String interface, String propertyName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(propertyName);
  if (method != null && method.canBeProjectedAsGetter) {
    final methodProjection = ComGetPropertyProjection(method);
    print(methodProjection.format());
  }
}

void printComSetProperty(String interface, String propertyName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(propertyName);
  if (method != null && method.canBeProjectedAsSetter) {
    final methodProjection = ComSetPropertyProjection(method);
    print(methodProjection.format());
  }
}

extension on Object {
  String format() => DartFormatter().format(toString());
}

void main() async {
  await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  await MetadataStore.loadWinRTMetadata(version: winrtMetadataVersion);
  printStruct();
  MetadataStore.close();
}
