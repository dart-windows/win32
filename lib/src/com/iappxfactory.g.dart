// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxFactory = '{beb94909-e451-438b-b5a7-d79e767b75d8}';

/// Creates objects for reading and writing app packages.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfactory>.
///
/// {@category com}
class IAppxFactory extends IUnknown {
  IAppxFactory(super.ptr) : _vtable = ptr.value.cast<IAppxFactoryVtbl>().ref;

  final IAppxFactoryVtbl _vtable;

  /// Creates a new instance of `IAppxFactory` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxFactory` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxFactory.from(IUnknown interface) =>
      IAppxFactory(interface.toInterface(IID_IAppxFactory));

  /// Creates a write-only package object to which files can be added.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createpackagewriter>.
  int createPackageWriter(
          VTablePointer outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<VTablePointer> packageWriter) =>
      _vtable.CreatePackageWriter.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer outputStream,
                  Pointer<APPX_PACKAGE_SETTINGS> settings,
                  Pointer<VTablePointer> packageWriter)>()(
          ptr, outputStream, settings, packageWriter);

  /// Creates a read-only package reader from the contents provided by an IStream.
  ///
  /// This method does not validate the digital signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createpackagereader>.
  int createPackageReader(
          VTablePointer inputStream, Pointer<VTablePointer> packageReader) =>
      _vtable.CreatePackageReader.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                  Pointer<VTablePointer> packageReader)>()(
          ptr, inputStream, packageReader);

  /// Creates a read-only manifest object model from contents provided by an
  /// IStream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createmanifestreader>.
  int createManifestReader(
          VTablePointer inputStream, Pointer<VTablePointer> manifestReader) =>
      _vtable.CreateManifestReader.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                  Pointer<VTablePointer> manifestReader)>()(
          ptr, inputStream, manifestReader);

  /// Creates a read-only block map object model from contents provided by an
  /// IStream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createblockmapreader>.
  int createBlockMapReader(
          VTablePointer inputStream, Pointer<VTablePointer> blockMapReader) =>
      _vtable.CreateBlockMapReader.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                  Pointer<VTablePointer> blockMapReader)>()(
          ptr, inputStream, blockMapReader);

  /// Creates a read-only block map object model from contents provided by an
  /// IStream and a digital signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfactory-createvalidatedblockmapreader>.
  int createValidatedBlockMapReader(
          VTablePointer blockMapStream,
          Pointer<Utf16> signatureFileName,
          Pointer<VTablePointer> blockMapReader) =>
      _vtable.CreateValidatedBlockMapReader.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer outputStream,
              Pointer<APPX_PACKAGE_SETTINGS> settings,
              Pointer<VTablePointer> packageWriter)>> CreatePackageWriter;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputStream,
              Pointer<VTablePointer> packageReader)>> CreatePackageReader;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputStream,
              Pointer<VTablePointer> manifestReader)>> CreateManifestReader;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputStream,
              Pointer<VTablePointer> blockMapReader)>> CreateBlockMapReader;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer blockMapStream,
                  Pointer<Utf16> signatureFileName,
                  Pointer<VTablePointer> blockMapReader)>>
      CreateValidatedBlockMapReader;
}

/// @nodoc
const AppxFactory = '{5842a140-ff9f-4166-8f5c-62f5b7b0c781}';
