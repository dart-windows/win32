// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IPersist = '{0000010c-0000-0000-c000-000000000046}';

/// Provides the CLSID of an object that can be stored persistently in the
/// system.
///
/// Allows the object to specify which object handler to use in the client
/// process, as it is used in the default implementation of marshaling.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ipersist>.
///
/// {@category com}
class IPersist extends IUnknown {
  IPersist(super.ptr) : _vtable = ptr.value.cast<IPersistVtbl>().ref;

  final IPersistVtbl _vtable;

  factory IPersist.from(IUnknown interface) =>
      IPersist(interface.toInterface(IID_IPersist));

  /// Retrieves the class identifier (CLSID) of the object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersist-getclassid>.
  int getClassID(Pointer<GUID> pClassID) => _vtable.GetClassID.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<GUID> pClassID)>()(ptr, pClassID);
}

/// @nodoc
base class IPersistVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pClassID)>>
      GetClassID;
}
