// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates getting information from the Windows Management Instrumentation
// (WMI) API using the WMI Query Language (WQL).

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM
  var hr = CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);

  // Initialize security model
  hr = CoInitializeSecurity(
    nullptr,
    -1, // COM negotiates service
    null, // Authentication services
    RPC_C_AUTHN_LEVEL_DEFAULT, // authentication
    RPC_C_IMP_LEVEL_IMPERSONATE, // Impersonation
    null, // Authentication info
    EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE, // Additional capabilities
  );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    print(exception.toString());

    CoUninitialize();
    throw exception; // Program has failed.
  }

  // Obtain the initial locator to Windows Management
  // on a particular host computer.
  final pLoc = calloc<VTablePointer>();

  final clsid = GUIDFromString(WbemLocator);
  final iid = GUIDFromString(IID_IWbemLocator);

  hr = CoCreateInstance(clsid, null, CLSCTX_INPROC_SERVER, iid, pLoc);

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    print(exception.toString());

    CoUninitialize();
    throw exception;
  }

  final locator = IWbemLocator(pLoc.value);
  free(pLoc);

  final proxy = calloc<VTablePointer>();

  // Connect to the root\cimv2 namespace with the
  // current user and obtain pointer pSvc
  // to make IWbemServices calls.

  final strNetworkResource = BSTR.fromString(r'ROOT\CIMV2');
  hr = locator.connectServer(
    strNetworkResource, // WMI namespace
    nullptr, // User name
    nullptr, // User password
    nullptr, // Locale
    NULL, // Security flags
    nullptr, // Authority
    nullptr, // Context object
    proxy, // IWbemServices proxy
  );
  strNetworkResource.free();

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    print(exception.toString());

    CoUninitialize();
    throw exception; // Program has failed.
  }

  print('Connected to ROOT\\CIMV2 WMI namespace');

  final pSvc = IWbemServices(proxy.value);
  free(proxy);

  // Set the IWbemServices proxy so that impersonation
  // of the user (client) occurs.
  hr = CoSetProxyBlanket(
    proxy.value, // the proxy to set
    RPC_C_AUTHN_WINNT, // authentication service
    RPC_C_AUTHZ_NONE, // authorization service
    null, // Server principal name
    RPC_C_AUTHN_LEVEL_CALL, // authentication level
    RPC_C_IMP_LEVEL_IMPERSONATE, // impersonation level
    null, // client identity
    EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE, // proxy capabilities
  );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    print(exception.toString());
    CoUninitialize();
    throw exception; // Program has failed.
  }

  // Use the IWbemServices pointer to make requests of WMI.

  final pEnumerator = calloc<VTablePointer>();
  IEnumWbemClassObject enumerator;

  // For example, query for all the running processes
  final strQueryLanguage = BSTR.fromString('WQL');
  final strQuery = BSTR.fromString('SELECT * FROM Win32_Process');
  hr = pSvc.execQuery(
    strQueryLanguage,
    strQuery,
    WBEM_GENERIC_FLAG_TYPE.WBEM_FLAG_FORWARD_ONLY |
        WBEM_GENERIC_FLAG_TYPE.WBEM_FLAG_RETURN_IMMEDIATELY,
    nullptr,
    pEnumerator,
  );
  strQueryLanguage.free();
  strQuery.free();

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    print(exception.toString());

    CoUninitialize();

    throw exception;
  } else {
    enumerator = IEnumWbemClassObject(pEnumerator.value);

    final uReturn = calloc<ULONG>();

    var idx = 0;
    while (enumerator.ptr.address > 0) {
      final pClsObj = calloc<VTablePointer>();

      hr =
          enumerator.next(WBEM_TIMEOUT_TYPE.WBEM_INFINITE, 1, pClsObj, uReturn);

      // Break out of the while loop if we've run out of processes to inspect
      if (uReturn.value == 0) break;

      idx++;

      final clsObj = IWbemClassObject(pClsObj.value);
      free(pClsObj);

      final vtProp = calloc<VARIANT>();
      hr = clsObj.get(PWSTR.fromString('Name'), 0, vtProp, null, nullptr);
      if (SUCCEEDED(hr)) {
        print('Process: ${vtProp.ref.bstrVal.toDartString()}');
      }
      // Free BSTRs in the returned variants
      VariantClear(vtProp);
      free(vtProp);
      clsObj.release();
    }
    print('$idx processes found.');
    enumerator.release();
  }

  free(pEnumerator);
  pSvc.release();
  locator.release();
  CoUninitialize();
}
