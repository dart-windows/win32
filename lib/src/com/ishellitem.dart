// ishellitem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

/// Exposes methods that retrieve information about a Shell item.
/// [IShellItem] and `IShellItem2` are the preferred representations of
/// items in any new code.
///
/// {@category com}
class IShellItem extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IShellItem(super.ptr) : _vtable = ptr.value.value.cast<IShellItemVtbl>().ref;

  final IShellItemVtbl _vtable;

  factory IShellItem.from(IUnknown interface) =>
      IShellItem(interface.toInterface(IID_IShellItem));

  int bindToHandler(Pointer<VTablePointer> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, pbc, bhid, riid, ppv);

  int getParent(Pointer<Pointer<VTablePointer>> ppsi) =>
      _vtable.GetParent.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppsi)>()(ptr.value, ppsi);

  int getDisplayName(int sigdnName, Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(VTablePointer, int sigdnName,
                  Pointer<Pointer<Utf16>> ppszName)>()(
          ptr.value, sigdnName, ppszName);

  int getAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(VTablePointer, int sfgaoMask,
                  Pointer<Uint32> psfgaoAttribs)>()(
          ptr.value, sfgaoMask, psfgaoAttribs);

  int compare(Pointer<VTablePointer> psi, int hint, Pointer<Int32> piOrder) =>
      _vtable.Compare.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> psi, int hint,
              Pointer<Int32> piOrder)>()(ptr.value, psi, hint, piOrder);
}

/// @nodoc
base class IShellItemVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppsi)>> GetParent;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 sigdnName,
              Pointer<Pointer<Utf16>> ppszName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 sfgaoMask,
              Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> psi, Uint32 hint,
              Pointer<Int32> piOrder)>> Compare;
}

/// @nodoc
const CLSID_ShellItem = '{9ac9fbe1-e0a2-4ad6-b4ee-e212013ea917}';

/// {@category com}
class ShellItem extends IShellItem {
  ShellItem(super.ptr);

  factory ShellItem.createInstance() =>
      ShellItem(createCOMObject(CLSID_ShellItem, IID_IShellItem));
}
