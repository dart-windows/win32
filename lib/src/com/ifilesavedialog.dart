// ifilesavedialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IFileSaveDialogVtbl>().ref;

  final IFileSaveDialogVtbl _vtable;

  factory IFileSaveDialog.from(IUnknown interface) =>
      IFileSaveDialog(interface.toInterface(IID_IFileSaveDialog));

  int setSaveAsItem(Pointer<COMObject> psi) => _vtable.SetSaveAsItem.asFunction<
      int Function(Pointer, Pointer<COMObject> psi)>()(ptr.ref.lpVtbl, psi);

  int setProperties(Pointer<COMObject> pStore) =>
      _vtable.SetProperties.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pStore)>()(ptr.ref.lpVtbl, pStore);

  int setCollectedProperties(Pointer<COMObject> pList, int fAppendDefault) =>
      _vtable.SetCollectedProperties.asFunction<
          int Function(Pointer, Pointer<COMObject> pList,
              int fAppendDefault)>()(ptr.ref.lpVtbl, pList, fAppendDefault);

  int getProperties(Pointer<Pointer<COMObject>> ppStore) =>
      _vtable.GetProperties.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppStore)>()(
          ptr.ref.lpVtbl, ppStore);

  int applyProperties(Pointer<COMObject> psi, Pointer<COMObject> pStore,
          int hwnd, Pointer<COMObject> pSink) =>
      _vtable.ApplyProperties.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> psi,
                  Pointer<COMObject> pStore,
                  int hwnd,
                  Pointer<COMObject> pSink)>()(
          ptr.ref.lpVtbl, psi, pStore, hwnd, pSink);
}

/// @nodoc
base class IFileSaveDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      SetSaveAsItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pStore)>>
      SetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<COMObject> pList, Int32 fAppendDefault)>>
      SetCollectedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppStore)>>
      GetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> psi,
              Pointer<COMObject> pStore,
              IntPtr hwnd,
              Pointer<COMObject> pSink)>> ApplyProperties;
}

/// @nodoc
const CLSID_FileSaveDialog = '{c0b4e2f3-ba21-4773-8dba-335ec946eb8b}';

/// {@category com}
class FileSaveDialog extends IFileSaveDialog {
  FileSaveDialog(super.ptr);

  factory FileSaveDialog.createInstance() => FileSaveDialog(
      COMObject.createFromID(CLSID_FileSaveDialog, IID_IFileSaveDialog));
}
