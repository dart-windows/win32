// ifileopendialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'ifiledialog.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

/// Extends the IFileDialog interface by adding methods specific to the open
/// dialog.
///
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  // vtable begins at 27, is 2 entries long.
  IFileOpenDialog(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IFileOpenDialogVtbl>().ref;

  final IFileOpenDialogVtbl _vtable;

  factory IFileOpenDialog.from(IUnknown interface) =>
      IFileOpenDialog(interface.toInterface(IID_IFileOpenDialog));

  int getResults(Pointer<Pointer<COMObject>> ppenum) =>
      _vtable.GetResults.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>()(
          ptr.ref.lpVtbl, ppenum);

  int getSelectedItems(Pointer<Pointer<COMObject>> ppsai) =>
      _vtable.GetSelectedItems.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppsai)>()(
          ptr.ref.lpVtbl, ppsai);
}

/// @nodoc
base class IFileOpenDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>>
      GetResults;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsai)>>
      GetSelectedItems;
}

/// @nodoc
const CLSID_FileOpenDialog = '{dc1c5a9c-e88a-4dde-a5a1-60f82a20aef7}';

/// {@category com}
class FileOpenDialog extends IFileOpenDialog {
  FileOpenDialog(super.ptr);

  factory FileOpenDialog.createInstance() => FileOpenDialog(
      COMObject.createFromID(CLSID_FileOpenDialog, IID_IFileOpenDialog));
}
