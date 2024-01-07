// iappxpackagereader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxPackageReader = '{b5c49650-99bc-481c-9a34-3d53a4106708}';

/// Provides a read-only object model for app packages.
///
/// {@category com}
class IAppxPackageReader extends IUnknown {
  IAppxPackageReader(super.ptr)
      : _vtable = ptr.value.value.cast<IAppxPackageReaderVtbl>().ref;

  final IAppxPackageReaderVtbl _vtable;

  factory IAppxPackageReader.from(IUnknown interface) =>
      IAppxPackageReader(interface.toInterface(IID_IAppxPackageReader));

  int getBlockMap(Pointer<Pointer<VTablePointer>> blockMapReader) =>
      _vtable.GetBlockMap.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> blockMapReader)>()(
          ptr.value, blockMapReader);

  int getFootprintFile(int type, Pointer<Pointer<VTablePointer>> file) =>
      _vtable.GetFootprintFile.asFunction<
          int Function(VTablePointer, int type,
              Pointer<Pointer<VTablePointer>> file)>()(ptr.value, type, file);

  int getPayloadFile(
          Pointer<Utf16> fileName, Pointer<Pointer<VTablePointer>> file) =>
      _vtable.GetPayloadFile.asFunction<
              int Function(VTablePointer, Pointer<Utf16> fileName,
                  Pointer<Pointer<VTablePointer>> file)>()(
          ptr.value, fileName, file);

  int getPayloadFiles(Pointer<Pointer<VTablePointer>> filesEnumerator) =>
      _vtable.GetPayloadFiles.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> filesEnumerator)>()(
          ptr.value, filesEnumerator);

  int getManifest(Pointer<Pointer<VTablePointer>> manifestReader) =>
      _vtable.GetManifest.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> manifestReader)>()(
          ptr.value, manifestReader);
}

/// @nodoc
base class IAppxPackageReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> blockMapReader)>> GetBlockMap;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 type,
              Pointer<Pointer<VTablePointer>> file)>> GetFootprintFile;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> fileName,
              Pointer<Pointer<VTablePointer>> file)>> GetPayloadFile;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> filesEnumerator)>>
      GetPayloadFiles;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> manifestReader)>> GetManifest;
}
