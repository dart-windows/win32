// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Get information about the network connections on the current device.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM
  var hr = CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);

  final netManager = INetworkListManager(
      createComObject(NetworkListManager, IID_INetworkListManager));
  final nlmConnectivity = calloc<Int32>();
  final descPtr = calloc<BSTR>();
  final elements = calloc<ULONG>();

  try {
    hr = netManager.getConnectivity(nlmConnectivity);
    if (FAILED(hr)) throw WindowsException(hr);

    final connectivity = nlmConnectivity.value;
    var isInternetConnected = false;

    // These two options are not mutually exclusive
    if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET ==
        NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET) {
      print('Connected to the Internet via IPv4.');
      isInternetConnected = true;
    }

    if (connectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET ==
        NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV6_INTERNET) {
      print('Connected to the Internet via IPv6.');
      isInternetConnected = true;
    }

    if (!isInternetConnected) {
      print('Not connected to the Internet.');
    }

    final enumPtr = calloc<VTablePointer>();
    hr = netManager.getNetworks(NLM_ENUM_NETWORK.NLM_ENUM_NETWORK_ALL, enumPtr);
    if (FAILED(hr)) throw WindowsException(hr);

    print('\nNetworks (connected and disconnected) on this machine:');
    final enumerator = IEnumNetworkConnections(enumPtr.value);
    free(enumPtr);
    var netPtr = calloc<VTablePointer>();
    hr = enumerator.next(1, netPtr, elements);

    while (elements.value == 1) {
      final network = INetwork(netPtr.value);
      free(netPtr);
      hr = network.getDescription(descPtr);
      if (SUCCEEDED(hr)) {
        final networkName = descPtr.value.toDartString();
        final isNetworkConnected = network.isConnected == VARIANT_TRUE;
        print(
            '$networkName: ${isNetworkConnected ? 'connected' : 'disconnected'}');
      }

      network.release();
      netPtr = calloc<VTablePointer>();
      hr = enumerator.next(1, netPtr, elements);
    }

    enumerator.release();
    netManager.release();
  } finally {
    free(elements);
    free(descPtr);
    free(nlmConnectivity);
  }

  CoUninitialize();
  print('All done');
}
