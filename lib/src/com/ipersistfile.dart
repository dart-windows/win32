// ipersistfile.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'ipersist.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPersistFile = '{0000010b-0000-0000-c000-000000000046}';

/// Enables an object to be loaded from or saved to a disk file, rather than
/// a storage object or stream. Because the information needed to open a
/// file varies greatly from one application to another, the implementation
/// of `IPersistFile::Load`on the object must also open its disk file.
///
/// {@category com}
class IPersistFile extends IPersist {
  // vtable begins at 4, is 5 entries long.
  IPersistFile(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IPersistFileVtbl>().ref;

  final IPersistFileVtbl _vtable;

  factory IPersistFile.from(IUnknown interface) =>
      IPersistFile(interface.toInterface(IID_IPersistFile));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int load(Pointer<Utf16> pszFileName, int dwMode) => _vtable.Load.asFunction<
          int Function(Pointer, Pointer<Utf16> pszFileName, int dwMode)>()(
      ptr.ref.lpVtbl, pszFileName, dwMode);

  int save(Pointer<Utf16> pszFileName, int fRemember) =>
      _vtable.Save.asFunction<
          int Function(Pointer, Pointer<Utf16> pszFileName,
              int fRemember)>()(ptr.ref.lpVtbl, pszFileName, fRemember);

  int saveCompleted(Pointer<Utf16> pszFileName) => _vtable.SaveCompleted
          .asFunction<int Function(Pointer, Pointer<Utf16> pszFileName)>()(
      ptr.ref.lpVtbl, pszFileName);

  int getCurFile(Pointer<Pointer<Utf16>> ppszFileName) =>
      _vtable.GetCurFile.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> ppszFileName)>()(
          ptr.ref.lpVtbl, ppszFileName);
}

/// @nodoc
base class IPersistFileVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> IsDirty;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Utf16> pszFileName, Uint32 dwMode)>> Load;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Utf16> pszFileName, Int32 fRemember)>> Save;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszFileName)>>
      SaveCompleted;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppszFileName)>>
      GetCurFile;
}
