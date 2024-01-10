// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemLocator = '{dc12a687-737f-11cf-884d-00aa004b2e24}';

/// Use the IWbemLocator interface to obtain the initial namespace pointer to
/// the `IWbemServices` interface for WMI on a specific host computer. You can
/// access Windows Management itself using the `IWbemServices` pointer, which is
/// returned by the `IWbemLocator::ConnectServer` method.
///
/// {@category com}
class IWbemLocator extends IUnknown {
  IWbemLocator(super.ptr) : _vtable = ptr.value.cast<IWbemLocatorVtbl>().ref;

  final IWbemLocatorVtbl _vtable;

  factory IWbemLocator.from(IUnknown interface) =>
      IWbemLocator(interface.toInterface(IID_IWbemLocator));

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
                  VTablePointer,
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
          Int32 Function(
              VTablePointer,
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
const CLSID_WbemLocator = '{4590f811-1d3a-11d0-891f-00aa004b2e24}';

/// {@category com}
class WbemLocator extends IWbemLocator {
  WbemLocator(super.ptr);

  factory WbemLocator.createInstance() =>
      WbemLocator(createCOMObject(CLSID_WbemLocator, IID_IWbemLocator));
}
