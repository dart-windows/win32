// ifileopendialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import '../utils.dart';
import 'ifiledialog.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

/// Extends the IFileDialog interface by adding methods specific to the open
/// dialog.
///
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  IFileOpenDialog(super.ptr)
      : _vtable = ptr.value.value.cast<IFileOpenDialogVtbl>().ref;

  final IFileOpenDialogVtbl _vtable;

  factory IFileOpenDialog.from(IUnknown interface) =>
      IFileOpenDialog(interface.toInterface(IID_IFileOpenDialog));

  int getResults(Pointer<Pointer<VTablePointer>> ppenum) =>
      _vtable.GetResults.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppenum)>()(ptr.value, ppenum);

  int getSelectedItems(Pointer<Pointer<VTablePointer>> ppsai) =>
      _vtable.GetSelectedItems.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppsai)>()(ptr.value, ppsai);
}

/// @nodoc
base class IFileOpenDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppenum)>>
      GetResults;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppsai)>>
      GetSelectedItems;
}

/// @nodoc
const CLSID_FileOpenDialog = '{dc1c5a9c-e88a-4dde-a5a1-60f82a20aef7}';

/// {@category com}
class FileOpenDialog extends IFileOpenDialog {
  FileOpenDialog(super.ptr);

  factory FileOpenDialog.createInstance() => FileOpenDialog(
      createCOMObject(CLSID_FileOpenDialog, IID_IFileOpenDialog));
}
