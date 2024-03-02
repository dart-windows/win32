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
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationProxyFactory = '{85b94ecd-849d-42b6-b94d-d6db23fdf5a4}';

/// Exposes properties and methods of an object that creates a Microsoft UI
/// Automation provider for UI elements that do not have native support for UI
/// Automation.
///
/// This interface is implemented by proxies.
///
/// {@category com}
class IUIAutomationProxyFactory extends IUnknown {
  IUIAutomationProxyFactory(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationProxyFactoryVtbl>().ref;

  final IUIAutomationProxyFactoryVtbl _vtable;

  factory IUIAutomationProxyFactory.from(IUnknown interface) =>
      IUIAutomationProxyFactory(
          interface.toInterface(IID_IUIAutomationProxyFactory));

  int createProvider(int hwnd, int idObject, int idChild,
          Pointer<VTablePointer> provider) =>
      _vtable.CreateProvider.asFunction<
              int Function(VTablePointer lpVtbl, int hwnd, int idObject,
                  int idChild, Pointer<VTablePointer> provider)>()(
          ptr, hwnd, idObject, idChild, provider);

  Pointer<Utf16> get proxyFactoryId {
    final factoryId = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_ProxyFactoryId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> factoryId)>()(ptr, factoryId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = factoryId.value;
      return retValue;
    } finally {
      free(factoryId);
    }
  }
}

/// @nodoc
base class IUIAutomationProxyFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hwnd, Int32 idObject,
              Int32 idChild, Pointer<VTablePointer> provider)>> CreateProvider;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> factoryId)>>
      get_ProxyFactoryId;
}
