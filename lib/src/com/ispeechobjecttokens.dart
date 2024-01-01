// ispeechobjecttokens.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechObjectTokens = '{9285b776-2e7b-4bc0-b53e-580eb6fa967f}';

/// The ISpeechObjectTokens automation interface represents a collection of
/// SpObjectToken objects.
///
/// {@category com}
class ISpeechObjectTokens extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISpeechObjectTokens(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpeechObjectTokensVtbl>().ref;

  final ISpeechObjectTokensVtbl _vtable;

  factory ISpeechObjectTokens.from(IUnknown interface) =>
      ISpeechObjectTokens(interface.toInterface(IID_ISpeechObjectTokens));

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Count
              .asFunction<int Function(Pointer, Pointer<Int32> Count)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int item(
          int Index, Pointer<Pointer<COMObject>> Token) =>
      _vtable.Item.asFunction<
              int Function(
                  Pointer, int Index, Pointer<Pointer<COMObject>> Token)>()(
          ptr.ref.lpVtbl, Index, Token);

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get__NewEnum.asFunction<
            int Function(Pointer, Pointer<COMObject> ppEnumVARIANT)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class ISpeechObjectTokensVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> Count)>> get_Count;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 Index, Pointer<Pointer<COMObject>> Token)>> Item;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> ppEnumVARIANT)>>
      get__NewEnum;
}
