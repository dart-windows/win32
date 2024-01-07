// ispellchecker2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'ispellchecker.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpellChecker2 = '{e7ed1c71-87f7-4378-a840-c9200dacee47}';

/// Represents a particular spell checker for a particular language, with
/// the added ability to remove words from the added words dictionary, or
/// from the ignore list. The `ISpellChecker2` can also be used to check
/// text, get suggestions, update user dictionaries, and maintain options,
/// as can ISpellChecker from which it is derived.
///
/// {@category com}
class ISpellChecker2 extends ISpellChecker {
  ISpellChecker2(super.ptr)
      : _vtable = ptr.value.value.cast<ISpellChecker2Vtbl>().ref;

  final ISpellChecker2Vtbl _vtable;

  factory ISpellChecker2.from(IUnknown interface) =>
      ISpellChecker2(interface.toInterface(IID_ISpellChecker2));

  int remove(Pointer<Utf16> word) => _vtable.Remove.asFunction<
      int Function(VTablePointer, Pointer<Utf16> word)>()(ptr.value, word);
}

/// @nodoc
base class ISpellChecker2Vtbl extends Struct {
  external ISpellCheckerVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> word)>>
      Remove;
}
