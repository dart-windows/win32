// ishellitem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
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
  IShellItem(super.ptr) : _vtable = ptr.ref.vtable.cast<IShellItemVtbl>().ref;

  final IShellItemVtbl _vtable;

  factory IShellItem.from(IUnknown interface) =>
      IShellItem(interface.toInterface(IID_IShellItem));

  int bindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, pbc, bhid, riid, ppv);

  int getParent(Pointer<Pointer<COMObject>> ppsi) =>
      _vtable.GetParent.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
          ptr.ref.lpVtbl, ppsi);

  int getDisplayName(int sigdnName, Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(
                  Pointer, int sigdnName, Pointer<Pointer<Utf16>> ppszName)>()(
          ptr.ref.lpVtbl, sigdnName, ppszName);

  int getAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(
                  Pointer, int sfgaoMask, Pointer<Uint32> psfgaoAttribs)>()(
          ptr.ref.lpVtbl, sfgaoMask, psfgaoAttribs);

  int compare(Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder) =>
      _vtable.Compare.asFunction<
          int Function(Pointer, Pointer<COMObject> psi, int hint,
              Pointer<Int32> piOrder)>()(ptr.ref.lpVtbl, psi, hint, piOrder);
}

/// @nodoc
base class IShellItemVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pbc, Pointer<GUID> bhid,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> BindToHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>> GetParent;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 sigdnName, Pointer<Pointer<Utf16>> ppszName)>>
      GetDisplayName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs)>>
      GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> psi, Uint32 hint,
              Pointer<Int32> piOrder)>> Compare;
}

/// @nodoc
const CLSID_ShellItem = '{9ac9fbe1-e0a2-4ad6-b4ee-e212013ea917}';

/// {@category com}
class ShellItem extends IShellItem {
  ShellItem(super.ptr);

  factory ShellItem.createInstance() =>
      ShellItem(COMObject.createFromID(CLSID_ShellItem, IID_IShellItem));
}
