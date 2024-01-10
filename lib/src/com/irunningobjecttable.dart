// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IRunningObjectTable = '{00000010-0000-0000-c000-000000000046}';

/// Manages access to the running object table (ROT), a globally accessible
/// look-up table on each workstation. A workstation's ROT keeps track of those
/// objects that can be identified by a moniker and that are currently running
/// on the workstation. When a client tries to bind a moniker to an object, the
/// moniker checks the ROT to see if the object is already running; this allows
/// the moniker to bind to the current instance instead of loading a new one.
///
/// {@category com}
class IRunningObjectTable extends IUnknown {
  IRunningObjectTable(super.ptr)
      : _vtable = ptr.value.cast<IRunningObjectTableVtbl>().ref;

  final IRunningObjectTableVtbl _vtable;

  factory IRunningObjectTable.from(IUnknown interface) =>
      IRunningObjectTable(interface.toInterface(IID_IRunningObjectTable));

  int register(int grfFlags, VTablePointer punkObject,
          VTablePointer pmkObjectName, Pointer<Uint32> pdwRegister) =>
      _vtable.Register.asFunction<
              int Function(
                  VTablePointer,
                  int grfFlags,
                  VTablePointer punkObject,
                  VTablePointer pmkObjectName,
                  Pointer<Uint32> pdwRegister)>()(
          ptr, grfFlags, punkObject, pmkObjectName, pdwRegister);

  int revoke(int dwRegister) =>
      _vtable.Revoke.asFunction<int Function(VTablePointer, int dwRegister)>()(
          ptr, dwRegister);

  int isRunning(VTablePointer pmkObjectName) => _vtable.IsRunning.asFunction<
      int Function(
          VTablePointer, VTablePointer pmkObjectName)>()(ptr, pmkObjectName);

  int getObject(
          VTablePointer pmkObjectName, Pointer<VTablePointer> ppunkObject) =>
      _vtable.GetObject.asFunction<
              int Function(VTablePointer, VTablePointer pmkObjectName,
                  Pointer<VTablePointer> ppunkObject)>()(
          ptr, pmkObjectName, ppunkObject);

  int noteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      _vtable.NoteChangeTime.asFunction<
          int Function(VTablePointer, int dwRegister,
              Pointer<FILETIME> pfiletime)>()(ptr, dwRegister, pfiletime);

  int getTimeOfLastChange(
          VTablePointer pmkObjectName, Pointer<FILETIME> pfiletime) =>
      _vtable.GetTimeOfLastChange.asFunction<
          int Function(VTablePointer, VTablePointer pmkObjectName,
              Pointer<FILETIME> pfiletime)>()(ptr, pmkObjectName, pfiletime);

  int enumRunning(Pointer<VTablePointer> ppenumMoniker) =>
      _vtable.EnumRunning.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> ppenumMoniker)>()(ptr, ppenumMoniker);
}

/// @nodoc
base class IRunningObjectTableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 grfFlags,
              VTablePointer punkObject,
              VTablePointer pmkObjectName,
              Pointer<Uint32> pdwRegister)>> Register;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwRegister)>> Revoke;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer pmkObjectName)>>
      IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pmkObjectName,
              Pointer<VTablePointer> ppunkObject)>> GetObject;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 dwRegister,
              Pointer<FILETIME> pfiletime)>> NoteChangeTime;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pmkObjectName,
              Pointer<FILETIME> pfiletime)>> GetTimeOfLastChange;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> ppenumMoniker)>>
      EnumRunning;
}
