// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAgileObject = '{94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90}';

/// Marks an interface as agile across apartments.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/nn-objidlbase-iagileobject>.
///
/// {@category com}
class IAgileObject extends IUnknown {
  IAgileObject(super.ptr);

  /// Creates a new instance of `IAgileObject` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAgileObject` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAgileObject.from(IUnknown interface) =>
      IAgileObject(interface.toInterface(IID_IAgileObject));
}

/// @nodoc
base class IAgileObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
}
