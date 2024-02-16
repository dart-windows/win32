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

  group('ComMethodProjection', () {
    testMethod('Windows.Win32.Media.Speech.ISpVoice', 'Speak', (projection) {
      final ComMethodProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('Speak'));
      expect(camelCasedName, equals('speak'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, PWSTR pwcs, Uint32 dwFlags, '
          'Pointer<Uint32> pulStreamNumber)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, PWSTR pwcs, int dwFlags, '
          'Pointer<Uint32> pulStreamNumber)',
        ),
      );
      expect(
        methodArguments,
        equals('ptr, pwcs ?? nullptr, dwFlags, pulStreamNumber ?? nullptr'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int $camelCasedName(PWSTR? pwcs, int dwFlags, '
          'Pointer<Uint32>? pulStreamNumber)',
        ),
      );
      expect(
        projection.methodBody,
        equals(
          '_vtable.$name.asFunction<$dartPrototype>()($methodArguments);',
        ),
      );
    });

    testMethod('Windows.Win32.UI.Shell.IModalWindow', 'Show', (projection) {
      final ComMethodProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('Show'));
      expect(camelCasedName, equals('show'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, HWND hwndOwner)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, int hwndOwner)',
        ),
      );
      expect(
        methodArguments,
        equals('ptr, hwndOwner ?? 0'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int $camelCasedName(int? hwndOwner)',
        ),
      );
      expect(
        projection.methodBody,
        equals(
          '_vtable.$name.asFunction<$dartPrototype>()($methodArguments);',
        ),
      );
    });

    testMethod('Windows.Win32.UI.Shell.IShellFolder', 'ParseDisplayName',
        (projection) {
      final ComMethodProjection(
        :name,
        :camelCasedName,
        :nativePrototype,
        :dartPrototype,
        :methodArguments
      ) = projection;
      expect(name, equals('ParseDisplayName'));
      expect(camelCasedName, equals('parseDisplayName'));
      expect(
        nativePrototype,
        equals(
          'HRESULT Function(VTablePointer lpVtbl, HWND hwnd, '
          'VTablePointer pbc, PWSTR pszDisplayName, '
          'Pointer<Uint32> pchEaten, Pointer<Pointer<ITEMIDLIST>> ppidl, '
          'Pointer<Uint32> pdwAttributes)',
        ),
      );
      expect(
        dartPrototype,
        equals(
          'int Function(VTablePointer lpVtbl, int hwnd, VTablePointer pbc, '
          'PWSTR pszDisplayName, Pointer<Uint32> pchEaten, '
          'Pointer<Pointer<ITEMIDLIST>> ppidl, Pointer<Uint32> pdwAttributes)',
        ),
      );
      expect(
        methodArguments,
        equals('ptr, hwnd, pbc, pszDisplayName, nullptr, ppidl, pdwAttributes'),
      );
      expect(projection.returnType, equals('int'));
      expect(
        projection.header,
        equals(
          'int $camelCasedName(int hwnd, VTablePointer pbc, '
          'PWSTR pszDisplayName, Pointer<Pointer<ITEMIDLIST>> ppidl, '
          'Pointer<Uint32> pdwAttributes)',
        ),
      );
      expect(
        projection.methodBody,
        equals(
          '_vtable.$name.asFunction<$dartPrototype>()($methodArguments);',
        ),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testMethod(String parent, String methodName,
    void Function(ComMethodProjection) projection) {
  test('$parent.$methodName', () {
    final typeDef = getTypeDef(parent);
    final method = typeDef.findMethod(methodName);
    expect(
      method,
      isNotNull,
      reason: '`$methodName` method is not found in `$parent`.',
    );
    projection(ComMethodProjection(method!));
  });
}
