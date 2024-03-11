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
const IID_IAppxFile = '{91df827b-94fd-468f-827b-57f41b2f6f2e}';

/// Retrieves information about a payload or footprint file in a package.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfile>.
///
/// {@category com}
class IAppxFile extends IUnknown {
  IAppxFile(super.ptr) : _vtable = ptr.value.cast<IAppxFileVtbl>().ref;

  final IAppxFileVtbl _vtable;

  /// Creates a new instance of `IAppxFile` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxFile` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxFile.from(IUnknown interface) =>
      IAppxFile(interface.toInterface(IID_IAppxFile));

  /// Retrieves the compression option that is used to store the file in the
  /// package.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getcompressionoption>.
  int getCompressionOption(Pointer<Int32> compressionOption) =>
      _vtable.GetCompressionOption.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> compressionOption)>()(ptr, compressionOption);

  /// Retrieves the content type of the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getcontenttype>.
  int getContentType(Pointer<Pointer<Utf16>> contentType) =>
      _vtable.GetContentType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> contentType)>()(ptr, contentType);

  /// Retrieves the name of the file, including its path relative to the package
  /// root directory.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getname>.
  int getName(Pointer<Pointer<Utf16>> fileName) => _vtable.GetName.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<Pointer<Utf16>> fileName)>()(ptr, fileName);

  /// Retrieves the uncompressed size of the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getsize>.
  int getSize(Pointer<Uint64> size) => _vtable.GetSize.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Uint64> size)>()(ptr, size);

  /// Gets a read-only stream that contains the uncompressed content of the file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfile-getstream>.
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
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> contentType)>>
      GetContentType;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> fileName)>> GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> size)>>
      GetSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> stream)>> GetStream;
}
