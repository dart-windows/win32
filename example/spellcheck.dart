// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example of using Windows built-in spellchecker.
//
// Try it with something like this:
//   dart example\spellcheck.dart "The rain inx Spain is very rar"
//
// You should see that the words 'inx' and 'rar' generate errors (and suggested
// corrections).

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main(List<String> args) {
  if (args.length != 1) {
    print('Provide text in the argument');
    return;
  }

  final text = args.first;

  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final spellCheckerFactory = ISpellCheckerFactory(
      createComObject(SpellCheckerFactory, IID_ISpellCheckerFactory));

  final supportedPtr = calloc<BOOL>();
  final languageTagPtr = PWSTR.fromString(Platform.localeName);

  spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);

  if (supportedPtr.value == TRUE) {
    final spellCheckerPtr = calloc<VTablePointer>();
    spellCheckerFactory.createSpellChecker(languageTagPtr, spellCheckerPtr);

    final spellChecker = ISpellChecker(spellCheckerPtr.value);
    free(spellCheckerPtr);

    // While ISpellChecker works fine for the needs of this example,
    // ISpellChecker2 extends it with the ability to remove words from the
    // custom dictionary. We cast to that purely as an example.
    final spellChecker2 = ISpellChecker2.from(spellChecker);
    spellChecker.release();

    final errorsPtr = calloc<VTablePointer>();
    final textPtr = PWSTR.fromString(text);
    spellChecker2.check(textPtr, errorsPtr);

    final errors = IEnumSpellingError(errorsPtr.value);
    free(errorsPtr);
    final errorPtr = calloc<VTablePointer>();

    print('Input: "$text"');
    print('Errors:');

    var errorCount = 0;

    while (errors.next(errorPtr) == S_OK) {
      errorCount++;

      final error = ISpellingError(errorPtr.value);
      final word = text.substring(
        error.startIndex,
        error.startIndex + error.length,
      );

      stdout.write('$errorCount. $word');

      switch (error.correctiveAction) {
        case CORRECTIVE_ACTION.DELETE:
          print(' - delete');

        case CORRECTIVE_ACTION.NONE:
          print('\n');

        case CORRECTIVE_ACTION.REPLACE:
          final replacement = error.replacement;
          print(' - replace with "${replacement.toDartString()}"');
          free(replacement);

        case CORRECTIVE_ACTION.GET_SUGGESTIONS:
          print(' - suggestions:');

          final wordPtr = PWSTR.fromString(word);
          final suggestionsPtr = calloc<VTablePointer>();
          spellChecker2.suggest(wordPtr, suggestionsPtr);
          wordPtr.free();
          final suggestions = IEnumString(suggestionsPtr.value);
          free(suggestionsPtr);

          final suggestionPtr = calloc<Pointer<Utf16>>();
          final suggestionResultPtr = calloc<ULONG>();

          while (
              suggestions.next(1, suggestionPtr, suggestionResultPtr) == S_OK) {
            print('\t${suggestionPtr.value.toDartString()}');
            free(suggestionPtr.value);
          }

          free(suggestionResultPtr);
          free(suggestionPtr);
      }

      error.release();
    }

    free(errorPtr);
    errors.release();
    textPtr.free();
    spellChecker2.release();
  }

  languageTagPtr.free();
  free(supportedPtr);
  spellCheckerFactory.release();
  CoUninitialize();
  print('All done');
}
