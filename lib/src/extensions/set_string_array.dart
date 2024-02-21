// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../pwstr.dart';
import '../types.dart';

/// Extension method for converting a List of Dart strings into a native memory
/// block suitable for use in interop scenarios, such as writing a list of
/// values to the registry.
extension StringListToUtf16PointerConversion on List<String> {
  /// Packs the list of Dart strings into a native memory block.
  ///
  /// Each string is terminated by a null character (`0`), and the list itself
  /// is terminated by a double null (`00`) to represent the end of the list.
  ///
  /// It is the caller's responsibility to free the memory allocated for the
  /// returned pointer when it's no longer needed. This can be done by calling
  /// the [Allocator.free] method. Optionally, a custom [allocator] can be
  /// provided, such as an FFI `Arena`, to facilitate memory management.
  Pointer<Utf16> toWideCharArray({Allocator allocator = calloc}) {
    var size = 0;

    // Calculate the amount of memory needed to store all of the strings.
    for (final value in this) {
      size += value.length + 1; // +1 to account for null terminator.
    }

    // Allow room for a terminating null after the last value.
    size++;

    final pArray = PWSTR.empty(size, allocator: allocator);
    final ptr = pArray.cast<WCHAR>().asTypedList(size);

    var index = 0;
    for (final value in this) {
      final units = value.codeUnits;
      ptr.setAll(index, units); // Copy string data to memory.
      ptr[index + units.length] = 0; // Null-terminate the string.
      index += value.length + 1; // Move index to next string position.
    }
    ptr[index] = 0; // Double null-terminate to mark end of the list.

    return pArray;
  }
}
