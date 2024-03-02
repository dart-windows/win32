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
/// The `ISpellChecker` can be used to check text, get suggestions, update user
/// dictionaries, and maintain options.
///
/// {@category com}
class ISpellChecker extends IUnknown {
  ISpellChecker(super.ptr) : _vtable = ptr.value.cast<ISpellCheckerVtbl>().ref;

  final ISpellCheckerVtbl _vtable;

  factory ISpellChecker.from(IUnknown interface) =>
      ISpellChecker(interface.toInterface(IID_ISpellChecker));

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

  int check(Pointer<Utf16> text, Pointer<VTablePointer> value) =>
      _vtable.Check.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> text,
              Pointer<VTablePointer> value)>()(ptr, text, value);

  int suggest(Pointer<Utf16> word, Pointer<VTablePointer> value) =>
      _vtable.Suggest.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> word,
              Pointer<VTablePointer> value)>()(ptr, word, value);

  int add(Pointer<Utf16> word) => _vtable.Add.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Utf16> word)>()(ptr, word);

  int ignore(Pointer<Utf16> word) => _vtable.Ignore.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Utf16> word)>()(ptr, word);

  int autoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      _vtable.AutoCorrect.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> from,
              Pointer<Utf16> to)>()(ptr, from, to);

  int getOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      _vtable.GetOptionValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<Uint8> value)>()(ptr, optionId, value);

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

  int add_SpellCheckerChanged(
          VTablePointer handler, Pointer<Uint32> eventCookie) =>
      _vtable.add_SpellCheckerChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<Uint32> eventCookie)>()(ptr, handler, eventCookie);

  int remove_SpellCheckerChanged(int eventCookie) => _vtable
          .remove_SpellCheckerChanged
          .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
      ptr, eventCookie);

  int getOptionDescription(
          Pointer<Utf16> optionId, Pointer<VTablePointer> value) =>
      _vtable.GetOptionDescription.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> optionId,
              Pointer<VTablePointer> value)>()(ptr, optionId, value);

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
