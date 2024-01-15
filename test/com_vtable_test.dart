// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// COM interfaces are structured with a chain of inheritance, and the function
// v-table relies on accurate calculation. This test script examines a variety
// of existing interfaces, ensuring that the generated v-tables align with a
// manual count.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('v-table sizes of COM interfaces', () {
    // no of methods * sizeOf<IntPtr>()
    expect(sizeOf<IAgileObjectVtbl>(), equals(3 * sizeOf<IntPtr>()));
    expect(sizeOf<IDispatchVtbl>(), equals(7 * sizeOf<IntPtr>()));
    expect(sizeOf<IFileDialogVtbl>(), equals(27 * sizeOf<IntPtr>()));
    expect(sizeOf<IFileOpenDialogVtbl>(), equals(29 * sizeOf<IntPtr>()));
    expect(sizeOf<IFileSaveDialogVtbl>(), equals(32 * sizeOf<IntPtr>()));
    expect(sizeOf<IInspectableVtbl>(), equals(6 * sizeOf<IntPtr>()));
    expect(sizeOf<IModalWindowVtbl>(), equals(4 * sizeOf<IntPtr>()));
    expect(sizeOf<ISpellChecker2Vtbl>(), equals(18 * sizeOf<IntPtr>()));
    expect(sizeOf<ISpVoiceVtbl>(), equals(38 * sizeOf<IntPtr>()));
    expect(sizeOf<IUnknownVtbl>(), equals(3 * sizeOf<IntPtr>()));
    expect(sizeOf<IUriVtbl>(), equals(28 * sizeOf<IntPtr>()));
    expect(sizeOf<IWinHttpRequestVtbl>(), equals(26 * sizeOf<IntPtr>()));
  });
}
