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
const IID_ISpellCheckerFactory = '{8e018a9d-2415-4677-bf08-794ea61f94bb}';

/// A factory for instantiating a spell checker `ISpellChecker` as well as
/// providing functionality for determining which languages are supported.
///
/// {@category com}
class ISpellCheckerFactory extends IUnknown {
  ISpellCheckerFactory(super.ptr)
      : _vtable = ptr.value.cast<ISpellCheckerFactoryVtbl>().ref;

  final ISpellCheckerFactoryVtbl _vtable;

  factory ISpellCheckerFactory.from(IUnknown interface) =>
      ISpellCheckerFactory(interface.toInterface(IID_ISpellCheckerFactory));

  VTablePointer get supportedLanguages {
    final value = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_SupportedLanguages.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  int isSupported(PWSTR languageTag, Pointer<BOOL> value) =>
      _vtable.IsSupported.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR languageTag,
              Pointer<BOOL> value)>()(ptr, languageTag, value);

  int createSpellChecker(PWSTR languageTag, Pointer<VTablePointer> value) =>
      _vtable.CreateSpellChecker.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR languageTag,
              Pointer<VTablePointer> value)>()(ptr, languageTag, value);
}

/// @nodoc
base class ISpellCheckerFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> value)>>
      get_SupportedLanguages;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR languageTag,
              Pointer<BOOL> value)>> IsSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR languageTag,
              Pointer<VTablePointer> value)>> CreateSpellChecker;
}

/// @nodoc
const SpellCheckerFactory = '{7ab36653-1796-484b-bdfa-e74f1db7c1dc}';
