// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadataAndDocs);

  group('ComGetPropertyProjection', () {
    testGetProperty(
        'Windows.Win32.Globalization.ISpellChecker', 'get_LanguageTag',
        (projection) {
      final ComGetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('get_LanguageTag'));
      expect(camelCasedName, equals('languageTag'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, '
          'Pointer<Pointer<Utf16>> value)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, '
          'Pointer<Pointer<Utf16>> value)',
        ),
      );
      expect(methodArguments, equals('ptr, value'));
      expect(projection.returnType, equals('Pointer<Utf16>'));
      expect(projection.header, equals('Pointer<Utf16> get $camelCasedName'));
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
  final value = calloc<Pointer<Utf16>>();
  try {
    final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
    if (FAILED(hr)) throw WindowsException(hr);
    final retValue = value.value;
    return retValue;
  } finally {
    free(value);
  }
'''),
      );
    });

    testGetProperty('Windows.Win32.Networking.NetworkListManager.IEnumNetworks',
        'get__NewEnum', (projection) {
      final ComGetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('get__NewEnum'));
      expect(camelCasedName, equals('newEnum'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, '
          'Pointer<VTablePointer> ppEnumVar)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, '
          'Pointer<VTablePointer> ppEnumVar)',
        ),
      );
      expect(methodArguments, equals('ptr, ppEnumVar'));
      expect(projection.returnType, equals('VTablePointer'));
      expect(
        projection.header,
        equals('VTablePointer get $camelCasedName'),
      );
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
  final ppEnumVar = calloc<VTablePointer>();
  try {
    final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
    if (FAILED(hr)) throw WindowsException(hr);
    final retValue = ppEnumVar.value;
    return retValue;
  } finally {
    free(ppEnumVar);
  }
'''),
      );
    });

    testGetProperty('Windows.Win32.Networking.NetworkListManager.INetwork',
        'get_IsConnected', (projection) {
      final ComGetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('get_IsConnected'));
      expect(camelCasedName, equals('isConnected'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, '
          'Pointer<VARIANT_BOOL> pbIsConnected)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, '
          'Pointer<VARIANT_BOOL> pbIsConnected)',
        ),
      );
      expect(methodArguments, equals('ptr, pbIsConnected'));
      expect(projection.returnType, equals('int'));
      expect(projection.header, equals('int get $camelCasedName'));
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
  final pbIsConnected = calloc<VARIANT_BOOL>();
  try {
    final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
    if (FAILED(hr)) throw WindowsException(hr);
    final retValue = pbIsConnected.value;
    return retValue;
  } finally {
    free(pbIsConnected);
  }
'''),
      );
    });

    testGetProperty(
        'Windows.Win32.Networking.WinHttp.IWinHttpRequest', 'get_ResponseBody',
        (projection) {
      final ComGetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('get_ResponseBody'));
      expect(camelCasedName, equals('responseBody'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, Pointer<VARIANT> body)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, Pointer<VARIANT> body)',
        ),
      );
      expect(methodArguments, equals('ptr, body'));
      expect(projection.returnType, equals('Pointer<VARIANT>'));
      expect(projection.header, equals('Pointer<VARIANT> get $camelCasedName'));
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
  final body = calloc<VARIANT>();
  final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
  if (FAILED(hr)) { free(body); throw WindowsException(hr); }
  return body;
'''),
      );
    });

    testGetProperty(
        'Windows.Win32.UI.Accessibility.IUIAutomationRangeValuePattern',
        'get_CurrentValue', (projection) {
      final ComGetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('get_CurrentValue'));
      expect(camelCasedName, equals('currentValue'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, Pointer<Double> retVal)',
        ),
      );
      expect(methodArguments, equals('ptr, retVal'));
      expect(projection.returnType, equals('double'));
      expect(projection.header, equals('double get $camelCasedName'));
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
      final retVal = calloc<Double>();
      try {
        final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
        if (FAILED(hr)) throw WindowsException(hr);
        final retValue = retVal.value;
        return retValue;
      } finally {
        free(retVal);
      }
    '''),
      );
    });
  });

  group('ComSetPropertyProjection', () {
    testSetProperty('Windows.Win32.Media.Speech.ISpeechVoice', 'put_Volume',
        (projection) {
      final ComSetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('put_Volume'));
      expect(camelCasedName, equals('volume'));
      expect(
        nativePrototype,
        equals('HRESULT Function(VTablePointer lpVtbl, Int32 volume)'),
      );
      expect(
        dartPrototype,
        equals('int Function(VTablePointer lpVtbl, int volume)'),
      );
      expect(methodArguments, equals('ptr, volume'));
      expect(projection.returnType, equals('void'));
      expect(
        projection.header,
        equals('set $camelCasedName(int volume)'),
      );
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
    final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
    if (FAILED(hr)) throw WindowsException(hr);
'''),
      );
    });

    testSetProperty('Windows.Win32.UI.Shell.IShellLinkDual', 'put_Description',
        (projection) {
      final ComSetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('put_Description'));
      expect(camelCasedName, equals('description'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> bs)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, Pointer<Utf16> bs)',
        ),
      );
      expect(methodArguments, equals('ptr, bs'));
      expect(projection.returnType, equals('void'));
      expect(
        projection.header,
        equals('set $camelCasedName(Pointer<Utf16> bs)'),
      );
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
if (FAILED(hr)) throw WindowsException(hr);
'''),
      );
    });

    testSetProperty('Windows.Win32.UI.Accessibility.IUIAutomationCacheRequest',
        'put_TreeFilter', (projection) {
      final ComSetPropertyProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('put_TreeFilter'));
      expect(camelCasedName, equals('treeFilter'));
      expect(
        nativePrototype,
        equals('HRESULT Function(VTablePointer lpVtbl, VTablePointer filter)'),
      );
      expect(
        dartPrototype,
        equals('int Function(VTablePointer lpVtbl, VTablePointer filter)'),
      );
      expect(methodArguments, equals('ptr, filter'));
      expect(projection.returnType, equals('void'));
      expect(
        projection.header,
        equals('set $camelCasedName(VTablePointer filter)'),
      );
      expect(
        projection.methodBody,
        equalsIgnoringWhitespace('''
final hr = _vtable.$name.asFunction<$dartPrototype>()($methodArguments);
if (FAILED(hr)) throw WindowsException(hr);
'''),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testGetProperty(String parent, String propertyName,
    void Function(ComGetPropertyProjection) projection) {
  test('$parent.$propertyName', () {
    final typeDef = getTypeDef(parent);
    final method = typeDef.findMethod(propertyName);
    expect(
      method,
      isNotNull,
      reason: '`$propertyName` property is not found in `$parent`.',
    );
    projection(ComGetPropertyProjection(method!));
  });
}

@isTest
void testSetProperty(String parent, String propertyName,
    void Function(ComSetPropertyProjection) projection) {
  test('$parent.$propertyName', () {
    final typeDef = getTypeDef(parent);
    final method = typeDef.findMethod(propertyName);
    expect(
      method,
      isNotNull,
      reason: '`$propertyName` property is not found in `$parent`.',
    );
    projection(ComSetPropertyProjection(method!));
  });
}
