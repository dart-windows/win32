// iappxfactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFactory = '{beb94909-e451-438b-b5a7-d79e767b75d8}';

/// Creates objects for reading and writing app packages.
///
/// {@category com}
class IAppxFactory extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxFactory(super.ptr)
      : _vtable = ptr.value.value.cast<IAppxFactoryVtbl>().ref;

  final IAppxFactoryVtbl _vtable;

  factory IAppxFactory.from(IUnknown interface) =>
      IAppxFactory(interface.toInterface(IID_IAppxFactory));

  int createPackageWriter(
          Pointer<VTablePointer> outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<Pointer<VTablePointer>> packageWriter) =>
      _vtable.CreatePackageWriter.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> outputStream,
                  Pointer<APPX_PACKAGE_SETTINGS> settings,
                  Pointer<Pointer<VTablePointer>> packageWriter)>()(
          ptr.value, outputStream, settings, packageWriter);

  int createPackageReader(Pointer<VTablePointer> inputStream,
          Pointer<Pointer<VTablePointer>> packageReader) =>
      _vtable.CreatePackageReader.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> packageReader)>()(
          ptr.value, inputStream, packageReader);

  int createManifestReader(Pointer<VTablePointer> inputStream,
          Pointer<Pointer<VTablePointer>> manifestReader) =>
      _vtable.CreateManifestReader.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> manifestReader)>()(
          ptr.value, inputStream, manifestReader);

  int createBlockMapReader(Pointer<VTablePointer> inputStream,
          Pointer<Pointer<VTablePointer>> blockMapReader) =>
      _vtable.CreateBlockMapReader.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> blockMapReader)>()(
          ptr.value, inputStream, blockMapReader);

  int createValidatedBlockMapReader(
          Pointer<VTablePointer> blockMapStream,
          Pointer<Utf16> signatureFileName,
          Pointer<Pointer<VTablePointer>> blockMapReader) =>
      _vtable.CreateValidatedBlockMapReader.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<Pointer<VTablePointer>> blockMapReader)>()(
          ptr.value, blockMapStream, signatureFileName, blockMapReader);
}

/// @nodoc
base class IAppxFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> outputStream,
                  Pointer<APPX_PACKAGE_SETTINGS> settings,
                  Pointer<Pointer<VTablePointer>> packageWriter)>>
      CreatePackageWriter;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> packageReader)>>
      CreatePackageReader;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> manifestReader)>>
      CreateManifestReader;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> inputStream,
                  Pointer<Pointer<VTablePointer>> blockMapReader)>>
      CreateBlockMapReader;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<Pointer<VTablePointer>> blockMapReader)>>
      CreateValidatedBlockMapReader;
}

/// @nodoc
const CLSID_AppxFactory = '{5842a140-ff9f-4166-8f5c-62f5b7b0c781}';

/// {@category com}
class AppxFactory extends IAppxFactory {
  AppxFactory(super.ptr);

  factory AppxFactory.createInstance() =>
      AppxFactory(createCOMObject(CLSID_AppxFactory, IID_IAppxFactory));
}
