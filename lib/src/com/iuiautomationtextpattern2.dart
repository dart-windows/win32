// iuiautomationtextpattern2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iuiautomationtextpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextPattern2 = '{506a921a-fcc9-409f-b23b-37eb74106872}';

/// Extends the IUIAutomationTextPattern interface.
///
/// {@category com}
class IUIAutomationTextPattern2 extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextPattern2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTextPattern2Vtbl>().ref;

  final IUIAutomationTextPattern2Vtbl _vtable;

  factory IUIAutomationTextPattern2.from(IUnknown interface) =>
      IUIAutomationTextPattern2(
          interface.toInterface(IID_IUIAutomationTextPattern2));

  int rangeFromAnnotation(
          Pointer<COMObject> annotation, Pointer<Pointer<COMObject>> range) =>
      _vtable.RangeFromAnnotation.asFunction<
              int Function(Pointer, Pointer<COMObject> annotation,
                  Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, annotation, range);

  int getCaretRange(
          Pointer<Int32> isActive, Pointer<Pointer<COMObject>> range) =>
      _vtable.GetCaretRange.asFunction<
              int Function(Pointer, Pointer<Int32> isActive,
                  Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, isActive, range);
}

/// @nodoc
base class IUIAutomationTextPattern2Vtbl extends Struct {
  external IUIAutomationTextPatternVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> annotation,
              Pointer<Pointer<COMObject>> range)>> RangeFromAnnotation;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Int32> isActive,
              Pointer<Pointer<COMObject>> range)>> GetCaretRange;
}
