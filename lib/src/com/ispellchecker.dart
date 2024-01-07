// ispellchecker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpellChecker = '{b6fd0b71-e2bc-4653-8d05-f197e412770b}';

/// Represents a particular spell checker for a particular language. The
/// `ISpellChecker` can be used to check text, get suggestions, update user
/// dictionaries, and maintain options.
///
/// {@category com}
class ISpellChecker extends IUnknown {
  ISpellChecker(super.ptr)
      : _vtable = ptr.value.value.cast<ISpellCheckerVtbl>().ref;

  final ISpellCheckerVtbl _vtable;

  factory ISpellChecker.from(IUnknown interface) =>
      ISpellChecker(interface.toInterface(IID_ISpellChecker));

  Pointer<Utf16> get languageTag {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_LanguageTag.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> value)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int check(Pointer<Utf16> text, Pointer<Pointer<VTablePointer>> value) =>
      _vtable.Check.asFunction<
          int Function(VTablePointer, Pointer<Utf16> text,
              Pointer<Pointer<VTablePointer>> value)>()(ptr.value, text, value);

  int suggest(Pointer<Utf16> word, Pointer<Pointer<VTablePointer>> value) =>
      _vtable.Suggest.asFunction<
          int Function(VTablePointer, Pointer<Utf16> word,
              Pointer<Pointer<VTablePointer>> value)>()(ptr.value, word, value);

  int add(Pointer<Utf16> word) => _vtable.Add.asFunction<
      int Function(VTablePointer, Pointer<Utf16> word)>()(ptr.value, word);

  int ignore(Pointer<Utf16> word) => _vtable.Ignore.asFunction<
      int Function(VTablePointer, Pointer<Utf16> word)>()(ptr.value, word);

  int autoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      _vtable.AutoCorrect.asFunction<
          int Function(VTablePointer, Pointer<Utf16> from,
              Pointer<Utf16> to)>()(ptr.value, from, to);

  int getOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      _vtable.GetOptionValue.asFunction<
          int Function(VTablePointer, Pointer<Utf16> optionId,
              Pointer<Uint8> value)>()(ptr.value, optionId, value);

  Pointer<VTablePointer> get optionIds {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_OptionIds.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> value)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Id.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> value)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get localizedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_LocalizedName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> value)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int add_SpellCheckerChanged(
          Pointer<VTablePointer> handler, Pointer<Uint32> eventCookie) =>
      _vtable.add_SpellCheckerChanged.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> handler,
              Pointer<Uint32> eventCookie)>()(ptr.value, handler, eventCookie);

  int remove_SpellCheckerChanged(int eventCookie) =>
      _vtable.remove_SpellCheckerChanged
              .asFunction<int Function(VTablePointer, int eventCookie)>()(
          ptr.value, eventCookie);

  int getOptionDescription(
          Pointer<Utf16> optionId, Pointer<Pointer<VTablePointer>> value) =>
      _vtable.GetOptionDescription.asFunction<
              int Function(VTablePointer, Pointer<Utf16> optionId,
                  Pointer<Pointer<VTablePointer>> value)>()(
          ptr.value, optionId, value);

  int comprehensiveCheck(
          Pointer<Utf16> text, Pointer<Pointer<VTablePointer>> value) =>
      _vtable.ComprehensiveCheck.asFunction<
          int Function(VTablePointer, Pointer<Utf16> text,
              Pointer<Pointer<VTablePointer>> value)>()(ptr.value, text, value);
}

/// @nodoc
base class ISpellCheckerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> value)>>
      get_LanguageTag;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> text,
              Pointer<Pointer<VTablePointer>> value)>> Check;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> word,
              Pointer<Pointer<VTablePointer>> value)>> Suggest;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> word)>> Add;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> word)>>
      Ignore;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> from, Pointer<Utf16> to)>>
      AutoCorrect;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> optionId,
              Pointer<Uint8> value)>> GetOptionValue;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> value)>>
      get_OptionIds;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> value)>> get_Id;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> value)>>
      get_LocalizedName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> handler,
              Pointer<Uint32> eventCookie)>> add_SpellCheckerChanged;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 eventCookie)>>
      remove_SpellCheckerChanged;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> optionId,
              Pointer<Pointer<VTablePointer>> value)>> GetOptionDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> text,
              Pointer<Pointer<VTablePointer>> value)>> ComprehensiveCheck;
}
