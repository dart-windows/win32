// ienumwbemclassobject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

/// The IEnumWbemClassObject interface is used to enumerate Common
/// Information Model (CIM) objects and is similar to a standard COM
/// enumerator.
///
/// {@category com}
class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEnumWbemClassObject(super.ptr)
      : _vtable = ptr.value.value.cast<IEnumWbemClassObjectVtbl>().ref;

  final IEnumWbemClassObjectVtbl _vtable;

  factory IEnumWbemClassObject.from(IUnknown interface) =>
      IEnumWbemClassObject(interface.toInterface(IID_IEnumWbemClassObject));

  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr.value);

  int next(int lTimeout, int uCount, Pointer<Pointer<VTablePointer>> apObjects,
          Pointer<Uint32> puReturned) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer,
                  int lTimeout,
                  int uCount,
                  Pointer<Pointer<VTablePointer>> apObjects,
                  Pointer<Uint32> puReturned)>()(
          ptr.value, lTimeout, uCount, apObjects, puReturned);

  int nextAsync(int uCount, Pointer<VTablePointer> pSink) =>
      _vtable.NextAsync.asFunction<
          int Function(VTablePointer, int uCount,
              Pointer<VTablePointer> pSink)>()(ptr.value, uCount, pSink);

  int clone(Pointer<Pointer<VTablePointer>> ppEnum) => _vtable.Clone.asFunction<
      int Function(VTablePointer,
          Pointer<Pointer<VTablePointer>> ppEnum)>()(ptr.value, ppEnum);

  int skip(int lTimeout, int nCount) => _vtable.Skip.asFunction<
          int Function(VTablePointer, int lTimeout, int nCount)>()(
      ptr.value, lTimeout, nCount);
}

/// @nodoc
base class IEnumWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 lTimeout,
              Uint32 uCount,
              Pointer<Pointer<VTablePointer>> apObjects,
              Pointer<Uint32> puReturned)>> Next;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 uCount, Pointer<VTablePointer> pSink)>>
      NextAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppEnum)>> Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lTimeout, Uint32 nCount)>> Skip;
}
