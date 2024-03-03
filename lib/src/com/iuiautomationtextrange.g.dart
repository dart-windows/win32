// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextRange = '{a543cc6a-f4ae-494b-8239-c814481187a8}';

/// Provides access to a span of continuous text in a container that supports
/// the IUIAutomationTextPattern interface.
///
/// Client applications can use the IUIAutomationTextRange interface to select,
/// compare, and retrieve embedded objects from the text span.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrange>.
///
/// {@category com}
class IUIAutomationTextRange extends IUnknown {
  IUIAutomationTextRange(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextRangeVtbl>().ref;

  final IUIAutomationTextRangeVtbl _vtable;

  factory IUIAutomationTextRange.from(IUnknown interface) =>
      IUIAutomationTextRange(interface.toInterface(IID_IUIAutomationTextRange));

  int clone(Pointer<VTablePointer> clonedRange) => _vtable.Clone.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<VTablePointer> clonedRange)>()(ptr, clonedRange);

  int compare(VTablePointer range, Pointer<BOOL> areSame) =>
      _vtable.Compare.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer range,
              Pointer<BOOL> areSame)>()(ptr, range, areSame);

  int compareEndpoints(int srcEndPoint, VTablePointer range, int targetEndPoint,
          Pointer<Int32> compValue) =>
      _vtable.CompareEndpoints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int srcEndPoint,
                  VTablePointer range,
                  int targetEndPoint,
                  Pointer<Int32> compValue)>()(
          ptr, srcEndPoint, range, targetEndPoint, compValue);

  int expandToEnclosingUnit(int textUnit) =>
      _vtable.ExpandToEnclosingUnit.asFunction<
          int Function(VTablePointer lpVtbl, int textUnit)>()(ptr, textUnit);

  int findAttribute(
          int attr, VARIANT val, int backward, Pointer<VTablePointer> found) =>
      _vtable.FindAttribute.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int attr,
              VARIANT val,
              int backward,
              Pointer<VTablePointer> found)>()(ptr, attr, val, backward, found);

  int findText(Pointer<Utf16> text, int backward, int ignoreCase,
          Pointer<VTablePointer> found) =>
      _vtable.FindText.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> text,
                  int backward,
                  int ignoreCase,
                  Pointer<VTablePointer> found)>()(
          ptr, text, backward, ignoreCase, found);

  int getAttributeValue(int attr, Pointer<VARIANT> value) =>
      _vtable.GetAttributeValue.asFunction<
          int Function(VTablePointer lpVtbl, int attr,
              Pointer<VARIANT> value)>()(ptr, attr, value);

  int getBoundingRectangles(Pointer<Pointer<SAFEARRAY>> boundingRects) =>
      _vtable.GetBoundingRectangles.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> boundingRects)>()(ptr, boundingRects);

  int getEnclosingElement(Pointer<VTablePointer> enclosingElement) =>
      _vtable.GetEnclosingElement.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> enclosingElement)>()(
          ptr, enclosingElement);

  int getText(int maxLength, Pointer<Pointer<Utf16>> text) =>
      _vtable.GetText.asFunction<
          int Function(VTablePointer lpVtbl, int maxLength,
              Pointer<Pointer<Utf16>> text)>()(ptr, maxLength, text);

  int move(int unit, int count, Pointer<Int32> moved) =>
      _vtable.Move.asFunction<
          int Function(VTablePointer lpVtbl, int unit, int count,
              Pointer<Int32> moved)>()(ptr, unit, count, moved);

  int moveEndpointByUnit(
          int endpoint, int unit, int count, Pointer<Int32> moved) =>
      _vtable.MoveEndpointByUnit.asFunction<
          int Function(VTablePointer lpVtbl, int endpoint, int unit, int count,
              Pointer<Int32> moved)>()(ptr, endpoint, unit, count, moved);

  int moveEndpointByRange(
          int srcEndPoint, VTablePointer range, int targetEndPoint) =>
      _vtable.MoveEndpointByRange.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int srcEndPoint,
              VTablePointer range,
              int targetEndPoint)>()(ptr, srcEndPoint, range, targetEndPoint);

  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int removeFromSelection() => _vtable.RemoveFromSelection.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  int scrollIntoView(int alignToTop) => _vtable.ScrollIntoView.asFunction<
      int Function(VTablePointer lpVtbl, int alignToTop)>()(ptr, alignToTop);

  int getChildren(Pointer<VTablePointer> children) =>
      _vtable.GetChildren.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> children)>()(ptr, children);
}

/// @nodoc
base class IUIAutomationTextRangeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> clonedRange)>> Clone;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer range,
              Pointer<BOOL> areSame)>> Compare;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 srcEndPoint,
              VTablePointer range,
              Int32 targetEndPoint,
              Pointer<Int32> compValue)>> CompareEndpoints;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 textUnit)>>
      ExpandToEnclosingUnit;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 attr, VARIANT val,
              BOOL backward, Pointer<VTablePointer> found)>> FindAttribute;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> text,
              BOOL backward,
              BOOL ignoreCase,
              Pointer<VTablePointer> found)>> FindText;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 attr, Pointer<VARIANT> value)>>
      GetAttributeValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Pointer<SAFEARRAY>> boundingRects)>>
      GetBoundingRectangles;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> enclosingElement)>> GetEnclosingElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 maxLength,
              Pointer<Pointer<Utf16>> text)>> GetText;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 unit, Int32 count,
              Pointer<Int32> moved)>> Move;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 endpoint, Int32 unit,
              Int32 count, Pointer<Int32> moved)>> MoveEndpointByUnit;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 srcEndPoint,
              VTablePointer range, Int32 targetEndPoint)>> MoveEndpointByRange;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Select;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      AddToSelection;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveFromSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BOOL alignToTop)>>
      ScrollIntoView;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> children)>>
      GetChildren;
}
