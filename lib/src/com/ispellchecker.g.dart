// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpellChecker = '{b6fd0b71-e2bc-4653-8d05-f197e412770b}';

/// Represents a particular spell checker for a particular language.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellchecker>.
///
/// {@category com}
class ISpellChecker extends IUnknown {
  ISpellChecker(super.ptr) : _vtable = ptr.value.cast<ISpellCheckerVtbl>().ref;

  final ISpellCheckerVtbl _vtable;

  factory ISpellChecker.from(IUnknown interface) =>
      ISpellChecker(interface.toInterface(IID_ISpellChecker));

  /// Gets the BCP47 language tag this instance of the spell checker supports.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_languagetag>.
  Pointer<Utf16> get languageTag {
    final value = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_LanguageTag.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  /// Checks the spelling of the supplied text and returns a collection of
  /// spelling errors.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-check>.
  int check(Pointer<Utf16> text, Pointer<VTablePointer> value) =>
      _vtable.Check.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> text,
              Pointer<VTablePointer> value)>()(ptr, text, value);

  /// Retrieves spelling suggestions for the supplied text.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-suggest>.
  int suggest(Pointer<Utf16> word, Pointer<VTablePointer> value) =>
      _vtable.Suggest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> word,
              Pointer<VTablePointer> value)>()(ptr, word, value);

  /// Treats the provided word as though it were part of the original dictionary.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-add>.
  int add(Pointer<Utf16> word) => _vtable.Add.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Utf16> word)>()(ptr, word);

  /// Ignores the provided word for the rest of this session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-ignore>.
  int ignore(Pointer<Utf16> word) => _vtable.Ignore.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Utf16> word)>()(ptr, word);

  /// Causes occurrences of one word to be replaced by another.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-autocorrect>.
  int autoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      _vtable.AutoCorrect.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> from,
              Pointer<Utf16> to)>()(ptr, from, to);

  /// Retrieves the value associated with the given option.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-getoptionvalue>.
  int getOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      _vtable.GetOptionValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<Uint8> value)>()(ptr, optionId, value);

  /// Gets all of the declared option identifiers.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_optionids>.
  VTablePointer get optionIds {
    final value = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_OptionIds.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  /// Gets the identifier for this spell checker.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_id>.
  Pointer<Utf16> get id {
    final value = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  /// Gets text, suitable to display to the user, that describes this spell
  /// checker.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_localizedname>.
  Pointer<Utf16> get localizedName {
    final value = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_LocalizedName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  /// Adds an event handler (ISpellCheckerChangedEventHandler) for the
  /// SpellCheckerChanged event.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-add_spellcheckerchanged>.
  int add_SpellCheckerChanged(
          VTablePointer handler, Pointer<Uint32> eventCookie) =>
      _vtable.add_SpellCheckerChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<Uint32> eventCookie)>()(ptr, handler, eventCookie);

  /// Removes an event handler (ISpellCheckerChangedEventHandler) that has been
  /// added for the SpellCheckerChanged event.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-remove_spellcheckerchanged>.
  int remove_SpellCheckerChanged(int eventCookie) => _vtable
          .remove_SpellCheckerChanged
          .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
      ptr, eventCookie);

  /// Retrieves the information (id, description, heading and labels) of a
  /// specific option.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-getoptiondescription>.
  int getOptionDescription(
          Pointer<Utf16> optionId, Pointer<VTablePointer> value) =>
      _vtable.GetOptionDescription.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<VTablePointer> value)>()(ptr, optionId, value);

  /// Checks the spelling of the supplied text in a more thorough manner than
  /// `ISpellChecker.check`, and returns a collection of spelling errors.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-comprehensivecheck>.
  int comprehensiveCheck(Pointer<Utf16> text, Pointer<VTablePointer> value) =>
      _vtable.ComprehensiveCheck.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> text,
              Pointer<VTablePointer> value)>()(ptr, text, value);
}

/// @nodoc
base class ISpellCheckerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> value)>>
      get_LanguageTag;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> text,
              Pointer<VTablePointer> value)>> Check;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> word,
              Pointer<VTablePointer> value)>> Suggest;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> word)>> Add;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> word)>> Ignore;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> from,
              Pointer<Utf16> to)>> AutoCorrect;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<Uint8> value)>> GetOptionValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> value)>>
      get_OptionIds;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> value)>> get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> value)>>
      get_LocalizedName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<Uint32> eventCookie)>> add_SpellCheckerChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 eventCookie)>>
      remove_SpellCheckerChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<VTablePointer> value)>> GetOptionDescription;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> text,
              Pointer<VTablePointer> value)>> ComprehensiveCheck;
}
