// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iinspectable.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerInterop =
    '{f4b8e804-811e-4436-b69c-44cb67b72084}';

/// Provides Win32 apps with access to certain functions of
/// WebAuthenticationCoreManager that are otherwise available only to UWP apps.
///
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable {
  IWebAuthenticationCoreManagerInterop(super.ptr)
      : _vtable =
            ptr.value.cast<IWebAuthenticationCoreManagerInteropVtbl>().ref;

  final IWebAuthenticationCoreManagerInteropVtbl _vtable;

  factory IWebAuthenticationCoreManagerInterop.from(IUnknown interface) =>
      IWebAuthenticationCoreManagerInterop(
          interface.toInterface(IID_IWebAuthenticationCoreManagerInterop));

  int requestTokenForWindowAsync(int appWindow, VTablePointer request,
          Pointer<GUID> riid, Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenForWindowAsync.asFunction<
              int Function(VTablePointer, int appWindow, VTablePointer request,
                  Pointer<GUID> riid, Pointer<Pointer> asyncInfo)>()(
          ptr, appWindow, request, riid, asyncInfo);

  int requestTokenWithWebAccountForWindowAsync(
          int appWindow,
          VTablePointer request,
          VTablePointer webAccount,
          Pointer<GUID> riid,
          Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenWithWebAccountForWindowAsync.asFunction<
              int Function(
                  VTablePointer,
                  int appWindow,
                  VTablePointer request,
                  VTablePointer webAccount,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>()(
          ptr, appWindow, request, webAccount, riid, asyncInfo);
}

/// @nodoc
base class IWebAuthenticationCoreManagerInteropVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr appWindow,
              VTablePointer request,
              Pointer<GUID> riid,
              Pointer<Pointer> asyncInfo)>> RequestTokenForWindowAsync;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  IntPtr appWindow,
                  VTablePointer request,
                  VTablePointer webAccount,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>>
      RequestTokenWithWebAccountForWindowAsync;
}
