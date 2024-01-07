// irunningobjecttable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../structs.g.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IRunningObjectTable = '{00000010-0000-0000-c000-000000000046}';

/// Manages access to the running object table (ROT), a globally accessible
/// look-up table on each workstation. A workstation's ROT keeps track of
/// those objects that can be identified by a moniker and that are currently
/// running on the workstation. When a client tries to bind a moniker to an
/// object, the moniker checks the ROT to see if the object is already
/// running; this allows the moniker to bind to the current instance instead
/// of loading a new one.
///
/// {@category com}
class IRunningObjectTable extends IUnknown {
  IRunningObjectTable(super.ptr)
      : _vtable = ptr.value.value.cast<IRunningObjectTableVtbl>().ref;

  final IRunningObjectTableVtbl _vtable;

  factory IRunningObjectTable.from(IUnknown interface) =>
      IRunningObjectTable(interface.toInterface(IID_IRunningObjectTable));

  int register(int grfFlags, Pointer<VTablePointer> punkObject,
          Pointer<VTablePointer> pmkObjectName, Pointer<Uint32> pdwRegister) =>
      _vtable.Register.asFunction<
              int Function(
                  VTablePointer,
                  int grfFlags,
                  Pointer<VTablePointer> punkObject,
                  Pointer<VTablePointer> pmkObjectName,
                  Pointer<Uint32> pdwRegister)>()(
          ptr.value, grfFlags, punkObject, pmkObjectName, pdwRegister);

  int revoke(int dwRegister) =>
      _vtable.Revoke.asFunction<int Function(VTablePointer, int dwRegister)>()(
          ptr.value, dwRegister);

  int isRunning(Pointer<VTablePointer> pmkObjectName) =>
      _vtable.IsRunning.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> pmkObjectName)>()(
          ptr.value, pmkObjectName);

  int getObject(Pointer<VTablePointer> pmkObjectName,
          Pointer<Pointer<VTablePointer>> ppunkObject) =>
      _vtable.GetObject.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pmkObjectName,
                  Pointer<Pointer<VTablePointer>> ppunkObject)>()(
          ptr.value, pmkObjectName, ppunkObject);

  int noteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      _vtable.NoteChangeTime.asFunction<
          int Function(VTablePointer, int dwRegister,
              Pointer<FILETIME> pfiletime)>()(ptr.value, dwRegister, pfiletime);

  int getTimeOfLastChange(
          Pointer<VTablePointer> pmkObjectName, Pointer<FILETIME> pfiletime) =>
      _vtable.GetTimeOfLastChange.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pmkObjectName,
                  Pointer<FILETIME> pfiletime)>()(
          ptr.value, pmkObjectName, pfiletime);

  int enumRunning(Pointer<Pointer<VTablePointer>> ppenumMoniker) =>
      _vtable.EnumRunning.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppenumMoniker)>()(
          ptr.value, ppenumMoniker);
}

/// @nodoc
base class IRunningObjectTableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 grfFlags,
              Pointer<VTablePointer> punkObject,
              Pointer<VTablePointer> pmkObjectName,
              Pointer<Uint32> pdwRegister)>> Register;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwRegister)>> Revoke;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> pmkObjectName)>> IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pmkObjectName,
              Pointer<Pointer<VTablePointer>> ppunkObject)>> GetObject;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 dwRegister,
              Pointer<FILETIME> pfiletime)>> NoteChangeTime;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pmkObjectName,
              Pointer<FILETIME> pfiletime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppenumMoniker)>> EnumRunning;
}
