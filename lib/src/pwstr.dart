// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'types.dart';

/// A native zero-terminated array of 8-bit Windows (ANSI) characters.
extension type const PWSTR(Pointer<Utf16> _) implements Pointer<Utf16> {
  /// Creates an empty PWSTR with the provided [length].
  ///
  /// [length] indicates how many characters should be allocated.
  ///
  /// This is useful when you need to allocate a buffer for a string that will
  /// be filled in later, such as when calling a Windows API that writes to a
  /// buffer you provide.
  ///
  /// It's the caller's responsibility to free the memory allocated for the
  /// returned PWSTR when it's no longer needed. This can be done by calling
  /// [free]. A FFI `Arena` may be passed as a custom allocator for ease of
  /// memory management.
  PWSTR.empty(int length, {Allocator allocator = calloc})
      : this(allocator<WCHAR>(length).cast());

  /// Creates a zero-terminated [Utf16] code-unit array from this String.
  ///
  /// If this [String] contains NUL characters, converting it back to a string
  /// using [toDartString] will truncate the result if a length is not passed.
  ///
  /// Returns an [allocator]-allocated pointer to the result.
  PWSTR.fromString(String string, {Allocator allocator = malloc})
      : this(string.toNativeUtf16(allocator: allocator));

  /// Releases the memory allocated for this PWSTR.
  void free() => calloc.free(this);

  /// The number of UTF-16 code units in this PWSTR.
  int get length => Utf16Pointer(this).length;

  /// Converts this PWSTR to a Dart string.
  ///
  /// If [length] is provided, zero-termination is ignored and the result can
  /// contain NUL characters.
  ///
  /// If [length] is not provided, the returned string is the string up til but
  /// not including the first NUL character.
  String toDartString({int? length}) =>
      Utf16Pointer(this).toDartString(length: length);
}
