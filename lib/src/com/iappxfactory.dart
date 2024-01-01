// iappxfactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFactory = '{beb94909-e451-438b-b5a7-d79e767b75d8}';

/// Creates objects for reading and writing app packages.
///
/// {@category com}
class IAppxFactory extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxFactory(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxFactoryVtbl>().ref;

  final IAppxFactoryVtbl _vtable;

  factory IAppxFactory.from(IUnknown interface) =>
      IAppxFactory(interface.toInterface(IID_IAppxFactory));

  int createPackageWriter(
          Pointer<COMObject> outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<Pointer<COMObject>> packageWriter) =>
      _vtable.CreatePackageWriter.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> outputStream,
                  Pointer<APPX_PACKAGE_SETTINGS> settings,
                  Pointer<Pointer<COMObject>> packageWriter)>()(
          ptr.ref.lpVtbl, outputStream, settings, packageWriter);

  int createPackageReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> packageReader) =>
      _vtable.CreatePackageReader.asFunction<
              int Function(Pointer, Pointer<COMObject> inputStream,
                  Pointer<Pointer<COMObject>> packageReader)>()(
          ptr.ref.lpVtbl, inputStream, packageReader);

  int createManifestReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> manifestReader) =>
      _vtable.CreateManifestReader.asFunction<
              int Function(Pointer, Pointer<COMObject> inputStream,
                  Pointer<Pointer<COMObject>> manifestReader)>()(
          ptr.ref.lpVtbl, inputStream, manifestReader);

  int createBlockMapReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> blockMapReader) =>
      _vtable.CreateBlockMapReader.asFunction<
              int Function(Pointer, Pointer<COMObject> inputStream,
                  Pointer<Pointer<COMObject>> blockMapReader)>()(
          ptr.ref.lpVtbl, inputStream, blockMapReader);

  int createValidatedBlockMapReader(
          Pointer<COMObject> blockMapStream,
          Pointer<Utf16> signatureFileName,
          Pointer<Pointer<COMObject>> blockMapReader) =>
      _vtable.CreateValidatedBlockMapReader.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<Pointer<COMObject>> blockMapReader)>()(
          ptr.ref.lpVtbl, blockMapStream, signatureFileName, blockMapReader);
}

/// @nodoc
base class IAppxFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> outputStream,
              Pointer<APPX_PACKAGE_SETTINGS> settings,
              Pointer<Pointer<COMObject>> packageWriter)>> CreatePackageWriter;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> inputStream,
              Pointer<Pointer<COMObject>> packageReader)>> CreatePackageReader;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> inputStream,
                  Pointer<Pointer<COMObject>> manifestReader)>>
      CreateManifestReader;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> inputStream,
                  Pointer<Pointer<COMObject>> blockMapReader)>>
      CreateBlockMapReader;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<Pointer<COMObject>> blockMapReader)>>
      CreateValidatedBlockMapReader;
}

/// @nodoc
const CLSID_AppxFactory = '{5842a140-ff9f-4166-8f5c-62f5b7b0c781}';

/// {@category com}
class AppxFactory extends IAppxFactory {
  AppxFactory(super.ptr);

  factory AppxFactory.createInstance() =>
      AppxFactory(COMObject.createFromID(CLSID_AppxFactory, IID_IAppxFactory));
}
