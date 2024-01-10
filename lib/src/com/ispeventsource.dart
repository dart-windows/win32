// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ispnotifysource.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpEventSource = '{be7a9cce-5f9e-11d2-960f-00c04f8ee628}';

/// Using the methods on ISpNotifySource an application can specify the
/// mechanism by which it receives notifications.  Applications can configure
/// which events should trigger notifications and which events retrieve queued
/// events. ISpEventSource inherits from the [ISpNotifySource] interface.
///
/// {@category com}
class ISpEventSource extends ISpNotifySource {
  ISpEventSource(super.ptr)
      : _vtable = ptr.value.cast<ISpEventSourceVtbl>().ref;

  final ISpEventSourceVtbl _vtable;

  factory ISpEventSource.from(IUnknown interface) =>
      ISpEventSource(interface.toInterface(IID_ISpEventSource));

  int setInterest(int ullEventInterest, int ullQueuedInterest) =>
      _vtable.SetInterest.asFunction<
              int Function(VTablePointer, int ullEventInterest,
                  int ullQueuedInterest)>()(
          ptr, ullEventInterest, ullQueuedInterest);

  int getEvents(int ulCount, Pointer<SPEVENT> pEventArray,
          Pointer<Uint32> pulFetched) =>
      _vtable.GetEvents.asFunction<
              int Function(VTablePointer, int ulCount,
                  Pointer<SPEVENT> pEventArray, Pointer<Uint32> pulFetched)>()(
          ptr, ulCount, pEventArray, pulFetched);

  int getInfo(Pointer<SPEVENTSOURCEINFO> pInfo) => _vtable.GetInfo.asFunction<
      int Function(
          VTablePointer, Pointer<SPEVENTSOURCEINFO> pInfo)>()(ptr, pInfo);
}

/// @nodoc
base class ISpEventSourceVtbl extends Struct {
  external ISpNotifySourceVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint64 ullEventInterest,
              Uint64 ullQueuedInterest)>> SetInterest;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ulCount,
              Pointer<SPEVENT> pEventArray,
              Pointer<Uint32> pulFetched)>> GetEvents;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<SPEVENTSOURCEINFO> pInfo)>>
      GetInfo;
}
