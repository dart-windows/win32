// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'custom_attributes_mixin.dart';
import 'field.dart';
import 'string.dart';

extension TypeDefHelpers on TypeDef {
  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `Windows.Win32.UI.Shell.IShellLink` instead of
  /// `Windows.Win32.UI.Shell.IShellLinkW`).
  String get nameWithoutEncoding {
    var name = this.name;

    if (isNested) {
      final nestedTypes = enclosingClass!.fields
          .where((f) => f.isNested || f.isNestedArray)
          .map((f) => f.isNestedArray
              ? f.typeIdentifier.typeArg!.type!
              : f.typeIdentifier.type!)
          .toList();
      final index = nestedTypes.indexWhere((type) => type.name == name);
      name = '${enclosingClass!.safeTypename}_$index';
    }

    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some TypeDefs have a Unicode suffix (`W`) without corresponding ANSI
    // variants, and they don't have the `UnicodeAttribute`.
    if (name.endsWith('W')) return name.stripAnsiUnicodeSuffix();

    return name;
  }

  /// Returns a safe Dart filename for code generation, derived from the
  /// [safeTypename].
  ///
  /// The format is `{safeTypename in lowercase}.g.dart` (e.g.,
  /// `iunknown.g.dart`).
  String get safeFilename => '${safeTypename.toLowerCase()}.g.dart';

  /// Returns a safe Dart identifier based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeIdentifier` -> `SomeIdentifier`).
  String get safeIdentifier => nameWithoutEncoding.lastComponent.safeIdentifier;

  /// Returns a safe Dart typename based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeType` -> `SomeType`).
  String get safeTypename => nameWithoutEncoding.lastComponent.safeTypename;
}
