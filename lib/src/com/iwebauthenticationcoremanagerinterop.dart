// iwebauthenticationcoremanagerinterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iinspectable.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerInterop =
    '{f4b8e804-811e-4436-b69c-44cb67b72084}';

/// Provides Win32 apps with access to certain functions of
/// WebAuthenticationCoreManager that are otherwise available only to UWP
/// apps.
///
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWebAuthenticationCoreManagerInterop(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IWebAuthenticationCoreManagerInteropVtbl>().ref;

  final IWebAuthenticationCoreManagerInteropVtbl _vtable;

  factory IWebAuthenticationCoreManagerInterop.from(IUnknown interface) =>
      IWebAuthenticationCoreManagerInterop(
          interface.toInterface(IID_IWebAuthenticationCoreManagerInterop));

  int requestTokenForWindowAsync(int appWindow, Pointer<COMObject> request,
          Pointer<GUID> riid, Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenForWindowAsync.asFunction<
              int Function(Pointer, int appWindow, Pointer<COMObject> request,
                  Pointer<GUID> riid, Pointer<Pointer> asyncInfo)>()(
          ptr.ref.lpVtbl, appWindow, request, riid, asyncInfo);

  int requestTokenWithWebAccountForWindowAsync(
          int appWindow,
          Pointer<COMObject> request,
          Pointer<COMObject> webAccount,
          Pointer<GUID> riid,
          Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenWithWebAccountForWindowAsync.asFunction<
              int Function(
                  Pointer,
                  int appWindow,
                  Pointer<COMObject> request,
                  Pointer<COMObject> webAccount,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>()(
          ptr.ref.lpVtbl, appWindow, request, webAccount, riid, asyncInfo);
}

/// @nodoc
base class IWebAuthenticationCoreManagerInteropVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              IntPtr appWindow,
              Pointer<COMObject> request,
              Pointer<GUID> riid,
              Pointer<Pointer> asyncInfo)>> RequestTokenForWindowAsync;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  IntPtr appWindow,
                  Pointer<COMObject> request,
                  Pointer<COMObject> webAccount,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>>
      RequestTokenWithWebAccountForWindowAsync;
}
