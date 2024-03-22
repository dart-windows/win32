// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart implementation of the Win32 sample of configuring a comms resource.

// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/devio/configuring-a-communications-resource

// This sample assumes that you have a working COM serial port.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void printCommState(DCB dcb) => print('BaudRate = ${dcb.BaudRate}, '
    'ByteSize = ${dcb.ByteSize}, '
    'Parity = ${dcb.Parity}, '
    'StopBits = ${dcb.StopBits}');

void main() {
  final pcCommPort = PWSTR.fromString('COM1');
  final dcb = calloc<DCB>();

  try {
    final hCom = CreateFile(
        pcCommPort,
        GENERIC_ACCESS_RIGHTS.GENERIC_READ |
            GENERIC_ACCESS_RIGHTS.GENERIC_WRITE,
        0,
        null,
        FILE_CREATION_DISPOSITION.OPEN_EXISTING,
        0,
        NULL);

    if (hCom == INVALID_HANDLE_VALUE) {
      print('Invalid handle.');
      exit(1);
    }

    dcb.ref.DCBlength = sizeOf<DCB>();

    var fSuccess = GetCommState(hCom, dcb);
    if (fSuccess == 0) {
      print('GetCommState failed.');
      exit(2);
    }
    printCommState(dcb.ref);

    dcb.ref
      ..BaudRate = CBR_57600
      ..ByteSize = 8
      ..Parity = DCB_PARITY.NOPARITY
      ..StopBits = DCB_STOP_BITS.ONESTOPBIT;

    fSuccess = SetCommState(hCom, dcb);
    if (fSuccess == 0) {
      print('SetCommState failed.');
      exit(3);
    }

    printCommState(dcb.ref);
  } finally {
    pcCommPort.free();
    free(dcb);
  }
}
