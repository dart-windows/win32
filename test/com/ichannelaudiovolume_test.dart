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

  final channelaudiovolume = IChannelAudioVolume(ptr);
  test('Can instantiate IChannelAudioVolume.getChannelCount', () {
    expect(channelaudiovolume.getChannelCount, isA<Function>());
  });
  test('Can instantiate IChannelAudioVolume.setChannelVolume', () {
    expect(channelaudiovolume.setChannelVolume, isA<Function>());
  });
  test('Can instantiate IChannelAudioVolume.getChannelVolume', () {
    expect(channelaudiovolume.getChannelVolume, isA<Function>());
  });
  test('Can instantiate IChannelAudioVolume.setAllVolumes', () {
    expect(channelaudiovolume.setAllVolumes, isA<Function>());
  });
  test('Can instantiate IChannelAudioVolume.getAllVolumes', () {
    expect(channelaudiovolume.getAllVolumes, isA<Function>());
  });

  free(ptr);
}
