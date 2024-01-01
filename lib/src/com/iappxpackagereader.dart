// iappxpackagereader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxPackageReader = '{b5c49650-99bc-481c-9a34-3d53a4106708}';

/// Provides a read-only object model for app packages.
///
/// {@category com}
class IAppxPackageReader extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxPackageReader(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxPackageReaderVtbl>().ref;

  final IAppxPackageReaderVtbl _vtable;

  factory IAppxPackageReader.from(IUnknown interface) =>
      IAppxPackageReader(interface.toInterface(IID_IAppxPackageReader));

  int getBlockMap(Pointer<Pointer<COMObject>> blockMapReader) =>
      _vtable.GetBlockMap.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> blockMapReader)>()(
          ptr.ref.lpVtbl, blockMapReader);

  int getFootprintFile(int type, Pointer<Pointer<COMObject>> file) =>
      _vtable.GetFootprintFile.asFunction<
          int Function(Pointer, int type,
              Pointer<Pointer<COMObject>> file)>()(ptr.ref.lpVtbl, type, file);

  int getPayloadFile(
          Pointer<Utf16> fileName, Pointer<Pointer<COMObject>> file) =>
      _vtable.GetPayloadFile.asFunction<
              int Function(Pointer, Pointer<Utf16> fileName,
                  Pointer<Pointer<COMObject>> file)>()(
          ptr.ref.lpVtbl, fileName, file);

  int getPayloadFiles(Pointer<Pointer<COMObject>> filesEnumerator) =>
      _vtable.GetPayloadFiles.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> filesEnumerator)>()(
          ptr.ref.lpVtbl, filesEnumerator);

  int getManifest(Pointer<Pointer<COMObject>> manifestReader) =>
      _vtable.GetManifest.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> manifestReader)>()(
          ptr.ref.lpVtbl, manifestReader);
}

/// @nodoc
base class IAppxPackageReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> blockMapReader)>>
      GetBlockMap;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 type, Pointer<Pointer<COMObject>> file)>>
      GetFootprintFile;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> fileName,
              Pointer<Pointer<COMObject>> file)>> GetPayloadFile;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> filesEnumerator)>>
      GetPayloadFiles;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> manifestReader)>>
      GetManifest;
}
