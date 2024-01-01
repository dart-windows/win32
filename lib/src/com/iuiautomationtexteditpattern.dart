// iuiautomationtexteditpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iuiautomationtextpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextEditPattern =
    '{17e21576-996c-4870-99d9-bff323380c06}';

/// Provides access to a control that modifies text, for example a control
/// that performs auto-correction or enables input composition through an
/// Input Method Editor (IME).
///
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextEditPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTextEditPatternVtbl>().ref;

  final IUIAutomationTextEditPatternVtbl _vtable;

  factory IUIAutomationTextEditPattern.from(IUnknown interface) =>
      IUIAutomationTextEditPattern(
          interface.toInterface(IID_IUIAutomationTextEditPattern));

  int getActiveComposition(Pointer<Pointer<COMObject>> range) =>
      _vtable.GetActiveComposition.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, range);

  int getConversionTarget(Pointer<Pointer<COMObject>> range) =>
      _vtable.GetConversionTarget.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, range);
}

/// @nodoc
base class IUIAutomationTextEditPatternVtbl extends Struct {
  external IUIAutomationTextPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> range)>>
      GetActiveComposition;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> range)>>
      GetConversionTarget;
}
