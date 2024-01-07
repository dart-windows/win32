// ipropertystore.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../propertykey.dart';
import '../types.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPropertyStore = '{886d8eeb-8cf2-4446-8d02-cdba1dbdcf99}';

/// This interface exposes methods used to enumerate and manipulate property
/// values.
///
/// {@category com}
class IPropertyStore extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPropertyStore(super.ptr)
      : _vtable = ptr.value.value.cast<IPropertyStoreVtbl>().ref;

  final IPropertyStoreVtbl _vtable;

  factory IPropertyStore.from(IUnknown interface) =>
      IPropertyStore(interface.toInterface(IID_IPropertyStore));

  int getCount(Pointer<Uint32> cProps) => _vtable.GetCount.asFunction<
      int Function(VTablePointer, Pointer<Uint32> cProps)>()(ptr.value, cProps);

  int getAt(int iProp, Pointer<PROPERTYKEY> pkey) => _vtable.GetAt.asFunction<
          int Function(VTablePointer, int iProp, Pointer<PROPERTYKEY> pkey)>()(
      ptr.value, iProp, pkey);

  int getValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pv) =>
      _vtable.GetValue.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pv)>()(ptr.value, key, pv);

  int setValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> propvar) =>
      _vtable.SetValue.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> propvar)>()(ptr.value, key, propvar);

  int commit() =>
      _vtable.Commit.asFunction<int Function(VTablePointer)>()(ptr.value);
}

/// @nodoc
base class IPropertyStoreVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> cProps)>>
      GetCount;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Uint32 iProp, Pointer<PROPERTYKEY> pkey)>> GetAt;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pv)>> GetValue;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> propvar)>> SetValue;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Commit;
}
