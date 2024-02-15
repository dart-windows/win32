// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example of retrieving a sensor using the Sensor API.

// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/sensorsapi/retrieving-a-sensor

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final sensorManager =
      ISensorManager(createComObject(SensorManager, IID_ISensorManager));

  // Replace this with the sensor category you're looking for.
  final sampleDateTimeSensorCategory =
      GUIDFromString('{062a5c3b-44c1-4ad1-8efc-0f65b2e4ad48}');
  final pSensorsColl = calloc<VTablePointer>();
  final hr = sensorManager.getSensorsByCategory(
      sampleDateTimeSensorCategory, pSensorsColl);
  if (FAILED(hr)) throw WindowsException(hr);

  final coll = ISensorCollection(pSensorsColl.value);
  free(pSensorsColl);
  final pCount = calloc<ULONG>();
  if (coll.getCount(pCount) > 1) {
    print('Found items');
  }

  coll.release();
  sensorManager.release();

  free(pCount);
  free(pSensorsColl);
  free(sampleDateTimeSensorCategory);

  CoUninitialize();
}
