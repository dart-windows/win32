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
const IID_ISensorCollection = '{23571e11-e545-4dd8-a337-b89bf44b10df}';

/// Represents a collection of sensors, such as all the sensors connected to a
/// computer.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensorcollection>.
///
/// {@category com}
class ISensorCollection extends IUnknown {
  ISensorCollection(super.ptr)
      : _vtable = ptr.value.cast<ISensorCollectionVtbl>().ref;

  final ISensorCollectionVtbl _vtable;

  /// Creates a new instance of `ISensorCollection` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISensorCollection` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISensorCollection.from(IUnknown interface) =>
      ISensorCollection(interface.toInterface(IID_ISensorCollection));

  /// Retrieves the sensor at the specified index in the collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-getat>.
  int getAt(int ulIndex, Pointer<VTablePointer> ppSensor) =>
      _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int ulIndex,
              Pointer<VTablePointer> ppSensor)>()(ptr, ulIndex, ppSensor);

  /// Retrieves the count of sensors in the collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-getcount>.
  int getCount(Pointer<Uint32> pCount) => _vtable.GetCount.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pCount)>()(ptr, pCount);

  /// Adds a sensor to the collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-add>.
  int add(VTablePointer? pSensor) => _vtable.Add.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pSensor)>()(
      ptr, pSensor ?? nullptr);

  /// Removes a sensor from the collection.
  ///
  /// The sensor is specified by a pointer to the ISensor interface to be removed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-remove>.
  int remove(VTablePointer? pSensor) => _vtable.Remove.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pSensor)>()(
      ptr, pSensor ?? nullptr);

  /// Removes a sensor from the collection.
  ///
  /// The sensor to be removed is specified by its ID.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-removebyid>.
  int removeByID(Pointer<GUID> sensorID) => _vtable.RemoveByID.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<GUID> sensorID)>()(ptr, sensorID);

  /// Empties the sensor collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-clear>.
  int clear() =>
      _vtable.Clear.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class ISensorCollectionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ulIndex,
              Pointer<VTablePointer> ppSensor)>> GetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pCount)>>
      GetCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pSensor)>> Add;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pSensor)>>
      Remove;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> sensorID)>>
      RemoveByID;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

/// @nodoc
const SensorCollection = '{79c43adb-a429-469f-aa39-2f2b74b75937}';
