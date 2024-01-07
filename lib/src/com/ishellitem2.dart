// ishellitem2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../types.dart';
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
  IShellItem2(super.ptr) : _vtable = ptr.value.cast<IShellItem2Vtbl>().ref;

  final IShellItem2Vtbl _vtable;

  factory IShellItem2.from(IUnknown interface) =>
      IShellItem2(interface.toInterface(IID_IShellItem2));

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(VTablePointer, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, riid, ppv);

  int getPropertyStoreWithCreateObject(
          int flags,
          VTablePointer punkCreateObject,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreWithCreateObject.asFunction<
          int Function(
              VTablePointer,
              int flags,
              VTablePointer punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, punkCreateObject, riid, ppv);

  int getPropertyStoreForKeys(Pointer<PROPERTYKEY> rgKeys, int cKeys, int flags,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreForKeys.asFunction<
          int Function(
              VTablePointer,
              Pointer<PROPERTYKEY> rgKeys,
              int cKeys,
              int flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, rgKeys, cKeys, flags, riid, ppv);

  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              VTablePointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, keyType, riid, ppv);

  int update(VTablePointer pbc) => _vtable.Update.asFunction<
      int Function(VTablePointer, VTablePointer pbc)>()(ptr, pbc);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      _vtable.GetProperty.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>()(ptr, key, ppropvar);

  int getCLSID(Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid) =>
      _vtable.GetCLSID.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid)>()(ptr, key, pclsid);

  int getFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      _vtable.GetFileTime.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft)>()(ptr, key, pft);

  int getInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) =>
      _vtable.GetInt32.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pi)>()(ptr, key, pi);

  int getString(Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz) =>
      _vtable.GetString.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>()(ptr, key, ppsz);

  int getUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      _vtable.GetUInt32.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint32> pui)>()(ptr, key, pui);

  int getUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      _vtable.GetUInt64.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull)>()(ptr, key, pull);

  int getBool(Pointer<PROPERTYKEY> key, Pointer<Int32> pf) =>
      _vtable.GetBool.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pf)>()(ptr, key, pf);
}

/// @nodoc
base class IShellItem2Vtbl extends Struct {
  external IShellItemVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 flags,
              VTablePointer punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreWithCreateObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<PROPERTYKEY> rgKeys,
              Uint32 cKeys,
              Int32 flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreForKeys;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, VTablePointer pbc)>> Update;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>> GetProperty;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid)>> GetCLSID;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft)>> GetFileTime;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pi)>>
      GetInt32;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>> GetString;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint32> pui)>> GetUInt32;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull)>> GetUInt64;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pf)>>
      GetBool;
}
