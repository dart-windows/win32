// ibindctx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
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
  IBindCtx(super.ptr) : _vtable = ptr.value.cast<IBindCtxVtbl>().ref;

  final IBindCtxVtbl _vtable;

  factory IBindCtx.from(IUnknown interface) =>
      IBindCtx(interface.toInterface(IID_IBindCtx));

  int registerObjectBound(VTablePointer punk) => _vtable.RegisterObjectBound
      .asFunction<int Function(VTablePointer, VTablePointer punk)>()(ptr, punk);

  int revokeObjectBound(VTablePointer punk) => _vtable.RevokeObjectBound
      .asFunction<int Function(VTablePointer, VTablePointer punk)>()(ptr, punk);

  int releaseBoundObjects() =>
      _vtable.ReleaseBoundObjects.asFunction<int Function(VTablePointer)>()(
          ptr);

  int setBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      _vtable.SetBindOptions.asFunction<
          int Function(
              VTablePointer, Pointer<BIND_OPTS> pbindopts)>()(ptr, pbindopts);

  int getBindOptions(Pointer<BIND_OPTS> pbindopts) =>
      _vtable.GetBindOptions.asFunction<
          int Function(
              VTablePointer, Pointer<BIND_OPTS> pbindopts)>()(ptr, pbindopts);

  int getRunningObjectTable(Pointer<VTablePointer> pprot) =>
      _vtable.GetRunningObjectTable.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> pprot)>()(ptr, pprot);

  int registerObjectParam(Pointer<Utf16> pszKey, VTablePointer punk) =>
      _vtable.RegisterObjectParam.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszKey,
              VTablePointer punk)>()(ptr, pszKey, punk);

  int getObjectParam(Pointer<Utf16> pszKey, Pointer<VTablePointer> ppunk) =>
      _vtable.GetObjectParam.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszKey,
              Pointer<VTablePointer> ppunk)>()(ptr, pszKey, ppunk);

  int enumObjectParam(Pointer<VTablePointer> ppenum) =>
      _vtable.EnumObjectParam.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);

  int revokeObjectParam(Pointer<Utf16> pszKey) =>
      _vtable.RevokeObjectParam.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszKey)>()(ptr, pszKey);
}

/// @nodoc
base class IBindCtxVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer punk)>>
      RegisterObjectBound;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer punk)>>
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
              Int32 Function(VTablePointer, Pointer<VTablePointer> pprot)>>
      GetRunningObjectTable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> pszKey, VTablePointer punk)>>
      RegisterObjectParam;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszKey,
              Pointer<VTablePointer> ppunk)>> GetObjectParam;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppenum)>>
      EnumObjectParam;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszKey)>>
      RevokeObjectParam;
}
