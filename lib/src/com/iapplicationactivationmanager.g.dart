// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IApplicationActivationManager =
    '{2e941141-7f97-4756-ba1d-9decde894a3d}';

/// Provides methods which activate Windows Store apps for the Launch, File, and
/// Protocol extensions.
///
/// You will normally use this interface in debuggers and design tools.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iapplicationactivationmanager>.
///
/// {@category com}
class IApplicationActivationManager extends IUnknown {
  IApplicationActivationManager(super.ptr)
      : _vtable = ptr.value.cast<IApplicationActivationManagerVtbl>().ref;

  final IApplicationActivationManagerVtbl _vtable;

  factory IApplicationActivationManager.from(IUnknown interface) =>
      IApplicationActivationManager(
          interface.toInterface(IID_IApplicationActivationManager));

  int activateApplication(Pointer<Utf16> appUserModelId,
          Pointer<Utf16> arguments, int options, Pointer<Uint32> processId) =>
      _vtable.ActivateApplication.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> appUserModelId,
                  Pointer<Utf16> arguments,
                  int options,
                  Pointer<Uint32> processId)>()(
          ptr, appUserModelId, arguments, options, processId);

  int activateForFile(Pointer<Utf16> appUserModelId, VTablePointer itemArray,
          Pointer<Utf16> verb, Pointer<Uint32> processId) =>
      _vtable.ActivateForFile.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> appUserModelId,
                  VTablePointer itemArray,
                  Pointer<Utf16> verb,
                  Pointer<Uint32> processId)>()(
          ptr, appUserModelId, itemArray, verb, processId);

  int activateForProtocol(Pointer<Utf16> appUserModelId,
          VTablePointer itemArray, Pointer<Uint32> processId) =>
      _vtable.ActivateForProtocol.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> appUserModelId,
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
              Pointer<Utf16> appUserModelId,
              Pointer<Utf16> arguments,
              Int32 options,
              Pointer<Uint32> processId)>> ActivateApplication;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> appUserModelId,
              VTablePointer itemArray,
              Pointer<Utf16> verb,
              Pointer<Uint32> processId)>> ActivateForFile;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> appUserModelId,
              VTablePointer itemArray,
              Pointer<Uint32> processId)>> ActivateForProtocol;
}

/// @nodoc
const ApplicationActivationManager = '{45ba127d-10a8-46ea-8ab7-56ea9078943c}';
