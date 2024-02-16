// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

/// Returns the [TypeDef] for the given [typeName], if it exists.
///
/// Throws a [StateError] if the type is not found in the metadata.
TypeDef getTypeDef(String typeName) {
  final typeDef = MetadataStore.getMetadataForType(typeName);
  if (typeDef != null) return typeDef;
  throw StateError('`$typeName` type is not found in the metadata.');
}

/// Loads the WDK and Win32 metadata.
Future<(Scope wdk, Scope win32)> loadMetadata() async => (
      MetadataStore.loadWdkMetadata(version: wdkMetadataVersion),
      MetadataStore.loadWin32Metadata(version: win32MetadataVersion)
    ).wait;
