// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates how isolates can get enabled for COM threading, even if the
// isolate is part of a thread which wasn't originally initialized for COM.

import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class ThreadContext {
  const ThreadContext(this.id, this.type, this.qualifier);

  final int id;
  final APTTYPE type;
  final APTTYPEQUALIFIER qualifier;

  String get typeName => switch (type) {
        APTTYPE.APTTYPE_CURRENT => 'current',
        APTTYPE.APTTYPE_STA => 'singleThreaded',
        APTTYPE.APTTYPE_MTA => 'multiThreaded',
        APTTYPE.APTTYPE_NA => 'neutral',
        APTTYPE.APTTYPE_MAINSTA => 'mainSingleThreaded',
        _ => throw 'Unrecognized APTTYPE value: $type'
      };

  String get qualifierName => switch (qualifier) {
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_NONE => 'none',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_IMPLICIT_MTA => 'implicitMTA',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_NA_ON_MTA => 'neutralOnMTA',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_NA_ON_STA => 'neutralOnSTA',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA =>
          'neutralOnImplicitMTA',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_NA_ON_MAINSTA => 'neutralOnMainSTA',
        APTTYPEQUALIFIER.APTTYPEQUALIFIER_APPLICATION_STA => 'applicationSTA',
        _ => throw 'Unrecognized APTTYPEQUALIFIER value: $qualifier'
      };

  @override
  String toString() => '#$id: [$typeName, $qualifierName]';
}

void initializeMTA() {
  final pCookie = calloc<CO_MTA_USAGE_COOKIE>();
  try {
    // Ensure a multi-threaded apartment is created.
    final hr = CoIncrementMTAUsage(pCookie);
    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pCookie);
  }
}

ThreadContext getThreadContext() {
  return using((arena) {
    final threadID = GetCurrentThreadId();

    // Get the current thread's COM model.
    final pAptType = arena<Int32>();
    final pAptQualifier = arena<Int32>();
    var hr = CoGetApartmentType(pAptType, pAptQualifier);
    if (hr == CO_E_NOTINITIALIZED) {
      // This thread hasn't been initialized for COM. Initialize and try again.
      initializeMTA();
      hr = CoGetApartmentType(pAptType, pAptQualifier);
    }
    // Some other error occurred.
    if (hr != S_OK) throw WindowsException(hr);

    return ThreadContext(
      threadID,
      APTTYPE(pAptType.value),
      APTTYPEQUALIFIER(pAptQualifier.value),
    );
  });
}

Future<ThreadContext> doSomething() {
  // We are now in a spawned isolate. Get some information about the COM context
  // that the current _thread_ has (which may or may not be the original thread
  // where we ran CoInitializeEx(), depending on whether Dart is reusing the
  // same thread or not).
  final context = getThreadContext();

  // Sleep for a period of time to increase the chances that Dart creates
  // another thread.
  sleep(Duration(milliseconds: math.Random().nextInt(10)));

  // Pass the context information back to the spawning isolate.
  return Future.value(context);
}

Future<void> createIsolates() async {
  // Spawn 100 isolates. Isolates are an abstraction over threads. Some isolates
  // may share a thread, but Dart may spin up additional threads. This is an
  // implementation detail, but it matters for the purposes of this example
  // because only the initial thread has been initialized for COM.
  for (var i = 0; i < 100; i++) {
    final context = await Isolate.run(doSomething);
    print(context);
  }
}

/// Spins up a 100 isolates and interrogates them to find out their context.
///
/// Example output, showing multiple isolates executing on three separate
/// Windows threads:
/// ```
/// #1100: [mainSingleThreaded, none]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #15296: [multiThreaded, implicitMTA]
/// #15296: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #1100: [mainSingleThreaded, none]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #1100: [mainSingleThreaded, none]
/// ...
/// ```
void main() async {
  // The main thread is initialized for the COM apartment threading model.
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  // Should be `mainSingleThreaded`.
  print(getThreadContext());

  // Now spin up a number of threads.
  await createIsolates();

  CoUninitialize();
}
