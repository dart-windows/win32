// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ifiledialog.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileDialog2 = '{61744fc7-85b5-4791-a9b0-272276309b13}';

/// Extends the IFileDialog interface by providing methods that allow the caller
/// to name a specific, restricted location that can be browsed in the common
/// file dialog as well as to specify alternate text to display as a label on
/// the Cancel button.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl/nn-shobjidl-ifiledialog2>.
///
/// {@category com}
class IFileDialog2 extends IFileDialog {
  IFileDialog2(super.ptr) : _vtable = ptr.value.cast<IFileDialog2Vtbl>().ref;

  final IFileDialog2Vtbl _vtable;

  /// Creates a new instance of `IFileDialog2` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IFileDialog2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IFileDialog2.from(IUnknown interface) =>
      IFileDialog2(interface.toInterface(IID_IFileDialog2));

  /// Replaces the default text `Cancel` on the common file dialog's Cancel
  /// button.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl/nf-shobjidl-ifiledialog2-setcancelbuttonlabel>.
  int setCancelButtonLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetCancelButtonLabel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Utf16> pszLabel)>()(ptr, pszLabel);

  /// Specifies a top-level location from which to begin browsing a namespace, for
  /// instance in the Save dialog's Browse folder option.
  ///
  /// Users cannot navigate above this location.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl/nf-shobjidl-ifiledialog2-setnavigationroot>.
  int setNavigationRoot(VTablePointer psi) =>
      _vtable.SetNavigationRoot.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);
}

/// @nodoc
base class IFileDialog2Vtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszLabel)>>
      SetCancelButtonLabel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer psi)>>
      SetNavigationRoot;
}
