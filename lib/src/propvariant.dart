// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'bstr.dart';
import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'constants.dart';
import 'structs.g.dart';
import 'win32_v5/ole32.g.dart';

/// Represents a pointer to [PROPVARIANT] struct.
extension type const PropVariant(Pointer<PROPVARIANT> _)
    implements Pointer<PROPVARIANT> {
  /// Constructs an empty PROPVARIANT.
  PropVariant.empty() : this(calloc<PROPVARIANT>());

  /// Whether this PROPVARIANT is empty.
  bool get isEmpty => ref.vt == VARENUM.VT_EMPTY;

  // TODO(halildurmus): Remove this when
  // https://github.com/dart-lang/sdk/issues/54944 is resolved.
  PROPVARIANT get ref => _.ref;

  /// Constructs a PROPVARIANT holding a [VARIANT_BOOL] value.
  static PropVariantBool bool_(bool value) => PropVariantBool(value);

  /// Constructs a PROPVARIANT holding a [BSTR] value.
  static PropVariantBSTR bstr(String value) => PropVariantBSTR(value);

  /// Constructs a PROPVARIANT holding a [Double] value.
  static PropVariantDouble double_(double value) => PropVariantDouble(value);

  /// Constructs a PROPVARIANT holding a [Float] value.
  static PropVariantFloat float(double value) => PropVariantFloat(value);

  /// Constructs a PROPVARIANT holding an [Int8] value.
  static PropVariantInt8 int8(int value) => PropVariantInt8(value);

  /// Constructs a PROPVARIANT holding an [Int16] value.
  static PropVariantInt16 int16(int value) => PropVariantInt16(value);

  /// Constructs a PROPVARIANT holding an [Int32] value.
  static PropVariantInt32 int32(int value) => PropVariantInt32(value);

  /// Constructs a PROPVARIANT holding an [IDispatch] value.
  static PropVariantIDispatch idispatch(IDispatch value) =>
      PropVariantIDispatch(value);

  /// Constructs a PROPVARIANT holding an [IUnknown] value.
  static PropVariantIUnknown iunknown(IUnknown value) =>
      PropVariantIUnknown(value);

  /// Constructs a PROPVARIANT holding a [Uint8] value.
  static PropVariantUint8 uint8(int value) => PropVariantUint8(value);

  /// Constructs a PROPVARIANT holding a [Uint16] value.
  static PropVariantUint16 uint16(int value) => PropVariantUint16(value);

  /// Constructs a PROPVARIANT holding a [Uint32] value.
  static PropVariantUint32 uint32(int value) => PropVariantUint32(value);

  /// Releases the memory allocated for this PROPVARIANT.
  void free() {
    PropVariantClear(this);
    calloc.free(this);
  }
}

/// Represents a PROPVARIANT holding a [VARIANT_BOOL] value.
extension type const PropVariantBool._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [VARIANT_BOOL] value.
  factory PropVariantBool(bool value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_BOOL
      ..boolVal = value;
    return PropVariantBool._(propVariant);
  }

  /// The [VARIANT_BOOL] value stored in this PROPVARIANT.
  bool get value => ref.boolVal;
  set value(bool value) => ref.boolVal = value;
}

/// Represents a PROPVARIANT holding a [BSTR] value.
extension type const PropVariantBSTR._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [BSTR] value.
  factory PropVariantBSTR(String value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_BSTR
      ..bstrVal = BSTR.fromString(value);
    return PropVariantBSTR._(propVariant);
  }

  /// The [BSTR] value stored in this PROPVARIANT.
  String get value => ref.bstrVal.toDartString();
  set value(String value) => ref.bstrVal = BSTR.fromString(value);
}

/// Represents a PROPVARIANT holding a [Double] value.
extension type const PropVariantDouble._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [Double] value.
  factory PropVariantDouble(double value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_R8
      ..dblVal = value;
    return PropVariantDouble._(propVariant);
  }

  /// The [Double] value stored in this PROPVARIANT.
  double get value => ref.dblVal;
  set value(double value) => ref.dblVal = value;
}

/// Represents a PROPVARIANT holding a [Float] value.
extension type const PropVariantFloat._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [Float] value.
  factory PropVariantFloat(double value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_R4
      ..fltVal = value;
    return PropVariantFloat._(propVariant);
  }

  /// The [Float] value stored in this PROPVARIANT.
  double get value => ref.fltVal;
  set value(double value) => ref.fltVal = value;
}

/// Represents a PROPVARIANT holding an [Int8] value.
extension type const PropVariantInt8._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding an [Int8] value.
  factory PropVariantInt8(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_I1
      ..cVal = value;
    return PropVariantInt8._(propVariant);
  }

  /// The [Int8] value stored in this PROPVARIANT.
  int get value => ref.cVal;
  set value(int value) => ref.cVal = value;
}

/// Represents a PROPVARIANT holding an [Int16] value.
extension type const PropVariantInt16._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding an [Int16] value.
  factory PropVariantInt16(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_I2
      ..iVal = value;
    return PropVariantInt16._(propVariant);
  }

  /// The [Int16] value stored in this PROPVARIANT.
  int get value => ref.iVal;
  set value(int value) => ref.iVal = value;
}

/// Represents a PROPVARIANT holding an [Int32] value.
extension type const PropVariantInt32._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding an [Int32] value.
  factory PropVariantInt32(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_I4
      ..intVal = value;
    return PropVariantInt32._(propVariant);
  }

  /// The [Int32] value stored in this PROPVARIANT.
  int get value => ref.intVal;
  set value(int value) => ref.intVal = value;
}

/// Represents a PROPVARIANT holding an [IDispatch] value.
extension type const PropVariantIDispatch._(PropVariant _)
    implements PropVariant {
  /// Constructs a PROPVARIANT holding an [IDispatch] value.
  factory PropVariantIDispatch(IDispatch value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_DISPATCH
      ..pdispVal = value.ptr;
    return PropVariantIDispatch._(propVariant);
  }

  /// The [IDispatch] value stored in this PROPVARIANT.
  IDispatch get value => IDispatch(ref.pdispVal);
  set value(IDispatch value) => ref.pdispVal = value.ptr;
}

/// Represents a PROPVARIANT holding an [IUnknown] value.
extension type const PropVariantIUnknown._(PropVariant _)
    implements PropVariant {
  /// Constructs a PROPVARIANT holding an [IUnknown] value.
  factory PropVariantIUnknown(IUnknown value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_UNKNOWN
      ..punkVal = value.ptr;
    return PropVariantIUnknown._(propVariant);
  }

  /// The [IUnknown] value stored in this PROPVARIANT.
  IUnknown get value => IUnknown(ref.punkVal);
  set value(IUnknown value) => ref.punkVal = value.ptr;
}

/// Represents a PROPVARIANT holding a [Uint8] value.
extension type const PropVariantUint8._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [Uint8] value.
  factory PropVariantUint8(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_UI1
      ..bVal = value;
    return PropVariantUint8._(propVariant);
  }

  /// The [Uint8] value stored in this PROPVARIANT.
  int get value => ref.bVal;
  set value(int value) => ref.bVal = value;
}

/// Represents a PROPVARIANT holding a [Uint16] value.
extension type const PropVariantUint16._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [Uint16] value.
  factory PropVariantUint16(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_UI2
      ..uiVal = value;
    return PropVariantUint16._(propVariant);
  }

  /// The [Uint16] value stored in this PROPVARIANT.
  int get value => ref.uiVal;
  set value(int value) => ref.uiVal = value;
}

/// Represents a PROPVARIANT holding a [Uint32] value.
extension type const PropVariantUint32._(PropVariant _) implements PropVariant {
  /// Constructs a PROPVARIANT holding a [Uint32] value.
  factory PropVariantUint32(int value) {
    final propVariant = PropVariant.empty();
    propVariant._.ref
      ..vt = VARENUM.VT_UI4
      ..uintVal = value;
    return PropVariantUint32._(propVariant);
  }

  /// The [Uint32] value stored in this PROPVARIANT.
  int get value => ref.uintVal;
  set value(int value) => ref.uintVal = value;
}
