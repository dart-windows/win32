// ishellitemarray.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../propertykey.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

/// Exposes methods that create and manipulate Shell item arrays.
///
/// {@category com}
class IShellItemArray extends IUnknown {
  IShellItemArray(super.ptr)
      : _vtable = ptr.value.value.cast<IShellItemArrayVtbl>().ref;

  final IShellItemArrayVtbl _vtable;

  factory IShellItemArray.from(IUnknown interface) =>
      IShellItemArray(interface.toInterface(IID_IShellItemArray));

  int bindToHandler(Pointer<VTablePointer> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<Pointer> ppvOut) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>()(ptr.value, pbc, bhid, riid, ppvOut);

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(VTablePointer, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, flags, riid, ppv);

  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              VTablePointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, keyType, riid, ppv);

  int getAttributes(
          int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(VTablePointer, int AttribFlags, int sfgaoMask,
                  Pointer<Uint32> psfgaoAttribs)>()(
          ptr.value, AttribFlags, sfgaoMask, psfgaoAttribs);

  int getCount(Pointer<Uint32> pdwNumItems) => _vtable.GetCount.asFunction<
          int Function(VTablePointer, Pointer<Uint32> pdwNumItems)>()(
      ptr.value, pdwNumItems);

  int getItemAt(int dwIndex, Pointer<Pointer<VTablePointer>> ppsi) =>
      _vtable.GetItemAt.asFunction<
              int Function(VTablePointer, int dwIndex,
                  Pointer<Pointer<VTablePointer>> ppsi)>()(
          ptr.value, dwIndex, ppsi);

  int enumItems(Pointer<Pointer<VTablePointer>> ppenumShellItems) =>
      _vtable.EnumItems.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppenumShellItems)>()(
          ptr.value, ppenumShellItems);
}

/// @nodoc
base class IShellItemArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>> BindToHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 AttribFlags, Uint32 sfgaoMask,
              Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwNumItems)>> GetCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 dwIndex,
              Pointer<Pointer<VTablePointer>> ppsi)>> GetItemAt;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppenumShellItems)>> EnumItems;
}
