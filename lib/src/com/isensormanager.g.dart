// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISensorManager = '{bd77db67-45a8-42dc-8d00-6dcf15f8377a}';

/// Provides methods for discovering and retrieving available sensors and a
/// method to request sensor manager events.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensormanager>.
///
/// {@category com}
class ISensorManager extends IUnknown {
  ISensorManager(super.ptr)
      : _vtable = ptr.value.cast<ISensorManagerVtbl>().ref;

  final ISensorManagerVtbl _vtable;

  /// Creates a new instance of `ISensorManager` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISensorManager` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISensorManager.from(IUnknown interface) =>
      ISensorManager(interface.toInterface(IID_ISensorManager));

  /// Retrieves a collection containing all sensors associated with the specified
  /// category.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorsbycategory>.
  int getSensorsByCategory(Pointer<GUID> sensorCategory,
          Pointer<VTablePointer> ppSensorsFound) =>
      _vtable.GetSensorsByCategory.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> sensorCategory,
                  Pointer<VTablePointer> ppSensorsFound)>()(
          ptr, sensorCategory, ppSensorsFound);

  /// Retrieves a collection containing all sensors associated with the specified
  /// type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorsbytype>.
  int getSensorsByType(
          Pointer<GUID> sensorType, Pointer<VTablePointer> ppSensorsFound) =>
      _vtable.GetSensorsByType.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> sensorType,
                  Pointer<VTablePointer> ppSensorsFound)>()(
          ptr, sensorType, ppSensorsFound);

  /// Retrieves a pointer to the specified sensor.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorbyid>.
  int getSensorByID(Pointer<GUID> sensorID, Pointer<VTablePointer> ppSensor) =>
      _vtable.GetSensorByID.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> sensorID,
              Pointer<VTablePointer> ppSensor)>()(ptr, sensorID, ppSensor);

  /// Specifies the interface through which to receive sensor manager event
  /// notifications.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-seteventsink>.
  int setEventSink(VTablePointer? pEvents) => _vtable.SetEventSink.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pEvents)>()(
      ptr, pEvents ?? nullptr);

  /// Opens a system dialog box to request user permission to access sensor data.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-requestpermissions>.
  int requestPermissions(int hParent, VTablePointer? pSensors, int fModal) =>
      _vtable.RequestPermissions.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int hParent,
              VTablePointer pSensors,
              int fModal)>()(ptr, hParent, pSensors ?? nullptr, fModal);
}

/// @nodoc
base class ISensorManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> sensorCategory,
              Pointer<VTablePointer> ppSensorsFound)>> GetSensorsByCategory;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> sensorType,
              Pointer<VTablePointer> ppSensorsFound)>> GetSensorsByType;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> sensorID,
              Pointer<VTablePointer> ppSensor)>> GetSensorByID;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pEvents)>>
      SetEventSink;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hParent,
              VTablePointer pSensors, BOOL fModal)>> RequestPermissions;
}

/// @nodoc
const SensorManager = '{77a1c827-fcd2-4689-8915-9d613cc5fa3e}';
