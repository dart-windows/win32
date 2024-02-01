// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';

extension CustomAttributesMixinHelpers on CustomAttributesMixin {
  /// Whether the object has an `AnsiAttribute`.
  bool get isAnsi => existsAttribute(ansiAttribute);

  /// Whether the object has a `UnicodeAttribute`.
  bool get isUnicode => existsAttribute(unicodeAttribute);
}
