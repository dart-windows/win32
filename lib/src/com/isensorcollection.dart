// isensorcollection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensorCollection = '{23571e11-e545-4dd8-a337-b89bf44b10df}';

/// Represents a collection of sensors, such as all the sensors connected to
/// a computer.
///
/// {@category com}
class ISensorCollection extends IUnknown {
  ISensorCollection(super.ptr)
      : _vtable = ptr.value.value.cast<ISensorCollectionVtbl>().ref;

  final ISensorCollectionVtbl _vtable;

  factory ISensorCollection.from(IUnknown interface) =>
      ISensorCollection(interface.toInterface(IID_ISensorCollection));

  int getAt(int ulIndex, Pointer<Pointer<VTablePointer>> ppSensor) =>
      _vtable.GetAt.asFunction<
              int Function(VTablePointer, int ulIndex,
                  Pointer<Pointer<VTablePointer>> ppSensor)>()(
          ptr.value, ulIndex, ppSensor);

  int getCount(Pointer<Uint32> pCount) => _vtable.GetCount.asFunction<
      int Function(VTablePointer, Pointer<Uint32> pCount)>()(ptr.value, pCount);

  int add(Pointer<VTablePointer> pSensor) => _vtable.Add.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> pSensor)>()(ptr.value, pSensor);

  int remove(Pointer<VTablePointer> pSensor) => _vtable.Remove.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> pSensor)>()(ptr.value, pSensor);

  int removeByID(Pointer<GUID> sensorID) => _vtable.RemoveByID.asFunction<
      int Function(
          VTablePointer, Pointer<GUID> sensorID)>()(ptr.value, sensorID);

  int clear() =>
      _vtable.Clear.asFunction<int Function(VTablePointer)>()(ptr.value);
}

/// @nodoc
base class ISensorCollectionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ulIndex,
              Pointer<Pointer<VTablePointer>> ppSensor)>> GetAt;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> pCount)>>
      GetCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pSensor)>> Add;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pSensor)>>
      Remove;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> sensorID)>>
      RemoveByID;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Clear;
}

/// @nodoc
const CLSID_SensorCollection = '{79c43adb-a429-469f-aa39-2f2b74b75937}';

/// {@category com}
class SensorCollection extends ISensorCollection {
  SensorCollection(super.ptr);

  factory SensorCollection.createInstance() => SensorCollection(
      createCOMObject(CLSID_SensorCollection, IID_ISensorCollection));
}
