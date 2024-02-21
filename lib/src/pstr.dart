// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'types.dart';

/// A native zero-terminated array of 8-bit Windows (ANSI) characters.
extension type const PSTR(Pointer<Utf8> _) implements Pointer<Utf8> {
  /// Creates an empty PSTR that can hold [length] characters, including the
  /// terminator.
  ///
  /// [length] indicates the number of characters to allocate space for.
  ///
  /// This is useful when allocating a buffer for a string that will be
  /// populated later, such as when calling a Windows API function that writes
  /// to a buffer provided by the caller.
  ///
  /// It is the caller's responsibility to free the memory allocated for the
  /// returned PSTR when it is no longer needed. This can be achieved by calling
  /// the [free] method. Optionally, a FFI `Arena` can be passed as a custom
  /// allocator to facilitate memory management.
  PSTR.empty(int length, {Allocator allocator = calloc})
      : this(allocator<BYTE>(length).cast());

  /// Creates a PSTR from the provided [string].
  ///
  /// Unlike the FFI-provided `toNativeUtf8` method, this will always return a
  /// single byte for every character in the original string. As a result, this
  /// method will not deal with characters that are not in the Windows codepage,
  /// but it will also not give unexpected results when calling Windows APIs
  /// that expect ANSI strings.
  ///
  /// If this [String] contains NUL characters, converting it back to a string
  /// using [toDartString] will truncate the result if a length is not passed.
  ///
  /// It is the caller's responsibility to free the memory allocated for the
  /// returned PSTR when it is no longer needed. This can be achieved by calling
  /// the [free] method. Optionally, a FFI `Arena` can be passed as a custom
  /// allocator to facilitate memory management.
  factory PSTR.fromString(String string, {Allocator allocator = malloc}) {
    final length = string.length;
    final pstr = allocator<BYTE>(length + 1);

    for (var i = 0; i < length; i++) {
      pstr[i] = string.codeUnitAt(i) & 0xFF; // Truncate to 8 bits.
    }

    pstr[length] = 0; // NUL-terminate the string.

    return PSTR(pstr.cast());
  }

  /// Releases the memory allocated for this PSTR.
  void free() => calloc.free(this);

  /// The number of ANSI characters in this PSTR.
  int get length => Utf8Pointer(this).length;

  /// Converts this PSTR to a Dart string.
  ///
  /// If [length] is provided, zero-termination is ignored and the result can
  /// contain NUL characters.
  ///
  /// If [length] is not provided, the returned string is the string up til but
  /// not including the first NUL character.
  String toDartString({int? length}) =>
      Utf8Pointer(this).toDartString(length: length);
}
