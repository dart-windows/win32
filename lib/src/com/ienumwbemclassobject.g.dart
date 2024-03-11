// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

/// Used to enumerate Common Information Model (CIM) objects and is similar to a
/// standard COM enumerator.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-ienumwbemclassobject>.
///
/// {@category com}
class IEnumWbemClassObject extends IUnknown {
  IEnumWbemClassObject(super.ptr)
      : _vtable = ptr.value.cast<IEnumWbemClassObjectVtbl>().ref;

  final IEnumWbemClassObjectVtbl _vtable;

  factory IEnumWbemClassObject.from(IUnknown interface) =>
      IEnumWbemClassObject(interface.toInterface(IID_IEnumWbemClassObject));

  /// Resets an enumeration sequence back to the beginning.
  ///
  /// Because CIM objects are dynamic, calling this method does not necessarily
  /// return the same list of objects that you obtained previously.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Use the `IEnumWbemClassObject.next` method to get one or more objects
  /// starting at the current position in an enumeration.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-next>.
  int next(int lTimeout, int uCount, Pointer<VTablePointer> apObjects,
          Pointer<Uint32> puReturned) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int lTimeout,
                  int uCount,
                  Pointer<VTablePointer> apObjects,
                  Pointer<Uint32> puReturned)>()(
          ptr, lTimeout, uCount, apObjects, puReturned);

  /// Use the NextAsync method when a controlled asynchronous retrieval of objects
  /// to a sink is required.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-nextasync>.
  int nextAsync(int uCount, VTablePointer pSink) =>
      _vtable.NextAsync.asFunction<
          int Function(VTablePointer lpVtbl, int uCount,
              VTablePointer pSink)>()(ptr, uCount, pSink);

  /// Makes a logical copy of the entire enumerator, retaining its current
  /// position in an enumeration.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-clone>.
  int clone(Pointer<VTablePointer> ppEnum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  /// You can use the `IEnumWbemClassObject.skip` method to move the current
  /// position in an enumeration ahead by a specified number of objects.
  ///
  /// Also, this affects subsequent calls to NextAsync, but it does not affect
  /// pending deliveries begun with NextAsync.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-ienumwbemclassobject-skip>.
  int skip(int lTimeout, int nCount) => _vtable.Skip.asFunction<
          int Function(VTablePointer lpVtbl, int lTimeout, int nCount)>()(
      ptr, lTimeout, nCount);
}

/// @nodoc
base class IEnumWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lTimeout,
              Uint32 uCount,
              Pointer<VTablePointer> apObjects,
              Pointer<Uint32> puReturned)>> Next;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 uCount, VTablePointer pSink)>>
      NextAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>> Clone;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Int32 lTimeout, Uint32 nCount)>> Skip;
}
