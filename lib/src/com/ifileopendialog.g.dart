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
import 'ifiledialog.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

/// Extends the IFileDialog interface by adding methods specific to the open
/// dialog.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifileopendialog>.
///
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  IFileOpenDialog(super.ptr)
      : _vtable = ptr.value.cast<IFileOpenDialogVtbl>().ref;

  final IFileOpenDialogVtbl _vtable;

  /// Creates a new instance of `IFileOpenDialog` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IFileOpenDialog` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IFileOpenDialog.from(IUnknown interface) =>
      IFileOpenDialog(interface.toInterface(IID_IFileOpenDialog));

  /// Gets the user's choices in a dialog that allows multiple selection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileopendialog-getresults>.
  int getResults(Pointer<VTablePointer> ppenum) =>
      _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppenum)>()(ptr, ppenum);

  /// Gets the currently selected items in the dialog.
  ///
  /// These items may be items selected in the view, or text selected in the file
  /// name edit box.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileopendialog-getselecteditems>.
  int getSelectedItems(Pointer<VTablePointer> ppsai) =>
      _vtable.GetSelectedItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppsai)>()(ptr, ppsai);
}

/// @nodoc
base class IFileOpenDialogVtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppenum)>> GetResults;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppsai)>>
      GetSelectedItems;
}

/// @nodoc
const FileOpenDialog = '{dc1c5a9c-e88a-4dde-a5a1-60f82a20aef7}';
