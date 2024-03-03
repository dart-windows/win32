// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ifiledialog.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileSaveDialog = '{84bccd23-5fde-4cdb-aea4-af64b83d78ab}';

/// Extends the IFileDialog interface by adding methods specific to the save
/// dialog, which include those that provide support for the collection of
/// metadata to be persisted with the file.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifilesavedialog>.
///
/// {@category com}
class IFileSaveDialog extends IFileDialog {
  IFileSaveDialog(super.ptr)
      : _vtable = ptr.value.cast<IFileSaveDialogVtbl>().ref;

  final IFileSaveDialogVtbl _vtable;

  factory IFileSaveDialog.from(IUnknown interface) =>
      IFileSaveDialog(interface.toInterface(IID_IFileSaveDialog));

  int setSaveAsItem(VTablePointer psi) => _vtable.SetSaveAsItem.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);

  int setProperties(VTablePointer pStore) => _vtable.SetProperties.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer pStore)>()(ptr, pStore);

  int setCollectedProperties(VTablePointer pList, int fAppendDefault) =>
      _vtable.SetCollectedProperties.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pList,
              int fAppendDefault)>()(ptr, pList, fAppendDefault);

  int getProperties(Pointer<VTablePointer> ppStore) =>
      _vtable.GetProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppStore)>()(ptr, ppStore);

  int applyProperties(VTablePointer psi, VTablePointer pStore, int hwnd,
          VTablePointer pSink) =>
      _vtable.ApplyProperties.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer psi,
              VTablePointer pStore,
              int hwnd,
              VTablePointer pSink)>()(ptr, psi, pStore, hwnd, pSink);
}

/// @nodoc
base class IFileSaveDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer psi)>>
      SetSaveAsItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pStore)>>
      SetProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pList,
              BOOL fAppendDefault)>> SetCollectedProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppStore)>>
      GetProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer psi,
              VTablePointer pStore,
              HWND hwnd,
              VTablePointer pSink)>> ApplyProperties;
}

/// @nodoc
const FileSaveDialog = '{c0b4e2f3-ba21-4773-8dba-335ec946eb8b}';
