// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../attributes.dart';

extension ParameterHelpers on Parameter {
  /// Returns `true` if the parameter is reserved.
  bool get isReserved => existsAttribute(reservedAttribute);
}
