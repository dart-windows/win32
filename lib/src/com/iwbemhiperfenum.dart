// iwbemhiperfenum.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemHiPerfEnum = '{2705c288-79ae-11d2-b348-00105a1f8177}';

/// The IWbemHiPerfEnum interface is used in refresher operations to provide
/// rapid access to enumerations of instance objects. WMI provides an
/// implementation of this interface, which it passes to providers when
/// `IWbemHiPerfProvider::CreateRefreshableEnum` is called, and it returns
/// to clients when `IWbemConfigureRefresher::AddEnum` is called.
///
/// {@category com}
class IWbemHiPerfEnum extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWbemHiPerfEnum(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemHiPerfEnumVtbl>().ref;

  final IWbemHiPerfEnumVtbl _vtable;

  factory IWbemHiPerfEnum.from(IUnknown interface) =>
      IWbemHiPerfEnum(interface.toInterface(IID_IWbemHiPerfEnum));

  int addObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds,
          Pointer<Pointer<COMObject>> apObj) =>
      _vtable.AddObjects.asFunction<
              int Function(Pointer, int lFlags, int uNumObjects,
                  Pointer<Int32> apIds, Pointer<Pointer<COMObject>> apObj)>()(
          ptr.ref.lpVtbl, lFlags, uNumObjects, apIds, apObj);

  int removeObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds) =>
      _vtable.RemoveObjects.asFunction<
              int Function(Pointer, int lFlags, int uNumObjects,
                  Pointer<Int32> apIds)>()(
          ptr.ref.lpVtbl, lFlags, uNumObjects, apIds);

  int getObjects(int lFlags, int uNumObjects, Pointer<Pointer<COMObject>> apObj,
          Pointer<Uint32> puReturned) =>
      _vtable.GetObjects.asFunction<
              int Function(
                  Pointer,
                  int lFlags,
                  int uNumObjects,
                  Pointer<Pointer<COMObject>> apObj,
                  Pointer<Uint32> puReturned)>()(
          ptr.ref.lpVtbl, lFlags, uNumObjects, apObj, puReturned);

  int removeAll(int lFlags) =>
      _vtable.RemoveAll.asFunction<int Function(Pointer, int lFlags)>()(
          ptr.ref.lpVtbl, lFlags);
}

/// @nodoc
base class IWbemHiPerfEnumVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<Int32> apIds,
              Pointer<Pointer<COMObject>> apObj)>> AddObjects;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags, Uint32 uNumObjects,
              Pointer<Int32> apIds)>> RemoveObjects;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 lFlags,
              Uint32 uNumObjects,
              Pointer<Pointer<COMObject>> apObj,
              Pointer<Uint32> puReturned)>> GetObjects;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>
      RemoveAll;
}
