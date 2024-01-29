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
const IID_IUIAutomationStylesPattern = '{85b5f0a2-bd79-484a-ad2b-388c9838d5fb}';

/// Enables Microsoft UI Automation clients to retrieve the visual styles
/// associated with an element in a document.
///
/// {@category com}
class IUIAutomationStylesPattern extends IUnknown {
  IUIAutomationStylesPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationStylesPatternVtbl>().ref;

  final IUIAutomationStylesPatternVtbl _vtable;

  factory IUIAutomationStylesPattern.from(IUnknown interface) =>
      IUIAutomationStylesPattern(
          interface.toInterface(IID_IUIAutomationStylesPattern));

  int get_CurrentStyleId(Pointer<Int32> retVal) => _vtable.get_CurrentStyleId
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentStyleName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentStyleName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentFillColor(Pointer<Int32> retVal) =>
      _vtable.get_CurrentFillColor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentFillPatternStyle(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentFillPatternStyle.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentShape(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentShape.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentFillPatternColor(Pointer<Int32> retVal) =>
      _vtable.get_CurrentFillPatternColor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentExtendedProperties(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentExtendedProperties.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int getCurrentExtendedPropertiesAsArray(
          Pointer<Pointer<ExtendedProperty>> propertyArray,
          Pointer<Int32> propertyCount) =>
      _vtable.GetCurrentExtendedPropertiesAsArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>()(
          ptr, propertyArray, propertyCount);

  int get_CachedStyleId(Pointer<Int32> retVal) => _vtable.get_CachedStyleId
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedStyleName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedStyleName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedFillColor(Pointer<Int32> retVal) => _vtable.get_CachedFillColor
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedFillPatternStyle(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedFillPatternStyle.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedShape(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedShape.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedFillPatternColor(Pointer<Int32> retVal) =>
      _vtable.get_CachedFillPatternColor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedExtendedProperties(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedExtendedProperties.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int getCachedExtendedPropertiesAsArray(
          Pointer<Pointer<ExtendedProperty>> propertyArray,
          Pointer<Int32> propertyCount) =>
      _vtable.GetCachedExtendedPropertiesAsArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>()(
          ptr, propertyArray, propertyCount);
}

/// @nodoc
base class IUIAutomationStylesPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentStyleId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentStyleName;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentFillColor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFillPatternStyle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentShape;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentFillPatternColor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentExtendedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>>
      GetCurrentExtendedPropertiesAsArray;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedStyleId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedStyleName;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedFillColor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFillPatternStyle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedShape;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedFillPatternColor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedExtendedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>>
      GetCachedExtendedPropertiesAsArray;
}
