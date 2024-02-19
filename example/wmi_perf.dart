// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates getting perf information from the Windows Management
// Instrumentation (WMI) API using the IWbemObjectAccess interface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void initializeCom() {
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
  if (FAILED(hr)) throw WindowsException(hr);
}

int connectWMI(IWbemLocator pLoc, Pointer<VTablePointer> ppNamespace) {
  final strNetworkResource = BSTR.fromString(r'ROOT\CIMV2');
  // Connect to the root\cimv2 namespace with the current user and obtain
  // pointer pSvc to make IWbemServices calls.
  var hr = pLoc.connectServer(
    strNetworkResource, // WMI namespace
    nullptr, // User name
    nullptr, // User password
    nullptr, // Locale
    NULL, // Security flags
    nullptr, // Authority
    nullptr, // Context object
    ppNamespace, // IWbemServices proxy
  );
  if (FAILED(hr)) throw WindowsException(hr);

  hr = CoSetProxyBlanket(
    ppNamespace.value, // the proxy to set
    RPC_C_AUTHN_WINNT, // authentication service
    RPC_C_AUTHZ_NONE, // authorization service
    null, // Server principal name
    RPC_C_AUTHN_LEVEL_CALL, // authentication level
    RPC_C_IMP_LEVEL_IMPERSONATE, // impersonation level
    null, // client identity
    EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE, // proxy capabilities
  );
  if (FAILED(hr)) throw WindowsException(hr);
  strNetworkResource.free();
  return hr;
}

void main() {
  const processToMonitor = 'winlogon';

  initializeCom();

  using((Arena arena) {
    final locator =
        IWbemLocator(createComObject(WbemLocator, IID_IWbemLocator));
    final ppNamespace = calloc<VTablePointer>();

    connectWMI(locator, ppNamespace);

    final refresher =
        IWbemRefresher(createComObject(WbemRefresher, IID_IWbemRefresher));
    final pConfig = IWbemConfigureRefresher.from(refresher);
    final ppRefreshable = calloc<VTablePointer>();

    final pszQuery = PWSTR.fromString(
      'Win32_PerfRawData_PerfProc_Process.Name="$processToMonitor"',
      allocator: arena,
    );

    // Add the instance to be refreshed.
    var hr = pConfig.addObjectByPath(
        ppNamespace.value, pszQuery, 0, nullptr, ppRefreshable, nullptr);
    free(ppNamespace);
    if (FAILED(hr)) throw WindowsException(hr);

    final classObject = IWbemClassObject(ppRefreshable.value);
    free(ppRefreshable);
    final objectAccess = IWbemObjectAccess.from(classObject);
    classObject.release();

    final pszVirtualBytes = PWSTR.fromString('WorkingSet', allocator: arena);
    final cimType = arena<Int32>();
    final plHandle = arena<Int32>();

    hr = objectAccess.getPropertyHandle(pszVirtualBytes, cimType, plHandle);
    if (FAILED(hr)) throw WindowsException(hr);

    final dwWorkingSetBytes = arena<DWORD>();
    for (var x = 0; x < 10; x++) {
      refresher.refresh(WBEM_REFRESHER_FLAGS.WBEM_FLAG_REFRESH_AUTO_RECONNECT);
      hr = objectAccess.readDWORD(plHandle.value, dwWorkingSetBytes);
      if (FAILED(hr)) throw WindowsException(hr);
      print('Winlogon process is using ${dwWorkingSetBytes.value / 1000}'
          ' kilobytes of working set.');

      Sleep(1000); // Sleep for a second.
    }

    objectAccess.release();
    pConfig.release();
    refresher.release();
    locator.release();
  });

  CoUninitialize();
}
