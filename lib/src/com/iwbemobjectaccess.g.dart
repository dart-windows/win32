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

/// Provides access to the methods and properties of an object.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemobjectaccess>.
///
/// {@category com}
class IWbemObjectAccess extends IWbemClassObject {
  IWbemObjectAccess(super.ptr)
      : _vtable = ptr.value.cast<IWbemObjectAccessVtbl>().ref;

  final IWbemObjectAccessVtbl _vtable;

  factory IWbemObjectAccess.from(IUnknown interface) =>
      IWbemObjectAccess(interface.toInterface(IID_IWbemObjectAccess));

  /// Returns a unique handle that identifies a property.
  ///
  /// You can use this handle to identify properties when using IWbemObjectAccess
  /// methods to read or write property values.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-getpropertyhandle>.
  int getPropertyHandle(Pointer<Utf16> wszPropertyName, Pointer<Int32> pType,
          Pointer<Int32> plHandle) =>
      _vtable.GetPropertyHandle.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> wszPropertyName,
                  Pointer<Int32> pType, Pointer<Int32> plHandle)>()(
          ptr, wszPropertyName, pType, plHandle);

  /// Writes a specified number of bytes to a property identified by a property
  /// handle.
  ///
  /// Use this method to set string and all other non-DWORD or non-QWORD data.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writepropertyvalue>.
  int writePropertyValue(int lHandle, int lNumBytes, Pointer<Uint8> aData) =>
      _vtable.WritePropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle, int lNumBytes,
              Pointer<Uint8> aData)>()(ptr, lHandle, lNumBytes, aData);

  /// Returns a specified number of bytes of a property associated with a property
  /// handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readpropertyvalue>.
  int readPropertyValue(int lHandle, int lBufferSize, Pointer<Int32> plNumBytes,
          Pointer<Uint8> aData) =>
      _vtable.ReadPropertyValue.asFunction<
              int Function(VTablePointer lpVtbl, int lHandle, int lBufferSize,
                  Pointer<Int32> plNumBytes, Pointer<Uint8> aData)>()(
          ptr, lHandle, lBufferSize, plNumBytes, aData);

  /// Reads 32 bits of property data using a property handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readdword>.
  int readDWORD(int lHandle, Pointer<Uint32> pdw) =>
      _vtable.ReadDWORD.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle,
              Pointer<Uint32> pdw)>()(ptr, lHandle, pdw);

  /// Writes 32 bits of data to a property identified by a property handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writedword>.
  int writeDWORD(int lHandle, int dw) => _vtable.WriteDWORD.asFunction<
      int Function(
          VTablePointer lpVtbl, int lHandle, int dw)>()(ptr, lHandle, dw);

  /// Reads 64 bits of property data identified by a property handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-readqword>.
  int readQWORD(int lHandle, Pointer<Uint64> pqw) =>
      _vtable.ReadQWORD.asFunction<
          int Function(VTablePointer lpVtbl, int lHandle,
              Pointer<Uint64> pqw)>()(ptr, lHandle, pqw);

  /// Writes 64 bits of data to a property by using a property handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-writeqword>.
  int writeQWORD(int lHandle, int pw) => _vtable.WriteQWORD.asFunction<
      int Function(
          VTablePointer lpVtbl, int lHandle, int pw)>()(ptr, lHandle, pw);

  /// Returns the name and data type of the property that is associated with a
  /// property handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-getpropertyinfobyhandle>.
  int getPropertyInfoByHandle(int lHandle, Pointer<Pointer<Utf16>> pstrName,
          Pointer<Int32> pType) =>
      _vtable.GetPropertyInfoByHandle.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int lHandle,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Int32> pType)>()(ptr, lHandle, pstrName, pType);

  /// Prevents other threads from updating an IWbemObjectAccess object until it is
  /// unlocked.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-lock>.
  int lock(int lFlags) =>
      _vtable.Lock.asFunction<int Function(VTablePointer lpVtbl, int lFlags)>()(
          ptr, lFlags);

  /// Allows other threads to update the property values of an IWbemObjectAccess
  /// object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectaccess-unlock>.
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
