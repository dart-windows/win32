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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

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

  int setProxy(int proxySetting, VARIANT proxyServer, VARIANT bypassList) =>
      _vtable.SetProxy.asFunction<
              int Function(VTablePointer, int proxySetting, VARIANT proxyServer,
                  VARIANT bypassList)>()(
          ptr, proxySetting, proxyServer, bypassList);

  int setCredentials(
          Pointer<Utf16> userName, Pointer<Utf16> password, int flags) =>
      _vtable.SetCredentials.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> userName,
              Pointer<Utf16> password,
              int flags)>()(ptr, userName, password, flags);

  int open(Pointer<Utf16> method, Pointer<Utf16> url, VARIANT async) =>
      _vtable.Open.asFunction<
          int Function(VTablePointer, Pointer<Utf16> method, Pointer<Utf16> url,
              VARIANT async)>()(ptr, method, url, async);

  int setRequestHeader(Pointer<Utf16> header, Pointer<Utf16> value) =>
      _vtable.SetRequestHeader.asFunction<
          int Function(VTablePointer, Pointer<Utf16> header,
              Pointer<Utf16> value)>()(ptr, header, value);

  int getResponseHeader(Pointer<Utf16> header, Pointer<Pointer<Utf16>> value) =>
      _vtable.GetResponseHeader.asFunction<
          int Function(VTablePointer, Pointer<Utf16> header,
              Pointer<Pointer<Utf16>> value)>()(ptr, header, value);

  int getAllResponseHeaders(Pointer<Pointer<Utf16>> headers) =>
      _vtable.GetAllResponseHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> headers)>()(ptr, headers);

  int send(VARIANT body) =>
      _vtable.Send.asFunction<int Function(VTablePointer, VARIANT body)>()(
          ptr, body);

  int get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Status
              .asFunction<int Function(VTablePointer, Pointer<Int32> status)>()(
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> status)>()(
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
              VTablePointer, Pointer<Pointer<Utf16>> body)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VARIANT> get responseBody {
    final retValuePtr = calloc<VARIANT>();
    final hr = _vtable.get_ResponseBody
            .asFunction<int Function(VTablePointer, Pointer<VARIANT> body)>()(
        ptr, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);
    return retValuePtr;
  }

  Pointer<VARIANT> get responseStream {
    final retValuePtr = calloc<VARIANT>();
    final hr = _vtable.get_ResponseStream
            .asFunction<int Function(VTablePointer, Pointer<VARIANT> body)>()(
        ptr, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);
    return retValuePtr;
  }

  int get_Option(int option, Pointer<VARIANT> value) =>
      _vtable.get_Option.asFunction<
          int Function(VTablePointer, int option,
              Pointer<VARIANT> value)>()(ptr, option, value);

  int put_Option(int option, VARIANT value) => _vtable.put_Option
          .asFunction<int Function(VTablePointer, int option, VARIANT value)>()(
      ptr, option, value);

  int waitForResponse(VARIANT timeout, Pointer<Int16> succeeded) =>
      _vtable.WaitForResponse.asFunction<
          int Function(VTablePointer, VARIANT timeout,
              Pointer<Int16> succeeded)>()(ptr, timeout, succeeded);

  int abort() => _vtable.Abort.asFunction<int Function(VTablePointer)>()(ptr);

  int setTimeouts(int resolveTimeout, int connectTimeout, int sendTimeout,
          int receiveTimeout) =>
      _vtable.SetTimeouts.asFunction<
              int Function(VTablePointer, int resolveTimeout,
                  int connectTimeout, int sendTimeout, int receiveTimeout)>()(
          ptr, resolveTimeout, connectTimeout, sendTimeout, receiveTimeout);

  int setClientCertificate(Pointer<Utf16> clientCertificate) =>
      _vtable.SetClientCertificate.asFunction<
              int Function(VTablePointer, Pointer<Utf16> clientCertificate)>()(
          ptr, clientCertificate);

  int setAutoLogonPolicy(int autoLogonPolicy) =>
      _vtable.SetAutoLogonPolicy.asFunction<
          int Function(
              VTablePointer, int autoLogonPolicy)>()(ptr, autoLogonPolicy);
}

/// @nodoc
base class IWinHttpRequestVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 proxySetting, VARIANT proxyServer,
              VARIANT bypassList)>> SetProxy;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> userName,
              Pointer<Utf16> password, Int32 flags)>> SetCredentials;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> method,
              Pointer<Utf16> url, VARIANT async)>> Open;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> header, Pointer<Utf16> value)>>
      SetRequestHeader;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> header,
              Pointer<Pointer<Utf16>> value)>> GetResponseHeader;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> headers)>>
      GetAllResponseHeaders;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, VARIANT body)>>
      Send;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> status)>>
      get_Status;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> status)>>
      get_StatusText;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> body)>>
      get_ResponseText;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<VARIANT> body)>>
      get_ResponseBody;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<VARIANT> body)>>
      get_ResponseStream;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Int32 option, Pointer<VARIANT> value)>> get_Option;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 option, VARIANT value)>>
      put_Option;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VARIANT timeout, Pointer<Int16> succeeded)>>
      WaitForResponse;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Abort;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 resolveTimeout,
              Int32 connectTimeout,
              Int32 sendTimeout,
              Int32 receiveTimeout)>> SetTimeouts;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> clientCertificate)>>
      SetClientCertificate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 autoLogonPolicy)>>
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
