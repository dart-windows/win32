// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemConfigureRefresher = '{49353c92-516b-11d1-aea6-00c04fb68820}';

/// The IWbemConfigureRefresher interface is used by client code to add
/// enumerators, objects, and nested refreshers into a refresher.
///
/// {@category com}
class IWbemConfigureRefresher extends IUnknown {
  IWbemConfigureRefresher(super.ptr)
      : _vtable = ptr.value.cast<IWbemConfigureRefresherVtbl>().ref;

  final IWbemConfigureRefresherVtbl _vtable;

  factory IWbemConfigureRefresher.from(IUnknown interface) =>
      IWbemConfigureRefresher(
          interface.toInterface(IID_IWbemConfigureRefresher));

  int addObjectByPath(
          VTablePointer pNamespace,
          PWSTR wszPath,
          int lFlags,
          VTablePointer pContext,
          Pointer<VTablePointer> ppRefreshable,
          Pointer<Int32> plId) =>
      _vtable.AddObjectByPath.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pNamespace,
                  PWSTR wszPath,
                  int lFlags,
                  VTablePointer pContext,
                  Pointer<VTablePointer> ppRefreshable,
                  Pointer<Int32> plId)>()(
          ptr, pNamespace, wszPath, lFlags, pContext, ppRefreshable, plId);

  int addObjectByTemplate(
          VTablePointer pNamespace,
          VTablePointer pTemplate,
          int lFlags,
          VTablePointer pContext,
          Pointer<VTablePointer> ppRefreshable,
          Pointer<Int32> plId) =>
      _vtable.AddObjectByTemplate.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pNamespace,
                  VTablePointer pTemplate,
                  int lFlags,
                  VTablePointer pContext,
                  Pointer<VTablePointer> ppRefreshable,
                  Pointer<Int32> plId)>()(
          ptr, pNamespace, pTemplate, lFlags, pContext, ppRefreshable, plId);

  int addRefresher(VTablePointer pRefresher, int lFlags, Pointer<Int32> plId) =>
      _vtable.AddRefresher.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pRefresher,
              int lFlags,
              Pointer<Int32> plId)>()(ptr, pRefresher, lFlags, plId);

  int remove(int lId, int lFlags) => _vtable.Remove.asFunction<
      int Function(
          VTablePointer lpVtbl, int lId, int lFlags)>()(ptr, lId, lFlags);

  int addEnum(
          VTablePointer pNamespace,
          PWSTR wszClassName,
          int lFlags,
          VTablePointer pContext,
          Pointer<VTablePointer> ppEnum,
          Pointer<Int32> plId) =>
      _vtable.AddEnum.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pNamespace,
                  PWSTR wszClassName,
                  int lFlags,
                  VTablePointer pContext,
                  Pointer<VTablePointer> ppEnum,
                  Pointer<Int32> plId)>()(
          ptr, pNamespace, wszClassName, lFlags, pContext, ppEnum, plId);
}

/// @nodoc
base class IWbemConfigureRefresherVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pNamespace,
              PWSTR wszPath,
              Int32 lFlags,
              VTablePointer pContext,
              Pointer<VTablePointer> ppRefreshable,
              Pointer<Int32> plId)>> AddObjectByPath;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pNamespace,
              VTablePointer pTemplate,
              Int32 lFlags,
              VTablePointer pContext,
              Pointer<VTablePointer> ppRefreshable,
              Pointer<Int32> plId)>> AddObjectByTemplate;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pRefresher,
              Int32 lFlags, Pointer<Int32> plId)>> AddRefresher;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 lId, Int32 lFlags)>>
      Remove;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pNamespace,
              PWSTR wszClassName,
              Int32 lFlags,
              VTablePointer pContext,
              Pointer<VTablePointer> ppEnum,
              Pointer<Int32> plId)>> AddEnum;
}
