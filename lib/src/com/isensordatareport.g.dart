// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISensorDataReport = '{0ab9df9b-c4b5-4796-8898-0470706a2e1d}';

/// Represents a sensor data report.
///
/// Sensor data reports contain data field values generated by a sensor and a
/// time stamp that indicates when the data report was created.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensordatareport>.
///
/// {@category com}
class ISensorDataReport extends IUnknown {
  ISensorDataReport(super.ptr)
      : _vtable = ptr.value.cast<ISensorDataReportVtbl>().ref;

  final ISensorDataReportVtbl _vtable;

  factory ISensorDataReport.from(IUnknown interface) =>
      ISensorDataReport(interface.toInterface(IID_ISensorDataReport));

  int getTimestamp(Pointer<SYSTEMTIME> pTimeStamp) =>
      _vtable.GetTimestamp.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<SYSTEMTIME> pTimeStamp)>()(ptr, pTimeStamp);

  int getSensorValue(Pointer<PROPERTYKEY> pKey, Pointer<PROPVARIANT> pValue) =>
      _vtable.GetSensorValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> pKey,
              Pointer<PROPVARIANT> pValue)>()(ptr, pKey, pValue);

  int getSensorValues(VTablePointer? pKeys, Pointer<VTablePointer> ppValues) =>
      _vtable.GetSensorValues.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pKeys,
                  Pointer<VTablePointer> ppValues)>()(
          ptr, pKeys ?? nullptr, ppValues);
}

/// @nodoc
base class ISensorDataReportVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<SYSTEMTIME> pTimeStamp)>>
      GetTimestamp;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PROPERTYKEY> pKey,
              Pointer<PROPVARIANT> pValue)>> GetSensorValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pKeys,
              Pointer<VTablePointer> ppValues)>> GetSensorValues;
}

/// @nodoc
const SensorDataReport = '{4ea9d6ef-694b-4218-8816-ccda8da74bba}';