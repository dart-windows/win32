// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';

/// @nodoc
const IID_IWbemObjectAccess = '{49353c9a-516b-11d1-aea6-00c04fb68820}';

/// The IWbemObjectAccess interface provides access to the methods and
/// properties of an object.
///
/// An IWbemObjectAccess object is a container for an instance updated by a
/// refresher. With the IWbemObjectAccess interface, you can get and set
/// properties by using property handles instead of object property names.
///
/// {@category com}
class IWbemObjectAccess extends IWbemClassObject {
  IWbemObjectAccess(super.ptr)
      : _vtable = ptr.value.cast<IWbemObjectAccessVtbl>().ref;

  final IWbemObjectAccessVtbl _vtable;

  factory IWbemObjectAccess.from(IUnknown interface) =>
      IWbemObjectAccess(interface.toInterface(IID_IWbemObjectAccess));

  int getPropertyHandle(Pointer<Utf16> wszPropertyName, Pointer<Int32> pType,
          Pointer<Int32> plHandle) =>
      _vtable.GetPropertyHandle.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> wszPropertyName,
                  Pointer<Int32> pType, Pointer<Int32> plHandle)>()(
          ptr, wszPropertyName, pType, plHandle);

  int writePropertyValue(int lHandle, int lNumBytes, Pointer<Uint8> aData) =>
      _vtable.WritePropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle, int lNumBytes,
              Pointer<Uint8> aData)>()(ptr, lHandle, lNumBytes, aData);

  int readPropertyValue(int lHandle, int lBufferSize, Pointer<Int32> plNumBytes,
          Pointer<Uint8> aData) =>
      _vtable.ReadPropertyValue.asFunction<
              int Function(VTablePointer lpVtbl, int lHandle, int lBufferSize,
                  Pointer<Int32> plNumBytes, Pointer<Uint8> aData)>()(
          ptr, lHandle, lBufferSize, plNumBytes, aData);

  int readDWORD(int lHandle, Pointer<Uint32> pdw) =>
      _vtable.ReadDWORD.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle,
              Pointer<Uint32> pdw)>()(ptr, lHandle, pdw);

  int writeDWORD(int lHandle, int dw) => _vtable.WriteDWORD.asFunction<
      int Function(
          VTablePointer lpVtbl, int lHandle, int dw)>()(ptr, lHandle, dw);

  int readQWORD(int lHandle, Pointer<Uint64> pqw) =>
      _vtable.ReadQWORD.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle,
              Pointer<Uint64> pqw)>()(ptr, lHandle, pqw);

  int writeQWORD(int lHandle, int pw) => _vtable.WriteQWORD.asFunction<
      int Function(
          VTablePointer lpVtbl, int lHandle, int pw)>()(ptr, lHandle, pw);

  int getPropertyInfoByHandle(int lHandle, Pointer<Pointer<Utf16>> pstrName,
          Pointer<Int32> pType) =>
      _vtable.GetPropertyInfoByHandle.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int lHandle,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Int32> pType)>()(ptr, lHandle, pstrName, pType);

  int lock(int lFlags) =>
      _vtable.Lock.asFunction<int Function(VTablePointer lpVtbl, int lFlags)>()(
          ptr, lFlags);

  int unlock(int lFlags) => _vtable.Unlock.asFunction<
      int Function(VTablePointer lpVtbl, int lFlags)>()(ptr, lFlags);
}

/// @nodoc
base class IWbemObjectAccessVtbl extends Struct {
  external IWbemClassObjectVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> wszPropertyName,
              Pointer<Int32> pType,
              Pointer<Int32> plHandle)>> GetPropertyHandle;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lHandle, Int32 lNumBytes,
              Pointer<Uint8> aData)>> WritePropertyValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lHandle,
              Int32 lBufferSize,
              Pointer<Int32> plNumBytes,
              Pointer<Uint8> aData)>> ReadPropertyValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 lHandle, Pointer<Uint32> pdw)>>
      ReadDWORD;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 lHandle, Uint32 dw)>>
      WriteDWORD;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 lHandle, Pointer<Uint64> pqw)>>
      ReadQWORD;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 lHandle, Uint64 pw)>>
      WriteQWORD;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lHandle,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Int32> pType)>> GetPropertyInfoByHandle;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 lFlags)>>
      Lock;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 lFlags)>>
      Unlock;
}
