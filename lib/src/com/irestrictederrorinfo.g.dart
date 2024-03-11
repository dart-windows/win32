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
import 'iunknown.g.dart';

/// @nodoc
const IID_IRestrictedErrorInfo = '{82ba7092-4c88-427d-a7bc-16dd93feb67e}';

/// Represents the details of an error, including restricted error information.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nn-restrictederrorinfo-irestrictederrorinfo>.
///
/// {@category com}
class IRestrictedErrorInfo extends IUnknown {
  IRestrictedErrorInfo(super.ptr)
      : _vtable = ptr.value.cast<IRestrictedErrorInfoVtbl>().ref;

  final IRestrictedErrorInfoVtbl _vtable;

  /// Creates a new instance of `IRestrictedErrorInfo` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IRestrictedErrorInfo` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IRestrictedErrorInfo.from(IUnknown interface) =>
      IRestrictedErrorInfo(interface.toInterface(IID_IRestrictedErrorInfo));

  /// Returns information about an error, including the restricted error
  /// description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nf-restrictederrorinfo-irestrictederrorinfo-geterrordetails>.
  int getErrorDetails(
          Pointer<Pointer<Utf16>> description,
          Pointer<HRESULT> error,
          Pointer<Pointer<Utf16>> restrictedDescription,
          Pointer<Pointer<Utf16>> capabilitySid) =>
      _vtable.GetErrorDetails.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> description,
                  Pointer<HRESULT> error,
                  Pointer<Pointer<Utf16>> restrictedDescription,
                  Pointer<Pointer<Utf16>> capabilitySid)>()(
          ptr, description, error, restrictedDescription, capabilitySid);

  /// Returns a reference to restricted error information.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/restrictederrorinfo/nf-restrictederrorinfo-irestrictederrorinfo-getreference>.
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
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> description,
              Pointer<HRESULT> error,
              Pointer<Pointer<Utf16>> restrictedDescription,
              Pointer<Pointer<Utf16>> capabilitySid)>> GetErrorDetails;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> reference)>>
      GetReference;
}
