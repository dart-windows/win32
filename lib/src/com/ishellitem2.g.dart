// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItem2 = '{7e9fb0d3-919f-4307-ab2e-9b1860310c93}';

/// Extends IShellItem with methods that retrieve various property values of the
/// item.
///
/// IShellItem and IShellItem2 are the preferred representations of items in any
/// new code.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitem2>.
///
/// {@category com}
class IShellItem2 extends IShellItem {
  IShellItem2(super.ptr) : _vtable = ptr.value.cast<IShellItem2Vtbl>().ref;

  final IShellItem2Vtbl _vtable;

  /// Creates a new instance of `IShellItem2` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellItem2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellItem2.from(IUnknown interface) =>
      IShellItem2(interface.toInterface(IID_IShellItem2));

  /// Gets a property store object for specified property store flags.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystore>.
  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(VTablePointer lpVtbl, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, riid, ppv);

  /// Uses the specified ICreateObject instead of CoCreateInstance to create an
  /// instance of the property handler associated with the Shell item on which
  /// this method is called.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystorewithcreateobject>.
  int getPropertyStoreWithCreateObject(
          int flags,
          VTablePointer punkCreateObject,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreWithCreateObject.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int flags,
              VTablePointer punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, punkCreateObject, riid, ppv);

  /// Gets property store object for specified property keys.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystoreforkeys>.
  int getPropertyStoreForKeys(Pointer<PROPERTYKEY> rgKeys, int cKeys, int flags,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStoreForKeys.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> rgKeys,
              int cKeys,
              int flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, rgKeys, cKeys, flags, riid, ppv);

  /// Gets a property description list object given a reference to a property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertydescriptionlist>.
  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, keyType, riid, ppv);

  /// Ensures that any cached information in this item is updated.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-update>.
  int update(VTablePointer pbc) => _vtable.Update.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer pbc)>()(ptr, pbc);

  /// Gets a PROPVARIANT structure from a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getproperty>.
  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      _vtable.GetProperty.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>()(ptr, key, ppropvar);

  /// Gets the class identifier (CLSID) value of specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getclsid>.
  int getCLSID(Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid) =>
      _vtable.GetCLSID.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid)>()(ptr, key, pclsid);

  /// Gets the date and time value of a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getfiletime>.
  int getFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      _vtable.GetFileTime.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft)>()(ptr, key, pft);

  /// Gets the Int32 value of specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getint32>.
  int getInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) =>
      _vtable.GetInt32.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pi)>()(ptr, key, pi);

  /// Gets the string value of a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getstring>.
  int getString(Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz) =>
      _vtable.GetString.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>()(ptr, key, ppsz);

  /// Gets the UInt32 value of a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getuint32>.
  int getUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      _vtable.GetUInt32.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Uint32> pui)>()(ptr, key, pui);

  /// Gets the UInt64 value of a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getuint64>.
  int getUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      _vtable.GetUInt64.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull)>()(ptr, key, pull);

  /// Gets the boolean value of a specified property key.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getbool>.
  int getBool(Pointer<PROPERTYKEY> key, Pointer<BOOL> pf) =>
      _vtable.GetBool.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<BOOL> pf)>()(ptr, key, pf);
}

/// @nodoc
base class IShellItem2Vtbl extends Struct {
  external IShellItemVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flags,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 flags,
              VTablePointer punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreWithCreateObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> rgKeys,
              Uint32 cKeys,
              Int32 flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStoreForKeys;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pbc)>> Update;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar)>> GetProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid)>> GetCLSID;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft)>> GetFileTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Int32> pi)>> GetInt32;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz)>> GetString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Uint32> pui)>> GetUInt32;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull)>> GetUInt64;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<BOOL> pf)>> GetBool;
}
