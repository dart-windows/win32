// ierrorinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IErrorInfo = '{1cf2b120-547d-101b-8e65-08002b2bd119}';

/// IErrorInfo is defined by Automation; the following describes how the
/// interface is used in OLE DB. IErrorInfo returns information about an
/// error in addition to the return code. It returns the error message, name
/// of the component and GUID of the interface in which the error occurred,
/// and the name and topic of the Help file that applies to the error.
///
/// {@category com}
class IErrorInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IErrorInfo(super.ptr);

  factory IErrorInfo.from(IUnknown interface) =>
      IErrorInfo(interface.toInterface(IID_IErrorInfo));

  int getGUID(Pointer<GUID> pGUID) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<GUID> pGUID)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<GUID> pGUID)>()(ptr.ref.lpVtbl, pGUID);

  int getSource(Pointer<Pointer<Utf16>> pBstrSource) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pBstrSource)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pBstrSource)>()(
      ptr.ref.lpVtbl, pBstrSource);

  int getDescription(Pointer<Pointer<Utf16>> pBstrDescription) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer,
                          Pointer<Pointer<Utf16>> pBstrDescription)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Pointer<Utf16>> pBstrDescription)>()(
      ptr.ref.lpVtbl, pBstrDescription);

  int getHelpFile(Pointer<Pointer<Utf16>> pBstrHelpFile) => ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pBstrHelpFile)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pBstrHelpFile)>()(
      ptr.ref.lpVtbl, pBstrHelpFile);

  int getHelpContext(Pointer<Uint32> pdwHelpContext) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Uint32> pdwHelpContext)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Uint32> pdwHelpContext)>()(
          ptr.ref.lpVtbl, pdwHelpContext);
}
