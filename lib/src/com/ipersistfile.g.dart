// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ipersist.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IPersistFile = '{0000010b-0000-0000-c000-000000000046}';

/// Enables an object to be loaded from or saved to a disk file, rather than a
/// storage object or stream. Because the information needed to open a file
/// varies greatly from one application to another, the implementation of
/// `IPersistFile::Load`on the object must also open its disk file.
///
/// {@category com}
class IPersistFile extends IPersist {
  IPersistFile(super.ptr) : _vtable = ptr.value.cast<IPersistFileVtbl>().ref;

  final IPersistFileVtbl _vtable;

  factory IPersistFile.from(IUnknown interface) =>
      IPersistFile(interface.toInterface(IID_IPersistFile));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int load(PWSTR pszFileName, int dwMode) => _vtable.Load.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pszFileName, int dwMode)>()(
      ptr, pszFileName, dwMode);

  int save(PWSTR pszFileName, int fRemember) => _vtable.Save.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszFileName,
          int fRemember)>()(ptr, pszFileName, fRemember);

  int saveCompleted(PWSTR pszFileName) => _vtable.SaveCompleted.asFunction<
      int Function(
          VTablePointer lpVtbl, PWSTR pszFileName)>()(ptr, pszFileName);

  int getCurFile(Pointer<PWSTR> ppszFileName) => _vtable.GetCurFile.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PWSTR> ppszFileName)>()(
      ptr, ppszFileName);
}

/// @nodoc
base class IPersistFileVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      IsDirty;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, PWSTR pszFileName, Uint32 dwMode)>> Load;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, PWSTR pszFileName, BOOL fRemember)>> Save;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pszFileName)>>
      SaveCompleted;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<PWSTR> ppszFileName)>> GetCurFile;
}
