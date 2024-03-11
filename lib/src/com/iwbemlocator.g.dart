// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemLocator = '{dc12a687-737f-11cf-884d-00aa004b2e24}';

/// Use the IWbemLocator interface to obtain the initial namespace pointer to
/// the IWbemServices interface for WMI on a specific host computer.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemlocator>.
///
/// {@category com}
class IWbemLocator extends IUnknown {
  IWbemLocator(super.ptr) : _vtable = ptr.value.cast<IWbemLocatorVtbl>().ref;

  final IWbemLocatorVtbl _vtable;

  /// Creates a new instance of `IWbemLocator` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWbemLocator` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWbemLocator.from(IUnknown interface) =>
      IWbemLocator(interface.toInterface(IID_IWbemLocator));

  /// Creates a connection through DCOM to a WMI namespace on the computer
  /// specified in the strNetworkResource parameter.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemlocator-connectserver>.
  int connectServer(
          Pointer<Utf16> strNetworkResource,
          Pointer<Utf16> strUser,
          Pointer<Utf16> strPassword,
          Pointer<Utf16> strLocale,
          int lSecurityFlags,
          Pointer<Utf16> strAuthority,
          VTablePointer pCtx,
          Pointer<VTablePointer> ppNamespace) =>
      _vtable.ConnectServer.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strNetworkResource,
                  Pointer<Utf16> strUser,
                  Pointer<Utf16> strPassword,
                  Pointer<Utf16> strLocale,
                  int lSecurityFlags,
                  Pointer<Utf16> strAuthority,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppNamespace)>()(
          ptr,
          strNetworkResource,
          strUser,
          strPassword,
          strLocale,
          lSecurityFlags,
          strAuthority,
          pCtx,
          ppNamespace);
}

/// @nodoc
base class IWbemLocatorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strNetworkResource,
              Pointer<Utf16> strUser,
              Pointer<Utf16> strPassword,
              Pointer<Utf16> strLocale,
              Int32 lSecurityFlags,
              Pointer<Utf16> strAuthority,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppNamespace)>> ConnectServer;
}

/// @nodoc
const WbemLocator = '{4590f811-1d3a-11d0-891f-00aa004b2e24}';
