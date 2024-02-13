// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('ParameterProjection', () {
    testParameter(
        'Windows.Wdk.Foundation.Apis', 'NtQueryObject', 'ObjectInformation',
        (projection) {
      expect(projection.name, equals('objectInformation'));
      expect(projection.isOptional, isTrue);
      expect(projection.isReserved, isFalse);
      expect(projection.nativeProjection, equals('Pointer objectInformation'));
      expect(projection.dartProjection, equals('Pointer objectInformation'));
      expect(projection.type, equals('Pointer?'));
      expect(projection.identifier, equals('objectInformation ?? nullptr'));
      expect(projection.toString(), equals('Pointer? objectInformation'));
    });

    testParameter(
        'Windows.Win32.Storage.FileSystem.Apis', 'DecryptFileW', 'dwReserved',
        (projection) {
      expect(projection.name, equals('dwReserved'));
      expect(projection.isOptional, isTrue);
      expect(projection.isReserved, isTrue);
      expect(projection.nativeProjection, equals('Uint32 dwReserved'));
      expect(projection.dartProjection, equals('int dwReserved'));
      expect(projection.type, equals('int?'));
      expect(projection.identifier, equals('0'));
      expect(projection.toString(), equals('int? dwReserved'));
    });

    testParameter(
      'Windows.Win32.System.Com.Apis',
      'CoCreateInstanceEx',
      'Clsid',
      (projection) {
        expect(projection.name, equals('clsid'));
        expect(projection.isOptional, isFalse);
        expect(projection.isReserved, isFalse);
        expect(projection.nativeProjection, equals('Pointer<GUID> clsid'));
        expect(projection.dartProjection, equals('Pointer<GUID> clsid'));
        expect(projection.type, equals('Pointer<GUID>'));
        expect(projection.identifier, equals('clsid'));
        expect(projection.toString(), equals('Pointer<GUID> clsid'));
      },
    );

    testParameter(
      'Windows.Win32.System.Com.Apis',
      'CoCreateInstanceEx',
      'punkOuter',
      (projection) {
        expect(projection.name, equals('punkOuter'));
        expect(projection.isOptional, isTrue);
        expect(projection.isReserved, isFalse);
        expect(projection.nativeProjection, equals('VTablePointer punkOuter'));
        expect(projection.dartProjection, equals('VTablePointer punkOuter'));
        expect(projection.type, equals('VTablePointer?'));
        expect(projection.identifier, equals('punkOuter ?? nullptr'));
        expect(projection.toString(), equals('VTablePointer? punkOuter'));
      },
    );

    testParameter(
      'Windows.Win32.System.Com.Apis',
      'CoInitializeEx',
      'pvReserved',
      (projection) {
        expect(projection.name, equals('pvReserved'));
        expect(projection.isOptional, isTrue);
        expect(projection.isReserved, isTrue);
        expect(projection.nativeProjection, equals('Pointer pvReserved'));
        expect(projection.dartProjection, equals('Pointer pvReserved'));
        expect(projection.type, equals('Pointer?'));
        expect(projection.identifier, equals('nullptr'));
        expect(projection.toString(), equals('Pointer? pvReserved'));
      },
    );

    testParameter(
        'Windows.Win32.System.DataExchange.Apis', 'SetClipboardData', 'hMem',
        (projection) {
      expect(projection.name, equals('hMem'));
      expect(projection.isOptional, isTrue);
      expect(projection.isReserved, isFalse);
      expect(projection.nativeProjection, equals('IntPtr hMem'));
      expect(projection.dartProjection, equals('int hMem'));
      expect(projection.type, equals('int?'));
      expect(projection.identifier, equals('hMem ?? 0'));
      expect(projection.toString(), equals('int? hMem'));
    });

    testParameter('Windows.Win32.UI.Shell.IFileDialog', 'GetFolder', 'ppsi',
        (projection) {
      expect(projection.name, equals('ppsi'));
      expect(projection.isOptional, isFalse);
      expect(projection.isReserved, isFalse);
      expect(
          projection.nativeProjection, equals('Pointer<VTablePointer> ppsi'));
      expect(projection.dartProjection, equals('Pointer<VTablePointer> ppsi'));
      expect(projection.type, equals('Pointer<VTablePointer>'));
      expect(projection.identifier, equals('ppsi'));
      expect(projection.toString(), equals('Pointer<VTablePointer> ppsi'));
    });

    testParameter('Windows.Win32.UI.Shell.IFileDialog', 'SetFolder', 'psi',
        (projection) {
      expect(projection.name, equals('psi'));
      expect(projection.isOptional, isFalse);
      expect(projection.isReserved, isFalse);
      expect(projection.nativeProjection, equals('VTablePointer psi'));
      expect(projection.dartProjection, equals('VTablePointer psi'));
      expect(projection.type, equals('VTablePointer'));
      expect(projection.identifier, equals('psi'));
      expect(projection.toString(), equals('VTablePointer psi'));
    });

    testParameter(
        'Windows.Win32.UI.Shell.IShellFolder', 'ParseDisplayName', 'pchEaten',
        (projection) {
      expect(projection.name, equals('pchEaten'));
      expect(projection.isOptional, isTrue);
      expect(projection.isReserved, isTrue);
      expect(projection.nativeProjection, equals('Pointer<Uint32> pchEaten'));
      expect(projection.dartProjection, equals('Pointer<Uint32> pchEaten'));
      expect(projection.type, equals('Pointer<Uint32>?'));
      expect(projection.identifier, equals('nullptr'));
      expect(projection.toString(), equals('Pointer<Uint32>? pchEaten'));
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testParameter(
  String parent,
  String methodName,
  String parameterName,
  void Function(ParameterProjection) projection,
) {
  test("$parent.$methodName method's $parameterName parameter", () {
    final typeDef = MetadataStore.getMetadataForType(parent);
    expect(
      typeDef,
      isNotNull,
      reason: '`$parent` type is not found in the metadata.',
    );
    final method = typeDef!.findMethod(methodName);
    expect(
      method,
      isNotNull,
      reason: '`$methodName` method is not found in `$parent`.',
    );
    final parameter =
        method!.parameters.where((p) => p.name == parameterName).firstOrNull;
    expect(
      parameter,
      isNotNull,
      reason: '`$parameterName` parameter is not found in the $methodName '
          'method of `$parent`.',
    );
    projection(ParameterProjection(parameter!));
  });
}
