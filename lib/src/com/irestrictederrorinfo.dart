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
  IRestrictedErrorInfo(super.ptr);

  factory IRestrictedErrorInfo.from(IUnknown interface) =>
      IRestrictedErrorInfo(interface.toInterface(IID_IRestrictedErrorInfo));

  int getErrorDetails(
          Pointer<Pointer<Utf16>> description,
          Pointer<Int32> error,
          Pointer<Pointer<Utf16>> restrictedDescription,
          Pointer<Pointer<Utf16>> capabilitySid) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<Utf16>> description,
                              Pointer<Int32> error,
                              Pointer<Pointer<Utf16>> restrictedDescription,
                              Pointer<Pointer<Utf16>> capabilitySid)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer<Utf16>> description,
                      Pointer<Int32> error,
                      Pointer<Pointer<Utf16>> restrictedDescription,
                      Pointer<Pointer<Utf16>> capabilitySid)>()(ptr.ref.lpVtbl,
          description, error, restrictedDescription, capabilitySid);

  int getReference(Pointer<Pointer<Utf16>> reference) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> reference)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> reference)>()(
      ptr.ref.lpVtbl, reference);
}
