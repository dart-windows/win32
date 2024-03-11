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
const IID_IWbemHiPerfEnum = '{2705c288-79ae-11d2-b348-00105a1f8177}';

/// Used in refresher operations to provide rapid access to enumerations of
/// instance objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemhiperfenum>.
///
/// {@category com}
class IWbemHiPerfEnum extends IUnknown {
  IWbemHiPerfEnum(super.ptr)
      : _vtable = ptr.value.cast<IWbemHiPerfEnumVtbl>().ref;

  final IWbemHiPerfEnumVtbl _vtable;

  factory IWbemHiPerfEnum.from(IUnknown interface) =>
      IWbemHiPerfEnum(interface.toInterface(IID_IWbemHiPerfEnum));

  /// Adds the supplied instance objects to the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-addobjects>.
  int addObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds,
          Pointer<VTablePointer> apObj) =>
      _vtable.AddObjects.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags, int uNumObjects,
                  Pointer<Int32> apIds, Pointer<VTablePointer> apObj)>()(
          ptr, lFlags, uNumObjects, apIds, apObj);

  /// Removes objects (identified by their refresher identifiers) from a
  /// refresher.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-removeobjects>.
  int removeObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds) =>
      _vtable.RemoveObjects.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags, int uNumObjects,
              Pointer<Int32> apIds)>()(ptr, lFlags, uNumObjects, apIds);

  /// Retrieves objects currently residing in the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-getobjects>.
  int getObjects(int lFlags, int uNumObjects, Pointer<VTablePointer> apObj,
          Pointer<Uint32> puReturned) =>
      _vtable.GetObjects.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags, int uNumObjects,
                  Pointer<VTablePointer> apObj, Pointer<Uint32> puReturned)>()(
          ptr, lFlags, uNumObjects, apObj, puReturned);

  /// Empties all objects from the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-removeall>.
  int removeAll(int lFlags) => _vtable.RemoveAll.asFunction<
      int Function(VTablePointer lpVtbl, int lFlags)>()(ptr, lFlags);
}

/// @nodoc
base class IWbemHiPerfEnumVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<Int32> apIds,
              Pointer<VTablePointer> apObj)>> AddObjects;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Uint32 uNumObjects, Pointer<Int32> apIds)>> RemoveObjects;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<VTablePointer> apObj,
              Pointer<Uint32> puReturned)>> GetObjects;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 lFlags)>>
      RemoveAll;
}
