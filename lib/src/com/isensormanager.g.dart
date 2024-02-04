// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISensorManager = '{bd77db67-45a8-42dc-8d00-6dcf15f8377a}';

/// Provides methods for discovering and retrieving available sensors and a
/// method to request sensor manager events.
///
/// {@category com}
class ISensorManager extends IUnknown {
  ISensorManager(super.ptr)
      : _vtable = ptr.value.cast<ISensorManagerVtbl>().ref;

  final ISensorManagerVtbl _vtable;

  factory ISensorManager.from(IUnknown interface) =>
      ISensorManager(interface.toInterface(IID_ISensorManager));

  int getSensorsByCategory(Pointer<GUID> sensorCategory,
          Pointer<VTablePointer> ppSensorsFound) =>
      _vtable.GetSensorsByCategory.asFunction<
              int Function(VTablePointer, Pointer<GUID> sensorCategory,
                  Pointer<VTablePointer> ppSensorsFound)>()(
          ptr, sensorCategory, ppSensorsFound);

  int getSensorsByType(
          Pointer<GUID> sensorType, Pointer<VTablePointer> ppSensorsFound) =>
      _vtable.GetSensorsByType.asFunction<
              int Function(VTablePointer, Pointer<GUID> sensorType,
                  Pointer<VTablePointer> ppSensorsFound)>()(
          ptr, sensorType, ppSensorsFound);

  int getSensorByID(Pointer<GUID> sensorID, Pointer<VTablePointer> ppSensor) =>
      _vtable.GetSensorByID.asFunction<
          int Function(VTablePointer, Pointer<GUID> sensorID,
              Pointer<VTablePointer> ppSensor)>()(ptr, sensorID, ppSensor);

  int setEventSink(VTablePointer? pEvents) => _vtable.SetEventSink.asFunction<
      int Function(
          VTablePointer, VTablePointer pEvents)>()(ptr, pEvents ?? nullptr);

  int requestPermissions(int hParent, VTablePointer? pSensors, int fModal) =>
      _vtable.RequestPermissions.asFunction<
          int Function(VTablePointer, int hParent, VTablePointer pSensors,
              int fModal)>()(ptr, hParent, pSensors ?? nullptr, fModal);
}

/// @nodoc
base class ISensorManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> sensorCategory,
              Pointer<VTablePointer> ppSensorsFound)>> GetSensorsByCategory;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> sensorType,
              Pointer<VTablePointer> ppSensorsFound)>> GetSensorsByType;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> sensorID,
              Pointer<VTablePointer> ppSensor)>> GetSensorByID;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer pEvents)>>
      SetEventSink;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hParent, VTablePointer pSensors,
              Int32 fModal)>> RequestPermissions;
}

/// @nodoc
const SensorManager = '{77a1c827-fcd2-4689-8915-9d613cc5fa3e}';
