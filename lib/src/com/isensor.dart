// isensor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../propertykey.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensor = '{5fa08f80-2657-458e-af75-46f73fa6ac5c}';

/// Represents a sensor.
///
/// {@category com}
class ISensor extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ISensor(super.ptr) : _vtable = ptr.ref.vtable.cast<ISensorVtbl>().ref;

  final ISensorVtbl _vtable;

  factory ISensor.from(IUnknown interface) =>
      ISensor(interface.toInterface(IID_ISensor));

  int getID(Pointer<GUID> pID) =>
      _vtable.GetID.asFunction<int Function(Pointer, Pointer<GUID> pID)>()(
          ptr.ref.lpVtbl, pID);

  int getCategory(Pointer<GUID> pSensorCategory) => _vtable.GetCategory
          .asFunction<int Function(Pointer, Pointer<GUID> pSensorCategory)>()(
      ptr.ref.lpVtbl, pSensorCategory);

  int getType(Pointer<GUID> pSensorType) => _vtable.GetType.asFunction<
      int Function(
          Pointer, Pointer<GUID> pSensorType)>()(ptr.ref.lpVtbl, pSensorType);

  int getFriendlyName(Pointer<Pointer<Utf16>> pFriendlyName) =>
      _vtable.GetFriendlyName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pFriendlyName)>()(
          ptr.ref.lpVtbl, pFriendlyName);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pProperty) =>
      _vtable.GetProperty.asFunction<
              int Function(Pointer, Pointer<PROPERTYKEY> key,
                  Pointer<PROPVARIANT> pProperty)>()(
          ptr.ref.lpVtbl, key, pProperty);

  int getProperties(
          Pointer<COMObject> pKeys, Pointer<Pointer<COMObject>> ppProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(Pointer, Pointer<COMObject> pKeys,
                  Pointer<Pointer<COMObject>> ppProperties)>()(
          ptr.ref.lpVtbl, pKeys, ppProperties);

  int getSupportedDataFields(Pointer<Pointer<COMObject>> ppDataFields) =>
      _vtable.GetSupportedDataFields.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppDataFields)>()(
          ptr.ref.lpVtbl, ppDataFields);

  int setProperties(Pointer<COMObject> pProperties,
          Pointer<Pointer<COMObject>> ppResults) =>
      _vtable.SetProperties.asFunction<
              int Function(Pointer, Pointer<COMObject> pProperties,
                  Pointer<Pointer<COMObject>> ppResults)>()(
          ptr.ref.lpVtbl, pProperties, ppResults);

  int supportsDataField(
          Pointer<PROPERTYKEY> key, Pointer<Int16> pIsSupported) =>
      _vtable.SupportsDataField.asFunction<
              int Function(Pointer, Pointer<PROPERTYKEY> key,
                  Pointer<Int16> pIsSupported)>()(
          ptr.ref.lpVtbl, key, pIsSupported);

  int getState(Pointer<Int32> pState) => _vtable.GetState.asFunction<
      int Function(Pointer, Pointer<Int32> pState)>()(ptr.ref.lpVtbl, pState);

  int getData(Pointer<Pointer<COMObject>> ppDataReport) =>
      _vtable.GetData.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppDataReport)>()(
          ptr.ref.lpVtbl, ppDataReport);

  int supportsEvent(Pointer<GUID> eventGuid, Pointer<Int16> pIsSupported) =>
      _vtable.SupportsEvent.asFunction<
              int Function(Pointer, Pointer<GUID> eventGuid,
                  Pointer<Int16> pIsSupported)>()(
          ptr.ref.lpVtbl, eventGuid, pIsSupported);

  int getEventInterest(
          Pointer<Pointer<GUID>> ppValues, Pointer<Uint32> pCount) =>
      _vtable.GetEventInterest.asFunction<
          int Function(Pointer, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>()(ptr.ref.lpVtbl, ppValues, pCount);

  int setEventInterest(Pointer<GUID> pValues, int count) =>
      _vtable.SetEventInterest.asFunction<
              int Function(Pointer, Pointer<GUID> pValues, int count)>()(
          ptr.ref.lpVtbl, pValues, count);

  int setEventSink(Pointer<COMObject> pEvents) =>
      _vtable.SetEventSink.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pEvents)>()(ptr.ref.lpVtbl, pEvents);
}

/// @nodoc
base class ISensorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pID)>>
      GetID;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> pSensorCategory)>> GetCategory;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pSensorType)>>
      GetType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pFriendlyName)>>
      GetFriendlyName;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty)>> GetProperty;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pKeys,
              Pointer<Pointer<COMObject>> ppProperties)>> GetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> ppDataFields)>>
      GetSupportedDataFields;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pProperties,
              Pointer<Pointer<COMObject>> ppResults)>> SetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<Int16> pIsSupported)>> SupportsDataField;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> pState)>> GetState;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Pointer<COMObject>> ppDataReport)>> GetData;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> eventGuid,
              Pointer<Int16> pIsSupported)>> SupportsEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount)>> GetEventInterest;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<GUID> pValues, Uint32 count)>>
      SetEventInterest;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pEvents)>>
      SetEventSink;
}

/// @nodoc
const CLSID_Sensor = '{e97ced00-523a-4133-bf6f-d3a2dae7f6ba}';

/// {@category com}
class Sensor extends ISensor {
  Sensor(super.ptr);

  factory Sensor.createInstance() =>
      Sensor(COMObject.createFromID(CLSID_Sensor, IID_ISensor));
}
