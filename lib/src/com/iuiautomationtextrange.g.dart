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

  /// Retrieves a new IUIAutomationTextRange identical to the original and
  /// inheriting all properties of the original.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-clone>.
  int clone(Pointer<VTablePointer> clonedRange) => _vtable.Clone.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<VTablePointer> clonedRange)>()(ptr, clonedRange);

  /// Retrieves a value that specifies whether this text range has the same
  /// endpoints as another text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-compare>.
  int compare(VTablePointer range, Pointer<BOOL> areSame) =>
      _vtable.Compare.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer range,
              Pointer<BOOL> areSame)>()(ptr, range, areSame);

  /// Retrieves a value that specifies whether the start or end endpoint of this
  /// text range is the same as the start or end endpoint of another text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-compareendpoints>.
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

  /// Normalizes the text range by the specified text unit.
  ///
  /// The range is expanded if it is smaller than the specified unit, or shortened
  /// if it is longer than the specified unit.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-expandtoenclosingunit>.
  int expandToEnclosingUnit(int textUnit) =>
      _vtable.ExpandToEnclosingUnit.asFunction<
          int Function(VTablePointer lpVtbl, int textUnit)>()(ptr, textUnit);

  /// Retrieves a text range subset that has the specified text attribute value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-findattribute>.
  int findAttribute(
          int attr, VARIANT val, int backward, Pointer<VTablePointer> found) =>
      _vtable.FindAttribute.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int attr,
              VARIANT val,
              int backward,
              Pointer<VTablePointer> found)>()(ptr, attr, val, backward, found);

  /// Retrieves a text range subset that contains the specified text.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-findtext>.
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

  /// Retrieves the value of the specified text attribute across the entire text
  /// range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getattributevalue>.
  int getAttributeValue(int attr, Pointer<VARIANT> value) =>
      _vtable.GetAttributeValue.asFunction<
          int Function(VTablePointer lpVtbl, int attr,
              Pointer<VARIANT> value)>()(ptr, attr, value);

  /// Retrieves a collection of bounding rectangles for each fully or partially
  /// visible line of text in a text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getboundingrectangles>.
  int getBoundingRectangles(Pointer<Pointer<SAFEARRAY>> boundingRects) =>
      _vtable.GetBoundingRectangles.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> boundingRects)>()(ptr, boundingRects);

  /// Returns the innermost UI Automation element that encloses the text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getenclosingelement>.
  int getEnclosingElement(Pointer<VTablePointer> enclosingElement) =>
      _vtable.GetEnclosingElement.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> enclosingElement)>()(
          ptr, enclosingElement);

  /// Returns the plain text of the text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-gettext>.
  int getText(int maxLength, Pointer<Pointer<Utf16>> text) =>
      _vtable.GetText.asFunction<
          int Function(VTablePointer lpVtbl, int maxLength,
              Pointer<Pointer<Utf16>> text)>()(ptr, maxLength, text);

  /// Moves the text range forward or backward by the specified number of text
  /// units.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-move>.
  int move(int unit, int count, Pointer<Int32> moved) =>
      _vtable.Move.asFunction<
          int Function(VTablePointer lpVtbl, int unit, int count,
              Pointer<Int32> moved)>()(ptr, unit, count, moved);

  /// Moves one endpoint of the text range the specified number of text units
  /// within the document range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-moveendpointbyunit>.
  int moveEndpointByUnit(
          int endpoint, int unit, int count, Pointer<Int32> moved) =>
      _vtable.MoveEndpointByUnit.asFunction<
          int Function(VTablePointer lpVtbl, int endpoint, int unit, int count,
              Pointer<Int32> moved)>()(ptr, endpoint, unit, count, moved);

  /// Moves one endpoint of the current text range to the specified endpoint of a
  /// second text range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-moveendpointbyrange>.
  int moveEndpointByRange(
          int srcEndPoint, VTablePointer range, int targetEndPoint) =>
      _vtable.MoveEndpointByRange.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int srcEndPoint,
              VTablePointer range,
              int targetEndPoint)>()(ptr, srcEndPoint, range, targetEndPoint);

  /// Selects the span of text that corresponds to this text range, and removes
  /// any previous selection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-select>.
  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Adds the text range to the collection of selected text ranges in a control
  /// that supports multiple, disjoint spans of selected text.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-addtoselection>.
  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Removes the text range from an existing collection of selected text in a
  /// text container that supports multiple, disjoint selections.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-removefromselection>.
  int removeFromSelection() => _vtable.RemoveFromSelection.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  /// Causes the text control to scroll until the text range is visible in the
  /// viewport.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-scrollintoview>.
  int scrollIntoView(int alignToTop) => _vtable.ScrollIntoView.asFunction<
      int Function(VTablePointer lpVtbl, int alignToTop)>()(ptr, alignToTop);

  /// Retrieves a collection of all embedded objects that fall within the text
  /// range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getchildren>.
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
