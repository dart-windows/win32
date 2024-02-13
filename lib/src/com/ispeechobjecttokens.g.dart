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
    final count = calloc<Int32>();
    try {
      final hr = _vtable.get_Count.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> count)>()(ptr, count);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = count.value;
      return retValue;
    } finally {
      free(count);
    }
  }

  int item(int index, Pointer<VTablePointer> token) => _vtable.Item.asFunction<
      int Function(VTablePointer lpVtbl, int index,
          Pointer<VTablePointer> token)>()(ptr, index, token);

  VTablePointer get newEnum {
    final ppEnumVARIANT = calloc<VTablePointer>();
    try {
      final hr = _vtable.get__NewEnum.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppEnumVARIANT)>()(ptr, ppEnumVARIANT);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = ppEnumVARIANT.value;
      return retValue;
    } finally {
      free(ppEnumVARIANT);
    }
  }
}

/// @nodoc
base class ISpeechObjectTokensVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> count)>>
      get_Count;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Int32 index,
              Pointer<VTablePointer> token)>> Item;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnumVARIANT)>>
      get__NewEnum;
}
