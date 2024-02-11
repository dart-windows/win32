// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('FunctionProjection', () {
    testFunction('Windows.Wdk.Foundation.Apis', 'NtQueryObject', (projection) {
      expect(projection.lib, equals('ntdll'));
      expect(
        projection.nativeParameters,
        equals('IntPtr handle, Int32 objectInformationClass, '
            'Pointer objectInformation, Uint32 objectInformationLength, '
            'Pointer<Uint32> returnLength'),
      );
      expect(
        projection.nativePrototype,
        equals('Int32 Function(IntPtr handle, Int32 objectInformationClass, '
            'Pointer objectInformation, Uint32 objectInformationLength, '
            'Pointer<Uint32> returnLength)'),
      );
      expect(
        projection.dartParameters,
        equals('int handle, int objectInformationClass, '
            'Pointer objectInformation, int objectInformationLength, '
            'Pointer<Uint32> returnLength'),
      );
      expect(
        projection.dartPrototype,
        equals('int Function(int handle, int objectInformationClass, '
            'Pointer objectInformation, int objectInformationLength, '
            'Pointer<Uint32> returnLength)'),
      );
      expect(
        projection.functionParameters,
        equals('int? handle, int objectInformationClass, '
            'Pointer? objectInformation, int objectInformationLength, '
            'Pointer<Uint32>? returnLength'),
      );
      expect(
        projection.functionArguments,
        equals('handle ?? 0, objectInformationClass, '
            'objectInformation ?? nullptr, objectInformationLength, '
            'returnLength ?? nullptr'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals('int NtQueryObject(int? handle, '
            'int objectInformationClass, Pointer? objectInformation, '
            'int objectInformationLength, Pointer<Uint32>? returnLength)'),
      );
      expect(
        projection.functionBody,
        equals('_NtQueryObject(handle ?? 0, '
            'objectInformationClass, objectInformation ?? nullptr, '
            'objectInformationLength, returnLength ?? nullptr);'),
      );
      expect(
        projection.cachedLookup,
        equals("final _NtQueryObject = _ntdll.lookupFunction<"
            "Int32 Function(IntPtr handle, Int32 objectInformationClass, "
            "Pointer objectInformation, Uint32 objectInformationLength, "
            "Pointer<Uint32> returnLength), "
            "int Function(int handle, int objectInformationClass, "
            "Pointer objectInformation, int objectInformationLength, "
            "Pointer<Uint32> returnLength)>('NtQueryObject');"),
      );
    });

    testFunction('Windows.Win32.System.Com.Apis', 'CoCreateInstanceEx',
        (projection) {
      expect(projection.lib, equals('ole32'));
      expect(
        projection.nativeParameters,
        equals('Pointer<GUID> clsid, VTablePointer punkOuter, Uint32 dwClsCtx, '
            'Pointer<COSERVERINFO> pServerInfo, Uint32 dwCount, '
            'Pointer<MULTI_QI> pResults'),
      );
      expect(
        projection.nativePrototype,
        equals('Int32 Function('
            'Pointer<GUID> clsid, VTablePointer punkOuter, Uint32 dwClsCtx, '
            'Pointer<COSERVERINFO> pServerInfo, Uint32 dwCount, '
            'Pointer<MULTI_QI> pResults)'),
      );
      expect(
        projection.dartParameters,
        equals('Pointer<GUID> clsid, VTablePointer punkOuter, int dwClsCtx, '
            'Pointer<COSERVERINFO> pServerInfo, int dwCount, '
            'Pointer<MULTI_QI> pResults'),
      );
      expect(
        projection.dartPrototype,
        equals('int Function('
            'Pointer<GUID> clsid, VTablePointer punkOuter, int dwClsCtx, '
            'Pointer<COSERVERINFO> pServerInfo, int dwCount, '
            'Pointer<MULTI_QI> pResults)'),
      );
      expect(
        projection.functionParameters,
        equals('Pointer<GUID> clsid, VTablePointer? punkOuter, int dwClsCtx, '
            'Pointer<COSERVERINFO>? pServerInfo, int dwCount, '
            'Pointer<MULTI_QI> pResults'),
      );
      expect(
        projection.functionArguments,
        equals('clsid, punkOuter ?? nullptr, dwClsCtx, pServerInfo ?? nullptr, '
            'dwCount, pResults'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
            'int CoCreateInstanceEx(Pointer<GUID> clsid, VTablePointer? punkOuter, '
            'int dwClsCtx, Pointer<COSERVERINFO>? pServerInfo, int dwCount, '
            'Pointer<MULTI_QI> pResults)'),
      );
      expect(
        projection.functionBody,
        equals('_CoCreateInstanceEx(clsid, punkOuter ?? nullptr, dwClsCtx, '
            'pServerInfo ?? nullptr, dwCount, pResults);'),
      );
      expect(
        projection.cachedLookup,
        equals("final _CoCreateInstanceEx = _ole32.lookupFunction<"
            "Int32 Function("
            "Pointer<GUID> clsid, VTablePointer punkOuter, Uint32 dwClsCtx, "
            "Pointer<COSERVERINFO> pServerInfo, Uint32 dwCount, "
            "Pointer<MULTI_QI> pResults), "
            "int Function("
            "Pointer<GUID> clsid, VTablePointer punkOuter, int dwClsCtx, "
            "Pointer<COSERVERINFO> pServerInfo, int dwCount, "
            "Pointer<MULTI_QI> pResults)>('CoCreateInstanceEx');"),
      );
    });

    testFunction('Windows.Win32.System.Com.Apis', 'CoInitializeEx',
        (projection) {
      expect(projection.lib, equals('ole32'));
      expect(projection.nativeParameters,
          equals('Pointer pvReserved, Uint32 dwCoInit'));
      expect(projection.nativePrototype,
          equals('Int32 Function(Pointer pvReserved, Uint32 dwCoInit)'));
      expect(projection.dartParameters,
          equals('Pointer pvReserved, int dwCoInit'));
      expect(projection.dartPrototype,
          equals('int Function(Pointer pvReserved, int dwCoInit)'));
      expect(projection.functionParameters, equals('int dwCoInit'));
      expect(projection.functionArguments, equals('nullptr, dwCoInit'));
      expect(projection.returnType, equals('int'));
      expect(projection.header, equals('int CoInitializeEx(int dwCoInit)'));
      expect(projection.functionBody,
          equals('_CoInitializeEx(nullptr, dwCoInit);'));
      expect(
        projection.cachedLookup,
        equals("final _CoInitializeEx = _ole32.lookupFunction<"
            "Int32 Function(Pointer pvReserved, Uint32 dwCoInit), "
            "int Function(Pointer pvReserved, int dwCoInit)>('CoInitializeEx');"),
      );
    });

    testFunction('Windows.Win32.System.WinRT.Apis', 'WindowsConcatString',
        (projection) {
      expect(projection.lib, equals('api_ms_win_core_winrt_string_l1_1_0'));
      expect(
        projection.nativeParameters,
        equals('IntPtr string1, IntPtr string2, Pointer<IntPtr> newString'),
      );
      expect(
        projection.nativePrototype,
        equals('Int32 Function(IntPtr string1, IntPtr string2, '
            'Pointer<IntPtr> newString)'),
      );
      expect(
        projection.dartParameters,
        equals('int string1, int string2, Pointer<IntPtr> newString'),
      );
      expect(
        projection.dartPrototype,
        equals(
            'int Function(int string1, int string2, Pointer<IntPtr> newString)'),
      );
      expect(
        projection.functionParameters,
        equals('int? string1, int? string2, Pointer<IntPtr> newString'),
      );
      expect(
        projection.functionArguments,
        equals('string1 ?? 0, string2 ?? 0, newString'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals('int WindowsConcatString(int? string1, int? string2, '
            'Pointer<IntPtr> newString)'),
      );
      expect(
        projection.functionBody,
        equals('_WindowsConcatString(string1 ?? 0, string2 ?? 0, newString);'),
      );
      expect(
        projection.cachedLookup,
        equals(
            "final _WindowsConcatString = _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<"
            "Int32 Function(IntPtr string1, IntPtr string2, Pointer<IntPtr> newString), "
            "int Function(int string1, int string2, Pointer<IntPtr> newString)>('WindowsConcatString');"),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

void testFunction(String parent, String functionName,
    void Function(FunctionProjection) projection) {
  test("$parent.$functionName function", () {
    final typeDef = MetadataStore.getMetadataForType(parent);
    expect(
      typeDef,
      isNotNull,
      reason: '`$parent` type is not found in the metadata.',
    );
    final method = typeDef!.findMethod(functionName);
    expect(
      method,
      isNotNull,
      reason: '`$functionName` function is not found in `$parent`.',
    );
    projection(FunctionProjection(method!));
  });
}
