// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../utils.dart';
import 'ifiledialog.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

/// Extends the IFileDialog interface by adding methods specific to the open
/// dialog.
///
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  IFileOpenDialog(super.ptr)
      : _vtable = ptr.value.cast<IFileOpenDialogVtbl>().ref;

  final IFileOpenDialogVtbl _vtable;

  factory IFileOpenDialog.from(IUnknown interface) =>
      IFileOpenDialog(interface.toInterface(IID_IFileOpenDialog));

  int getResults(Pointer<VTablePointer> ppenum) =>
      _vtable.GetResults.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);

  int getSelectedItems(Pointer<VTablePointer> ppsai) =>
      _vtable.GetSelectedItems.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppsai)>()(ptr, ppsai);
}

/// @nodoc
base class IFileOpenDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppenum)>>
      GetResults;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppsai)>>
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