// isensormanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
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
      : _vtable = ptr.ref.vtable.cast<ISensorManagerVtbl>().ref;

  final ISensorManagerVtbl _vtable;

  factory ISensorManager.from(IUnknown interface) =>
      ISensorManager(interface.toInterface(IID_ISensorManager));

  int getSensorsByCategory(Pointer<GUID> sensorCategory,
          Pointer<Pointer<COMObject>> ppSensorsFound) =>
      _vtable.GetSensorsByCategory.asFunction<
              int Function(Pointer, Pointer<GUID> sensorCategory,
                  Pointer<Pointer<COMObject>> ppSensorsFound)>()(
          ptr.ref.lpVtbl, sensorCategory, ppSensorsFound);

  int getSensorsByType(Pointer<GUID> sensorType,
          Pointer<Pointer<COMObject>> ppSensorsFound) =>
      _vtable.GetSensorsByType.asFunction<
              int Function(Pointer, Pointer<GUID> sensorType,
                  Pointer<Pointer<COMObject>> ppSensorsFound)>()(
          ptr.ref.lpVtbl, sensorType, ppSensorsFound);

  int getSensorByID(
          Pointer<GUID> sensorID, Pointer<Pointer<COMObject>> ppSensor) =>
      _vtable.GetSensorByID.asFunction<
              int Function(Pointer, Pointer<GUID> sensorID,
                  Pointer<Pointer<COMObject>> ppSensor)>()(
          ptr.ref.lpVtbl, sensorID, ppSensor);

  int setEventSink(Pointer<COMObject> pEvents) =>
      _vtable.SetEventSink.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pEvents)>()(ptr.ref.lpVtbl, pEvents);

  int requestPermissions(
          int hParent, Pointer<COMObject> pSensors, int fModal) =>
      _vtable.RequestPermissions.asFunction<
          int Function(Pointer, int hParent, Pointer<COMObject> pSensors,
              int fModal)>()(ptr.ref.lpVtbl, hParent, pSensors, fModal);
}

/// @nodoc
base class ISensorManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<GUID> sensorCategory,
                  Pointer<Pointer<COMObject>> ppSensorsFound)>>
      GetSensorsByCategory;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> sensorType,
              Pointer<Pointer<COMObject>> ppSensorsFound)>> GetSensorsByType;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> sensorID,
              Pointer<Pointer<COMObject>> ppSensor)>> GetSensorByID;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pEvents)>>
      SetEventSink;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr hParent, Pointer<COMObject> pSensors,
              Int32 fModal)>> RequestPermissions;
}

/// @nodoc
const CLSID_SensorManager = '{77a1c827-fcd2-4689-8915-9d613cc5fa3e}';

/// {@category com}
class SensorManager extends ISensorManager {
  SensorManager(super.ptr);

  factory SensorManager.createInstance() => SensorManager(
      COMObject.createFromID(CLSID_SensorManager, IID_ISensorManager));
}
