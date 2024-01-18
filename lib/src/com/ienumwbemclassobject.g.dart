// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

/// The IEnumWbemClassObject interface is used to enumerate Common Information
/// Model (CIM) objects and is similar to a standard COM enumerator.
///
/// {@category com}
class IEnumWbemClassObject extends IUnknown {
  IEnumWbemClassObject(super.ptr)
      : _vtable = ptr.value.cast<IEnumWbemClassObjectVtbl>().ref;

  final IEnumWbemClassObjectVtbl _vtable;

  factory IEnumWbemClassObject.from(IUnknown interface) =>
      IEnumWbemClassObject(interface.toInterface(IID_IEnumWbemClassObject));

  int reset() => _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr);

  int next(int lTimeout, int uCount, Pointer<VTablePointer> apObjects,
          Pointer<Uint32> puReturned) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer,
                  int lTimeout,
                  int uCount,
                  Pointer<VTablePointer> apObjects,
                  Pointer<Uint32> puReturned)>()(
          ptr, lTimeout, uCount, apObjects, puReturned);

  int nextAsync(int uCount, VTablePointer pSink) =>
      _vtable.NextAsync.asFunction<
              int Function(VTablePointer, int uCount, VTablePointer pSink)>()(
          ptr, uCount, pSink);

  int clone(Pointer<VTablePointer> ppEnum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  int skip(int lTimeout, int nCount) => _vtable.Skip.asFunction<
      int Function(
          VTablePointer, int lTimeout, int nCount)>()(ptr, lTimeout, nCount);
}

/// @nodoc
base class IEnumWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 lTimeout,
              Uint32 uCount,
              Pointer<VTablePointer> apObjects,
              Pointer<Uint32> puReturned)>> Next;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Uint32 uCount, VTablePointer pSink)>> NextAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> ppEnum)>> Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lTimeout, Uint32 nCount)>> Skip;
}
