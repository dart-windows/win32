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
const IID_IShellLinkDual = '{88a05c00-f000-11ce-8350-444553540000}';

/// {@category com}
class IShellLinkDual extends IDispatch {
  IShellLinkDual(super.ptr)
      : _vtable = ptr.value.cast<IShellLinkDualVtbl>().ref;

  final IShellLinkDualVtbl _vtable;

  /// Creates a new instance of `IShellLinkDual` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellLinkDual` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellLinkDual.from(IUnknown interface) =>
      IShellLinkDual(interface.toInterface(IID_IShellLinkDual));

  Pointer<Utf16> get path {
    final pbs = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Path.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbs.value;
      return retValue;
    } finally {
      free(pbs);
    }
  }

  set path(Pointer<Utf16> bs) {
    final hr = _vtable.put_Path.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>()(ptr, bs);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get description {
    final pbs = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Description.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbs.value;
      return retValue;
    } finally {
      free(pbs);
    }
  }

  set description(Pointer<Utf16> bs) {
    final hr = _vtable.put_Description.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>()(ptr, bs);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get workingDirectory {
    final pbs = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_WorkingDirectory.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbs.value;
      return retValue;
    } finally {
      free(pbs);
    }
  }

  set workingDirectory(Pointer<Utf16> bs) {
    final hr = _vtable.put_WorkingDirectory.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>()(ptr, bs);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get arguments {
    final pbs = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Arguments.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbs.value;
      return retValue;
    } finally {
      free(pbs);
    }
  }

  set arguments(Pointer<Utf16> bs) {
    final hr = _vtable.put_Arguments.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>()(ptr, bs);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get hotkey {
    final piHK = calloc<Int32>();
    try {
      final hr = _vtable.get_Hotkey.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Int32> piHK)>()(ptr, piHK);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = piHK.value;
      return retValue;
    } finally {
      free(piHK);
    }
  }

  set hotkey(int iHK) {
    final hr = _vtable.put_Hotkey
        .asFunction<int Function(VTablePointer lpVtbl, int iHK)>()(ptr, iHK);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get showCommand {
    final piShowCommand = calloc<Int32>();
    try {
      final hr = _vtable.get_ShowCommand.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> piShowCommand)>()(ptr, piShowCommand);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = piShowCommand.value;
      return retValue;
    } finally {
      free(piShowCommand);
    }
  }

  set showCommand(int iShowCommand) {
    final hr = _vtable.put_ShowCommand
            .asFunction<int Function(VTablePointer lpVtbl, int iShowCommand)>()(
        ptr, iShowCommand);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int resolve(int fFlags) => _vtable.Resolve.asFunction<
      int Function(VTablePointer lpVtbl, int fFlags)>()(ptr, fFlags);

  int getIconLocation(Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs,
              Pointer<Int32> piIcon)>()(ptr, pbs, piIcon);

  int setIconLocation(Pointer<Utf16> bs, int iIcon) =>
      _vtable.SetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> bs,
              int iIcon)>()(ptr, bs, iIcon);

  int save(VARIANT vWhere) => _vtable.Save.asFunction<
      int Function(VTablePointer lpVtbl, VARIANT vWhere)>()(ptr, vWhere);
}

/// @nodoc
base class IShellLinkDualVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>> get_Path;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>> put_Path;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>>
      get_Description;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>>
      put_Description;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>>
      get_WorkingDirectory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>>
      put_WorkingDirectory;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs)>>
      get_Arguments;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> bs)>>
      put_Arguments;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> piHK)>>
      get_Hotkey;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 iHK)>>
      put_Hotkey;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> piShowCommand)>>
      get_ShowCommand;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 iShowCommand)>>
      put_ShowCommand;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 fFlags)>>
      Resolve;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pbs,
              Pointer<Int32> piIcon)>> GetIconLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> bs, Int32 iIcon)>>
      SetIconLocation;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VARIANT vWhere)>> Save;
}
