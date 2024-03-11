// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IRunningObjectTable = '{00000010-0000-0000-c000-000000000046}';

/// Manages access to the running object table (ROT), a globally accessible
/// look-up table on each workstation.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-irunningobjecttable>.
///
/// {@category com}
class IRunningObjectTable extends IUnknown {
  IRunningObjectTable(super.ptr)
      : _vtable = ptr.value.cast<IRunningObjectTableVtbl>().ref;

  final IRunningObjectTableVtbl _vtable;

  /// Creates a new instance of `IRunningObjectTable` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IRunningObjectTable` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IRunningObjectTable.from(IUnknown interface) =>
      IRunningObjectTable(interface.toInterface(IID_IRunningObjectTable));

  /// Registers an object and its identifying moniker in the running object table
  /// (ROT).
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-register>.
  int register(int grfFlags, VTablePointer punkObject,
          VTablePointer pmkObjectName, Pointer<Uint32> pdwRegister) =>
      _vtable.Register.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int grfFlags,
                  VTablePointer punkObject,
                  VTablePointer pmkObjectName,
                  Pointer<Uint32> pdwRegister)>()(
          ptr, grfFlags, punkObject, pmkObjectName, pdwRegister);

  /// Removes an entry from the running object table (ROT) that was previously
  /// registered by a call to `IRunningObjectTable.register`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-revoke>.
  int revoke(int dwRegister) => _vtable.Revoke.asFunction<
      int Function(VTablePointer lpVtbl, int dwRegister)>()(ptr, dwRegister);

  /// Determines whether the object identified by the specified moniker is
  /// currently running.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-isrunning>.
  int isRunning(VTablePointer pmkObjectName) => _vtable.IsRunning.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pmkObjectName)>()(
      ptr, pmkObjectName);

  /// Determines whether the object identified by the specified moniker is
  /// running, and if it is, retrieves a pointer to that object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-getobject>.
  int getObject(
          VTablePointer pmkObjectName, Pointer<VTablePointer> ppunkObject) =>
      _vtable.GetObject.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pmkObjectName,
                  Pointer<VTablePointer> ppunkObject)>()(
          ptr, pmkObjectName, ppunkObject);

  /// Records the time that a running object was last modified.
  ///
  /// The object must have previously been registered with the running object
  /// table (ROT). This method stores the time of last change in the ROT.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-notechangetime>.
  int noteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      _vtable.NoteChangeTime.asFunction<
          int Function(VTablePointer lpVtbl, int dwRegister,
              Pointer<FILETIME> pfiletime)>()(ptr, dwRegister, pfiletime);

  /// Retrieves the time that an object was last modified.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-gettimeoflastchange>.
  int getTimeOfLastChange(
          VTablePointer pmkObjectName, Pointer<FILETIME> pfiletime) =>
      _vtable.GetTimeOfLastChange.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pmkObjectName,
              Pointer<FILETIME> pfiletime)>()(ptr, pmkObjectName, pfiletime);

  /// Creates and returns a pointer to an enumerator that can list the monikers of
  /// all the objects currently registered in the running object table (ROT).
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-enumrunning>.
  int enumRunning(Pointer<VTablePointer> ppenumMoniker) =>
      _vtable.EnumRunning.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppenumMoniker)>()(ptr, ppenumMoniker);
}

/// @nodoc
base class IRunningObjectTableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 grfFlags,
              VTablePointer punkObject,
              VTablePointer pmkObjectName,
              Pointer<Uint32> pdwRegister)>> Register;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwRegister)>> Revoke;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer pmkObjectName)>> IsRunning;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pmkObjectName,
              Pointer<VTablePointer> ppunkObject)>> GetObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwRegister,
              Pointer<FILETIME> pfiletime)>> NoteChangeTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pmkObjectName,
              Pointer<FILETIME> pfiletime)>> GetTimeOfLastChange;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppenumMoniker)>>
      EnumRunning;
}
