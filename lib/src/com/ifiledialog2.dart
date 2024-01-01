// ifiledialog2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'ifiledialog.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileDialog2 = '{61744fc7-85b5-4791-a9b0-272276309b13}';

/// Extends the IFileDialog interface by providing methods that allow the
/// caller to name a specific, restricted location that can be browsed in
/// the common file dialog as well as to specify alternate text to display
/// as a label on the Cancel button.
///
/// {@category com}
class IFileDialog2 extends IFileDialog {
  // vtable begins at 27, is 2 entries long.
  IFileDialog2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IFileDialog2Vtbl>().ref;

  final IFileDialog2Vtbl _vtable;

  factory IFileDialog2.from(IUnknown interface) =>
      IFileDialog2(interface.toInterface(IID_IFileDialog2));

  int setCancelButtonLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetCancelButtonLabel.asFunction<
          int Function(
              Pointer, Pointer<Utf16> pszLabel)>()(ptr.ref.lpVtbl, pszLabel);

  int setNavigationRoot(Pointer<COMObject> psi) =>
      _vtable.SetNavigationRoot.asFunction<
          int Function(Pointer, Pointer<COMObject> psi)>()(ptr.ref.lpVtbl, psi);
}

/// @nodoc
base class IFileDialog2Vtbl extends Struct {
  external IFileDialogVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszLabel)>>
      SetCancelButtonLabel;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      SetNavigationRoot;
}
