// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellLinkDual = '{88a05c00-f000-11ce-8350-444553540000}';

/// {@category com}
class IShellLinkDual extends IDispatch {
  IShellLinkDual(super.ptr)
      : _vtable = ptr.value.cast<IShellLinkDualVtbl>().ref;

  final IShellLinkDualVtbl _vtable;

  factory IShellLinkDual.from(IUnknown interface) =>
      IShellLinkDual(interface.toInterface(IID_IShellLinkDual));

  int get_Path(Pointer<Pointer<Utf16>> pbs) => _vtable.get_Path.asFunction<
      int Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);

  int put_Path(Pointer<Utf16> bs) => _vtable.put_Path
      .asFunction<int Function(VTablePointer, Pointer<Utf16> bs)>()(ptr, bs);

  int get_Description(Pointer<Pointer<Utf16>> pbs) =>
      _vtable.get_Description.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);

  int put_Description(Pointer<Utf16> bs) => _vtable.put_Description
      .asFunction<int Function(VTablePointer, Pointer<Utf16> bs)>()(ptr, bs);

  int get_WorkingDirectory(Pointer<Pointer<Utf16>> pbs) =>
      _vtable.get_WorkingDirectory.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);

  int put_WorkingDirectory(Pointer<Utf16> bs) => _vtable.put_WorkingDirectory
      .asFunction<int Function(VTablePointer, Pointer<Utf16> bs)>()(ptr, bs);

  int get_Arguments(Pointer<Pointer<Utf16>> pbs) =>
      _vtable.get_Arguments.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>()(ptr, pbs);

  int put_Arguments(Pointer<Utf16> bs) => _vtable.put_Arguments
      .asFunction<int Function(VTablePointer, Pointer<Utf16> bs)>()(ptr, bs);

  int get_Hotkey(Pointer<Int32> piHK) => _vtable.get_Hotkey
          .asFunction<int Function(VTablePointer, Pointer<Int32> piHK)>()(
      ptr, piHK);

  int put_Hotkey(int iHK) => _vtable.put_Hotkey
      .asFunction<int Function(VTablePointer, int iHK)>()(ptr, iHK);

  int get_ShowCommand(Pointer<Int32> piShowCommand) =>
      _vtable.get_ShowCommand.asFunction<
              int Function(VTablePointer, Pointer<Int32> piShowCommand)>()(
          ptr, piShowCommand);

  int put_ShowCommand(int iShowCommand) => _vtable.put_ShowCommand
          .asFunction<int Function(VTablePointer, int iShowCommand)>()(
      ptr, iShowCommand);

  int resolve(int fFlags) =>
      _vtable.Resolve.asFunction<int Function(VTablePointer, int fFlags)>()(
          ptr, fFlags);

  int getIconLocation(Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbs,
              Pointer<Int32> piIcon)>()(ptr, pbs, piIcon);

  int setIconLocation(Pointer<Utf16> bs, int iIcon) =>
      _vtable.SetIconLocation.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> bs, int iIcon)>()(ptr, bs, iIcon);

  int save(VARIANT vWhere) =>
      _vtable.Save.asFunction<int Function(VTablePointer, VARIANT vWhere)>()(
          ptr, vWhere);
}

/// @nodoc
base class IShellLinkDualVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>> get_Path;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> bs)>>
      put_Path;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>>
      get_Description;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> bs)>>
      put_Description;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>>
      get_WorkingDirectory;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> bs)>>
      put_WorkingDirectory;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbs)>>
      get_Arguments;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> bs)>>
      put_Arguments;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> piHK)>>
      get_Hotkey;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 iHK)>>
      put_Hotkey;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> piShowCommand)>>
      get_ShowCommand;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 iShowCommand)>>
      put_ShowCommand;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 fFlags)>>
      Resolve;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbs,
              Pointer<Int32> piIcon)>> GetIconLocation;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> bs, Int32 iIcon)>>
      SetIconLocation;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, VARIANT vWhere)>> Save;
}
