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
}
