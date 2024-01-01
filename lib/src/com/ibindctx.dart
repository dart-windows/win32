// ibindctx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IBindCtx = '{0000000e-0000-0000-c000-000000000046}';

/// Provides access to a bind context, which is an object that stores
/// information about a particular moniker binding operation.
///
/// {@category com}
class IBindCtx extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IBindCtx(super.ptr) : _vtable = ptr.ref.vtable.cast<IBindCtxVtbl>().ref;

  final IBindCtxVtbl _vtable;

  factory IBindCtx.from(IUnknown interface) =>
      IBindCtx(interface.toInterface(IID_IBindCtx));

  int registerObjectBound(Pointer<COMObject> punk) =>
      _vtable.RegisterObjectBound.asFunction<
          int Function(
              Pointer, Pointer<COMObject> punk)>()(ptr.ref.lpVtbl, punk);

  int revokeObjectBound(Pointer<COMObject> punk) =>
      _vtable.RevokeObjectBound.asFunction<
          int Function(
              Pointer, Pointer<COMObject> punk)>()(ptr.ref.lpVtbl, punk);

  int releaseBoundObjects() =>
      _vtable.ReleaseBoundObjects.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int setBindOptions(Pointer<BIND_OPTS> pbindopts) => _vtable.SetBindOptions
          .asFunction<int Function(Pointer, Pointer<BIND_OPTS> pbindopts)>()(
      ptr.ref.lpVtbl, pbindopts);

  int getBindOptions(Pointer<BIND_OPTS> pbindopts) => _vtable.GetBindOptions
          .asFunction<int Function(Pointer, Pointer<BIND_OPTS> pbindopts)>()(
      ptr.ref.lpVtbl, pbindopts);

  int getRunningObjectTable(Pointer<Pointer<COMObject>> pprot) =>
      _vtable.GetRunningObjectTable.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> pprot)>()(
          ptr.ref.lpVtbl, pprot);

  int registerObjectParam(Pointer<Utf16> pszKey, Pointer<COMObject> punk) =>
      _vtable.RegisterObjectParam.asFunction<
          int Function(Pointer, Pointer<Utf16> pszKey,
              Pointer<COMObject> punk)>()(ptr.ref.lpVtbl, pszKey, punk);

  int getObjectParam(
          Pointer<Utf16> pszKey, Pointer<Pointer<COMObject>> ppunk) =>
      _vtable.GetObjectParam.asFunction<
              int Function(Pointer, Pointer<Utf16> pszKey,
                  Pointer<Pointer<COMObject>> ppunk)>()(
          ptr.ref.lpVtbl, pszKey, ppunk);

  int enumObjectParam(Pointer<Pointer<COMObject>> ppenum) =>
      _vtable.EnumObjectParam.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>()(
          ptr.ref.lpVtbl, ppenum);

  int revokeObjectParam(Pointer<Utf16> pszKey) =>
      _vtable.RevokeObjectParam.asFunction<
          int Function(
              Pointer, Pointer<Utf16> pszKey)>()(ptr.ref.lpVtbl, pszKey);
}

/// @nodoc
base class IBindCtxVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> punk)>>
      RegisterObjectBound;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> punk)>>
      RevokeObjectBound;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> ReleaseBoundObjects;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<BIND_OPTS> pbindopts)>>
      SetBindOptions;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<BIND_OPTS> pbindopts)>>
      GetBindOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> pprot)>>
      GetRunningObjectTable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> pszKey, Pointer<COMObject> punk)>>
      RegisterObjectParam;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pszKey,
              Pointer<Pointer<COMObject>> ppunk)>> GetObjectParam;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>>
      EnumObjectParam;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszKey)>>
      RevokeObjectParam;
}
