// ibindctx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IBindCtx = '{0000000e-0000-0000-c000-000000000046}';

/// Provides access to a bind context, which is an object that stores
/// information about a particular moniker binding operation.
///
/// {@category com}
class IBindCtx extends IUnknown {
  IBindCtx(super.ptr) : _vtable = ptr.value.value.cast<IBindCtxVtbl>().ref;

  final IBindCtxVtbl _vtable;

  factory IBindCtx.from(IUnknown interface) =>
      IBindCtx(interface.toInterface(IID_IBindCtx));

  int registerObjectBound(Pointer<VTablePointer> punk) =>
      _vtable.RegisterObjectBound.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> punk)>()(ptr.value, punk);

  int revokeObjectBound(Pointer<VTablePointer> punk) =>
      _vtable.RevokeObjectBound.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> punk)>()(ptr.value, punk);

  int releaseBoundObjects() =>
      _vtable.ReleaseBoundObjects.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int setBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      _vtable.SetBindOptions.asFunction<
              int Function(VTablePointer, Pointer<BIND_OPTS> pbindopts)>()(
          ptr.value, pbindopts);

  int getBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      _vtable.GetBindOptions.asFunction<
              int Function(VTablePointer, Pointer<BIND_OPTS> pbindopts)>()(
          ptr.value, pbindopts);

  int getRunningObjectTable(Pointer<Pointer<VTablePointer>> pprot) =>
      _vtable.GetRunningObjectTable.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> pprot)>()(ptr.value, pprot);

  int registerObjectParam(Pointer<Utf16> pszKey, Pointer<VTablePointer> punk) =>
      _vtable.RegisterObjectParam.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszKey,
              Pointer<VTablePointer> punk)>()(ptr.value, pszKey, punk);

  int getObjectParam(
          Pointer<Utf16> pszKey, Pointer<Pointer<VTablePointer>> ppunk) =>
      _vtable.GetObjectParam.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pszKey,
                  Pointer<Pointer<VTablePointer>> ppunk)>()(
          ptr.value, pszKey, ppunk);

  int enumObjectParam(Pointer<Pointer<VTablePointer>> ppenum) =>
      _vtable.EnumObjectParam.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppenum)>()(ptr.value, ppenum);

  int revokeObjectParam(Pointer<Utf16> pszKey) =>
      _vtable.RevokeObjectParam.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> pszKey)>()(ptr.value, pszKey);
}

/// @nodoc
base class IBindCtxVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> punk)>>
      RegisterObjectBound;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> punk)>>
      RevokeObjectBound;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ReleaseBoundObjects;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<BIND_OPTS> pbindopts)>>
      SetBindOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<BIND_OPTS> pbindopts)>>
      GetBindOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> pprot)>>
      GetRunningObjectTable;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszKey,
              Pointer<VTablePointer> punk)>> RegisterObjectParam;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszKey,
              Pointer<Pointer<VTablePointer>> ppunk)>> GetObjectParam;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppenum)>>
      EnumObjectParam;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszKey)>>
      RevokeObjectParam;
}
