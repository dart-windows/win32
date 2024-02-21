// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';

/// Extension method for writing a string to a memory location pointed by a
/// `Pointer<Utf16>`.
extension Utf16PointerSetString on Pointer<Utf16> {
  /// Writes the provided string to the memory starting at the pointer location.
  ///
  /// The memory at the pointer address should already be allocated with
  /// sufficient space to accommodate the string to avoid buffer overruns.
  ///
  /// Returns the number of bytes written, including the terminator.
  int setString(String string) {
    final ptr = cast<WCHAR>();
    final units = string.codeUnits;
    final nativeString = ptr.asTypedList(units.length + 1)..setAll(0, units);
    nativeString[units.length] = 0; // NUL-terminate the string.
    return (units.length + 1) * 2;
  }
}
