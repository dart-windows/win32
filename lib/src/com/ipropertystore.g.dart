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
const IID_IPropertyStore = '{886d8eeb-8cf2-4446-8d02-cdba1dbdcf99}';

/// This interface exposes methods used to enumerate and manipulate property
/// values.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/propsys/nn-propsys-ipropertystore>.
///
/// {@category com}
class IPropertyStore extends IUnknown {
  IPropertyStore(super.ptr)
      : _vtable = ptr.value.cast<IPropertyStoreVtbl>().ref;

  final IPropertyStoreVtbl _vtable;

  factory IPropertyStore.from(IUnknown interface) =>
      IPropertyStore(interface.toInterface(IID_IPropertyStore));

  int getCount(Pointer<Uint32> cProps) => _vtable.GetCount.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> cProps)>()(ptr, cProps);

  int getAt(int iProp, Pointer<PROPERTYKEY> pkey) => _vtable.GetAt.asFunction<
      int Function(VTablePointer lpVtbl, int iProp,
          Pointer<PROPERTYKEY> pkey)>()(ptr, iProp, pkey);

  int getValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pv) =>
      _vtable.GetValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pv)>()(ptr, key, pv);

  int setValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> propvar) =>
      _vtable.SetValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> propvar)>()(ptr, key, propvar);

  int commit() =>
      _vtable.Commit.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IPropertyStoreVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> cProps)>>
      GetCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 iProp,
              Pointer<PROPERTYKEY> pkey)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pv)>> GetValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> propvar)>> SetValue;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Commit;
}
