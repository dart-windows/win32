// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxFile = '{91df827b-94fd-468f-827b-57f41b2f6f2e}';

/// Retrieves information about a payload or footprint file in a package.
///
/// {@category com}
class IAppxFile extends IUnknown {
  IAppxFile(super.ptr) : _vtable = ptr.value.cast<IAppxFileVtbl>().ref;

  final IAppxFileVtbl _vtable;

  factory IAppxFile.from(IUnknown interface) =>
      IAppxFile(interface.toInterface(IID_IAppxFile));

  int getCompressionOption(Pointer<Int32> compressionOption) =>
      _vtable.GetCompressionOption.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> compressionOption)>()(ptr, compressionOption);

  int getContentType(Pointer<PWSTR> contentType) =>
      _vtable.GetContentType.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<PWSTR> contentType)>()(
          ptr, contentType);

  int getName(Pointer<PWSTR> fileName) => _vtable.GetName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<PWSTR> fileName)>()(ptr, fileName);

  int getSize(Pointer<Uint64> size) => _vtable.GetSize.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Uint64> size)>()(ptr, size);

  int getStream(Pointer<VTablePointer> stream) => _vtable.GetStream.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> stream)>()(ptr, stream);
}

/// @nodoc
base class IAppxFileVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> compressionOption)>>
      GetCompressionOption;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<PWSTR> contentType)>>
      GetContentType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> fileName)>>
      GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> size)>>
      GetSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> stream)>> GetStream;
}
