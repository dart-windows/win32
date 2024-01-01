// isensorcollection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensorCollection = '{23571e11-e545-4dd8-a337-b89bf44b10df}';

/// Represents a collection of sensors, such as all the sensors connected to
/// a computer.
///
/// {@category com}
class ISensorCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ISensorCollection(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISensorCollectionVtbl>().ref;

  final ISensorCollectionVtbl _vtable;

  factory ISensorCollection.from(IUnknown interface) =>
      ISensorCollection(interface.toInterface(IID_ISensorCollection));

  int getAt(int ulIndex, Pointer<Pointer<COMObject>> ppSensor) =>
      _vtable.GetAt.asFunction<
              int Function(Pointer, int ulIndex,
                  Pointer<Pointer<COMObject>> ppSensor)>()(
          ptr.ref.lpVtbl, ulIndex, ppSensor);

  int getCount(Pointer<Uint32> pCount) => _vtable.GetCount.asFunction<
      int Function(Pointer, Pointer<Uint32> pCount)>()(ptr.ref.lpVtbl, pCount);

  int add(Pointer<COMObject> pSensor) => _vtable.Add.asFunction<
      int Function(
          Pointer, Pointer<COMObject> pSensor)>()(ptr.ref.lpVtbl, pSensor);

  int remove(Pointer<COMObject> pSensor) => _vtable.Remove.asFunction<
      int Function(
          Pointer, Pointer<COMObject> pSensor)>()(ptr.ref.lpVtbl, pSensor);

  int removeByID(Pointer<GUID> sensorID) => _vtable.RemoveByID.asFunction<
      int Function(
          Pointer, Pointer<GUID> sensorID)>()(ptr.ref.lpVtbl, sensorID);

  int clear() =>
      _vtable.Clear.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
base class ISensorCollectionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 ulIndex,
              Pointer<Pointer<COMObject>> ppSensor)>> GetAt;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pCount)>> GetCount;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSensor)>> Add;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSensor)>>
      Remove;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> sensorID)>>
      RemoveByID;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Clear;
}

/// @nodoc
const CLSID_SensorCollection = '{79c43adb-a429-469f-aa39-2f2b74b75937}';

/// {@category com}
class SensorCollection extends ISensorCollection {
  SensorCollection(super.ptr);

  factory SensorCollection.createInstance() => SensorCollection(
      COMObject.createFromID(CLSID_SensorCollection, IID_ISensorCollection));
}
