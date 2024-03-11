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
const IID_IFileIsInUse = '{64a1cbf0-3a1a-4461-9158-376969693950}';

/// Exposes methods that can be called to get information on or close a file
/// that is in use by another application.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifileisinuse>.
///
/// {@category com}
class IFileIsInUse extends IUnknown {
  IFileIsInUse(super.ptr) : _vtable = ptr.value.cast<IFileIsInUseVtbl>().ref;

  final IFileIsInUseVtbl _vtable;

  factory IFileIsInUse.from(IUnknown interface) =>
      IFileIsInUse(interface.toInterface(IID_IFileIsInUse));

  /// Retrieves the name of the application that is using the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getappname>.
  int getAppName(
          Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetAppName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> ppszName)>()(ptr, ppszName);

  /// Gets a value that indicates how the file in use is being used.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getusage>.
  int getUsage(Pointer<Int32> pfut) => _vtable.GetUsage.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> pfut)>()(ptr, pfut);

  /// Determines whether the file can be closed and whether the UI is capable of
  /// switching to the window of the application that is using the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getcapabilities>.
  int getCapabilities(Pointer<Uint32> pdwCapFlags) =>
      _vtable.GetCapabilities.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwCapFlags)>()(ptr, pdwCapFlags);

  /// Retrieves the handle of the top-level window of the application that is
  /// using the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getswitchtohwnd>.
  int getSwitchToHWND(
          Pointer<HWND> phwnd) =>
      _vtable.GetSwitchToHWND.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<HWND> phwnd)>()(ptr, phwnd);

  /// Closes the file currently in use.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-closefile>.
  int closeFile() =>
      _vtable.CloseFile.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IFileIsInUseVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> ppszName)>>
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
