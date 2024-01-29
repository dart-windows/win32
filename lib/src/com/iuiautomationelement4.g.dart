// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iuiautomationelement3.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement4 = '{3b6e233c-52fb-4063-a4c9-77c075c2a06b}';

/// Extends the IUIAutomationElement3 interface.
///
/// {@category com}
class IUIAutomationElement4 extends IUIAutomationElement3 {
  IUIAutomationElement4(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement4Vtbl>().ref;

  final IUIAutomationElement4Vtbl _vtable;

  factory IUIAutomationElement4.from(IUnknown interface) =>
      IUIAutomationElement4(interface.toInterface(IID_IUIAutomationElement4));

  int get_CurrentPositionInSet(Pointer<Int32> retVal) =>
      _vtable.get_CurrentPositionInSet
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentSizeOfSet(Pointer<Int32> retVal) =>
      _vtable.get_CurrentSizeOfSet
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentLevel(Pointer<Int32> retVal) => _vtable.get_CurrentLevel
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CurrentAnnotationTypes.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int get_CurrentAnnotationObjects(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentAnnotationObjects.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedPositionInSet(Pointer<Int32> retVal) =>
      _vtable.get_CachedPositionInSet
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedSizeOfSet(Pointer<Int32> retVal) => _vtable.get_CachedSizeOfSet
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedLevel(Pointer<Int32> retVal) => _vtable.get_CachedLevel
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CachedAnnotationTypes.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int get_CachedAnnotationObjects(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedAnnotationObjects.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationElement4Vtbl extends Struct {
  external IUIAutomationElement3Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentPositionInSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentSizeOfSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentLevel;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentAnnotationTypes;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentAnnotationObjects;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedPositionInSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedSizeOfSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedLevel;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedAnnotationTypes;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedAnnotationObjects;
}
