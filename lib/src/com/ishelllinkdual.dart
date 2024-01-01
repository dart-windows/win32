// ishelllinkdual.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellLinkDual = '{88a05c00-f000-11ce-8350-444553540000}';

/// {@category com}
class IShellLinkDual extends IDispatch {
  // vtable begins at 7, is 16 entries long.
  IShellLinkDual(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IShellLinkDualVtbl>().ref;

  final IShellLinkDualVtbl _vtable;

  factory IShellLinkDual.from(IUnknown interface) =>
      IShellLinkDual(interface.toInterface(IID_IShellLinkDual));

  Pointer<Utf16> get path {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Path
              .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pbs)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set path(Pointer<Utf16> value) {
    final hr =
        _vtable.put_Path.asFunction<int Function(Pointer, Pointer<Utf16> bs)>()(
            ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get description {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Description
              .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pbs)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set description(Pointer<Utf16> value) {
    final hr = _vtable.put_Description
            .asFunction<int Function(Pointer, Pointer<Utf16> bs)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get workingDirectory {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_WorkingDirectory
              .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pbs)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set workingDirectory(Pointer<Utf16> value) {
    final hr = _vtable.put_WorkingDirectory
            .asFunction<int Function(Pointer, Pointer<Utf16> bs)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get arguments {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Arguments
              .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pbs)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set arguments(Pointer<Utf16> value) {
    final hr = _vtable.put_Arguments
            .asFunction<int Function(Pointer, Pointer<Utf16> bs)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get hotkey {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Hotkey
              .asFunction<int Function(Pointer, Pointer<Int32> piHK)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set hotkey(int value) {
    final hr = _vtable.put_Hotkey.asFunction<int Function(Pointer, int iHK)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get showCommand {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ShowCommand.asFunction<
              int Function(Pointer, Pointer<Int32> piShowCommand)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set showCommand(int value) {
    final hr = _vtable.put_ShowCommand
            .asFunction<int Function(Pointer, int iShowCommand)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int resolve(int fFlags) =>
      _vtable.Resolve.asFunction<int Function(Pointer, int fFlags)>()(
          ptr.ref.lpVtbl, fFlags);

  int getIconLocation(Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(Pointer, Pointer<Pointer<Utf16>> pbs,
              Pointer<Int32> piIcon)>()(ptr.ref.lpVtbl, pbs, piIcon);

  int setIconLocation(Pointer<Utf16> bs, int iIcon) => _vtable.SetIconLocation
          .asFunction<int Function(Pointer, Pointer<Utf16> bs, int iIcon)>()(
      ptr.ref.lpVtbl, bs, iIcon);

  int save(VARIANT vWhere) =>
      _vtable.Save.asFunction<int Function(Pointer, VARIANT vWhere)>()(
          ptr.ref.lpVtbl, vWhere);
}

/// @nodoc
base class IShellLinkDualVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> pbs)>>
      get_Path;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> bs)>>
      put_Path;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> pbs)>>
      get_Description;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> bs)>>
      put_Description;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> pbs)>>
      get_WorkingDirectory;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> bs)>>
      put_WorkingDirectory;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> pbs)>>
      get_Arguments;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> bs)>>
      put_Arguments;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> piHK)>>
      get_Hotkey;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 iHK)>>
      put_Hotkey;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> piShowCommand)>>
      get_ShowCommand;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 iShowCommand)>>
      put_ShowCommand;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 fFlags)>>
      Resolve;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon)>>
      GetIconLocation;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Utf16> bs, Int32 iIcon)>>
      SetIconLocation;
  external Pointer<NativeFunction<Int32 Function(Pointer, VARIANT vWhere)>>
      Save;
}
