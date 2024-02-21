// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

/// Extension method for converting [Uint8List] to `Pointer<Uint8>`.
extension Uint8ListToUint8PointerConversion on Uint8List {
  /// Allocates a pointer filled with the data from this Uint8List.
  ///
  /// It is the caller's responsibility to free the memory allocated for the
  /// returned pointer when it's no longer needed. This can be done by calling
  /// the [Allocator.free] method. Optionally, a custom [allocator] can be
  /// provided, such as an FFI `Arena`, to facilitate memory management.
  Pointer<Uint8> allocatePointer({Allocator allocator = calloc}) {
    final blob = allocator<Uint8>(length);
    blob.asTypedList(length).setAll(0, this);
    return blob;
  }
}
