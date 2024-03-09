// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

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

  factory ISensor.from(IUnknown interface) =>
      ISensor(interface.toInterface(IID_ISensor));

  int getID(Pointer<GUID> pID) => _vtable.GetID.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pID)>()(ptr, pID);

  int getCategory(Pointer<GUID> pSensorCategory) =>
      _vtable.GetCategory.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<GUID> pSensorCategory)>()(ptr, pSensorCategory);

  int getType(Pointer<GUID> pSensorType) => _vtable.GetType.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<GUID> pSensorType)>()(ptr, pSensorType);

  int getFriendlyName(Pointer<Pointer<Utf16>> pFriendlyName) =>
      _vtable.GetFriendlyName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pFriendlyName)>()(ptr, pFriendlyName);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pProperty) =>
      _vtable.GetProperty.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>()(ptr, key, pProperty);

  int getProperties(
          VTablePointer? pKeys, Pointer<VTablePointer> ppProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pKeys,
                  Pointer<VTablePointer> ppProperties)>()(
          ptr, pKeys ?? nullptr, ppProperties);

  int getSupportedDataFields(Pointer<VTablePointer> ppDataFields) =>
      _vtable.GetSupportedDataFields.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppDataFields)>()(ptr, ppDataFields);

  int setProperties(
          VTablePointer? pProperties, Pointer<VTablePointer> ppResults) =>
      _vtable.SetProperties.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pProperties,
                  Pointer<VTablePointer> ppResults)>()(
          ptr, pProperties ?? nullptr, ppResults);

  int supportsDataField(
          Pointer<PROPERTYKEY> key, Pointer<VARIANT_BOOL> pIsSupported) =>
      _vtable.SupportsDataField.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> key,
              Pointer<VARIANT_BOOL> pIsSupported)>()(ptr, key, pIsSupported);

  int getState(Pointer<Int32> pState) => _vtable.GetState.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> pState)>()(ptr, pState);

  int getData(Pointer<VTablePointer> ppDataReport) =>
      _vtable.GetData.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppDataReport)>()(ptr, ppDataReport);

  int supportsEvent(
          Pointer<GUID> eventGuid, Pointer<VARIANT_BOOL> pIsSupported) =>
      _vtable.SupportsEvent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> eventGuid,
                  Pointer<VARIANT_BOOL> pIsSupported)>()(
          ptr, eventGuid, pIsSupported);

  int getEventInterest(
          Pointer<Pointer<GUID>> ppValues, Pointer<Uint32> pCount) =>
      _vtable.GetEventInterest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>()(ptr, ppValues, pCount);

  int setEventInterest(Pointer<GUID>? pValues, int count) =>
      _vtable.SetEventInterest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> pValues,
              int count)>()(ptr, pValues ?? nullptr, count);

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