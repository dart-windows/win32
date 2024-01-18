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
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxFactory = '{beb94909-e451-438b-b5a7-d79e767b75d8}';

/// Creates objects for reading and writing app packages.
///
/// {@category com}
class IAppxFactory extends IUnknown {
  IAppxFactory(super.ptr) : _vtable = ptr.value.cast<IAppxFactoryVtbl>().ref;

  final IAppxFactoryVtbl _vtable;

  factory IAppxFactory.from(IUnknown interface) =>
      IAppxFactory(interface.toInterface(IID_IAppxFactory));

  int createPackageWriter(
          VTablePointer outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<VTablePointer> packageWriter) =>
      _vtable.CreatePackageWriter.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer outputStream,
                  Pointer<APPX_PACKAGE_SETTINGS> settings,
                  Pointer<VTablePointer> packageWriter)>()(
          ptr, outputStream, settings, packageWriter);

  int createPackageReader(
          VTablePointer inputStream, Pointer<VTablePointer> packageReader) =>
      _vtable.CreatePackageReader.asFunction<
              int Function(VTablePointer, VTablePointer inputStream,
                  Pointer<VTablePointer> packageReader)>()(
          ptr, inputStream, packageReader);

  int createManifestReader(
          VTablePointer inputStream, Pointer<VTablePointer> manifestReader) =>
      _vtable.CreateManifestReader.asFunction<
              int Function(VTablePointer, VTablePointer inputStream,
                  Pointer<VTablePointer> manifestReader)>()(
          ptr, inputStream, manifestReader);

  int createBlockMapReader(
          VTablePointer inputStream, Pointer<VTablePointer> blockMapReader) =>
      _vtable.CreateBlockMapReader.asFunction<
              int Function(VTablePointer, VTablePointer inputStream,
                  Pointer<VTablePointer> blockMapReader)>()(
          ptr, inputStream, blockMapReader);

  int createValidatedBlockMapReader(
          VTablePointer blockMapStream,
          Pointer<Utf16> signatureFileName,
          Pointer<VTablePointer> blockMapReader) =>
      _vtable.CreateValidatedBlockMapReader.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<VTablePointer> blockMapReader)>()(
          ptr, blockMapStream, signatureFileName, blockMapReader);
}

/// @nodoc
base class IAppxFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer outputStream,
              Pointer<APPX_PACKAGE_SETTINGS> settings,
              Pointer<VTablePointer> packageWriter)>> CreatePackageWriter;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer inputStream,
              Pointer<VTablePointer> packageReader)>> CreatePackageReader;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer inputStream,
              Pointer<VTablePointer> manifestReader)>> CreateManifestReader;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer inputStream,
              Pointer<VTablePointer> blockMapReader)>> CreateBlockMapReader;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  VTablePointer blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<VTablePointer> blockMapReader)>>
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
