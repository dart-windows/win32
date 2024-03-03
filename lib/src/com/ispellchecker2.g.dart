// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ispellchecker.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpellChecker2 = '{e7ed1c71-87f7-4378-a840-c9200dacee47}';

/// Represents a particular spell checker for a particular language, with the
/// added ability to remove words from the added words dictionary, or from the
/// ignore list.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellchecker2>.
///
/// {@category com}
class ISpellChecker2 extends ISpellChecker {
  ISpellChecker2(super.ptr)
      : _vtable = ptr.value.cast<ISpellChecker2Vtbl>().ref;

  final ISpellChecker2Vtbl _vtable;

  factory ISpellChecker2.from(IUnknown interface) =>
      ISpellChecker2(interface.toInterface(IID_ISpellChecker2));

  int remove(Pointer<Utf16> word) => _vtable.Remove.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Utf16> word)>()(ptr, word);
}

/// @nodoc
base class ISpellChecker2Vtbl extends Struct {
  external ISpellCheckerVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> word)>> Remove;
}
