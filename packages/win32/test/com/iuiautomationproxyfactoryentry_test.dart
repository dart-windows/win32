// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

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