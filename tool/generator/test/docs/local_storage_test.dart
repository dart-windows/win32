// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  group('LocalStorage', () {
    test('can identify a path', () {
      final path = LocalStorage.path;
      expect(path, endsWith(LocalStorage.directoryName));
    });

    test('path should stay constant within same invocation', () {
      final path1 = LocalStorage.path;
      final path2 = LocalStorage.path;
      expect(path1, equals(path2));
    });

    test('directory should exist', () {
      final _ = LocalStorage.path;
      expect(LocalStorage.exists, isTrue);
    });

    test('can find a NuGet package from package name', () async {
      await ApiDocs.load();
      final package = LocalStorage.getPackage(ApiDocs.packageName);
      expect(package, isNotNull);
      expect(package!.name, equals(ApiDocs.packageName));
    });

    test('can find a NuGet package from package name and version', () async {
      await ApiDocs.load(version: win32DocsVersion);
      final package = LocalStorage.getPackage(ApiDocs.packageName,
          version: win32DocsVersion);
      expect(package, isNotNull);
      expect(package!.name, equals(ApiDocs.packageName));
      expect(package.version, equals(win32DocsVersion));
    });

    test('lists NuGet packages', () async {
      await ApiDocs.load(version: win32DocsVersion);
      final packages = LocalStorage.packages;
      expect(packages, isNotEmpty);
      final win32DocsPackage =
          packages.where((p) => p.name == ApiDocs.packageName).lastOrNull;
      expect(win32DocsPackage, isNotNull);
      expect(win32DocsPackage!.name, equals(ApiDocs.packageName));
      expect(win32DocsPackage.version, isNotEmpty);
      expect(
        win32DocsPackage.path,
        contains('${LocalStorage.directoryName}\\${ApiDocs.packageName}'),
      );
      expect(
        win32DocsPackage.toString(),
        equals(
          '${ApiDocs.packageName}@${win32DocsPackage.version} (${win32DocsPackage.path})',
        ),
      );
    });
  });
}
