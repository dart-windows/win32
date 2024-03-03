// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:msgpack_dart/msgpack_dart.dart';
import 'package:nuget/nuget.dart';

import '../versions.dart';
import 'api_details.dart';
import 'local_storage.dart';

/// A utility class for loading and retrieving API documentation.
///
/// This class provides functionality to download, extract, and load API
/// documentation stored in a NuGet package. It also allows users to retrieve
/// documentation details for a specific API path.
abstract final class ApiDocs {
  /// The map containing loaded API documentation.
  static final _docs = SplayTreeMap<String, ApiDetails>();

  /// A flag indicating whether the docs has been loaded.
  static var _isLoaded = false;

  /// The loaded documentation version.
  static var _loadedVersion = '';

  /// The name of the NuGet package containing the API documentation.
  static const packageName = 'Microsoft.Windows.SDK.Win32Docs';

  /// Loads API documentation from a NuGet package.
  ///
  /// The [version] parameter specifies the version of the documentation to
  /// load.
  /// If the documentation is already loaded, this method does nothing.
  static Future<void> load({String version = win32DocsVersion}) async {
    // If the documentation is already loaded, do nothing.
    if (_isLoaded && _loadedVersion == version) return;

    final packageId = packageName.toLowerCase();
    final client = NuGetClient();

    final path = '${LocalStorage.path}\\$packageName@$version';
    final packageDir = Directory(path);
    final msgpackFile = File('$path\\apidocs.msgpack');

    try {
      if (!msgpackFile.existsSync()) {
        packageDir.createSync(recursive: true);
        print('Downloading $packageId.$version.nupkg...');
        final bytes =
            await client.downloadPackageContent(packageId, version: version);
        print('Extracting $packageId.$version.nupkg...');
        final archive = ZipDecoder().decodeBytes(bytes);
        extractArchiveToDisk(archive, path);
        print('Extracted $packageId.$version.nupkg into "${packageDir.path}"');
      }

      final bytes = msgpackFile.readAsBytesSync();
      final decoded = Deserializer(bytes).decode() as Map<dynamic, dynamic>;
      for (final MapEntry(:key, :value)
          in decoded.cast<String, List<dynamic>>().entries) {
        _docs[key] = ApiDetails.fromList(value);
      }

      _isLoaded = true;
      _loadedVersion = version;
    } finally {
      client.close();
    }
  }

  /// Retrieves API documentation details for a specified API [path].
  ///
  /// Throws an [ArgumentError] if the provided [path] is empty.
  ///
  /// Returns an instance of [ApiDetails] if documentation is available for the
  /// path, otherwise returns `null`.
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
  static Uri? getHelpLink(String path) => getDocs(path)?.helpLink;

  /// Clears the loaded API documentation.
  ///
  /// In order to retrieve documentation again, [load] must be called.
  static void clear() {
    _docs.clear();
    _isLoaded = false;
    _loadedVersion = '';
  }

  static void _ensureLoaded() {
    if (!_isLoaded) {
      throw StateError(
        'API documentation has not been loaded. Please call '
        'ApiDocs.load() before attempting to retrieve documentation.',
      );
    }
  }

  static void _validatePath(String path) {
    if (path.isEmpty) {
      throw ArgumentError.value(path, 'path', 'Must not be empty.');
    }
  }
}
