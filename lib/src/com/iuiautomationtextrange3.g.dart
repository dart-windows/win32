// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iuiautomationtextrange2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextRange3 = '{6a315d69-5512-4c2e-85f0-53fce6dd4bc2}';

/// Extends the IUIAutomationTextRange2 interface to support faster access to
/// the underlying rich text data on a text range.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrange3>.
///
/// {@category com}
class IUIAutomationTextRange3 extends IUIAutomationTextRange2 {
  IUIAutomationTextRange3(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextRange3Vtbl>().ref;

  final IUIAutomationTextRange3Vtbl _vtable;

  factory IUIAutomationTextRange3.from(IUnknown interface) =>
      IUIAutomationTextRange3(
          interface.toInterface(IID_IUIAutomationTextRange3));

  int getEnclosingElementBuildCache(VTablePointer cacheRequest,
          Pointer<VTablePointer> enclosingElement) =>
      _vtable.GetEnclosingElementBuildCache.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
                  Pointer<VTablePointer> enclosingElement)>()(
          ptr, cacheRequest, enclosingElement);

  int getChildrenBuildCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> children) =>
      _vtable.GetChildrenBuildCache.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> children)>()(ptr, cacheRequest, children);

  int getAttributeValues(Pointer<Int32> attributeIds, int attributeIdCount,
          Pointer<Pointer<SAFEARRAY>> attributeValues) =>
      _vtable.GetAttributeValues.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Int32> attributeIds,
                  int attributeIdCount,
                  Pointer<Pointer<SAFEARRAY>> attributeValues)>()(
          ptr, attributeIds, attributeIdCount, attributeValues);
}

/// @nodoc
base class IUIAutomationTextRange3Vtbl extends Struct {
  external IUIAutomationTextRange2Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
                  Pointer<VTablePointer> enclosingElement)>>
      GetEnclosingElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> children)>> GetChildrenBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Int32> attributeIds,
              Int32 attributeIdCount,
              Pointer<Pointer<SAFEARRAY>> attributeValues)>> GetAttributeValues;
}