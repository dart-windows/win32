// iappxfile.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFile = '{91df827b-94fd-468f-827b-57f41b2f6f2e}';

/// Retrieves information about a payload or footprint file in a package.
///
/// {@category com}
class IAppxFile extends IUnknown {
  IAppxFile(super.ptr) : _vtable = ptr.value.value.cast<IAppxFileVtbl>().ref;

  final IAppxFileVtbl _vtable;

  factory IAppxFile.from(IUnknown interface) =>
      IAppxFile(interface.toInterface(IID_IAppxFile));

  int getCompressionOption(Pointer<Int32> compressionOption) =>
      _vtable.GetCompressionOption.asFunction<
              int Function(VTablePointer, Pointer<Int32> compressionOption)>()(
          ptr.value, compressionOption);

  int getContentType(Pointer<Pointer<Utf16>> contentType) =>
      _vtable.GetContentType.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> contentType)>()(ptr.value, contentType);

  int getName(Pointer<Pointer<Utf16>> fileName) => _vtable.GetName.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> fileName)>()(
      ptr.value, fileName);

  int getSize(Pointer<Uint64> size) => _vtable.GetSize.asFunction<
      int Function(VTablePointer, Pointer<Uint64> size)>()(ptr.value, size);

  int getStream(Pointer<Pointer<VTablePointer>> stream) =>
      _vtable.GetStream.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> stream)>()(ptr.value, stream);
}

/// @nodoc
base class IAppxFileVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> compressionOption)>>
      GetCompressionOption;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> contentType)>>
      GetContentType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> fileName)>>
      GetName;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint64> size)>>
      GetSize;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> stream)>>
      GetStream;
}
