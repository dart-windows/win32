// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of COM variant structs used in the Win32 API.

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'constants.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32_v5/oleaut32.g.dart';

/// The VARIANT type is used in Win32 to represent a dynamic type. It is
/// represented as a struct containing a union of the types that could be
/// stored.
///
/// VARIANTs must be initialized with [VariantInit] before their use.
///
/// {@category struct}
base class VARIANT extends Struct {
  external VARIANT_0 Anonymous;

  int get vt => Anonymous.Anonymous.vt;
  set vt(int value) => Anonymous.Anonymous.vt = value;

  // LONGLONG -> __int64 -> Int64
  int get llVal => Anonymous.Anonymous.Anonymous.llVal;
  set llVal(int value) => Anonymous.Anonymous.Anonymous.llVal = value;

  // LONG -> long -> Int32
  int get lVal => Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => Anonymous.Anonymous.Anonymous.lVal = value;

  // BYTE -> unsigned char -> Uint8
  int get bVal => Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => Anonymous.Anonymous.Anonymous.bVal = value;

  // SHORT -> short -> Int16
  int get iVal => Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => Anonymous.Anonymous.Anonymous.iVal = value;

  // FLOAT -> float -> double
  double get fltVal => Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => Anonymous.Anonymous.Anonymous.fltVal = value;

  // DOUBLE -> double -> double
  double get dblVal => Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => Anonymous.Anonymous.Anonymous.dblVal = value;

  // VARIANT_BOOL -> Int16
  bool get boolVal => Anonymous.Anonymous.Anonymous.boolVal == VARIANT_TRUE;
  set boolVal(bool value) => Anonymous.Anonymous.Anonymous.boolVal =
      value ? VARIANT_TRUE : VARIANT_FALSE;

  // SCODE -> LONG -> long -> Int32
  int get scode => Anonymous.Anonymous.Anonymous.scode;
  set lscodeVal(int value) => Anonymous.Anonymous.Anonymous.scode = value;

  // CY -> Int64
  int get cyVal => Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(int value) => Anonymous.Anonymous.Anonymous.cyVal = value;

  // DATE -> double -> double
  double get date => Anonymous.Anonymous.Anonymous.date;
  set date(double value) => Anonymous.Anonymous.Anonymous.date = value;

  // BSTR -> OLECHAR* -> Pointer<Utf16>
  Pointer<Utf16> get bstrVal => Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      Anonymous.Anonymous.Anonymous.bstrVal = value;

  // IUnknown
  IUnknown get punkVal => IUnknown(Anonymous.Anonymous.Anonymous.punkVal);
  set punkVal(IUnknown value) =>
      Anonymous.Anonymous.Anonymous.punkVal = value.ptr;

  // IDispatch
  IDispatch get pdispVal => IDispatch(Anonymous.Anonymous.Anonymous.pdispVal);
  set pdispVal(IDispatch value) =>
      Anonymous.Anonymous.Anonymous.pdispVal = value.ptr;

  Pointer get parray => Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer value) => Anonymous.Anonymous.Anonymous.parray = value;

  // BYTE*
  Pointer<Uint8> get pbVal => Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      Anonymous.Anonymous.Anonymous.pbVal = value;

  // SHORT*
  Pointer<Int16> get piVal => Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      Anonymous.Anonymous.Anonymous.piVal = value;

  // LONG*
  Pointer<Int32> get plVal => Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      Anonymous.Anonymous.Anonymous.plVal = value;

  // LONGLONG*
  Pointer<Int64> get pllVal => Anonymous.Anonymous.Anonymous.pllVal;
  set pllVal(Pointer<Int64> value) =>
      Anonymous.Anonymous.Anonymous.pllVal = value;

  // FLOAT*
  Pointer<Float> get pfltVal => Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      Anonymous.Anonymous.Anonymous.pfltVal = value;

  // DOUBLE*
  Pointer<Double> get pdblVal => Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      Anonymous.Anonymous.Anonymous.pdblVal = value;

  Pointer<Int16> get pboolVal => Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<Int16> value) =>
      Anonymous.Anonymous.Anonymous.pboolVal = value;

  Pointer<Int32> get pscode => Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      Anonymous.Anonymous.Anonymous.pscode = value;

  Pointer get pcyVal => Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer value) => Anonymous.Anonymous.Anonymous.pcyVal = value;

  Pointer<Double> get pdate => Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      Anonymous.Anonymous.Anonymous.pdate = value;

  Pointer<Pointer<Utf16>> get pbstrVal =>
      Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      Anonymous.Anonymous.Anonymous.pbstrVal = value;

  Pointer<VTablePointer> get ppunkVal => Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<VTablePointer> value) =>
      Anonymous.Anonymous.Anonymous.ppunkVal = value;

  Pointer<VTablePointer> get ppdispVal =>
      Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<VTablePointer> value) =>
      Anonymous.Anonymous.Anonymous.ppdispVal = value;

  Pointer<Pointer> get pparray => Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer> value) =>
      Anonymous.Anonymous.Anonymous.pparray = value;

  Pointer<VARIANT> get pvarVal => Anonymous.Anonymous.Anonymous.pvarVal;
  set pvarVal(Pointer<VARIANT> value) =>
      Anonymous.Anonymous.Anonymous.pvarVal = value;

  Pointer get byref => Anonymous.Anonymous.Anonymous.byref;
  set byref(Pointer value) => Anonymous.Anonymous.Anonymous.byref = value;

  // CHAR -> char -> Int8
  int get cVal => Anonymous.Anonymous.Anonymous.cVal;
  set cVal(int value) => Anonymous.Anonymous.Anonymous.cVal = value;

  // USHORT -> unsigned short -> Uint16
  int get uiVal => Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => Anonymous.Anonymous.Anonymous.uiVal = value;

  // ULONG -> unsigned long -> Uint32
  int get ulVal => Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => Anonymous.Anonymous.Anonymous.ulVal = value;

  // ULONGLONG -> unsigned long long -> Uint64
  BigInt get ullVal {
    final src = Anonymous.Anonymous.Anonymous.ullVal;
    final hi = ((src & 0xFFFFFFFF00000000) >> 32)
        .toUnsigned(32)
        .toRadixString(16)
        .padLeft(8, '0');
    final lo = (src & 0x00000000FFFFFFFF).toRadixString(16).padLeft(8, '0');
    return BigInt.parse('$hi$lo', radix: 16);
  }

  set ullVal(BigInt value) {
    final hi = ((value & BigInt.from(0xFFFFFFFF00000000)) >> 32).toInt();
    final lo = (value & BigInt.from(0x00000000FFFFFFFF)).toInt();
    Anonymous.Anonymous.Anonymous.ullVal = (hi << 32) + lo;
  }

  // INT -> int -> Int32
  int get intVal => Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => Anonymous.Anonymous.Anonymous.intVal = value;

  // UINT -> unsigned int -> Uint32
  int get uintVal => Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => Anonymous.Anonymous.Anonymous.uintVal = value;

  Pointer<DECIMAL> get pdecVal => Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      Anonymous.Anonymous.Anonymous.pdecVal = value;

  Pointer<Int8> get pcVal => Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(Pointer<Int8> value) => Anonymous.Anonymous.Anonymous.pcVal = value;

  Pointer<Uint16> get puiVal => Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      Anonymous.Anonymous.Anonymous.puiVal = value;

  Pointer<Uint32> get pulVal => Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      Anonymous.Anonymous.Anonymous.pulVal = value;

  Pointer<Uint64> get pullVal => Anonymous.Anonymous.Anonymous.pullVal;
  set pullVal(Pointer<Uint64> value) =>
      Anonymous.Anonymous.Anonymous.pullVal = value;

  Pointer<Int32> get pintVal => Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      Anonymous.Anonymous.Anonymous.pintVal = value;

  Pointer<Uint32> get puintVal => Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      Anonymous.Anonymous.Anonymous.puintVal = value;

  Pointer get pvRecord => Anonymous.Anonymous.Anonymous.Anonymous.pvRecord;
  set pvRecord(Pointer value) =>
      Anonymous.Anonymous.Anonymous.Anonymous.pvRecord = value;

  VTablePointer get pRecInfo =>
      Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo;
  set pRecInfo(VTablePointer value) =>
      Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo = value;
}

base class VARIANT_0 extends Union {
  external VARIANT_0_0 Anonymous;

  external DECIMAL decVal;
}

base class VARIANT_0_0 extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  // ignore: unused_field
  external int _wReserved1;

  @Uint16()
  // ignore: unused_field
  external int _wReserved2;

  @Uint16()
  // ignore: unused_field
  external int _wReserved3;

  external VARIANT_0_0_0 Anonymous;
}

base class VARIANT_0_0_0 extends Union {
  @Int64()
  external int llVal;

  @Int32()
  external int lVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int boolVal;

  @Int16()
  // ignore: unused_field
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  @Int64()
  external int cyVal;

  @Double()
  external double date;

  external Pointer<Utf16> bstrVal;

  external VTablePointer punkVal;

  external VTablePointer pdispVal;

  external Pointer/*<SAFEARRAY>*/ parray;

  external Pointer<Uint8> pbVal;

  external Pointer<Int16> piVal;

  external Pointer<Int32> plVal;

  external Pointer<Int64> pllVal;

  external Pointer<Float> pfltVal;

  external Pointer<Double> pdblVal;

  external Pointer<Int16> pboolVal;

  // ignore: unused_field
  external Pointer<Int16> __OBSOLETE__VARIANT_PBOOL;

  external Pointer<Int32> pscode;

  external Pointer/*<CY>*/ pcyVal;

  external Pointer<Double> pdate;

  external Pointer<Pointer<Utf16>> pbstrVal;

  external Pointer<VTablePointer> ppunkVal;

  external Pointer<VTablePointer> ppdispVal;

  external Pointer<Pointer/*<SAFEARRAY>*/ > pparray;

  external Pointer<VARIANT> pvarVal;

  external Pointer byref;

  @Int8()
  external int cVal;

  @Uint16()
  external int uiVal;

  @Uint32()
  external int ulVal;

  @Uint64()
  external int ullVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  external Pointer<DECIMAL> pdecVal;

  external Pointer<Int8> pcVal;

  external Pointer<Uint16> puiVal;

  external Pointer<Uint32> pulVal;

  external Pointer<Uint64> pullVal;

  external Pointer<Int32> pintVal;

  external Pointer<Uint32> puintVal;

  external VARIANT_0_0_0_0 Anonymous;
}

base class VARIANT_0_0_0_0 extends Struct {
  external Pointer pvRecord;

  external VTablePointer pRecInfo;
}

/// The PROPVARIANT structure is used in the ReadMultiple and WriteMultiple
/// methods of IPropertyStorage to define the type tag and the value of a
/// property in a property set.
///
/// {@category struct}
base class PROPVARIANT extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  external int wReserved1;

  @Uint16()
  external int wReserved2;

  @Uint16()
  external int wReserved3;

  @IntPtr()
  external int val1;

  @IntPtr()
  external int val2;
}
