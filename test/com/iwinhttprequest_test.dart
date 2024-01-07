// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<VTablePointer>()..value = calloc<Pointer<IntPtr>>();

  final winhttprequest = IWinHttpRequest(ptr);
  test('Can instantiate IWinHttpRequest.setProxy', () {
    expect(winhttprequest.setProxy, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.setCredentials', () {
    expect(winhttprequest.setCredentials, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.open', () {
    expect(winhttprequest.open, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.setRequestHeader', () {
    expect(winhttprequest.setRequestHeader, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.getResponseHeader', () {
    expect(winhttprequest.getResponseHeader, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.getAllResponseHeaders', () {
    expect(winhttprequest.getAllResponseHeaders, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.send', () {
    expect(winhttprequest.send, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.get_Option', () {
    expect(winhttprequest.get_Option, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.put_Option', () {
    expect(winhttprequest.put_Option, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.waitForResponse', () {
    expect(winhttprequest.waitForResponse, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.abort', () {
    expect(winhttprequest.abort, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.setTimeouts', () {
    expect(winhttprequest.setTimeouts, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.setClientCertificate', () {
    expect(winhttprequest.setClientCertificate, isA<Function>());
  });
  test('Can instantiate IWinHttpRequest.setAutoLogonPolicy', () {
    expect(winhttprequest.setAutoLogonPolicy, isA<Function>());
  });

  free(ptr.value);
  free(ptr);
}
