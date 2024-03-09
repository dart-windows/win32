// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IErrorInfo = '{1cf2b120-547d-101b-8e65-08002b2bd119}';

/// Provides detailed contextual error information.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-ierrorinfo>.
///
/// {@category com}
class IErrorInfo extends IUnknown {
  IErrorInfo(super.ptr) : _vtable = ptr.value.cast<IErrorInfoVtbl>().ref;

  final IErrorInfoVtbl _vtable;

  factory IErrorInfo.from(IUnknown interface) =>
      IErrorInfo(interface.toInterface(IID_IErrorInfo));

  int getGUID(Pointer<GUID> pGUID) => _vtable.GetGUID.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pGUID)>()(ptr, pGUID);

  int getSource(Pointer<Pointer<Utf16>> pBstrSource) =>
      _vtable.GetSource.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pBstrSource)>()(ptr, pBstrSource);

  int getDescription(Pointer<Pointer<Utf16>> pBstrDescription) =>
      _vtable.GetDescription.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pBstrDescription)>()(
          ptr, pBstrDescription);

  int getHelpFile(Pointer<Pointer<Utf16>> pBstrHelpFile) =>
      _vtable.GetHelpFile.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pBstrHelpFile)>()(ptr, pBstrHelpFile);

  int getHelpContext(Pointer<Uint32> pdwHelpContext) =>
      _vtable.GetHelpContext.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwHelpContext)>()(ptr, pdwHelpContext);
}

/// @nodoc
base class IErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pGUID)>> GetGUID;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pBstrSource)>>
      GetSource;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pBstrDescription)>> GetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pBstrHelpFile)>>
      GetHelpFile;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pdwHelpContext)>>
      GetHelpContext;
}