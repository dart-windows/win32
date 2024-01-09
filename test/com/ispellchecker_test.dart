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

  final spellchecker = ISpellChecker(ptr);
  test('Can instantiate ISpellChecker.check', () {
    expect(spellchecker.check, isA<Function>());
  });
  test('Can instantiate ISpellChecker.suggest', () {
    expect(spellchecker.suggest, isA<Function>());
  });
  test('Can instantiate ISpellChecker.add', () {
    expect(spellchecker.add, isA<Function>());
  });
  test('Can instantiate ISpellChecker.ignore', () {
    expect(spellchecker.ignore, isA<Function>());
  });
  test('Can instantiate ISpellChecker.autoCorrect', () {
    expect(spellchecker.autoCorrect, isA<Function>());
  });
  test('Can instantiate ISpellChecker.getOptionValue', () {
    expect(spellchecker.getOptionValue, isA<Function>());
  });
  test('Can instantiate ISpellChecker.add_SpellCheckerChanged', () {
    expect(spellchecker.add_SpellCheckerChanged, isA<Function>());
  });
  test('Can instantiate ISpellChecker.remove_SpellCheckerChanged', () {
    expect(spellchecker.remove_SpellCheckerChanged, isA<Function>());
  });
  test('Can instantiate ISpellChecker.getOptionDescription', () {
    expect(spellchecker.getOptionDescription, isA<Function>());
  });
  test('Can instantiate ISpellChecker.comprehensiveCheck', () {
    expect(spellchecker.comprehensiveCheck, isA<Function>());
  });

  free(ptr);
}
