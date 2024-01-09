// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Tests that COM interface methods are correctly projected

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<Pointer<IntPtr>>();

  final uiautomationproxyfactoryentry = IUIAutomationProxyFactoryEntry(ptr);
  test(
      'Can instantiate IUIAutomationProxyFactoryEntry.setWinEventsForAutomationEvent',
      () {
    expect(uiautomationproxyfactoryentry.setWinEventsForAutomationEvent,
        isA<Function>());
  });
  test(
      'Can instantiate IUIAutomationProxyFactoryEntry.getWinEventsForAutomationEvent',
      () {
    expect(uiautomationproxyfactoryentry.getWinEventsForAutomationEvent,
        isA<Function>());
  });

  free(ptr);
}
