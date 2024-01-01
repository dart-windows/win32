// iwbemconfigurerefresher.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemConfigureRefresher = '{49353c92-516b-11d1-aea6-00c04fb68820}';

/// The IWbemConfigureRefresher interface is used by client code to add
/// enumerators, objects, and nested refreshers into a refresher.
///
/// {@category com}
class IWbemConfigureRefresher extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWbemConfigureRefresher(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemConfigureRefresherVtbl>().ref;

  final IWbemConfigureRefresherVtbl _vtable;

  factory IWbemConfigureRefresher.from(IUnknown interface) =>
      IWbemConfigureRefresher(
          interface.toInterface(IID_IWbemConfigureRefresher));

  int addObjectByPath(
          Pointer<COMObject> pNamespace,
          Pointer<Utf16> wszPath,
          int lFlags,
          Pointer<COMObject> pContext,
          Pointer<Pointer<COMObject>> ppRefreshable,
          Pointer<Int32> plId) =>
      _vtable.AddObjectByPath.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pNamespace,
                  Pointer<Utf16> wszPath,
                  int lFlags,
                  Pointer<COMObject> pContext,
                  Pointer<Pointer<COMObject>> ppRefreshable,
                  Pointer<Int32> plId)>()(ptr.ref.lpVtbl, pNamespace, wszPath,
          lFlags, pContext, ppRefreshable, plId);

  int addObjectByTemplate(
          Pointer<COMObject> pNamespace,
          Pointer<COMObject> pTemplate,
          int lFlags,
          Pointer<COMObject> pContext,
          Pointer<Pointer<COMObject>> ppRefreshable,
          Pointer<Int32> plId) =>
      _vtable.AddObjectByTemplate.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pNamespace,
                  Pointer<COMObject> pTemplate,
                  int lFlags,
                  Pointer<COMObject> pContext,
                  Pointer<Pointer<COMObject>> ppRefreshable,
                  Pointer<Int32> plId)>()(ptr.ref.lpVtbl, pNamespace, pTemplate,
          lFlags, pContext, ppRefreshable, plId);

  int addRefresher(
          Pointer<COMObject> pRefresher, int lFlags, Pointer<Int32> plId) =>
      _vtable.AddRefresher.asFunction<
          int Function(Pointer, Pointer<COMObject> pRefresher, int lFlags,
              Pointer<Int32> plId)>()(ptr.ref.lpVtbl, pRefresher, lFlags, plId);

  int remove(int lId, int lFlags) =>
      _vtable.Remove.asFunction<int Function(Pointer, int lId, int lFlags)>()(
          ptr.ref.lpVtbl, lId, lFlags);

  int addEnum(
          Pointer<COMObject> pNamespace,
          Pointer<Utf16> wszClassName,
          int lFlags,
          Pointer<COMObject> pContext,
          Pointer<Pointer<COMObject>> ppEnum,
          Pointer<Int32> plId) =>
      _vtable.AddEnum.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pNamespace,
                  Pointer<Utf16> wszClassName,
                  int lFlags,
                  Pointer<COMObject> pContext,
                  Pointer<Pointer<COMObject>> ppEnum,
                  Pointer<Int32> plId)>()(ptr.ref.lpVtbl, pNamespace,
          wszClassName, lFlags, pContext, ppEnum, plId);
}

/// @nodoc
base class IWbemConfigureRefresherVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<Utf16> wszPath,
              Int32 lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppRefreshable,
              Pointer<Int32> plId)>> AddObjectByPath;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<COMObject> pTemplate,
              Int32 lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppRefreshable,
              Pointer<Int32> plId)>> AddObjectByTemplate;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pRefresher, Int32 lFlags,
              Pointer<Int32> plId)>> AddRefresher;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Int32 lId, Int32 lFlags)>> Remove;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<Utf16> wszClassName,
              Int32 lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppEnum,
              Pointer<Int32> plId)>> AddEnum;
}
