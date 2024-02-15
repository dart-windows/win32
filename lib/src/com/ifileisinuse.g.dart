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
const IID_IFileIsInUse = '{64a1cbf0-3a1a-4461-9158-376969693950}';

/// Exposes methods that can be called to get information on or close a file
/// that is in use by another application. When an application attempts to
/// access a file and finds that file already in use, it can use the methods of
/// this interface to gather information to present to the user in a dialog box.
///
/// {@category com}
class IFileIsInUse extends IUnknown {
  IFileIsInUse(super.ptr) : _vtable = ptr.value.cast<IFileIsInUseVtbl>().ref;

  final IFileIsInUseVtbl _vtable;

  factory IFileIsInUse.from(IUnknown interface) =>
      IFileIsInUse(interface.toInterface(IID_IFileIsInUse));

  int getAppName(Pointer<PWSTR> ppszName) => _vtable.GetAppName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<PWSTR> ppszName)>()(ptr, ppszName);

  int getUsage(Pointer<Int32> pfut) => _vtable.GetUsage.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> pfut)>()(ptr, pfut);

  int getCapabilities(Pointer<Uint32> pdwCapFlags) =>
      _vtable.GetCapabilities.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwCapFlags)>()(ptr, pdwCapFlags);

  int getSwitchToHWND(
          Pointer<HWND> phwnd) =>
      _vtable.GetSwitchToHWND.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<HWND> phwnd)>()(ptr, phwnd);

  int closeFile() =>
      _vtable.CloseFile.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IFileIsInUseVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> ppszName)>>
      GetAppName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pfut)>>
      GetUsage;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pdwCapFlags)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<HWND> phwnd)>>
      GetSwitchToHWND;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      CloseFile;
}
