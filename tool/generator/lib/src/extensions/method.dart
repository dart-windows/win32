// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'custom_attributes_mixin.dart';
import 'string.dart';

extension MethodHelpers on Method {
  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `GetClassName` instead of `GetClassNameW`).
  String get nameWithoutEncoding {
    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some Methods have a Unicode suffix (`W`) without corresponding ANSI
    // variants, and they don't have the `UnicodeAttribute` (e.g.,
    // `CommandLineToArgvW`).
    if (name.endsWith('W')) return name.stripAnsiUnicodeSuffix();

    return name;
  }

  /// Returns a unique name for the method.
  ///
  /// Dart doesn't allow overloaded methods, so we have to rename methods that
  /// are duplicated.
  String get uniqueName {
    // Check whether multiple methods exist with the same name. We also need to
    // check up the interface chain, since otherwise overloaded methods may be
    // missed. For example, IDWriteFactory2 contains methods that overload those
    // in IDWriteFactory1.
    final overloads = parent.methods.where((m) => m.name == name).toList();
    var interfaceTypeDef = parent;

    // perf optimization to save work on the most common case of IUnknown
    while (interfaceTypeDef.interfaces.isNotEmpty &&
        !(interfaceTypeDef.interfaces.first.name ==
            'Windows.Win32.System.Com.IUnknown')) {
      interfaceTypeDef = interfaceTypeDef.interfaces.first;
      overloads.addAll(interfaceTypeDef.methods.where((m) => m.name == name));
    }

    // If so, and there is more than one entry with the same name, add a suffix
    // to all but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toList();
      final overloadIndex =
          reversedOverloads.indexWhere((m) => m.token == token);
      if (overloadIndex > 0) return '${name.safeIdentifier}_$overloadIndex';
    }

    // Windows.Win32.System.ApplicationInstallationAndServicing.IPMTaskInfo
    // interface includes a .get_RuntimeType() method. We add `_` suffix to it
    // avoid name conflicts with `Object.runtimeType`.
    if (name == 'get_RuntimeType') return 'get_RuntimeType_';

    // Windows.Win32.UI.TabletPC.IInkStrokes interface includes a .ToString()
    // method. We replace this to avoid name conflicts with `Object.toString`.
    if (name == 'ToString') return 'ToUtf16String';

    // Interfaces in the Windows.Win32.Web.MsHtml namespace includes .toString()
    // methods. We replace these to avoid name conflicts with `Object.toString`.
    if (name == 'toString') return 'toUtf16String';

    // Otherwise the original name is fine.
    return name;
  }
}
