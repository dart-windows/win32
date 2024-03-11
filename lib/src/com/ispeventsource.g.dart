// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ispnotifysource.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpEventSource = '{be7a9cce-5f9e-11d2-960f-00c04f8ee628}';

/// Provides the mechanism to filter and queue events.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)>.
///
/// {@category com}
class ISpEventSource extends ISpNotifySource {
  ISpEventSource(super.ptr)
      : _vtable = ptr.value.cast<ISpEventSourceVtbl>().ref;

  final ISpEventSourceVtbl _vtable;

  /// Creates a new instance of `ISpEventSource` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISpEventSource` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISpEventSource.from(IUnknown interface) =>
      ISpEventSource(interface.toInterface(IID_ISpEventSource));

  int setInterest(int ullEventInterest, int ullQueuedInterest) =>
      _vtable.SetInterest.asFunction<
              int Function(VTablePointer lpVtbl, int ullEventInterest,
                  int ullQueuedInterest)>()(
          ptr, ullEventInterest, ullQueuedInterest);

  int getEvents(int ulCount, Pointer<SPEVENT> pEventArray,
          Pointer<Uint32> pulFetched) =>
      _vtable.GetEvents.asFunction<
              int Function(VTablePointer lpVtbl, int ulCount,
                  Pointer<SPEVENT> pEventArray, Pointer<Uint32> pulFetched)>()(
          ptr, ulCount, pEventArray, pulFetched);

  int getInfo(Pointer<SPEVENTSOURCEINFO> pInfo) => _vtable.GetInfo.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<SPEVENTSOURCEINFO> pInfo)>()(ptr, pInfo);
}

/// @nodoc
base class ISpEventSourceVtbl extends Struct {
  external ISpNotifySourceVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 ullEventInterest,
              Uint64 ullQueuedInterest)>> SetInterest;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 ulCount,
              Pointer<SPEVENT> pEventArray,
              Pointer<Uint32> pulFetched)>> GetEvents;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<SPEVENTSOURCEINFO> pInfo)>> GetInfo;
}
