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
import 'win32_v5/oleaut32.g.dart';

/// Represents a pointer to [VARIANT] struct.
extension type const Variant(Pointer<VARIANT> _) implements Pointer<VARIANT> {
  /// Constructs an empty VARIANT.
  Variant.empty() : this(calloc<VARIANT>());

  /// Whether this VARIANT is empty.
  bool get isEmpty => ref.vt == VARENUM.VT_EMPTY;

  // TODO(halildurmus): Remove this when
  // https://github.com/dart-lang/sdk/issues/54944 is resolved.
  VARIANT get ref => _.ref;

  /// Constructs a VARIANT holding a [VARIANT_BOOL] value.
  static VariantBool bool_(bool value) => VariantBool(value);

  /// Constructs a VARIANT holding a [BSTR] value.
  static VariantBSTR bstr(String value) => VariantBSTR(value);

  /// Constructs a VARIANT holding a [Double] value.
  static VariantDouble double_(double value) => VariantDouble(value);

  /// Constructs a VARIANT holding a [Float] value.
  static VariantFloat float(double value) => VariantFloat(value);

  /// Constructs a VARIANT holding an [Int8] value.
  static VariantInt8 int8(int value) => VariantInt8(value);

  /// Constructs a VARIANT holding an [Int16] value.
  static VariantInt16 int16(int value) => VariantInt16(value);

  /// Constructs a VARIANT holding an [Int32] value.
  static VariantInt32 int32(int value) => VariantInt32(value);

  /// Constructs a VARIANT holding an [Int64] value.
  static VariantInt64 int64(int value) => VariantInt64(value);

  /// Constructs a VARIANT holding an [IDispatch] value.
  static VariantIDispatch idispatch(IDispatch value) => VariantIDispatch(value);

  /// Constructs a VARIANT holding an [IUnknown] value.
  static VariantIUnknown iunknown(IUnknown value) => VariantIUnknown(value);

  /// Constructs a VARIANT holding a [Uint8] value.
  static VariantUint8 uint8(int value) => VariantUint8(value);

  /// Constructs a VARIANT holding a [Uint16] value.
  static VariantUint16 uint16(int value) => VariantUint16(value);

  /// Constructs a VARIANT holding a [Uint32] value.
  static VariantUint32 uint32(int value) => VariantUint32(value);

  /// Constructs a VARIANT holding a [Uint64] value.
  static VariantUint64 uint64(int value) => VariantUint64(value);

  /// Releases the memory allocated for this VARIANT.
  void free() {
    VariantClear(this);
    calloc.free(this);
  }
}

/// Represents a VARIANT holding a [VARIANT_BOOL] value.
extension type const VariantBool._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [VARIANT_BOOL] value.
  factory VariantBool(bool value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_BOOL
      ..boolVal = value ? VARIANT_TRUE : VARIANT_FALSE;
    return VariantBool._(variant);
  }

  /// The [VARIANT_BOOL] value stored in this VARIANT.
  bool get value => ref.boolVal == VARIANT_TRUE;
  set value(bool value) => ref.boolVal = value ? VARIANT_TRUE : VARIANT_FALSE;
}

/// Represents a VARIANT holding a [BSTR] value.
extension type const VariantBSTR._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [BSTR] value.
  factory VariantBSTR(String value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_BSTR
      ..bstrVal = BSTR.fromString(value);
    return VariantBSTR._(variant);
  }

  /// The [BSTR] value stored in this VARIANT.
  String get value => ref.bstrVal.toDartString();
  set value(String value) => ref.bstrVal = BSTR.fromString(value);
}

/// Represents a VARIANT holding a [Double] value.
extension type const VariantDouble._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Double] value.
  factory VariantDouble(double value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_R8
      ..dblVal = value;
    return VariantDouble._(variant);
  }

  /// The [Double] value stored in this VARIANT.
  double get value => ref.dblVal;
  set value(double value) => ref.dblVal = value;
}

/// Represents a VARIANT holding a [Float] value.
extension type const VariantFloat._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Float] value.
  factory VariantFloat(double value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_R4
      ..fltVal = value;
    return VariantFloat._(variant);
  }

  /// The [Float] value stored in this VARIANT.
  double get value => ref.fltVal;
  set value(double value) => ref.fltVal = value;
}

/// Represents a VARIANT holding an [Int8] value.
extension type const VariantInt8._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [Int8] value.
  factory VariantInt8(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_I1
      ..cVal = value;
    return VariantInt8._(variant);
  }

  /// The [Int8] value stored in this VARIANT.
  int get value => ref.cVal;
  set value(int value) => ref.cVal = value;
}

/// Represents a VARIANT holding an [Int16] value.
extension type const VariantInt16._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [Int16] value.
  factory VariantInt16(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_I2
      ..iVal = value;
    return VariantInt16._(variant);
  }

  /// The [Int16] value stored in this VARIANT.
  int get value => ref.iVal;
  set value(int value) => ref.iVal = value;
}

/// Represents a VARIANT holding an [Int32] value.
extension type const VariantInt32._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [Int32] value.
  factory VariantInt32(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_I4
      ..intVal = value;
    return VariantInt32._(variant);
  }

  /// The [Int32] value stored in this VARIANT.
  int get value => ref.intVal;
  set value(int value) => ref.intVal = value;
}

/// Represents a VARIANT holding an [Int64] value.
extension type const VariantInt64._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [Int64] value.
  factory VariantInt64(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_I8
      ..llVal = value;
    return VariantInt64._(variant);
  }

  /// The [Int64] value stored in this VARIANT.
  int get value => ref.llVal;
  set value(int value) => ref.llVal = value;
}

/// Represents a VARIANT holding an [IDispatch] value.
extension type const VariantIDispatch._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [IDispatch] value.
  factory VariantIDispatch(IDispatch value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_DISPATCH
      ..pdispVal = value.ptr;
    return VariantIDispatch._(variant);
  }

  /// The [IDispatch] value stored in this VARIANT.
  IDispatch get value => IDispatch(ref.pdispVal);
  set value(IDispatch value) => ref.pdispVal = value.ptr;
}

/// Represents a VARIANT holding an [IUnknown] value.
extension type const VariantIUnknown._(Variant _) implements Variant {
  /// Constructs a VARIANT holding an [IUnknown] value.
  factory VariantIUnknown(IUnknown value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_UNKNOWN
      ..punkVal = value.ptr;
    return VariantIUnknown._(variant);
  }

  /// The [IUnknown] value stored in this VARIANT.
  IUnknown get value => IUnknown(ref.punkVal);
  set value(IUnknown value) => ref.punkVal = value.ptr;
}

/// Represents a VARIANT holding a [Uint8] value.
extension type const VariantUint8._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Uint8] value.
  factory VariantUint8(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_UI1
      ..bVal = value;
    return VariantUint8._(variant);
  }

  /// The [Uint8] value stored in this VARIANT.
  int get value => ref.bVal;
  set value(int value) => ref.bVal = value;
}

/// Represents a VARIANT holding a [Uint16] value.
extension type const VariantUint16._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Uint16] value.
  factory VariantUint16(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_UI2
      ..uiVal = value;
    return VariantUint16._(variant);
  }

  /// The [Uint16] value stored in this VARIANT.
  int get value => ref.uiVal;
  set value(int value) => ref.uiVal = value;
}

/// Represents a VARIANT holding a [Uint32] value.
extension type const VariantUint32._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Uint32] value.
  factory VariantUint32(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_UI4
      ..uintVal = value;
    return VariantUint32._(variant);
  }

  /// The [Uint32] value stored in this VARIANT.
  int get value => ref.uintVal;
  set value(int value) => ref.uintVal = value;
}

/// Represents a VARIANT holding a [Uint64] value.
extension type const VariantUint64._(Variant _) implements Variant {
  /// Constructs a VARIANT holding a [Uint64] value.
  factory VariantUint64(int value) {
    final variant = Variant.empty();
    variant._.ref
      ..vt = VARENUM.VT_UI8
      ..ullVal = value;
    return VariantUint64._(variant);
  }

  /// The [Uint64] value stored in this VARIANT.
  int get value => ref.ullVal;
  set value(int value) => ref.ullVal = value;
}
