// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  test('COM method strings are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setName = iNetwork.methods[1];
    final param = setName.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<Utf16>'));
  });

  test('COM method string pointers are projected to Dart accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getName = iNetwork.methods.first;
    final param = getName.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<Pointer<Utf16>>'));
  });

  test('GUIDs are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkId = iNetwork.findMethod('GetNetworkId')!;
    final param = getNetworkId.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<GUID>'));
    expect(projection.nativeType, equals('Pointer<GUID>'));
  });

  test('Enums like NLM_NETWORK_CATEGORY are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final setCategory = iNetwork.findMethod('SetCategory')!;
    final param = setCategory.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('Int32'));
  });

  test('Pointers to enums are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getCategory = iNetwork.findMethod('GetCategory')!;
    final param = getCategory.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<Int32>'));
    expect(projection.nativeType, equals('Pointer<Int32>'));
  });

  test('Pointers to interfaces are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final getNetworkConnections = iNetwork.findMethod('GetNetworkConnections')!;
    final param = getNetworkConnections.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<VTablePointer>'));
    expect(projection.nativeType, equals('Pointer<VTablePointer>'));
  });

  test('Properties are projected accurately', () {
    final iNetwork = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final isConnected = iNetwork.findMethod('get_IsConnectedToInternet')!;
    final param = isConnected.parameters.first;
    final projection = TypeProjection(param.typeIdentifier);
    expect(projection.dartType, equals('Pointer<Int16>'));
    expect(projection.nativeType, equals('Pointer<Int16>'));
  });

  test('Properties that return Pointer<VTablePointer> are projected accurately',
      () {
    final textPattern = scope.findTypeDef(
        'Windows.Win32.UI.Accessibility.IUIAutomationTextPattern')!;
    final interfaceProjection = ComInterfaceProjection(textPattern);
    final documentRangeProjection = interfaceProjection.methodProjections
        .firstWhere((method) => method.name == 'get_DocumentRange');
    expect(documentRangeProjection.nativePrototype,
        equals('Int32 Function(VTablePointer, Pointer<VTablePointer> range)'));
    expect(documentRangeProjection.dartPrototype,
        equals('int Function(VTablePointer, Pointer<VTablePointer> range)'));
  });

  group('Projection of INetwork', () {
    test('Correct number of projected methods', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final projection = ComInterfaceProjection(iNetwork);
      expect(projection.methodProjections.length, equals(13));
    });

    test('Correct number of parameters in a test method', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final projection = ComInterfaceProjection(iNetwork);
      expect(projection.methodProjections.first.parameters.length, equals(1));
    });

    test('Property can be found in projection', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final projection = ComInterfaceProjection(iNetwork);
      final isConnected = projection.methodProjections
          .indexWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected, isNot(-1));
    });

    test('isConnectedToInternet property is a property', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final projection = ComInterfaceProjection(iNetwork);
      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.method.isGetProperty, isTrue);
    });

    test('isConnectedToInternet property return is HRESULT', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;

      final projection = ComInterfaceProjection(iNetwork);
      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.returnType.nativeType, equals('Int32'));
      expect(isConnected.returnType.dartType, equals('int'));
    });

    test('isConnectedToInternet property parameter is VARIANT_BOOL', () {
      final iNetwork = scope
          .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
      final projection = ComInterfaceProjection(iNetwork);
      final isConnected = projection.methodProjections
          .firstWhere((method) => method.name == 'get_IsConnectedToInternet');
      expect(isConnected.parameters.length, equals(1));
      expect(isConnected.parameters.first.typeProjection.nativeType,
          equals('Pointer<Int16>'));
      expect(isConnected.parameters.first.type, equals('Pointer<Int16>'));
    });
  });

  test(
      'IEnumNetworkConnections.NewEnum projects the appropriate type for '
      'IEnumVARIANT*', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final projection = ComInterfaceProjection(iEnumNetworkConnections);
    final newEnum = projection.methodProjections
        .firstWhere((method) => method.name == 'get__NewEnum');
    expect(newEnum.parameters.length, equals(1));
    expect(newEnum.parameters.first.typeProjection.nativeType,
        equals('Pointer<VTablePointer>'));
    expect(newEnum.parameters.first.type, equals('Pointer<VTablePointer>'));
  });

  test(
      'IApplicationActivationManager.ActivateApplication '
      'projects ACTIVATEOPTIONS as an enum', () {
    final iApplicationActivationManager = scope
        .findTypeDef('Windows.Win32.UI.Shell.IApplicationActivationManager')!;
    final activateApplication =
        iApplicationActivationManager.findMethod('ActivateApplication')!;
    final param = activateApplication.parameters[2];
    final projector = TypeProjection(param.typeIdentifier);
    expect(projector.isEnum, equals(true));
    expect(projector.nativeType, equals('Int32'));
    expect(projector.dartType, equals('int'));
  });
  test('COM interfaces should be represented as Pointers', () {
    final iSpellChecker =
        scope.findTypeDef('Windows.Win32.Globalization.ISpellCheckerFactory')!;
    final createSpellChecker = iSpellChecker.findMethod('CreateSpellChecker')!;
    final type = createSpellChecker
        .parameters.last.typeIdentifier; // ISpellChecker **value
    final typeProjection = TypeProjection(type);
    expect(typeProjection.nativeType, equals('Pointer<VTablePointer>'));
    expect(typeProjection.dartType, equals('Pointer<VTablePointer>'));
  });

  test('Interfaces differentiate between methods and properties 1', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = ComInterfaceProjection(iEnumNetworkConnections);
    final newEnum = interfaceProjection.methodProjections[0];
    expect(newEnum.name, equals('get__NewEnum'));
    expect(newEnum, isA<ComGetPropertyProjection>());
    expect(newEnum, isA<ComMethodProjection>());
  });

  test('Interfaces differentiate between methods and properties 2', () {
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = ComInterfaceProjection(iEnumNetworkConnections);
    final next = interfaceProjection.methodProjections[1];
    expect(next.name, equals('Next'));
    expect(next, isNot(isA<ComGetPropertyProjection>()));
    expect(next, isA<ComMethodProjection>());
  });

  test('Optional parameters are nullable', () {
    final shellFolder =
        scope.findTypeDef('Windows.Win32.Media.Speech.ISpVoice');
    expect(shellFolder, isNotNull);
    final parseDisplayName = shellFolder!.findMethod('Speak');
    expect(parseDisplayName, isNotNull);
    final projection = ComMethodProjection(parseDisplayName!);
    expect(
      projection.methodParams,
      equals(
          'Pointer<Utf16>? pwcs, int dwFlags, Pointer<Uint32>? pulStreamNumber'),
    );
    expect(
      projection.methodArguments,
      equals('ptr, pwcs ?? nullptr, dwFlags, pulStreamNumber ?? nullptr'),
    );
  });

  test('Reserved parameters are hidden', () {
    final shellFolder =
        scope.findTypeDef('Windows.Win32.UI.Shell.IShellFolder');
    expect(shellFolder, isNotNull);
    final parseDisplayName = shellFolder!.findMethod('ParseDisplayName');
    expect(parseDisplayName, isNotNull);
    final projection = ComMethodProjection(parseDisplayName!);
    expect(
      projection.methodParams,
      equals('int hwnd, VTablePointer pbc, Pointer<Utf16> pszDisplayName, '
          'Pointer<Pointer<ITEMIDLIST>> ppidl, Pointer<Uint32> pdwAttributes'),
    );
    expect(
      projection.methodArguments,
      equals('ptr, hwnd, pbc, pszDisplayName, nullptr, ppidl, pdwAttributes'),
    );
  });

  tearDownAll(MetadataStore.close);
}
