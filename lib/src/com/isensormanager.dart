// isensormanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensorManager = '{bd77db67-45a8-42dc-8d00-6dcf15f8377a}';

/// Provides methods for discovering and retrieving available sensors and a
/// method to request sensor manager events.
///
/// {@category com}
class ISensorManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISensorManager(super.ptr)
      : _vtable = ptr.value.value.cast<ISensorManagerVtbl>().ref;

  final ISensorManagerVtbl _vtable;

  factory ISensorManager.from(IUnknown interface) =>
      ISensorManager(interface.toInterface(IID_ISensorManager));

  int getSensorsByCategory(Pointer<GUID> sensorCategory,
          Pointer<Pointer<VTablePointer>> ppSensorsFound) =>
      _vtable.GetSensorsByCategory.asFunction<
              int Function(VTablePointer, Pointer<GUID> sensorCategory,
                  Pointer<Pointer<VTablePointer>> ppSensorsFound)>()(
          ptr.value, sensorCategory, ppSensorsFound);

  int getSensorsByType(Pointer<GUID> sensorType,
          Pointer<Pointer<VTablePointer>> ppSensorsFound) =>
      _vtable.GetSensorsByType.asFunction<
              int Function(VTablePointer, Pointer<GUID> sensorType,
                  Pointer<Pointer<VTablePointer>> ppSensorsFound)>()(
          ptr.value, sensorType, ppSensorsFound);

  int getSensorByID(
          Pointer<GUID> sensorID, Pointer<Pointer<VTablePointer>> ppSensor) =>
      _vtable.GetSensorByID.asFunction<
              int Function(VTablePointer, Pointer<GUID> sensorID,
                  Pointer<Pointer<VTablePointer>> ppSensor)>()(
          ptr.value, sensorID, ppSensor);

  int setEventSink(Pointer<VTablePointer> pEvents) =>
      _vtable.SetEventSink.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pEvents)>()(
          ptr.value, pEvents);

  int requestPermissions(
          int hParent, Pointer<VTablePointer> pSensors, int fModal) =>
      _vtable.RequestPermissions.asFunction<
          int Function(
              VTablePointer,
              int hParent,
              Pointer<VTablePointer> pSensors,
              int fModal)>()(ptr.value, hParent, pSensors, fModal);
}

/// @nodoc
base class ISensorManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<GUID> sensorCategory,
                  Pointer<Pointer<VTablePointer>> ppSensorsFound)>>
      GetSensorsByCategory;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<GUID> sensorType,
                  Pointer<Pointer<VTablePointer>> ppSensorsFound)>>
      GetSensorsByType;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> sensorID,
              Pointer<Pointer<VTablePointer>> ppSensor)>> GetSensorByID;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pEvents)>>
      SetEventSink;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hParent,
              Pointer<VTablePointer> pSensors,
              Int32 fModal)>> RequestPermissions;
}

/// @nodoc
const CLSID_SensorManager = '{77a1c827-fcd2-4689-8915-9d613cc5fa3e}';

/// {@category com}
class SensorManager extends ISensorManager {
  SensorManager(super.ptr);

  factory SensorManager.createInstance() =>
      SensorManager(createCOMObject(CLSID_SensorManager, IID_ISensorManager));
}
