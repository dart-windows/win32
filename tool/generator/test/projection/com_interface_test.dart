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
  setUpAll(loadMetadata);

  group('ComInterfaceProjection', () {
    testInterface(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections',
        (projection) {
      expect(projection.shortName, equals('IEnumNetworkConnections'));
      expect(projection.header, contains(copyrightHeader));
      expect(projection.importHeader, equalsIgnoringWhitespace('''
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';'''));
      expect(
        projection.interfaceGuidConstant,
        equals(
          "/// @nodoc\n"
          "const IID_IEnumNetworkConnections = '{dcb00006-570f-4a9b-8d69-199fdba5723b}';",
        ),
      );
      expect(projection.classPreamble, equals('/// {@category com}'));
      expect(
        projection.classHeader,
        equals('class IEnumNetworkConnections extends IDispatch'),
      );
      expect(
        projection.constructor,
        equals(
          'IEnumNetworkConnections(super.ptr) '
          ': _vtable = ptr.value.cast<IEnumNetworkConnectionsVtbl>().ref;',
        ),
      );
      expect(projection.ptrField, isEmpty);
      expect(projection.vtableField,
          equals('final IEnumNetworkConnectionsVtbl _vtable;'));
      expect(
        projection.fromInterfaceConstructor,
        equalsIgnoringWhitespace(
          'factory IEnumNetworkConnections.from(IUnknown interface) =>\n'
          'IEnumNetworkConnections('
          'interface.toInterface(IID_IEnumNetworkConnections));',
        ),
      );
      final [newEnum, next, skip, reset, clone] = projection.methodProjections;
      expect(newEnum.camelCasedName, equals('newEnum'));
      expect(newEnum.returnType, equals('VTablePointer'));
      expect(newEnum.parameters.length, equals(1));
      expect(next.camelCasedName, equals('next'));
      expect(next.returnType, equals('int'));
      expect(next.parameters.length, equals(3));
      expect(skip.camelCasedName, equals('skip'));
      expect(skip.returnType, equals('int'));
      expect(skip.parameters.length, equals(1));
      expect(reset.camelCasedName, equals('reset'));
      expect(reset.returnType, equals('int'));
      expect(reset.parameters.length, isZero);
      expect(clone.camelCasedName, equals('clone'));
      expect(clone.returnType, equals('int'));
      expect(clone.parameters.length, equals(1));
      expect(
        projection.vtableStruct,
        equalsIgnoringWhitespace('''
/// @nodoc
base class IEnumNetworkConnectionsVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<VTablePointer> ppEnumVar)>> get__NewEnum;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Uint32 celt, Pointer<VTablePointer> rgelt, Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Uint32 celt)>> Skip;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Reset;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<VTablePointer> ppEnumNetwork)>> Clone;
}'''),
      );
      expect(projection.classTypeDef, isNull);
      expect(projection.classGuidConstant, isEmpty);
    });

    testInterface('Windows.Win32.System.Com.IUnknown', (projection) {
      expect(projection.shortName, equals('IUnknown'));
      expect(projection.header, contains(copyrightHeader));
      expect(projection.importHeader, equalsIgnoringWhitespace('''
import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';'''));
      expect(
        projection.interfaceGuidConstant,
        equals(
          "/// @nodoc\n"
          "const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';",
        ),
      );
      expect(projection.classPreamble, equals('/// {@category com}'));
      expect(projection.classHeader, equals('class IUnknown'));
      expect(
        projection.constructor,
        equals(
          'IUnknown(this.ptr) '
          ': _vtable = ptr.value.cast<IUnknownVtbl>().ref;',
        ),
      );
      expect(projection.ptrField, equals('final VTablePointer ptr;'));
      expect(projection.vtableField, equals('final IUnknownVtbl _vtable;'));
      expect(
        projection.fromInterfaceConstructor,
        equalsIgnoringWhitespace(
          'factory IUnknown.from(IUnknown interface) =>\n'
          'IUnknown(interface.toInterface(IID_IUnknown));',
        ),
      );
      final [queryInterface, addRef, release] = projection.methodProjections;
      expect(queryInterface.camelCasedName, equals('queryInterface'));
      expect(queryInterface.returnType, equals('int'));
      expect(queryInterface.parameters.length, equals(2));
      expect(addRef.camelCasedName, equals('addRef'));
      expect(addRef.returnType, equals('int'));
      expect(addRef.parameters.length, isZero);
      expect(release.camelCasedName, equals('release'));
      expect(release.returnType, equals('int'));
      expect(release.parameters.length, isZero);
      expect(
        projection.vtableStruct,
        equalsIgnoringWhitespace('''
/// @nodoc
base class IUnknownVtbl extends Struct {
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<GUID> riid, Pointer<Pointer> ppvObject)>> QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      Release;
}
'''),
      );
      expect(projection.classTypeDef, isNull);
      expect(projection.classGuidConstant, isEmpty);
    });

    testInterface('Windows.Win32.System.WinRT.IInspectable', (projection) {
      expect(projection.shortName, equals('IInspectable'));
      expect(projection.header, contains(copyrightHeader));
      expect(projection.importHeader, equalsIgnoringWhitespace('''
import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';'''));
      expect(
        projection.interfaceGuidConstant,
        equals(
          "/// @nodoc\n"
          "const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';",
        ),
      );
      expect(projection.classPreamble, equals('/// {@category com}'));
      expect(
        projection.classHeader,
        equals('class IInspectable extends IUnknown'),
      );
      expect(
        projection.constructor,
        equals(
          'IInspectable(super.ptr) '
          ': _vtable = ptr.value.cast<IInspectableVtbl>().ref;',
        ),
      );
      expect(projection.ptrField, isEmpty);
      expect(projection.vtableField, equals('final IInspectableVtbl _vtable;'));
      expect(
        projection.fromInterfaceConstructor,
        equalsIgnoringWhitespace(
          'factory IInspectable.from(IUnknown interface) =>\n'
          'IInspectable(interface.toInterface(IID_IInspectable));',
        ),
      );
      final [getIids, getRuntimeClassName, getTrustLevel] =
          projection.methodProjections;
      expect(getIids.camelCasedName, equals('getIids'));
      expect(getIids.returnType, equals('int'));
      expect(getIids.parameters.length, equals(2));
      expect(getRuntimeClassName.camelCasedName, equals('getRuntimeClassName'));
      expect(getRuntimeClassName.returnType, equals('int'));
      expect(getRuntimeClassName.parameters.length, equals(1));
      expect(getTrustLevel.camelCasedName, equals('getTrustLevel'));
      expect(getTrustLevel.returnType, equals('int'));
      expect(getTrustLevel.parameters.length, equals(1));
      expect(
        projection.vtableStruct,
        equalsIgnoringWhitespace('''
/// @nodoc
base class IInspectableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids)>> GetIids;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<HSTRING> className)>> GetRuntimeClassName;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl,
        Pointer<Int32> trustLevel)>> GetTrustLevel;
}
'''),
      );
      expect(projection.classTypeDef, isNull);
      expect(projection.classGuidConstant, isEmpty);
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testInterface(
    String interfaceName, void Function(ComInterfaceProjection) projection) {
  test(interfaceName, () {
    final typeDef = getTypeDef(interfaceName);
    projection(ComInterfaceProjection(typeDef));
  });
}
