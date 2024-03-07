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
      await DocsProvider.load();
      final package = LocalStorage.getPackage(DocsProvider.win32DocsPackage);
      expect(package, isNotNull);
      expect(package!.name, equals(DocsProvider.win32DocsPackage));
    });

    test('can find a NuGet package from package name and version', () async {
      await DocsProvider.load(version: win32DocsVersion);
      final package = LocalStorage.getPackage(DocsProvider.win32DocsPackage,
          version: win32DocsVersion);
      expect(package, isNotNull);
      expect(package!.name, equals(DocsProvider.win32DocsPackage));
      expect(package.version, equals(win32DocsVersion));
    });

    test('lists NuGet packages', () async {
      await DocsProvider.load(version: win32DocsVersion);
      final packages = LocalStorage.packages;
      expect(packages, isNotEmpty);
      final win32DocsPackage = packages
          .where((p) => p.name == DocsProvider.win32DocsPackage)
          .lastOrNull;
      expect(win32DocsPackage, isNotNull);
      expect(win32DocsPackage!.name, equals(DocsProvider.win32DocsPackage));
      expect(win32DocsPackage.version, isNotEmpty);
      expect(
        win32DocsPackage.path,
        contains(
            '${LocalStorage.directoryName}\\${DocsProvider.win32DocsPackage}'),
      );
      expect(
        win32DocsPackage.toString(),
        equals(
          '${DocsProvider.win32DocsPackage}@${win32DocsPackage.version} (${win32DocsPackage.path})',
        ),
      );
    });
  });
}
