// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IDispatch = '{00020400-0000-0000-c000-000000000046}';

/// Exposes objects, methods and properties to programming tools and other
/// applications that support Automation.
///
/// {@category com}
class IDispatch extends IUnknown {
  IDispatch(super.ptr) : _vtable = ptr.value.cast<IDispatchVtbl>().ref;

  final IDispatchVtbl _vtable;

  factory IDispatch.from(IUnknown interface) =>
      IDispatch(interface.toInterface(IID_IDispatch));

  int getTypeInfoCount(Pointer<Uint32> pctinfo) =>
      _vtable.GetTypeInfoCount.asFunction<
          int Function(VTablePointer, Pointer<Uint32> pctinfo)>()(ptr, pctinfo);

  int getTypeInfo(int iTInfo, int lcid, Pointer<VTablePointer> ppTInfo) =>
      _vtable.GetTypeInfo.asFunction<
          int Function(VTablePointer, int iTInfo, int lcid,
              Pointer<VTablePointer> ppTInfo)>()(ptr, iTInfo, lcid, ppTInfo);

  int getIDsOfNames(Pointer<GUID> riid, Pointer<Pointer<Utf16>> rgszNames,
          int cNames, int lcid, Pointer<Int32> rgDispId) =>
      _vtable.GetIDsOfNames.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<GUID> riid,
                  Pointer<Pointer<Utf16>> rgszNames,
                  int cNames,
                  int lcid,
                  Pointer<Int32> rgDispId)>()(
          ptr, riid, rgszNames, cNames, lcid, rgDispId);

  int invoke(
          int dispIdMember,
          Pointer<GUID> riid,
          int lcid,
          int wFlags,
          Pointer<DISPPARAMS> pDispParams,
          Pointer<VARIANT> pVarResult,
          Pointer<EXCEPINFO> pExcepInfo,
          Pointer<Uint32> puArgErr) =>
      _vtable.Invoke.asFunction<
              int Function(
                  VTablePointer,
                  int dispIdMember,
                  Pointer<GUID> riid,
                  int lcid,
                  int wFlags,
                  Pointer<DISPPARAMS> pDispParams,
                  Pointer<VARIANT> pVarResult,
                  Pointer<EXCEPINFO> pExcepInfo,
                  Pointer<Uint32> puArgErr)>()(ptr, dispIdMember, riid, lcid,
          wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);
}

/// @nodoc
base class IDispatchVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pctinfo)>>
      GetTypeInfoCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 iTInfo, Uint32 lcid,
              Pointer<VTablePointer> ppTInfo)>> GetTypeInfo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<GUID> riid,
              Pointer<Pointer<Utf16>> rgszNames,
              Uint32 cNames,
              Uint32 lcid,
              Pointer<Int32> rgDispId)>> GetIDsOfNames;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 dispIdMember,
              Pointer<GUID> riid,
              Uint32 lcid,
              Uint16 wFlags,
              Pointer<DISPPARAMS> pDispParams,
              Pointer<VARIANT> pVarResult,
              Pointer<EXCEPINFO> pExcepInfo,
              Pointer<Uint32> puArgErr)>> Invoke;
}
