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

  final audioclient = IAudioClient(ptr);
  test('Can instantiate IAudioClient.initialize', () {
    expect(audioclient.initialize, isA<Function>());
  });
  test('Can instantiate IAudioClient.getBufferSize', () {
    expect(audioclient.getBufferSize, isA<Function>());
  });
  test('Can instantiate IAudioClient.getStreamLatency', () {
    expect(audioclient.getStreamLatency, isA<Function>());
  });
  test('Can instantiate IAudioClient.getCurrentPadding', () {
    expect(audioclient.getCurrentPadding, isA<Function>());
  });
  test('Can instantiate IAudioClient.isFormatSupported', () {
    expect(audioclient.isFormatSupported, isA<Function>());
  });
  test('Can instantiate IAudioClient.getMixFormat', () {
    expect(audioclient.getMixFormat, isA<Function>());
  });
  test('Can instantiate IAudioClient.getDevicePeriod', () {
    expect(audioclient.getDevicePeriod, isA<Function>());
  });
  test('Can instantiate IAudioClient.start', () {
    expect(audioclient.start, isA<Function>());
  });
  test('Can instantiate IAudioClient.stop', () {
    expect(audioclient.stop, isA<Function>());
  });
  test('Can instantiate IAudioClient.reset', () {
    expect(audioclient.reset, isA<Function>());
  });
  test('Can instantiate IAudioClient.setEventHandle', () {
    expect(audioclient.setEventHandle, isA<Function>());
  });
  test('Can instantiate IAudioClient.getService', () {
    expect(audioclient.getService, isA<Function>());
  });

  free(ptr);
}
