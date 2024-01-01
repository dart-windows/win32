// ispellcheckerchangedeventhandler.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpellCheckerChangedEventHandler =
    '{0b83a5b0-792f-4eab-9799-acf52c5ed08a}';

/// Allows the caller to create a handler for notifications that the state
/// of the speller has changed.
///
/// {@category com}
class ISpellCheckerChangedEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISpellCheckerChangedEventHandler(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<ISpellCheckerChangedEventHandlerVtbl>().ref;

  final ISpellCheckerChangedEventHandlerVtbl _vtable;

  factory ISpellCheckerChangedEventHandler.from(IUnknown interface) =>
      ISpellCheckerChangedEventHandler(
          interface.toInterface(IID_ISpellCheckerChangedEventHandler));

  int invoke(Pointer<COMObject> sender) => _vtable.Invoke.asFunction<
      int Function(
          Pointer, Pointer<COMObject> sender)>()(ptr.ref.lpVtbl, sender);
}

/// @nodoc
base class ISpellCheckerChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> sender)>>
      Invoke;
}
