// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../callbacks.dart';
import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpNotifySource = '{5eff4aef-8487-11d2-961c-00c04f8ee628}';

/// In both speech synthesis and speech recognition, applications receive
/// notifications when words have been spoken or when phrases have been
/// recognized. SAPI components that generate notifications implement an
/// ISpNotifySource.
///
/// {@category com}
class ISpNotifySource extends IUnknown {
  ISpNotifySource(super.ptr)
      : _vtable = ptr.value.cast<ISpNotifySourceVtbl>().ref;

  final ISpNotifySourceVtbl _vtable;

  factory ISpNotifySource.from(IUnknown interface) =>
      ISpNotifySource(interface.toInterface(IID_ISpNotifySource));

  int setNotifySink(VTablePointer? pNotifySink) => _vtable.SetNotifySink
          .asFunction<int Function(VTablePointer, VTablePointer pNotifySink)>()(
      ptr, pNotifySink ?? nullptr);

  int setNotifyWindowMessage(int hWnd, int msg, int wParam, int lParam) =>
      _vtable.SetNotifyWindowMessage.asFunction<
          int Function(VTablePointer, int hWnd, int msg, int wParam,
              int lParam)>()(ptr, hWnd, msg, wParam, lParam);

  int setNotifyCallbackFunction(
          Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
          int wParam,
          int lParam) =>
      _vtable.SetNotifyCallbackFunction.asFunction<
          int Function(
              VTablePointer,
              Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
              int wParam,
              int lParam)>()(ptr, pfnCallback, wParam, lParam);

  int setNotifyCallbackInterface(
          VTablePointer pSpCallback, int wParam, int lParam) =>
      _vtable.SetNotifyCallbackInterface.asFunction<
          int Function(VTablePointer, VTablePointer pSpCallback, int wParam,
              int lParam)>()(ptr, pSpCallback, wParam, lParam);

  int setNotifyWin32Event() =>
      _vtable.SetNotifyWin32Event.asFunction<int Function(VTablePointer)>()(
          ptr);

  int waitForNotifyEvent(int dwMilliseconds) =>
      _vtable.WaitForNotifyEvent.asFunction<
          int Function(
              VTablePointer, int dwMilliseconds)>()(ptr, dwMilliseconds);

  int getNotifyEventHandle() =>
      _vtable.GetNotifyEventHandle.asFunction<int Function(VTablePointer)>()(
          ptr);
}

/// @nodoc
base class ISpNotifySourceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer pNotifySink)>>
      SetNotifySink;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hWnd, Uint32 msg, IntPtr wParam,
              IntPtr lParam)>> SetNotifyWindowMessage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
              IntPtr wParam,
              IntPtr lParam)>> SetNotifyCallbackFunction;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pSpCallback,
              IntPtr wParam, IntPtr lParam)>> SetNotifyCallbackInterface;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      SetNotifyWin32Event;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 dwMilliseconds)>>
      WaitForNotifyEvent;
  external Pointer<NativeFunction<IntPtr Function(VTablePointer)>>
      GetNotifyEventHandle;
}
