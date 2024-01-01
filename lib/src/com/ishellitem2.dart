// ishellitem2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../variant.dart';
import 'ishellitem.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItem2 = '{7e9fb0d3-919f-4307-ab2e-9b1860310c93}';

/// Extends [IShellItem] with methods that retrieve various property values
/// of the item. [IShellItem] and [IShellItem2] are the preferred
/// representations of items in any new code.
///
/// {@category com}
class IShellItem2 extends IShellItem {
  // vtable begins at 8, is 13 entries long.
  IShellItem2(super.ptr) : _vtable = ptr.ref.vtable.cast<IShellItem2Vtbl>().ref;

  final IShellItem2Vtbl _vtable;

  factory IShellItem2.from(IUnknown interface) =>
      IShellItem2(interface.toInterface(IID_IShellItem2));

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(Pointer, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, flags, riid, ppv);

  int getPropertyStoreWithCreateObject(
          int flags,
          Pointer<COMObject> punkCreateObject,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreWithCreateObject.asFunction<
              int Function(
                  Pointer,
                  int flags,
                  Pointer<COMObject> punkCreateObject,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppv)>()(
          ptr.ref.lpVtbl, flags, punkCreateObject, riid, ppv);

  int getPropertyStoreForKeys(Pointer<PROPERTYKEY> rgKeys, int cKeys, int flags,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreForKeys.asFunction<
              int Function(Pointer, Pointer<PROPERTYKEY> rgKeys, int cKeys,
                  int flags, Pointer<GUID> riid, Pointer<Pointer> ppv)>()(
          ptr.ref.lpVtbl, rgKeys, cKeys, flags, riid, ppv);

  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              Pointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, keyType, riid, ppv);

  int update(Pointer<COMObject> pbc) => _vtable.Update.asFunction<
      int Function(Pointer, Pointer<COMObject> pbc)>()(ptr.ref.lpVtbl, pbc);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      _vtable.GetProperty.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>()(ptr.ref.lpVtbl, key, ppropvar);

  int getCLSID(Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid) =>
      _vtable.GetCLSID.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid)>()(ptr.ref.lpVtbl, key, pclsid);

  int getFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      _vtable.GetFileTime.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft)>()(ptr.ref.lpVtbl, key, pft);

  int getInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) =>
      _vtable.GetInt32.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pi)>()(ptr.ref.lpVtbl, key, pi);

  int getString(Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz) =>
      _vtable.GetString.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>()(ptr.ref.lpVtbl, key, ppsz);

  int getUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      _vtable.GetUInt32.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint32> pui)>()(ptr.ref.lpVtbl, key, pui);

  int getUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      _vtable.GetUInt64.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull)>()(ptr.ref.lpVtbl, key, pull);

  int getBool(Pointer<PROPERTYKEY> key, Pointer<Int32> pf) =>
      _vtable.GetBool.asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pf)>()(ptr.ref.lpVtbl, key, pf);
}

/// @nodoc
base class IShellItem2Vtbl extends Struct {
  external IShellItemVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 flags,
              Pointer<COMObject> punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreWithCreateObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> rgKeys,
              Uint32 cKeys,
              Int32 flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreForKeys;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pbc)>> Update;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>> GetProperty;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid)>>
      GetCLSID;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft)>>
      GetFileTime;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pi)>> GetInt32;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>> GetString;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui)>>
      GetUInt32;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<PROPERTYKEY> key, Pointer<Uint64> pull)>>
      GetUInt64;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pf)>> GetBool;
}
