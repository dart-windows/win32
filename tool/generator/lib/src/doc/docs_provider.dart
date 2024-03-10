// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:msgpack_dart/msgpack_dart.dart';
import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;

import '../versions.dart';
import 'api_details.dart';
import 'local_storage.dart';

/// A utility class for loading and retrieving API documentation.
///
/// This class provides functionality to download, extract, and load API
/// documentation stored in the [win32DocsPackage]. It also allows users to
/// retrieve documentation details for a specific API path.
abstract final class DocsProvider {
  /// The map containing loaded API documentation.
  static final _docs = <String, ApiDetails>{};

  /// A flag indicating whether the docs has been loaded.
  static bool _isLoaded = false;

  /// The loaded documentation version.
  static String? _loadedVersion;

  /// The NuGet package containing the API documentation.
  static const win32DocsPackage = 'Microsoft.Windows.SDK.Win32Docs';

  /// Loads API documentation from the [win32DocsPackage] with the specified
  /// [version].
  ///
  /// If the documentation with the specified [version] is already loaded,
  /// this method returns without performing any action.
  static Future<void> load({String version = win32DocsVersion}) async {
    if (_isLoaded && _loadedVersion == version) return;

    // If the documentation is already downloaded, load it.
    final package = LocalStorage.getPackage(win32DocsPackage, version: version);
    if (package != null) {
      final msgpackFile = File(p.join(package.path, 'apidocs.msgpack'));
      if (msgpackFile.existsSync()) {
        _loadDocsFromFile(msgpackFile, version);
        return;
      }
    }

    // The lock file is used to prevent multiple processes from downloading the
    // same package at the same time during the test run.
    final lockFile = File(p.join(LocalStorage.path, '$win32DocsPackage.lock'));
    final randomAccessFile = lockFile.openSync(mode: FileMode.write)
      ..lockSync(FileLock.blockingExclusive);
    try {
      return await _loadWin32Docs(version);
    } finally {
      randomAccessFile.closeSync();
      try {
        lockFile.deleteSync();
      } catch (_) {}
    }
  }

  /// Retrieves API documentation details for a specified API [path].
  ///
  /// Throws an [ArgumentError] if the provided [path] is empty.
  ///
  /// Returns `null` if no documentation is available for the API path.
  static ApiDetails? getDocs(String path) {
    _ensureLoaded();
    _validatePath(path);
    return _docs[path];
  }

  /// Retrieves the summary description for a specified API [path].
  ///
  /// Returns `null` if no documentation is available for the API path.
  static String? getDescription(String path) => getDocs(path)?.description;

  /// Retrieves the help link for a specified API [path].
  ///
  /// Returns `null` if no documentation is available for the API path.
  static String? getHelpLink(String path) => getDocs(path)?.helpLink;

  /// Clears the loaded API documentation.
  ///
  /// In order to retrieve documentation again, [load] must be called.
  static void clear() {
    _docs.clear();
    _isLoaded = false;
    _loadedVersion = null;
  }

  static void _loadDocsFromFile(File file, String version) {
    final bytes = file.readAsBytesSync();
    final decoded = Deserializer(bytes).decode() as Map<dynamic, dynamic>;
    for (final MapEntry(:key, :value)
        in decoded.cast<String, List<dynamic>>().entries) {
      _docs[key] = ApiDetails.create(key, value);
    }
    _isLoaded = true;
    _loadedVersion = version;
  }

  static Future<Uint8List> _downloadPackage(String version) async {
    final packageId = win32DocsPackage.toLowerCase();
    print('Downloading $packageId.$version.nupkg...');
    final client = NuGetClient();
    try {
      return await client.downloadPackageContent(packageId, version: version);
    } finally {
      client.close();
    }
  }

  static Future<String> _unpackPackage(String version) async {
    final path = p.join(LocalStorage.path, '$win32DocsPackage@$version');
    final packageDir = Directory(path);
    final msgpackFile = File(p.join(path, 'apidocs.msgpack'));
    if (msgpackFile.existsSync()) return path;

    packageDir.createSync(recursive: true);
    final bytes = await _downloadPackage(version);
    final archive = ZipDecoder().decodeBytes(bytes);
    extractArchiveToDisk(archive, path);
    return path;
  }

  static Future<void> _loadWin32Docs(String version) async {
    final packagePath = await _unpackPackage(version);
    final msgpackFile = File(p.join(packagePath, 'apidocs.msgpack'));
    return _loadDocsFromFile(msgpackFile, version);
  }

  static void _ensureLoaded() {
    if (!_isLoaded) {
      throw StateError(
        'API documentation has not been loaded. Please call '
        'DocsProvider.load() before attempting to retrieve documentation.',
      );
    }
  }

  static void _validatePath(String path) {
    if (path.isEmpty) {
      throw ArgumentError.value(path, 'path', 'Must not be empty.');
    }
  }
}
