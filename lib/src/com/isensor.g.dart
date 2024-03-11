// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISensor = '{5fa08f80-2657-458e-af75-46f73fa6ac5c}';

/// Represents a sensor.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensor>.
///
/// {@category com}
class ISensor extends IUnknown {
  ISensor(super.ptr) : _vtable = ptr.value.cast<ISensorVtbl>().ref;

  final ISensorVtbl _vtable;

  /// Creates a new instance of `ISensor` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISensor` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISensor.from(IUnknown interface) =>
      ISensor(interface.toInterface(IID_ISensor));

  /// Retrieves the unique identifier of the sensor.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getid>.
  int getID(Pointer<GUID> pID) => _vtable.GetID.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pID)>()(ptr, pID);

  /// Retrieves the identifier of the sensor category.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getcategory>.
  int getCategory(Pointer<GUID> pSensorCategory) =>
      _vtable.GetCategory.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<GUID> pSensorCategory)>()(ptr, pSensorCategory);

  /// Retrieves the sensor type ID.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-gettype>.
  int getType(Pointer<GUID> pSensorType) => _vtable.GetType.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<GUID> pSensorType)>()(ptr, pSensorType);

  /// Retrieves the sensor name that is intended to be seen by the user.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getfriendlyname>.
  int getFriendlyName(Pointer<Pointer<Utf16>> pFriendlyName) =>
      _vtable.GetFriendlyName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pFriendlyName)>()(ptr, pFriendlyName);

  /// Retrieves a property value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getproperty>.
  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pProperty) =>
      _vtable.GetProperty.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>()(ptr, key, pProperty);

  /// Retrieves multiple sensor properties.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getproperties>.
  int getProperties(
          VTablePointer? pKeys, Pointer<VTablePointer> ppProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pKeys,
                  Pointer<VTablePointer> ppProperties)>()(
          ptr, pKeys ?? nullptr, ppProperties);

  /// Retrieves a set of PROPERTYKEYs that represent the data fields the sensor
  /// can provide.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getsupporteddatafields>.
  int getSupportedDataFields(Pointer<VTablePointer> ppDataFields) =>
      _vtable.GetSupportedDataFields.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppDataFields)>()(ptr, ppDataFields);

  /// Specifies sensor properties.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-setproperties>.
  int setProperties(
          VTablePointer? pProperties, Pointer<VTablePointer> ppResults) =>
      _vtable.SetProperties.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pProperties,
                  Pointer<VTablePointer> ppResults)>()(
          ptr, pProperties ?? nullptr, ppResults);

  /// Indicates whether the sensor supports the specified data field.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-supportsdatafield>.
  int supportsDataField(
          Pointer<PROPERTYKEY> key, Pointer<VARIANT_BOOL> pIsSupported) =>
      _vtable.SupportsDataField.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<VARIANT_BOOL> pIsSupported)>()(ptr, key, pIsSupported);

  /// Retrieves the current operational state of the sensor.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getstate>.
  int getState(Pointer<Int32> pState) => _vtable.GetState.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> pState)>()(ptr, pState);

  /// Retrieves the most recent sensor data report.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getdata>.
  int getData(Pointer<VTablePointer> ppDataReport) =>
      _vtable.GetData.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppDataReport)>()(ptr, ppDataReport);

  /// Indicates whether the sensor supports the specified event.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-supportsevent>.
  int supportsEvent(
          Pointer<GUID> eventGuid, Pointer<VARIANT_BOOL> pIsSupported) =>
      _vtable.SupportsEvent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> eventGuid,
                  Pointer<VARIANT_BOOL> pIsSupported)>()(
          ptr, eventGuid, pIsSupported);

  /// Retrieves the current event interest settings.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-geteventinterest>.
  int getEventInterest(
          Pointer<Pointer<GUID>> ppValues, Pointer<Uint32> pCount) =>
      _vtable.GetEventInterest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>()(ptr, ppValues, pCount);

  /// Specifies the list of sensor events to receive.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-seteventinterest>.
  int setEventInterest(Pointer<GUID>? pValues, int count) =>
      _vtable.SetEventInterest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> pValues,
              int count)>()(ptr, pValues ?? nullptr, count);

  /// Specifies the interface through which to receive sensor event notifications.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-seteventsink>.
  int setEventSink(VTablePointer? pEvents) => _vtable.SetEventSink.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pEvents)>()(
      ptr, pEvents ?? nullptr);
}

/// @nodoc
base class ISensorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pID)>> GetID;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<GUID> pSensorCategory)>>
      GetCategory;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> pSensorType)>> GetType;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pFriendlyName)>>
      GetFriendlyName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>> GetProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pKeys,
              Pointer<VTablePointer> ppProperties)>> GetProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppDataFields)>>
      GetSupportedDataFields;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pProperties,
              Pointer<VTablePointer> ppResults)>> SetProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<VARIANT_BOOL> pIsSupported)>> SupportsDataField;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pState)>>
      GetState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppDataReport)>>
      GetData;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> eventGuid,
              Pointer<VARIANT_BOOL> pIsSupported)>> SupportsEvent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>> GetEventInterest;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<GUID> pValues, Uint32 count)>>
      SetEventInterest;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pEvents)>>
      SetEventSink;
}

/// @nodoc
const Sensor = '{e97ced00-523a-4133-bf6f-d3a2dae7f6ba}';
