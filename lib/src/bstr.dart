// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'types.dart';
import 'win32_v5/oleaut32.g.dart';

/// A composite data type that consists of a length prefix, a data string, and
/// a terminator.
///
/// More details can be found here:
/// https://learn.microsoft.com/previous-versions/windows/desktop/automat/bstr
extension type const BSTR(Pointer<Utf16> _) implements Pointer<Utf16> {
  /// Creates a BSTR from the provided [string].
  ///
  /// If this [String] contains NUL characters, converting it back to a string
  /// using [toDartString] will truncate the result if a length is not passed.
  ///
  /// It's the caller's responsibility to free the memory allocated for the
  /// returned BSTR when it's no longer needed. This can be done by calling the
  /// [free] method.
  factory BSTR.fromString(String string) {
    // Allocate memory for a BSTR of sufficient length to hold the string,
    // without initializing it.
    final bstr = SysAllocStringByteLen(null, sizeOf<WCHAR>() * string.length)
        .cast<WCHAR>();

    // Copy each character of the string into the BSTR.
    for (var i = 0; i < string.length; i++) {
      bstr[i] = string.codeUnitAt(i);
    }

    // No need to add a NUL terminator, as SysAllocStringByteLen already does
    // that for us.

    return BSTR(bstr.cast());
  }

  /// The length of the BSTR in bytes.
  int get byteLength => SysStringByteLen(this);

  /// Creates a new BSTR that is a copy of this BSTR.
  BSTR clone() => BSTR(SysAllocString(this));

  /// Releases the memory allocated for this BSTR.
  void free() => SysFreeString(this);

  /// The number of UTF-16 code units in this BSTR.
  int get length => SysStringLen(this);

  /// Concatenates this BSTR with [other] and returns the result.
  BSTR operator +(BSTR other) {
    final pbstrResult = calloc<Pointer<Utf16>>().cast<BSTR>();
    VarBstrCat(this, other, pbstrResult);
    final result = BSTR(pbstrResult.value);
    calloc.free(pbstrResult);
    return result;
  }

  /// Converts this BSTR to a Dart string.
  ///
  /// If [length] is provided, zero-termination is ignored and the result can
  /// contain NUL characters.
  ///
  /// If [length] is not provided, the returned string is the string up til but
  /// not including the first NUL character.
  String toDartString({int? length}) =>
      Utf16Pointer(this).toDartString(length: length);
}
