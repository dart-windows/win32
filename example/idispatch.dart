// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates the use of IDispatch for calling COM automation objects from
// Dart.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// A helper object to work with [IDispatch] objects.
class Dispatcher {
  Dispatcher._(this._dispatch) : _IID_NULL = calloc<GUID>();

  final IDispatch _dispatch;
  final Pointer<GUID> _IID_NULL;

  factory Dispatcher.fromProgID(String progID) {
    return using((arena) {
      final lpszProgID = progID.toNativeUtf16(allocator: arena);
      final lpclsid = arena<GUID>();
      final riid = GUIDFromString(IID_IDispatch, allocator: arena);
      final ppv = arena<VTablePointer>();

      var hr = CLSIDFromProgID(lpszProgID, lpclsid);
      if (FAILED(hr)) throw WindowsException(hr);

      hr = CoCreateInstance(lpclsid, null, CLSCTX_INPROC_SERVER, riid, ppv);
      if (FAILED(hr)) throw WindowsException(hr);

      return Dispatcher._(IDispatch(ppv.value));
    });
  }

  int _getDispId(String member) {
    return using((arena) {
      final ptrMember = member.toNativeUtf16(allocator: arena);
      final rgszNames = arena<Pointer<Utf16>>()..value = ptrMember;
      final rgDispId = arena<Int32>();
      final hr = _dispatch.getIDsOfNames(
        _IID_NULL,
        rgszNames,
        1,
        LOCALE_USER_DEFAULT,
        rgDispId,
      );
      if (FAILED(hr)) throw WindowsException(hr);
      return rgDispId.value;
    });
  }

  void invoke(String method, [Pointer<DISPPARAMS>? params]) {
    final args = params ?? calloc<DISPPARAMS>();
    final dispid = _getDispId(method);

    final hr = _dispatch.invoke(
      dispid,
      _IID_NULL,
      LOCALE_SYSTEM_DEFAULT,
      DISPATCH_METHOD,
      args,
      null,
      null,
      null,
    );
    if (params == null) free(args);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void dispose() {
    free(_IID_NULL);
    _dispatch.release();
  }
}

void main() {
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final dispatcher = Dispatcher.fromProgID('Shell.Application');

  // Example of calling an automation method with no parameters.
  print('Minimizing all windows via Shell.Application Automation object');
  dispatcher.invoke('MinimizeAll');

  // Example of calling an automation method with a parameter.
  print(r'Launching the Windows Explorer, starting at the C:\ directory');
  final folderLocation = BSTR.fromString(r'C:\');
  final exploreParam = calloc<VARIANT>();
  VariantInit(exploreParam);
  exploreParam.ref
    ..vt = VARENUM.VT_BSTR
    ..bstrVal = folderLocation.ptr;
  final exploreParams = calloc<DISPPARAMS>();
  exploreParams.ref
    ..cArgs = 1
    ..rgvarg = exploreParam;
  dispatcher.invoke('Explore', exploreParams);
  free(exploreParams);
  free(exploreParam);
  folderLocation.free();

  print('Cleaning up.');
  dispatcher.dispose();
  CoUninitialize();
}
