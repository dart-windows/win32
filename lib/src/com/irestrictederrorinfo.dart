// irestrictederrorinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IRestrictedErrorInfo = '{82ba7092-4c88-427d-a7bc-16dd93feb67e}';

/// Represents the details of an error, including restricted error
/// information.
///
/// {@category com}
class IRestrictedErrorInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRestrictedErrorInfo(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IRestrictedErrorInfoVtbl>().ref;

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
                  Pointer,
                  Pointer<Pointer<Utf16>> description,
                  Pointer<Int32> error,
                  Pointer<Pointer<Utf16>> restrictedDescription,
                  Pointer<Pointer<Utf16>> capabilitySid)>()(ptr.ref.lpVtbl,
          description, error, restrictedDescription, capabilitySid);

  int getReference(Pointer<Pointer<Utf16>> reference) =>
      _vtable.GetReference.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> reference)>()(
          ptr.ref.lpVtbl, reference);
}

/// @nodoc
base class IRestrictedErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Pointer<Utf16>> description,
              Pointer<Int32> error,
              Pointer<Pointer<Utf16>> restrictedDescription,
              Pointer<Pointer<Utf16>> capabilitySid)>> GetErrorDetails;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> reference)>>
      GetReference;
}
