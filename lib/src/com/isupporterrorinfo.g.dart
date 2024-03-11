// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISupportErrorInfo = '{df0b3d60-548f-101b-8e65-08002b2bd119}';

/// Ensures that error information can be propagated up the call chain
/// correctly.
///
/// Automation objects that use the error handling interfaces must implement
/// ISupportErrorInfo.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-isupporterrorinfo>.
///
/// {@category com}
class ISupportErrorInfo extends IUnknown {
  ISupportErrorInfo(super.ptr)
      : _vtable = ptr.value.cast<ISupportErrorInfoVtbl>().ref;

  final ISupportErrorInfoVtbl _vtable;

  /// Creates a new instance of `ISupportErrorInfo` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISupportErrorInfo` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISupportErrorInfo.from(IUnknown interface) =>
      ISupportErrorInfo(interface.toInterface(IID_ISupportErrorInfo));

  /// Indicates whether an interface supports the IErrorInfo interface.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-isupporterrorinfo-interfacesupportserrorinfo>.
  int interfaceSupportsErrorInfo(Pointer<GUID> riid) =>
      _vtable.InterfaceSupportsErrorInfo.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> riid)>()(ptr, riid);
}

/// @nodoc
base class ISupportErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> riid)>>
      InterfaceSupportsErrorInfo;
}
