// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IRestrictedErrorInfo = '{82ba7092-4c88-427d-a7bc-16dd93feb67e}';

/// Represents the details of an error, including restricted error information.
///
/// {@category com}
class IRestrictedErrorInfo extends IUnknown {
  IRestrictedErrorInfo(super.ptr)
      : _vtable = ptr.value.cast<IRestrictedErrorInfoVtbl>().ref;

  final IRestrictedErrorInfoVtbl _vtable;

  factory IRestrictedErrorInfo.from(IUnknown interface) =>
      IRestrictedErrorInfo(interface.toInterface(IID_IRestrictedErrorInfo));

  int getErrorDetails(
          Pointer<Pointer<Utf16>> description,
          Pointer<Int32> error,
          Pointer<Pointer<Utf16>> restrictedDescription,
          Pointer<Pointer<Utf16>> capabilitySid) =>
      _vtable.GetErrorDetails.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> description,
                  Pointer<Int32> error,
                  Pointer<Pointer<Utf16>> restrictedDescription,
                  Pointer<Pointer<Utf16>> capabilitySid)>()(
          ptr, description, error, restrictedDescription, capabilitySid);

  int getReference(Pointer<Pointer<Utf16>> reference) =>
      _vtable.GetReference.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> reference)>()(ptr, reference);
}

/// @nodoc
base class IRestrictedErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> description,
              Pointer<Int32> error,
              Pointer<Pointer<Utf16>> restrictedDescription,
              Pointer<Pointer<Utf16>> capabilitySid)>> GetErrorDetails;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> reference)>>
      GetReference;
}
