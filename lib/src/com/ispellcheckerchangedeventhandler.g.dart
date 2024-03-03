// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpellCheckerChangedEventHandler =
    '{0b83a5b0-792f-4eab-9799-acf52c5ed08a}';

/// Allows the caller to create a handler for notifications that the state of
/// the speller has changed.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellcheckerchangedeventhandler>.
///
/// {@category com}
class ISpellCheckerChangedEventHandler extends IUnknown {
  ISpellCheckerChangedEventHandler(super.ptr)
      : _vtable = ptr.value.cast<ISpellCheckerChangedEventHandlerVtbl>().ref;

  final ISpellCheckerChangedEventHandlerVtbl _vtable;

  factory ISpellCheckerChangedEventHandler.from(IUnknown interface) =>
      ISpellCheckerChangedEventHandler(
          interface.toInterface(IID_ISpellCheckerChangedEventHandler));

  int invoke(VTablePointer sender) => _vtable.Invoke.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer sender)>()(ptr, sender);
}

/// @nodoc
base class ISpellCheckerChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer sender)>> Invoke;
}
