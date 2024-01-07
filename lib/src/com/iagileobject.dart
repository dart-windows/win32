// iagileobject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IAgileObject = '{94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90}';

/// Marks an interface as agile across apartments.
///
/// {@category com}
class IAgileObject extends IUnknown {
  IAgileObject(super.ptr);

  factory IAgileObject.from(IUnknown interface) =>
      IAgileObject(interface.toInterface(IID_IAgileObject));
}

/// @nodoc
base class IAgileObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
}
