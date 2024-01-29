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

  final spellCheckerFactory = SpellCheckerFactory.createInstance();

  final supportedPtr = calloc<Int32>();
  final languageTagPtr = Platform.localeName.toNativeUtf16();

  spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);

  if (supportedPtr.value == 1) {
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
    final textPtr = text.toNativeUtf16();
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
      free(errorPtr);

      final pStartIndex = calloc<Uint32>();
      var hr = error.get_StartIndex(pStartIndex);
      if (FAILED(hr)) throw WindowsException(hr);
      final startIndex = pStartIndex.value;
      free(pStartIndex);

      final pLength = calloc<Uint32>();
      hr = error.get_Length(pLength);
      if (FAILED(hr)) throw WindowsException(hr);
      final length = pLength.value;
      free(pLength);

      final word = text.substring(
        startIndex,
        startIndex + length,
      );

      stdout.write('$errorCount. $word');

      final pCorrectiveAction = calloc<Int32>();
      hr = error.get_CorrectiveAction(pCorrectiveAction);
      if (FAILED(hr)) throw WindowsException(hr);
      final correctiveAction = pCorrectiveAction.value;
      free(pCorrectiveAction);

      switch (correctiveAction) {
        case CORRECTIVE_ACTION.DELETE:
          print(' - delete');

        case CORRECTIVE_ACTION.NONE:
          print('\n');

        case CORRECTIVE_ACTION.REPLACE:
          final pReplacement = calloc<Pointer<Utf16>>();
          hr = error.get_Replacement(pReplacement);
          if (FAILED(hr)) throw WindowsException(hr);
          final replacement = pReplacement.value.toDartString();
          free(pReplacement.value);
          free(pReplacement);

          print(' - replace with "$replacement"');
        case CORRECTIVE_ACTION.GET_SUGGESTIONS:
          print(' - suggestions:');

          final wordPtr = word.toNativeUtf16();
          final suggestionsPtr = calloc<VTablePointer>();
          spellChecker2.suggest(wordPtr, suggestionsPtr);
          final suggestions = IEnumString(suggestionsPtr.value);
          free(suggestionsPtr);

          final suggestionPtr = calloc<Pointer<Utf16>>();
          final suggestionResultPtr = calloc<Uint32>();

          while (
              suggestions.next(1, suggestionPtr, suggestionResultPtr) == S_OK) {
            print('\t${suggestionPtr.value.toDartString()}');
            WindowsDeleteString(suggestionPtr.value.address);
          }
      }

      error.release();
    }

    errors.release();
    free(textPtr);
    spellChecker2.release();
  }

  free(supportedPtr);
  free(languageTagPtr);
  spellCheckerFactory.release();
  CoUninitialize();
  print('All done');
}
