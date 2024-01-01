// irunningobjecttable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../structs.g.dart';
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
  // vtable begins at 3, is 7 entries long.
  IRunningObjectTable(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IRunningObjectTableVtbl>().ref;

  final IRunningObjectTableVtbl _vtable;

  factory IRunningObjectTable.from(IUnknown interface) =>
      IRunningObjectTable(interface.toInterface(IID_IRunningObjectTable));

  int register(int grfFlags, Pointer<COMObject> punkObject,
          Pointer<COMObject> pmkObjectName, Pointer<Uint32> pdwRegister) =>
      _vtable.Register.asFunction<
              int Function(
                  Pointer,
                  int grfFlags,
                  Pointer<COMObject> punkObject,
                  Pointer<COMObject> pmkObjectName,
                  Pointer<Uint32> pdwRegister)>()(
          ptr.ref.lpVtbl, grfFlags, punkObject, pmkObjectName, pdwRegister);

  int revoke(int dwRegister) =>
      _vtable.Revoke.asFunction<int Function(Pointer, int dwRegister)>()(
          ptr.ref.lpVtbl, dwRegister);

  int isRunning(Pointer<COMObject> pmkObjectName) =>
      _vtable.IsRunning.asFunction<
              int Function(Pointer, Pointer<COMObject> pmkObjectName)>()(
          ptr.ref.lpVtbl, pmkObjectName);

  int getObject(Pointer<COMObject> pmkObjectName,
          Pointer<Pointer<COMObject>> ppunkObject) =>
      _vtable.GetObject.asFunction<
              int Function(Pointer, Pointer<COMObject> pmkObjectName,
                  Pointer<Pointer<COMObject>> ppunkObject)>()(
          ptr.ref.lpVtbl, pmkObjectName, ppunkObject);

  int noteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      _vtable.NoteChangeTime.asFunction<
              int Function(
                  Pointer, int dwRegister, Pointer<FILETIME> pfiletime)>()(
          ptr.ref.lpVtbl, dwRegister, pfiletime);

  int getTimeOfLastChange(
          Pointer<COMObject> pmkObjectName, Pointer<FILETIME> pfiletime) =>
      _vtable.GetTimeOfLastChange.asFunction<
              int Function(Pointer, Pointer<COMObject> pmkObjectName,
                  Pointer<FILETIME> pfiletime)>()(
          ptr.ref.lpVtbl, pmkObjectName, pfiletime);

  int enumRunning(Pointer<Pointer<COMObject>> ppenumMoniker) =>
      _vtable.EnumRunning.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppenumMoniker)>()(
          ptr.ref.lpVtbl, ppenumMoniker);
}

/// @nodoc
base class IRunningObjectTableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 grfFlags,
              Pointer<COMObject> punkObject,
              Pointer<COMObject> pmkObjectName,
              Pointer<Uint32> pdwRegister)>> Register;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwRegister)>>
      Revoke;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkObjectName)>> IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkObjectName,
              Pointer<Pointer<COMObject>> ppunkObject)>> GetObject;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwRegister, Pointer<FILETIME> pfiletime)>>
      NoteChangeTime;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkObjectName,
              Pointer<FILETIME> pfiletime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Pointer<COMObject>> ppenumMoniker)>> EnumRunning;
}
