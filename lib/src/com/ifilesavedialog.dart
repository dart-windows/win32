// ifilesavedialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import '../utils.dart';
import 'ifiledialog.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileSaveDialog = '{84bccd23-5fde-4cdb-aea4-af64b83d78ab}';

/// Extends the IFileDialog interface by adding methods specific to the save
/// dialog, which include those that provide support for the collection of
/// metadata to be persisted with the file.
///
/// {@category com}
class IFileSaveDialog extends IFileDialog {
  // vtable begins at 27, is 5 entries long.
  IFileSaveDialog(super.ptr)
      : _vtable = ptr.value.value.cast<IFileSaveDialogVtbl>().ref;

  final IFileSaveDialogVtbl _vtable;

  factory IFileSaveDialog.from(IUnknown interface) =>
      IFileSaveDialog(interface.toInterface(IID_IFileSaveDialog));

  int setSaveAsItem(
          Pointer<VTablePointer> psi) =>
      _vtable.SetSaveAsItem.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> psi)>()(ptr.value, psi);

  int setProperties(Pointer<VTablePointer> pStore) =>
      _vtable.SetProperties.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pStore)>()(
          ptr.value, pStore);

  int setCollectedProperties(
          Pointer<VTablePointer> pList, int fAppendDefault) =>
      _vtable.SetCollectedProperties.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> pList,
              int fAppendDefault)>()(ptr.value, pList, fAppendDefault);

  int getProperties(Pointer<Pointer<VTablePointer>> ppStore) =>
      _vtable.GetProperties.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppStore)>()(ptr.value, ppStore);

  int applyProperties(Pointer<VTablePointer> psi, Pointer<VTablePointer> pStore,
          int hwnd, Pointer<VTablePointer> pSink) =>
      _vtable.ApplyProperties.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> psi,
                  Pointer<VTablePointer> pStore,
                  int hwnd,
                  Pointer<VTablePointer> pSink)>()(
          ptr.value, psi, pStore, hwnd, pSink);
}

/// @nodoc
base class IFileSaveDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> psi)>>
      SetSaveAsItem;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pStore)>>
      SetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pList,
              Int32 fAppendDefault)>> SetCollectedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppStore)>>
      GetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> psi,
              Pointer<VTablePointer> pStore,
              IntPtr hwnd,
              Pointer<VTablePointer> pSink)>> ApplyProperties;
}

/// @nodoc
const CLSID_FileSaveDialog = '{c0b4e2f3-ba21-4773-8dba-335ec946eb8b}';

/// {@category com}
class FileSaveDialog extends IFileSaveDialog {
  FileSaveDialog(super.ptr);

  factory FileSaveDialog.createInstance() => FileSaveDialog(
      createCOMObject(CLSID_FileSaveDialog, IID_IFileSaveDialog));
}
