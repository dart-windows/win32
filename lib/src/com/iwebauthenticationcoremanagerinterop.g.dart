// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iinspectable.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerInterop =
    '{f4b8e804-811e-4436-b69c-44cb67b72084}';

/// Contains core methods for obtaining tokens from web account providers.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nn-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop>.
///
/// {@category com}
class IWebAuthenticationCoreManagerInterop extends IInspectable {
  IWebAuthenticationCoreManagerInterop(super.ptr)
      : _vtable =
            ptr.value.cast<IWebAuthenticationCoreManagerInteropVtbl>().ref;

  final IWebAuthenticationCoreManagerInteropVtbl _vtable;

  /// Creates a new instance of `IWebAuthenticationCoreManagerInterop` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWebAuthenticationCoreManagerInterop` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWebAuthenticationCoreManagerInterop.from(IUnknown interface) =>
      IWebAuthenticationCoreManagerInterop(
          interface.toInterface(IID_IWebAuthenticationCoreManagerInterop));

  /// Asynchronously requests a token from a web account provider.
  ///
  /// If necessary, the user is prompted to enter their credentials.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nf-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop-requesttokenforwindowasync>.
  int requestTokenForWindowAsync(int appWindow, VTablePointer request,
          Pointer<GUID> riid, Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenForWindowAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int appWindow,
                  VTablePointer request,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>()(
          ptr, appWindow, request, riid, asyncInfo);

  /// Asynchronously requests a token from a web account provider.
  ///
  /// If necessary, the user is prompted to enter their credentials.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/webauthenticationcoremanagerinterop/nf-webauthenticationcoremanagerinterop-iwebauthenticationcoremanagerinterop-requesttokenwithwebaccountforwindowasync>.
  int requestTokenWithWebAccountForWindowAsync(
          int appWindow,
          VTablePointer request,
          VTablePointer webAccount,
          Pointer<GUID> riid,
          Pointer<Pointer> asyncInfo) =>
      _vtable.RequestTokenWithWebAccountForWindowAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              HWND appWindow,
              VTablePointer request,
              Pointer<GUID> riid,
              Pointer<Pointer> asyncInfo)>> RequestTokenForWindowAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  HWND appWindow,
                  VTablePointer request,
                  VTablePointer webAccount,
                  Pointer<GUID> riid,
                  Pointer<Pointer> asyncInfo)>>
      RequestTokenWithWebAccountForWindowAsync;
}
