// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWinHttpRequest = '{016fe2ec-b2c8-45f8-b23b-39e53a75396b}';

/// Provides all of the nonevent methods for Microsoft Windows HTTP Services
/// (WinHTTP).
///
/// {@category com}
class IWinHttpRequest extends IDispatch {
  IWinHttpRequest(super.ptr)
      : _vtable = ptr.value.cast<IWinHttpRequestVtbl>().ref;

  final IWinHttpRequestVtbl _vtable;

  factory IWinHttpRequest.from(IUnknown interface) =>
      IWinHttpRequest(interface.toInterface(IID_IWinHttpRequest));

  int setProxy(int ProxySetting, VARIANT ProxyServer, VARIANT BypassList) =>
      _vtable.SetProxy.asFunction<
              int Function(VTablePointer, int ProxySetting, VARIANT ProxyServer,
                  VARIANT BypassList)>()(
          ptr, ProxySetting, ProxyServer, BypassList);

  int setCredentials(
          Pointer<Utf16> UserName, Pointer<Utf16> Password, int Flags) =>
      _vtable.SetCredentials.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> UserName,
              Pointer<Utf16> Password,
              int Flags)>()(ptr, UserName, Password, Flags);

  int open(Pointer<Utf16> Method, Pointer<Utf16> Url, VARIANT Async) =>
      _vtable.Open.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Method, Pointer<Utf16> Url,
              VARIANT Async)>()(ptr, Method, Url, Async);

  int setRequestHeader(Pointer<Utf16> Header, Pointer<Utf16> Value) =>
      _vtable.SetRequestHeader.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Header,
              Pointer<Utf16> Value)>()(ptr, Header, Value);

  int getResponseHeader(Pointer<Utf16> Header, Pointer<Pointer<Utf16>> Value) =>
      _vtable.GetResponseHeader.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Header,
              Pointer<Pointer<Utf16>> Value)>()(ptr, Header, Value);

  int getAllResponseHeaders(Pointer<Pointer<Utf16>> Headers) =>
      _vtable.GetAllResponseHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> Headers)>()(ptr, Headers);

  int send(VARIANT Body) =>
      _vtable.Send.asFunction<int Function(VTablePointer, VARIANT Body)>()(
          ptr, Body);

  int get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Status
              .asFunction<int Function(VTablePointer, Pointer<Int32> Status)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get statusText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_StatusText.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> Status)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get responseText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_ResponseText.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> Body)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseBody {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = _vtable.get_ResponseBody
              .asFunction<int Function(VTablePointer, Pointer<VARIANT> Body)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseStream {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = _vtable.get_ResponseStream
              .asFunction<int Function(VTablePointer, Pointer<VARIANT> Body)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Option(int Option, Pointer<VARIANT> Value) =>
      _vtable.get_Option.asFunction<
          int Function(VTablePointer, int Option,
              Pointer<VARIANT> Value)>()(ptr, Option, Value);

  int put_Option(int Option, VARIANT Value) => _vtable.put_Option
          .asFunction<int Function(VTablePointer, int Option, VARIANT Value)>()(
      ptr, Option, Value);

  int waitForResponse(VARIANT Timeout, Pointer<Int16> Succeeded) =>
      _vtable.WaitForResponse.asFunction<
          int Function(VTablePointer, VARIANT Timeout,
              Pointer<Int16> Succeeded)>()(ptr, Timeout, Succeeded);

  int abort() => _vtable.Abort.asFunction<int Function(VTablePointer)>()(ptr);

  int setTimeouts(int ResolveTimeout, int ConnectTimeout, int SendTimeout,
          int ReceiveTimeout) =>
      _vtable.SetTimeouts.asFunction<
              int Function(VTablePointer, int ResolveTimeout,
                  int ConnectTimeout, int SendTimeout, int ReceiveTimeout)>()(
          ptr, ResolveTimeout, ConnectTimeout, SendTimeout, ReceiveTimeout);

  int setClientCertificate(Pointer<Utf16> ClientCertificate) =>
      _vtable.SetClientCertificate.asFunction<
              int Function(VTablePointer, Pointer<Utf16> ClientCertificate)>()(
          ptr, ClientCertificate);

  int setAutoLogonPolicy(int AutoLogonPolicy) =>
      _vtable.SetAutoLogonPolicy.asFunction<
          int Function(
              VTablePointer, int AutoLogonPolicy)>()(ptr, AutoLogonPolicy);
}

/// @nodoc
base class IWinHttpRequestVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 ProxySetting, VARIANT ProxyServer,
              VARIANT BypassList)>> SetProxy;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> UserName,
              Pointer<Utf16> Password, Int32 Flags)>> SetCredentials;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Method,
              Pointer<Utf16> Url, VARIANT Async)>> Open;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> Header, Pointer<Utf16> Value)>>
      SetRequestHeader;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Header,
              Pointer<Pointer<Utf16>> Value)>> GetResponseHeader;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> Headers)>>
      GetAllResponseHeaders;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, VARIANT Body)>>
      Send;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Status)>>
      get_Status;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> Status)>>
      get_StatusText;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> Body)>>
      get_ResponseText;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<VARIANT> Body)>>
      get_ResponseBody;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<VARIANT> Body)>>
      get_ResponseStream;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Int32 Option, Pointer<VARIANT> Value)>> get_Option;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 Option, VARIANT Value)>>
      put_Option;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VARIANT Timeout, Pointer<Int16> Succeeded)>>
      WaitForResponse;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Abort;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 ResolveTimeout,
              Int32 ConnectTimeout,
              Int32 SendTimeout,
              Int32 ReceiveTimeout)>> SetTimeouts;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> ClientCertificate)>>
      SetClientCertificate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 AutoLogonPolicy)>>
      SetAutoLogonPolicy;
}

/// @nodoc
const CLSID_WinHttpRequest = '{2087c2f4-2cef-4953-a8ab-66779b670495}';

/// {@category com}
class WinHttpRequest extends IWinHttpRequest {
  WinHttpRequest(super.ptr);

  factory WinHttpRequest.createInstance() => WinHttpRequest(
      createCOMObject(CLSID_WinHttpRequest, IID_IWinHttpRequest));
}
