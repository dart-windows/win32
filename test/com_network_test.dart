// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('Network testing', () {
    setUpAll(initializeCOM);

    test('network is connected', () {
      final nlm = NetworkListManager.createInstance();
      expect(nlm.isConnected, equals(VARIANT_TRUE));
      nlm.release();
    });

    test('network is connected to the internet', () {
      final nlm = NetworkListManager.createInstance();
      expect(nlm.isConnectedToInternet, equals(VARIANT_TRUE));
      nlm.release();
    });

    test('can enumerate a network connection', () {
      final nlm = NetworkListManager.createInstance();
      final enumPtr = calloc<VTablePointer>();
      final netPtr = calloc<VTablePointer>();

      expect(
          nlm.getNetworks(NLM_ENUM_NETWORK.NLM_ENUM_NETWORK_CONNECTED, enumPtr),
          equals(S_OK));

      final enumerator = IEnumNetworks(enumPtr.value);
      free(enumPtr);
      expect(enumerator.next(1, netPtr, nullptr), equals(S_OK));

      final network = INetwork(netPtr.value);
      free(netPtr);

      // network should be connected, given the filter
      expect(network.isConnected,
          anyOf(equals(VARIANT_TRUE), equals(VARIANT_FALSE)));

      network.release();
      enumerator.release();
      nlm.release();
    });

    test('first network connection has a description', () {
      final nlm = NetworkListManager.createInstance();
      final enumPtr = calloc<VTablePointer>();
      final netPtr = calloc<VTablePointer>();
      final descPtr = calloc<Pointer<Utf16>>();

      expect(
          nlm.getNetworks(NLM_ENUM_NETWORK.NLM_ENUM_NETWORK_CONNECTED, enumPtr),
          equals(S_OK));

      final enumerator = IEnumNetworks(enumPtr.value);
      free(enumPtr);
      expect(enumerator.next(1, netPtr, nullptr), equals(S_OK));

      final network = INetwork(netPtr.value);
      free(netPtr);
      expect(network.getDescription(descPtr), equals(S_OK));

      network.release();
      enumerator.release();
      nlm.release();

      // This is a wireless network or Ethernet network name. Assume that it's
      // more than one character long, and test for that.
      expect(descPtr.value.length, greaterThan(1));

      SysFreeString(descPtr.value);
      free(descPtr);
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
