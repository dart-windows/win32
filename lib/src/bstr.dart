// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import 'win32_v5/oleaut32.g.dart';

/// A wrapper for [BSTR] (Basic string or binary string), a string data type
/// that is used by COM, Automation, and Interop functions.
///
/// BSTRs should never be created directly using Dart's memory allocation
/// functions because they do not allocate and store the length prefix. Instead,
/// this class wraps the COM memory allocation functions to safely create BSTR
/// types.
///
/// For example, the following code is incorrect:
///
/// ```dart
/// final bstr = 'I am a happy BSTR'.toNativeUtf16();
/// ```
///
/// This code will not function properly because the string does not have a
/// length prefix. If you use a debugger to examine the memory location of this
/// variable, you will not see a four-byte length prefix preceding the data
/// string.
///
/// Instead, use the following code:
///
/// ```dart
/// final bstr = Bstr.fromString('I am a happy BSTR');
/// ```
///
/// A debugger that examines the memory location of this variable will now
/// reveal a length prefix containing the value `34`. This is the expected value
/// for a 17-byte character wide-string (UTF-16) in memory. The debugger will
/// also show the terminator (`0x0000`) appearing after the data string.
///
/// It's your responsibility to free the memory allocated for a Bstr when it's
/// no longer needed by calling the [free] method on the object.
class Bstr {
  const Bstr._(this.ptr);

  /// Pointer to the start of the string itself.
  ///
  /// The string is null-terminated with a two-byte value (`0x0000`).
  final BSTR ptr;

  /// Creates a new Bstr from a Dart [string].
  ///
  /// This constructor allocates memory for the Bstr using [SysAllocString].
  ///
  /// It's your responsibility to free the memory allocated for the Bstr when
  /// it's no longer needed by calling the [free] method on the object.
  factory Bstr.fromString(String string) {
    final psz = string.toNativeUtf16();
    final pbstr = SysAllocString(psz);
    calloc.free(psz);
    return Bstr._(pbstr);
  }

  /// The length in bytes.
  int get byteLength => SysStringByteLen(ptr);

  /// Allocates a new Bstr that is a copy of the existing Bstr.
  Bstr clone() => Bstr._(SysAllocString(ptr));

  /// Releases the native memory allocated for the Bstr.
  void free() => SysFreeString(ptr);

  /// The length in characters.
  int get length => SysStringLen(ptr);

  /// Creates a new Bstr by concatenating this Bstr with [other].
  Bstr operator +(Bstr other) {
    final pbstrResult = calloc<BSTR>();
    VarBstrCat(ptr, other.ptr, pbstrResult);
    final result = Bstr._(pbstrResult.value);
    calloc.free(pbstrResult);
    return result;
  }

  /// Converts this Bstr into a Dart string.
  @override
  String toString() => ptr.toDartString();
}
