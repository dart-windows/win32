// iuiautomationtextrange.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRange = '{a543cc6a-f4ae-494b-8239-c814481187a8}';

/// Provides access to a span of continuous text in a container that
/// supports the IUIAutomationTextPattern interface. Client applications can
/// use the IUIAutomationTextRange interface to select, compare, and
/// retrieve embedded objects from the text span.
///
/// {@category com}
class IUIAutomationTextRange extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IUIAutomationTextRange(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTextRangeVtbl>().ref;

  final IUIAutomationTextRangeVtbl _vtable;

  factory IUIAutomationTextRange.from(IUnknown interface) =>
      IUIAutomationTextRange(interface.toInterface(IID_IUIAutomationTextRange));

  int clone(Pointer<Pointer<VTablePointer>> clonedRange) =>
      _vtable.Clone.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> clonedRange)>()(
          ptr.value, clonedRange);

  int compare(Pointer<VTablePointer> range, Pointer<Int32> areSame) =>
      _vtable.Compare.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> range,
              Pointer<Int32> areSame)>()(ptr.value, range, areSame);

  int compareEndpoints(int srcEndPoint, Pointer<VTablePointer> range,
          int targetEndPoint, Pointer<Int32> compValue) =>
      _vtable.CompareEndpoints.asFunction<
              int Function(
                  VTablePointer,
                  int srcEndPoint,
                  Pointer<VTablePointer> range,
                  int targetEndPoint,
                  Pointer<Int32> compValue)>()(
          ptr.value, srcEndPoint, range, targetEndPoint, compValue);

  int expandToEnclosingUnit(int textUnit) =>
      _vtable.ExpandToEnclosingUnit.asFunction<
          int Function(VTablePointer, int textUnit)>()(ptr.value, textUnit);

  int findAttribute(int attr, VARIANT val, int backward,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindAttribute.asFunction<
              int Function(VTablePointer, int attr, VARIANT val, int backward,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, attr, val, backward, found);

  int findText(Pointer<Utf16> text, int backward, int ignoreCase,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindText.asFunction<
              int Function(VTablePointer, Pointer<Utf16> text, int backward,
                  int ignoreCase, Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, text, backward, ignoreCase, found);

  int getAttributeValue(int attr, Pointer<VARIANT> value) =>
      _vtable.GetAttributeValue.asFunction<
              int Function(VTablePointer, int attr, Pointer<VARIANT> value)>()(
          ptr.value, attr, value);

  int getBoundingRectangles(Pointer<Pointer<SAFEARRAY>> boundingRects) =>
      _vtable.GetBoundingRectangles.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> boundingRects)>()(
          ptr.value, boundingRects);

  int getEnclosingElement(Pointer<Pointer<VTablePointer>> enclosingElement) =>
      _vtable.GetEnclosingElement.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> enclosingElement)>()(
          ptr.value, enclosingElement);

  int getText(int maxLength, Pointer<Pointer<Utf16>> text) =>
      _vtable.GetText.asFunction<
          int Function(VTablePointer, int maxLength,
              Pointer<Pointer<Utf16>> text)>()(ptr.value, maxLength, text);

  int move(int unit, int count, Pointer<Int32> moved) =>
      _vtable.Move.asFunction<
          int Function(VTablePointer, int unit, int count,
              Pointer<Int32> moved)>()(ptr.value, unit, count, moved);

  int moveEndpointByUnit(
          int endpoint, int unit, int count, Pointer<Int32> moved) =>
      _vtable.MoveEndpointByUnit.asFunction<
          int Function(VTablePointer, int endpoint, int unit, int count,
              Pointer<Int32> moved)>()(ptr.value, endpoint, unit, count, moved);

  int moveEndpointByRange(
          int srcEndPoint, Pointer<VTablePointer> range, int targetEndPoint) =>
      _vtable.MoveEndpointByRange.asFunction<
              int Function(VTablePointer, int srcEndPoint,
                  Pointer<VTablePointer> range, int targetEndPoint)>()(
          ptr.value, srcEndPoint, range, targetEndPoint);

  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer)>()(ptr.value);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int removeFromSelection() =>
      _vtable.RemoveFromSelection.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int scrollIntoView(int alignToTop) => _vtable.ScrollIntoView.asFunction<
      int Function(VTablePointer, int alignToTop)>()(ptr.value, alignToTop);

  int getChildren(Pointer<Pointer<VTablePointer>> children) =>
      _vtable.GetChildren.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> children)>()(ptr.value, children);
}

/// @nodoc
base class IUIAutomationTextRangeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> clonedRange)>>
      Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> range,
              Pointer<Int32> areSame)>> Compare;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 srcEndPoint,
              Pointer<VTablePointer> range,
              Int32 targetEndPoint,
              Pointer<Int32> compValue)>> CompareEndpoints;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 textUnit)>>
      ExpandToEnclosingUnit;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 attr,
              VARIANT val,
              Int32 backward,
              Pointer<Pointer<VTablePointer>> found)>> FindAttribute;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> text,
              Int32 backward,
              Int32 ignoreCase,
              Pointer<Pointer<VTablePointer>> found)>> FindText;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 attr, Pointer<VARIANT> value)>>
      GetAttributeValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> boundingRects)>>
      GetBoundingRectangles;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> enclosingElement)>>
      GetEnclosingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 maxLength,
              Pointer<Pointer<Utf16>> text)>> GetText;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 unit, Int32 count,
              Pointer<Int32> moved)>> Move;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 endpoint, Int32 unit, Int32 count,
              Pointer<Int32> moved)>> MoveEndpointByUnit;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 srcEndPoint,
              Pointer<VTablePointer> range,
              Int32 targetEndPoint)>> MoveEndpointByRange;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      AddToSelection;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      RemoveFromSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 alignToTop)>>
      ScrollIntoView;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> children)>>
      GetChildren;
}
