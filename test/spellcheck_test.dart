// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  // ISpellCheckerFactory is only available on Windows 8 or higher, per:
  // https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellcheckerfactory
  if (getWindowsBuildNumber() <= 9200) return;

  group('SpellChecker', () {
    setUpAll(initializeCOM);

    test('supportedLanguages', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();
      final pEnumString = spellCheckerFactory.supportedLanguages;
      expect(pEnumString.value.address, isNonZero);
      final enumString = IEnumString(pEnumString);

      final pElementsFetched = calloc<Uint32>();
      final pElements = calloc<Pointer<Utf16>>();

      final hr = enumString.next(1, pElements, pElementsFetched);
      expect(hr, equals(S_OK));
      expect(pElementsFetched.value, equals(1));
      final language = pElements.value.toDartString();

      expect(language, isNotEmpty);
      // e.g. en-US
      expect(language[2], equals('-'));

      free(pElements);
      free(pElementsFetched);

      enumString.release();
      spellCheckerFactory.release();
    });

    test('isSupported', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();

      final supportedPtr = calloc<Int32>();

      // Dart reports locale as (for example) en_US; Windows expects en-US
      final languageTagPtr =
          Platform.localeName.replaceAll('_', '-').toNativeUtf16();

      final hr = spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);
      expect(hr, equals(S_OK));
      expect(supportedPtr.value, equals(1));

      free(languageTagPtr);

      spellCheckerFactory.release();
    });

    test('check', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();
      final supportedPtr = calloc<Int32>();

      final languageTagPtr = 'en-US'.toNativeUtf16();
      var hr = spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);
      expect(hr, equals(S_OK));

      if (supportedPtr.value == 1) {
        final spellCheckerPtr = calloc<VTablePointer>();
        hr = spellCheckerFactory.createSpellChecker(
            languageTagPtr, spellCheckerPtr);
        expect(hr, equals(S_OK));
        expect(spellCheckerPtr.value.address, isNonZero);

        final spellChecker = ISpellChecker(spellCheckerPtr.value);
        free(spellCheckerPtr);

        final errorsPtr = calloc<VTablePointer>();
        final textPtr = 'haev'.toNativeUtf16();
        hr = spellChecker.check(textPtr, errorsPtr);
        expect(hr, equals(S_OK));
        expect(errorsPtr.value.address, isNonZero);

        final errors = IEnumSpellingError(errorsPtr.value);
        free(errorsPtr);
        final errorPtr = calloc<VTablePointer>();

        while (errors.next(errorPtr) == S_OK) {
          expect(errorPtr.value.address, isNonZero);
          final error = ISpellingError(errorPtr.value);
          expect(error.correctiveAction, equals(CORRECTIVE_ACTION.REPLACE));
          final replacement = error.replacement;
          expect(replacement.toDartString(), equals('have'));
          WindowsDeleteString(replacement.address);
          error.release();
        }

        free(errorPtr);
        free(textPtr);

        errors.release();
        spellChecker.release();
      }

      free(supportedPtr);
      free(languageTagPtr);

      spellCheckerFactory.release();
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
