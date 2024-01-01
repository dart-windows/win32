// ispnotifysource.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../callbacks.dart';
import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpNotifySource = '{5eff4aef-8487-11d2-961c-00c04f8ee628}';

/// In both speech synthesis and speech recognition, applications receive
/// notifications when words have been spoken or when phrases have been
/// recognized. SAPI components that generate notifications implement an
/// ISpNotifySource.
///
/// {@category com}
class ISpNotifySource extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISpNotifySource(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpNotifySourceVtbl>().ref;

  final ISpNotifySourceVtbl _vtable;

  factory ISpNotifySource.from(IUnknown interface) =>
      ISpNotifySource(interface.toInterface(IID_ISpNotifySource));

  int setNotifySink(Pointer<COMObject> pNotifySink) => _vtable.SetNotifySink
          .asFunction<int Function(Pointer, Pointer<COMObject> pNotifySink)>()(
      ptr.ref.lpVtbl, pNotifySink);

  int setNotifyWindowMessage(int hWnd, int Msg, int wParam, int lParam) =>
      _vtable.SetNotifyWindowMessage.asFunction<
          int Function(Pointer, int hWnd, int Msg, int wParam,
              int lParam)>()(ptr.ref.lpVtbl, hWnd, Msg, wParam, lParam);

  int setNotifyCallbackFunction(
          Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
          int wParam,
          int lParam) =>
      _vtable.SetNotifyCallbackFunction.asFunction<
          int Function(
              Pointer,
              Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
              int wParam,
              int lParam)>()(ptr.ref.lpVtbl, pfnCallback, wParam, lParam);

  int setNotifyCallbackInterface(
          Pointer<COMObject> pSpCallback, int wParam, int lParam) =>
      _vtable.SetNotifyCallbackInterface.asFunction<
          int Function(Pointer, Pointer<COMObject> pSpCallback, int wParam,
              int lParam)>()(ptr.ref.lpVtbl, pSpCallback, wParam, lParam);

  int setNotifyWin32Event() =>
      _vtable.SetNotifyWin32Event.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int waitForNotifyEvent(int dwMilliseconds) =>
      _vtable.WaitForNotifyEvent.asFunction<
          int Function(
              Pointer, int dwMilliseconds)>()(ptr.ref.lpVtbl, dwMilliseconds);

  int getNotifyEventHandle() =>
      _vtable.GetNotifyEventHandle.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);
}

/// @nodoc
base class ISpNotifySourceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> pNotifySink)>>
      SetNotifySink;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr hWnd, Uint32 Msg, IntPtr wParam,
              IntPtr lParam)>> SetNotifyWindowMessage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Pointer<NativeFunction<SpNotifyCallback>>> pfnCallback,
              IntPtr wParam,
              IntPtr lParam)>> SetNotifyCallbackFunction;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pSpCallback, IntPtr wParam,
              IntPtr lParam)>> SetNotifyCallbackInterface;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> SetNotifyWin32Event;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Uint32 dwMilliseconds)>>
      WaitForNotifyEvent;
  external Pointer<NativeFunction<IntPtr Function(Pointer)>>
      GetNotifyEventHandle;
}
