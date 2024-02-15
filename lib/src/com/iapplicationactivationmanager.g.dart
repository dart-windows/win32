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
const IID_IApplicationActivationManager =
    '{2e941141-7f97-4756-ba1d-9decde894a3d}';

/// Provides methods which activate Windows Store apps for the Launch, File, and
/// Protocol extensions. You will normally use this interface in debuggers and
/// design tools.
///
/// {@category com}
class IApplicationActivationManager extends IUnknown {
  IApplicationActivationManager(super.ptr)
      : _vtable = ptr.value.cast<IApplicationActivationManagerVtbl>().ref;

  final IApplicationActivationManagerVtbl _vtable;

  factory IApplicationActivationManager.from(IUnknown interface) =>
      IApplicationActivationManager(
          interface.toInterface(IID_IApplicationActivationManager));

  int activateApplication(PWSTR appUserModelId, PWSTR arguments, int options,
          Pointer<Uint32> processId) =>
      _vtable.ActivateApplication.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR appUserModelId,
                  PWSTR arguments, int options, Pointer<Uint32> processId)>()(
          ptr, appUserModelId, arguments, options, processId);

  int activateForFile(PWSTR appUserModelId, VTablePointer itemArray, PWSTR verb,
          Pointer<Uint32> processId) =>
      _vtable.ActivateForFile.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  PWSTR appUserModelId,
                  VTablePointer itemArray,
                  PWSTR verb,
                  Pointer<Uint32> processId)>()(
          ptr, appUserModelId, itemArray, verb, processId);

  int activateForProtocol(PWSTR appUserModelId, VTablePointer itemArray,
          Pointer<Uint32> processId) =>
      _vtable.ActivateForProtocol.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR appUserModelId,
                  VTablePointer itemArray, Pointer<Uint32> processId)>()(
          ptr, appUserModelId, itemArray, processId);
}

/// @nodoc
base class IApplicationActivationManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR appUserModelId,
              PWSTR arguments,
              Int32 options,
              Pointer<Uint32> processId)>> ActivateApplication;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR appUserModelId,
              VTablePointer itemArray,
              PWSTR verb,
              Pointer<Uint32> processId)>> ActivateForFile;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR appUserModelId,
              VTablePointer itemArray,
              Pointer<Uint32> processId)>> ActivateForProtocol;
}

/// @nodoc
const ApplicationActivationManager = '{45ba127d-10a8-46ea-8ab7-56ea9078943c}';
