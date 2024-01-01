// ifileisinuse.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IFileIsInUse = '{64a1cbf0-3a1a-4461-9158-376969693950}';

/// Exposes methods that can be called to get information on or close a file
/// that is in use by another application. When an application attempts to
/// access a file and finds that file already in use, it can use the methods
/// of this interface to gather information to present to the user in a
/// dialog box.
///
/// {@category com}
class IFileIsInUse extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IFileIsInUse(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IFileIsInUseVtbl>().ref;

  final IFileIsInUseVtbl _vtable;

  factory IFileIsInUse.from(IUnknown interface) =>
      IFileIsInUse(interface.toInterface(IID_IFileIsInUse));

  int getAppName(
          Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetAppName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> ppszName)>()(
          ptr.ref.lpVtbl, ppszName);

  int getUsage(Pointer<Int32> pfut) =>
      _vtable.GetUsage.asFunction<int Function(Pointer, Pointer<Int32> pfut)>()(
          ptr.ref.lpVtbl, pfut);

  int getCapabilities(Pointer<Uint32> pdwCapFlags) => _vtable.GetCapabilities
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwCapFlags)>()(
      ptr.ref.lpVtbl, pdwCapFlags);

  int getSwitchToHWND(Pointer<IntPtr> phwnd) =>
      _vtable.GetSwitchToHWND.asFunction<
          int Function(
              Pointer, Pointer<IntPtr> phwnd)>()(ptr.ref.lpVtbl, phwnd);

  int closeFile() =>
      _vtable.CloseFile.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
base class IFileIsInUseVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppszName)>>
      GetAppName;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> pfut)>>
      GetUsage;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwCapFlags)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<IntPtr> phwnd)>>
      GetSwitchToHWND;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> CloseFile;
}
