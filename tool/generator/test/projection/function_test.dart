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

  group('FunctionProjection', () {
    testFunction('Windows.Wdk.Foundation.Apis', 'NtQueryObject', (projection) {
      expect(projection.name, equals('NtQueryObject'));
      expect(projection.lib, equals('ntdll'));
      final FunctionProjection(
        :nativePrototype,
        :dartPrototype,
        :functionArguments
      ) = projection;
      expect(
        nativePrototype,
        equals(
          'Int32 Function(IntPtr handle, Int32 objectInformationClass, '
          'Pointer objectInformation, Uint32 objectInformationLength, '
          'Pointer<Uint32> returnLength)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(int handle, int objectInformationClass, '
          'Pointer objectInformation, int objectInformationLength, '
          'Pointer<Uint32> returnLength)',
        ),
      );
      expect(
        functionArguments,
        equals(
          'handle ?? 0, objectInformationClass, '
          'objectInformation ?? nullptr, objectInformationLength, '
          'returnLength ?? nullptr',
        ),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int NtQueryObject(int? handle, '
          'int objectInformationClass, Pointer? objectInformation, '
          'int objectInformationLength, Pointer<Uint32>? returnLength)',
        ),
      );
      expect(
        projection.functionBody,
        equals('_NtQueryObject($functionArguments);'),
      );
      expect(
        projection.cachedLookup,
        equals(
          "final _NtQueryObject = _ntdll.lookupFunction<"
          "$nativePrototype, $dartPrototype>('NtQueryObject');",
        ),
      );
    });

    testFunction('Windows.Win32.Media.Audio.Apis', 'midiConnect', (projection) {
      expect(projection.name, equals('midiConnect'));
      expect(projection.lib, equals('winmm'));
      final FunctionProjection(
        :nativePrototype,
        :dartPrototype,
        :functionArguments
      ) = projection;
      expect(
        nativePrototype,
        equals('Uint32 Function(IntPtr hmi, IntPtr hmo, Pointer pReserved)'),
      );
      expect(
        dartPrototype,
        equals('int Function(int hmi, int hmo, Pointer pReserved)'),
      );
      expect(functionArguments, equals('hmi, hmo, nullptr'));
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals('int midiConnect(int hmi, int hmo)'),
      );
      expect(
        projection.functionBody,
        equals('_midiConnect($functionArguments);'),
      );
      expect(
        projection.cachedLookup,
        equals(
          "final _midiConnect = _winmm.lookupFunction<"
          "$nativePrototype, $dartPrototype>('midiConnect');",
        ),
      );
    });

    testFunction('Windows.Win32.System.Com.Apis', 'CoCreateInstanceEx',
        (projection) {
      expect(projection.name, equals('CoCreateInstanceEx'));
      expect(projection.lib, equals('ole32'));
      final FunctionProjection(
        :nativePrototype,
        :dartPrototype,
        :functionArguments
      ) = projection;
      expect(
        nativePrototype,
        equals(
          'Int32 Function('
          'Pointer<GUID> clsid, VTablePointer punkOuter, Uint32 dwClsCtx, '
          'Pointer<COSERVERINFO> pServerInfo, Uint32 dwCount, '
          'Pointer<MULTI_QI> pResults)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function('
          'Pointer<GUID> clsid, VTablePointer punkOuter, int dwClsCtx, '
          'Pointer<COSERVERINFO> pServerInfo, int dwCount, '
          'Pointer<MULTI_QI> pResults)',
        ),
      );
      expect(
        functionArguments,
        equals(
          'clsid, punkOuter ?? nullptr, dwClsCtx, pServerInfo ?? nullptr, '
          'dwCount, pResults',
        ),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int CoCreateInstanceEx(Pointer<GUID> clsid, VTablePointer? punkOuter, '
          'int dwClsCtx, Pointer<COSERVERINFO>? pServerInfo, int dwCount, '
          'Pointer<MULTI_QI> pResults)',
        ),
      );
      expect(
        projection.functionBody,
        equals('_CoCreateInstanceEx($functionArguments);'),
      );
      expect(
        projection.cachedLookup,
        equals(
          "final _CoCreateInstanceEx = _ole32.lookupFunction<"
          "$nativePrototype, $dartPrototype>('CoCreateInstanceEx');",
        ),
      );
    });

    testFunction('Windows.Win32.System.Com.Apis', 'CoInitializeEx',
        (projection) {
      expect(projection.name, equals('CoInitializeEx'));
      expect(projection.lib, equals('ole32'));
      final FunctionProjection(
        :nativePrototype,
        :dartPrototype,
        :functionArguments
      ) = projection;
      expect(
        nativePrototype,
        equals('Int32 Function(Pointer pvReserved, Uint32 dwCoInit)'),
      );
      expect(
        dartPrototype,
        equals('int Function(Pointer pvReserved, int dwCoInit)'),
      );
      expect(functionArguments, equals('nullptr, dwCoInit'));
      expect(projection.returnType, equals('int'));
      expect(projection.header, equals('int CoInitializeEx(int dwCoInit)'));
      expect(
        projection.functionBody,
        equals('_CoInitializeEx($functionArguments);'),
      );
      expect(
        projection.cachedLookup,
        equals(
          "final _CoInitializeEx = _ole32.lookupFunction<"
          "$nativePrototype, $dartPrototype>('CoInitializeEx');",
        ),
      );
    });

    testFunction('Windows.Win32.System.WinRT.Apis', 'WindowsConcatString',
        (projection) {
      expect(projection.name, equals('WindowsConcatString'));
      expect(projection.lib, equals('api_ms_win_core_winrt_string_l1_1_0'));
      final FunctionProjection(
        :nativePrototype,
        :dartPrototype,
        :functionArguments
      ) = projection;
      expect(
        nativePrototype,
        equals(
          'Int32 Function(IntPtr string1, IntPtr string2, '
          'Pointer<IntPtr> newString)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(int string1, int string2, Pointer<IntPtr> newString)',
        ),
      );
      expect(
        functionArguments,
        equals('string1 ?? 0, string2 ?? 0, newString'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int WindowsConcatString(int? string1, int? string2, '
          'Pointer<IntPtr> newString)',
        ),
      );
      expect(
        projection.functionBody,
        equals('_WindowsConcatString($functionArguments);'),
      );
      expect(
        projection.cachedLookup,
        equals(
          "final _WindowsConcatString = _api_ms_win_core_winrt_string_l1_1_0"
          ".lookupFunction<$nativePrototype, $dartPrototype>("
          "'WindowsConcatString');",
        ),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testFunction(String parent, String functionName,
    void Function(FunctionProjection) projection) {
  test('$parent.$functionName function', () {
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
