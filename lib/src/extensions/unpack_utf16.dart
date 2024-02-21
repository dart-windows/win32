// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';

/// Extension method for converting a null-terminated UTF-16 string array into a
/// list of Dart strings.
extension Utf16PointerToStringListConversion on Pointer<Utf16> {
  /// Unpacks an array of null-terminated strings from the memory block pointed
  /// to by this pointer.
  ///
  /// It assumes that the array contains null-terminated strings, with the final
  /// element terminated by a second null character (`00`).
  ///
  /// The [maxLength] parameter specifies the maximum number of strings to
  /// unpack from the memory block.
  List<String> unpackStringArray(int maxLength) {
    final results = <String>[];
    final buffer = StringBuffer();
    final ptr = cast<WCHAR>();

    for (var v = 0; v < maxLength; v++) {
      final charCode = (ptr + v).value;
      if (charCode != 0) {
        buffer.writeCharCode(charCode); // Append non-null character to buffer.
      } else {
        results.add(buffer.toString()); // Add constructed string to results.

        // Check for double null terminator.
        if ((ptr + v + 1).value == 0) break;

        buffer.clear(); // Clear buffer for next string.
      }
    }

    // If the array doesn't terminate before the maxLength is reached, just
    // return the complete results thus far.
    return results;
  }
}
