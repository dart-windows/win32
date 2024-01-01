// ishellitemarray.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import '../propertykey.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

/// Exposes methods that create and manipulate Shell item arrays.
///
/// {@category com}
class IShellItemArray extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IShellItemArray(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IShellItemArrayVtbl>().ref;

  final IShellItemArrayVtbl _vtable;

  factory IShellItemArray.from(IUnknown interface) =>
      IShellItemArray(interface.toInterface(IID_IShellItemArray));

  int bindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<Pointer> ppvOut) =>
      _vtable.BindToHandler.asFunction<
              int Function(Pointer, Pointer<COMObject> pbc, Pointer<GUID> bhid,
                  Pointer<GUID> riid, Pointer<Pointer> ppvOut)>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppvOut);

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(Pointer, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, flags, riid, ppv);

  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              Pointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, keyType, riid, ppv);

  int getAttributes(
          int AttribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(Pointer, int AttribFlags, int sfgaoMask,
                  Pointer<Uint32> psfgaoAttribs)>()(
          ptr.ref.lpVtbl, AttribFlags, sfgaoMask, psfgaoAttribs);

  int getCount(Pointer<Uint32> pdwNumItems) => _vtable.GetCount.asFunction<
      int Function(
          Pointer, Pointer<Uint32> pdwNumItems)>()(ptr.ref.lpVtbl, pdwNumItems);

  int getItemAt(int dwIndex, Pointer<Pointer<COMObject>> ppsi) =>
      _vtable.GetItemAt.asFunction<
              int Function(
                  Pointer, int dwIndex, Pointer<Pointer<COMObject>> ppsi)>()(
          ptr.ref.lpVtbl, dwIndex, ppsi);

  int enumItems(Pointer<Pointer<COMObject>> ppenumShellItems) =>
      _vtable.EnumItems.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppenumShellItems)>()(
          ptr.ref.lpVtbl, ppenumShellItems);
}

/// @nodoc
base class IShellItemArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pbc, Pointer<GUID> bhid,
              Pointer<GUID> riid, Pointer<Pointer> ppvOut)>> BindToHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 AttribFlags, Uint32 sfgaoMask,
              Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwNumItems)>>
      GetCount;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwIndex, Pointer<Pointer<COMObject>> ppsi)>>
      GetItemAt;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> ppenumShellItems)>>
      EnumItems;
}
