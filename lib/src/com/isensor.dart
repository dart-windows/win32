// isensor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../propertykey.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensor = '{5fa08f80-2657-458e-af75-46f73fa6ac5c}';

/// Represents a sensor.
///
/// {@category com}
class ISensor extends IUnknown {
  ISensor(super.ptr) : _vtable = ptr.value.value.cast<ISensorVtbl>().ref;

  final ISensorVtbl _vtable;

  factory ISensor.from(IUnknown interface) =>
      ISensor(interface.toInterface(IID_ISensor));

  int getID(Pointer<GUID> pID) => _vtable.GetID.asFunction<
      int Function(VTablePointer, Pointer<GUID> pID)>()(ptr.value, pID);

  int getCategory(Pointer<GUID> pSensorCategory) =>
      _vtable.GetCategory.asFunction<
              int Function(VTablePointer, Pointer<GUID> pSensorCategory)>()(
          ptr.value, pSensorCategory);

  int getType(Pointer<GUID> pSensorType) => _vtable.GetType.asFunction<
      int Function(
          VTablePointer, Pointer<GUID> pSensorType)>()(ptr.value, pSensorType);

  int getFriendlyName(Pointer<Pointer<Utf16>> pFriendlyName) =>
      _vtable.GetFriendlyName.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pFriendlyName)>()(
          ptr.value, pFriendlyName);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pProperty) =>
      _vtable.GetProperty.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>()(ptr.value, key, pProperty);

  int getProperties(Pointer<VTablePointer> pKeys,
          Pointer<Pointer<VTablePointer>> ppProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pKeys,
                  Pointer<Pointer<VTablePointer>> ppProperties)>()(
          ptr.value, pKeys, ppProperties);

  int getSupportedDataFields(Pointer<Pointer<VTablePointer>> ppDataFields) =>
      _vtable.GetSupportedDataFields.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppDataFields)>()(
          ptr.value, ppDataFields);

  int setProperties(Pointer<VTablePointer> pProperties,
          Pointer<Pointer<VTablePointer>> ppResults) =>
      _vtable.SetProperties.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pProperties,
                  Pointer<Pointer<VTablePointer>> ppResults)>()(
          ptr.value, pProperties, ppResults);

  int supportsDataField(
          Pointer<PROPERTYKEY> key, Pointer<Int16> pIsSupported) =>
      _vtable.SupportsDataField.asFunction<
          int Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Int16> pIsSupported)>()(ptr.value, key, pIsSupported);

  int getState(Pointer<Int32> pState) => _vtable.GetState.asFunction<
      int Function(VTablePointer, Pointer<Int32> pState)>()(ptr.value, pState);

  int getData(Pointer<Pointer<VTablePointer>> ppDataReport) =>
      _vtable.GetData.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppDataReport)>()(
          ptr.value, ppDataReport);

  int supportsEvent(Pointer<GUID> eventGuid, Pointer<Int16> pIsSupported) =>
      _vtable.SupportsEvent.asFunction<
              int Function(VTablePointer, Pointer<GUID> eventGuid,
                  Pointer<Int16> pIsSupported)>()(
          ptr.value, eventGuid, pIsSupported);

  int getEventInterest(
          Pointer<Pointer<GUID>> ppValues, Pointer<Uint32> pCount) =>
      _vtable.GetEventInterest.asFunction<
          int Function(VTablePointer, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>()(ptr.value, ppValues, pCount);

  int setEventInterest(Pointer<GUID> pValues, int count) =>
      _vtable.SetEventInterest.asFunction<
              int Function(VTablePointer, Pointer<GUID> pValues, int count)>()(
          ptr.value, pValues, count);

  int setEventSink(Pointer<VTablePointer> pEvents) =>
      _vtable.SetEventSink.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pEvents)>()(
          ptr.value, pEvents);
}

/// @nodoc
base class ISensorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> pID)>> GetID;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<GUID> pSensorCategory)>>
      GetCategory;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> pSensorType)>> GetType;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pFriendlyName)>>
      GetFriendlyName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>> GetProperty;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pKeys,
              Pointer<Pointer<VTablePointer>> ppProperties)>> GetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppDataFields)>>
      GetSupportedDataFields;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pProperties,
              Pointer<Pointer<VTablePointer>> ppResults)>> SetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<PROPERTYKEY> key,
              Pointer<Int16> pIsSupported)>> SupportsDataField;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> pState)>>
      GetState;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppDataReport)>>
      GetData;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> eventGuid,
              Pointer<Int16> pIsSupported)>> SupportsEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>> GetEventInterest;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<GUID> pValues, Uint32 count)>>
      SetEventInterest;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pEvents)>>
      SetEventSink;
}

/// @nodoc
const CLSID_Sensor = '{e97ced00-523a-4133-bf6f-d3a2dae7f6ba}';

/// {@category com}
class Sensor extends ISensor {
  Sensor(super.ptr);

  factory Sensor.createInstance() =>
      Sensor(createCOMObject(CLSID_Sensor, IID_ISensor));
}
