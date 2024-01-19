// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import 'string.dart';

extension MethodHelpers on Method {
  bool get isRealGetProperty => isGetProperty && parameters.length == 1;

  bool get isRealSetProperty => isSetProperty && parameters.length == 1;

  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `GetClassName` instead of `GetClassNameW`).
  String get nameWithoutAnsiUnicodeSuffix => existsAttribute(ansiAttribute) ||
          existsAttribute(unicodeAttribute)
      ? name.stripAnsiUnicodeSuffix()
      : /* name */ name.stripAnsiUnicodeSuffix(); // TODO(halildurmus): -> name

  /// Returns an unique name for the method.
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
      if (overloadIndex > 0) {
        return '${name.safeIdentifier}_$overloadIndex';
      }
    }

    // Windows.Win32.Web.MsHtml includes a .toString() method. We replace this
    // to avoid undue complexity.
    if (name == 'toString') return 'toUtf16String';

    // Otherwise the original name is fine.
    return name;
  }
}
