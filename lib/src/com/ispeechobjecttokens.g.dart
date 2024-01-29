// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
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

  int get_Count(Pointer<Int32> count) => _vtable.get_Count
          .asFunction<int Function(VTablePointer, Pointer<Int32> count)>()(
      ptr, count);

  int item(int index, Pointer<VTablePointer> token) => _vtable.Item.asFunction<
      int Function(VTablePointer, int index,
          Pointer<VTablePointer> token)>()(ptr, index, token);

  int get__NewEnum(Pointer<VTablePointer> ppEnumVARIANT) =>
      _vtable.get__NewEnum.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> ppEnumVARIANT)>()(ptr, ppEnumVARIANT);
}

/// @nodoc
base class ISpeechObjectTokensVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> count)>>
      get_Count;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Int32 index, Pointer<VTablePointer> token)>> Item;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> ppEnumVARIANT)>>
      get__NewEnum;
}
