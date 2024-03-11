// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxFilesEnumerator = '{f007eeaf-9831-411c-9847-917cdc62d1fe}';

/// Enumerates the payload files in a package.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfilesenumerator>.
///
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  IAppxFilesEnumerator(super.ptr)
      : _vtable = ptr.value.cast<IAppxFilesEnumeratorVtbl>().ref;

  final IAppxFilesEnumeratorVtbl _vtable;

  factory IAppxFilesEnumerator.from(IUnknown interface) =>
      IAppxFilesEnumerator(interface.toInterface(IID_IAppxFilesEnumerator));

  /// Gets the payload file at the current position of the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-getcurrent>.
  int getCurrent(Pointer<VTablePointer> file) => _vtable.GetCurrent.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> file)>()(ptr, file);

  /// Determines whether there is a payload file at the current position of the
  /// enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-gethascurrent>.
  int getHasCurrent(Pointer<BOOL> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<BOOL> hasCurrent)>()(
          ptr, hasCurrent);

  /// Advances the position of the enumerator to the next payload file.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-movenext>.
  int moveNext(Pointer<BOOL> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BOOL> hasNext)>()(ptr, hasNext);
}

/// @nodoc
base class IAppxFilesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> file)>> GetCurrent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> hasNext)>>
      MoveNext;
}
