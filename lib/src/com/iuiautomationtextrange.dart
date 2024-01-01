// iuiautomationtextrange.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
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
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTextRangeVtbl>().ref;

  final IUIAutomationTextRangeVtbl _vtable;

  factory IUIAutomationTextRange.from(IUnknown interface) =>
      IUIAutomationTextRange(interface.toInterface(IID_IUIAutomationTextRange));

  int clone(Pointer<Pointer<COMObject>> clonedRange) =>
      _vtable.Clone.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> clonedRange)>()(
          ptr.ref.lpVtbl, clonedRange);

  int compare(Pointer<COMObject> range, Pointer<Int32> areSame) =>
      _vtable.Compare.asFunction<
          int Function(Pointer, Pointer<COMObject> range,
              Pointer<Int32> areSame)>()(ptr.ref.lpVtbl, range, areSame);

  int compareEndpoints(int srcEndPoint, Pointer<COMObject> range,
          int targetEndPoint, Pointer<Int32> compValue) =>
      _vtable.CompareEndpoints.asFunction<
              int Function(Pointer, int srcEndPoint, Pointer<COMObject> range,
                  int targetEndPoint, Pointer<Int32> compValue)>()(
          ptr.ref.lpVtbl, srcEndPoint, range, targetEndPoint, compValue);

  int expandToEnclosingUnit(int textUnit) =>
      _vtable.ExpandToEnclosingUnit.asFunction<
          int Function(Pointer, int textUnit)>()(ptr.ref.lpVtbl, textUnit);

  int findAttribute(int attr, VARIANT val, int backward,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindAttribute.asFunction<
              int Function(Pointer, int attr, VARIANT val, int backward,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, attr, val, backward, found);

  int findText(Pointer<Utf16> text, int backward, int ignoreCase,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindText.asFunction<
              int Function(Pointer, Pointer<Utf16> text, int backward,
                  int ignoreCase, Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, text, backward, ignoreCase, found);

  int getAttributeValue(int attr, Pointer<VARIANT> value) =>
      _vtable.GetAttributeValue.asFunction<
              int Function(Pointer, int attr, Pointer<VARIANT> value)>()(
          ptr.ref.lpVtbl, attr, value);

  int getBoundingRectangles(Pointer<Pointer<SAFEARRAY>> boundingRects) =>
      _vtable.GetBoundingRectangles.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<SAFEARRAY>> boundingRects)>()(
          ptr.ref.lpVtbl, boundingRects);

  int getEnclosingElement(Pointer<Pointer<COMObject>> enclosingElement) =>
      _vtable.GetEnclosingElement.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> enclosingElement)>()(
          ptr.ref.lpVtbl, enclosingElement);

  int getText(int maxLength, Pointer<Pointer<Utf16>> text) =>
      _vtable.GetText.asFunction<
          int Function(Pointer, int maxLength,
              Pointer<Pointer<Utf16>> text)>()(ptr.ref.lpVtbl, maxLength, text);

  int move(int unit, int count, Pointer<Int32> moved) =>
      _vtable.Move.asFunction<
          int Function(Pointer, int unit, int count,
              Pointer<Int32> moved)>()(ptr.ref.lpVtbl, unit, count, moved);

  int moveEndpointByUnit(
          int endpoint, int unit, int count, Pointer<Int32> moved) =>
      _vtable.MoveEndpointByUnit.asFunction<
              int Function(Pointer, int endpoint, int unit, int count,
                  Pointer<Int32> moved)>()(
          ptr.ref.lpVtbl, endpoint, unit, count, moved);

  int moveEndpointByRange(
          int srcEndPoint, Pointer<COMObject> range, int targetEndPoint) =>
      _vtable.MoveEndpointByRange.asFunction<
              int Function(Pointer, int srcEndPoint, Pointer<COMObject> range,
                  int targetEndPoint)>()(
          ptr.ref.lpVtbl, srcEndPoint, range, targetEndPoint);

  int select() =>
      _vtable.Select.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int removeFromSelection() =>
      _vtable.RemoveFromSelection.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int scrollIntoView(int alignToTop) => _vtable.ScrollIntoView.asFunction<
      int Function(Pointer, int alignToTop)>()(ptr.ref.lpVtbl, alignToTop);

  int getChildren(Pointer<Pointer<COMObject>> children) =>
      _vtable.GetChildren.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> children)>()(
          ptr.ref.lpVtbl, children);
}

/// @nodoc
base class IUIAutomationTextRangeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> clonedRange)>>
      Clone;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<COMObject> range, Pointer<Int32> areSame)>>
      Compare;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 srcEndPoint,
              Pointer<COMObject> range,
              Int32 targetEndPoint,
              Pointer<Int32> compValue)>> CompareEndpoints;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 textUnit)>>
      ExpandToEnclosingUnit;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 attr, VARIANT val, Int32 backward,
              Pointer<Pointer<COMObject>> found)>> FindAttribute;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> text, Int32 backward,
              Int32 ignoreCase, Pointer<Pointer<COMObject>> found)>> FindText;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 attr, Pointer<VARIANT> value)>>
      GetAttributeValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<SAFEARRAY>> boundingRects)>>
      GetBoundingRectangles;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> enclosingElement)>>
      GetEnclosingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 maxLength, Pointer<Pointer<Utf16>> text)>> GetText;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 unit, Int32 count, Pointer<Int32> moved)>> Move;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 endpoint, Int32 unit, Int32 count,
              Pointer<Int32> moved)>> MoveEndpointByUnit;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 srcEndPoint, Pointer<COMObject> range,
              Int32 targetEndPoint)>> MoveEndpointByRange;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Select;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> AddToSelection;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> RemoveFromSelection;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 alignToTop)>>
      ScrollIntoView;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> children)>>
      GetChildren;
}
