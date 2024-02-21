// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Extension method for converting integer to fixed-length hexadecimal string.
extension IntToHexConversion on int {
  /// Converts this integer to a hexadecimal string with the specified [width].
  ///
  /// For example, `255.toHexString(8)` returns `0xFF`.
  ///
  /// [width] parameter specifies the width of the hexadecimal representation.
  /// Typically, it's 8, 16, 32, or 64, but other multiples of 8 are allowed.
  ///
  /// If [width] is not divisible by 8, an empty string is returned.
  String toHexString(int width) {
    if ((width % 8) != 0) return '';

    // Need to cast to a BigInt because Dart integers are signed 64-bit values.
    final bigInt = BigInt.from(this);
    final value = bigInt.toUnsigned(width);
    return '0x${value.toRadixString(16).padLeft(width ~/ 4, '0')}';
  }
}
