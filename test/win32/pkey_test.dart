// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('PKEY_DeviceClass_ClassName', () {
    final pkey = PKEY_DeviceClass_ClassName;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{259abffc-50a7-47ce-af08-68c9a7d73366}'));
    expect(pid, equals(3));
    free(pkey);
  });

  test('PKEY_DeviceDisplay_FriendlyName', () {
    final pkey = PKEY_DeviceDisplay_FriendlyName;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{656a3bb3-ecc0-43fd-8477-4ae0404a96cd}'));
    expect(pid, equals(12288));
    free(pkey);
  });

  test('PKEY_DeviceInterface_FriendlyName', () {
    final pkey = PKEY_DeviceInterface_FriendlyName;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{026e516e-b814-414b-83cd-856d6fef4822}'));
    expect(pid, equals(2));
    free(pkey);
  });

  test('PKEY_Device_InstanceId', () {
    final pkey = PKEY_Device_InstanceId;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{78c34fc8-104a-4aca-9ea4-524d52996e57}'));
    expect(pid, equals(256));
    free(pkey);
  });

  test('PKEY_Hardware_SerialNumber', () {
    final pkey = PKEY_Hardware_SerialNumber;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{5eaf3ef2-e0ca-4598-bf06-71ed1d9dd953}'));
    expect(pid, equals(8));
    free(pkey);
  });

  test('PKEY_PNPX_IpAddress', () {
    final pkey = PKEY_PNPX_IpAddress;
    final PROPERTYKEY(:fmtid, :pid) = pkey.ref;
    expect(fmtid.toString(), equals('{656a3bb3-ecc0-43fd-8477-4ae0404a96cd}'));
    expect(pid, equals(12297));
    free(pkey);
  });
}
