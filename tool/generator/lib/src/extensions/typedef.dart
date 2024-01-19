// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import 'string.dart';

extension TypeDefHelpers on TypeDef {
  /// Convert a nested type to a guaranteed-unique name.
  String mangleName() {
    final name = nameWithoutAnsiUnicodeSuffix.lastComponent;
    if (!isNested) return '_$name';
    return '${enclosingClass!.mangleName()}_$name';
  }

  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `Windows.Win32.UI.Shell.IShellLink` instead of
  /// `Windows.Win32.UI.Shell.IShellLinkW`).
  String get nameWithoutAnsiUnicodeSuffix {
    if (existsAttribute(ansiAttribute) || existsAttribute(unicodeAttribute)) {
      return name.stripAnsiUnicodeSuffix();
    }

    // Some TypeDefs have a Unicode suffix (`W`) without corresponding ANSI
    // variants, and they don't have the `UnicodeAttribute`.
    if (name.endsWith('W')) return name.stripAnsiUnicodeSuffix();

    return name;
  }

  String get safeIdentifier =>
      nameWithoutAnsiUnicodeSuffix.lastComponent.safeIdentifier;

  String get safeTypename =>
      nameWithoutAnsiUnicodeSuffix.lastComponent.safeTypename;
}
