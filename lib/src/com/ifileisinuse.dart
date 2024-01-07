// ifileisinuse.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
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
      : _vtable = ptr.value.value.cast<IFileIsInUseVtbl>().ref;

  final IFileIsInUseVtbl _vtable;

  factory IFileIsInUse.from(IUnknown interface) =>
      IFileIsInUse(interface.toInterface(IID_IFileIsInUse));

  int getAppName(
          Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetAppName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> ppszName)>()(
          ptr.value, ppszName);

  int getUsage(Pointer<Int32> pfut) => _vtable.GetUsage.asFunction<
      int Function(VTablePointer, Pointer<Int32> pfut)>()(ptr.value, pfut);

  int getCapabilities(Pointer<Uint32> pdwCapFlags) =>
      _vtable.GetCapabilities.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pdwCapFlags)>()(
          ptr.value, pdwCapFlags);

  int getSwitchToHWND(Pointer<IntPtr> phwnd) =>
      _vtable.GetSwitchToHWND.asFunction<
          int Function(
              VTablePointer, Pointer<IntPtr> phwnd)>()(ptr.value, phwnd);

  int closeFile() =>
      _vtable.CloseFile.asFunction<int Function(VTablePointer)>()(ptr.value);
}

/// @nodoc
base class IFileIsInUseVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> ppszName)>>
      GetAppName;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> pfut)>>
      GetUsage;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwCapFlags)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<IntPtr> phwnd)>>
      GetSwitchToHWND;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> CloseFile;
}
