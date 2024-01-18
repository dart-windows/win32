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
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechObjectTokens = '{9285b776-2e7b-4bc0-b53e-580eb6fa967f}';

/// The ISpeechObjectTokens automation interface represents a collection of
/// SpObjectToken objects.
///
/// {@category com}
class ISpeechObjectTokens extends IDispatch {
  ISpeechObjectTokens(super.ptr)
      : _vtable = ptr.value.cast<ISpeechObjectTokensVtbl>().ref;

  final ISpeechObjectTokensVtbl _vtable;

  factory ISpeechObjectTokens.from(IUnknown interface) =>
      ISpeechObjectTokens(interface.toInterface(IID_ISpeechObjectTokens));

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Count
              .asFunction<int Function(VTablePointer, Pointer<Int32> Count)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int item(int Index, Pointer<VTablePointer> Token) => _vtable.Item.asFunction<
      int Function(VTablePointer, int Index,
          Pointer<VTablePointer> Token)>()(ptr, Index, Token);

  VTablePointer get newEnum {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get__NewEnum.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> ppEnumVARIANT)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class ISpeechObjectTokensVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Count)>>
      get_Count;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Int32 Index, Pointer<VTablePointer> Token)>> Item;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> ppEnumVARIANT)>>
      get__NewEnum;
}
