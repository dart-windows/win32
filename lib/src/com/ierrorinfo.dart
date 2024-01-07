// ierrorinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../types.dart';
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
  IErrorInfo(super.ptr) : _vtable = ptr.value.value.cast<IErrorInfoVtbl>().ref;

  final IErrorInfoVtbl _vtable;

  factory IErrorInfo.from(IUnknown interface) =>
      IErrorInfo(interface.toInterface(IID_IErrorInfo));

  int getGUID(Pointer<GUID> pGUID) => _vtable.GetGUID.asFunction<
      int Function(VTablePointer, Pointer<GUID> pGUID)>()(ptr.value, pGUID);

  int getSource(Pointer<Pointer<Utf16>> pBstrSource) =>
      _vtable.GetSource.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pBstrSource)>()(ptr.value, pBstrSource);

  int getDescription(Pointer<Pointer<Utf16>> pBstrDescription) =>
      _vtable.GetDescription.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pBstrDescription)>()(
          ptr.value, pBstrDescription);

  int getHelpFile(Pointer<Pointer<Utf16>> pBstrHelpFile) =>
      _vtable.GetHelpFile.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pBstrHelpFile)>()(
          ptr.value, pBstrHelpFile);

  int getHelpContext(Pointer<Uint32> pdwHelpContext) =>
      _vtable.GetHelpContext.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pdwHelpContext)>()(
          ptr.value, pdwHelpContext);
}

/// @nodoc
base class IErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> pGUID)>>
      GetGUID;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<Utf16>> pBstrSource)>> GetSource;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pBstrDescription)>>
      GetDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pBstrHelpFile)>>
      GetHelpFile;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwHelpContext)>>
      GetHelpContext;
}
