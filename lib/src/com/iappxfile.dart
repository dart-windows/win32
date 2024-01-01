// iappxfile.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFile = '{91df827b-94fd-468f-827b-57f41b2f6f2e}';

/// Retrieves information about a payload or footprint file in a package.
///
/// {@category com}
class IAppxFile extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxFile(super.ptr) : _vtable = ptr.ref.vtable.cast<IAppxFileVtbl>().ref;

  final IAppxFileVtbl _vtable;

  factory IAppxFile.from(IUnknown interface) =>
      IAppxFile(interface.toInterface(IID_IAppxFile));

  int getCompressionOption(Pointer<Int32> compressionOption) =>
      _vtable.GetCompressionOption.asFunction<
              int Function(Pointer, Pointer<Int32> compressionOption)>()(
          ptr.ref.lpVtbl, compressionOption);

  int getContentType(Pointer<Pointer<Utf16>> contentType) =>
      _vtable.GetContentType.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> contentType)>()(
          ptr.ref.lpVtbl, contentType);

  int getName(Pointer<Pointer<Utf16>> fileName) => _vtable.GetName.asFunction<
          int Function(Pointer, Pointer<Pointer<Utf16>> fileName)>()(
      ptr.ref.lpVtbl, fileName);

  int getSize(Pointer<Uint64> size) =>
      _vtable.GetSize.asFunction<int Function(Pointer, Pointer<Uint64> size)>()(
          ptr.ref.lpVtbl, size);

  int getStream(
          Pointer<Pointer<COMObject>> stream) =>
      _vtable.GetStream.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> stream)>()(
          ptr.ref.lpVtbl, stream);
}

/// @nodoc
base class IAppxFileVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Int32> compressionOption)>>
      GetCompressionOption;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> contentType)>>
      GetContentType;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<Utf16>> fileName)>> GetName;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Uint64> size)>> GetSize;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> stream)>>
      GetStream;
}
