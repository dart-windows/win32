// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxPackageReader = '{b5c49650-99bc-481c-9a34-3d53a4106708}';

/// Provides a read-only object model for app packages.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxpackagereader>.
///
/// {@category com}
class IAppxPackageReader extends IUnknown {
  IAppxPackageReader(super.ptr)
      : _vtable = ptr.value.cast<IAppxPackageReaderVtbl>().ref;

  final IAppxPackageReaderVtbl _vtable;

  factory IAppxPackageReader.from(IUnknown interface) =>
      IAppxPackageReader(interface.toInterface(IID_IAppxPackageReader));

  int getBlockMap(Pointer<VTablePointer> blockMapReader) =>
      _vtable.GetBlockMap.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> blockMapReader)>()(ptr, blockMapReader);

  int getFootprintFile(int type, Pointer<VTablePointer> file) =>
      _vtable.GetFootprintFile.asFunction<
          int Function(VTablePointer lpVtbl, int type,
              Pointer<VTablePointer> file)>()(ptr, type, file);

  int getPayloadFile(Pointer<Utf16> fileName, Pointer<VTablePointer> file) =>
      _vtable.GetPayloadFile.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> fileName,
              Pointer<VTablePointer> file)>()(ptr, fileName, file);

  int getPayloadFiles(Pointer<VTablePointer> filesEnumerator) =>
      _vtable.GetPayloadFiles.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> filesEnumerator)>()(ptr, filesEnumerator);

  int getManifest(Pointer<VTablePointer> manifestReader) =>
      _vtable.GetManifest.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> manifestReader)>()(ptr, manifestReader);
}

/// @nodoc
base class IAppxPackageReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> blockMapReader)>>
      GetBlockMap;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 type,
              Pointer<VTablePointer> file)>> GetFootprintFile;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> fileName,
              Pointer<VTablePointer> file)>> GetPayloadFile;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> filesEnumerator)>> GetPayloadFiles;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> manifestReader)>>
      GetManifest;
}
