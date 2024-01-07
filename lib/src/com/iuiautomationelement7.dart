// iuiautomationelement7.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'iuiautomationelement6.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement7 = '{204e8572-cfc3-4c11-b0c8-7da7420750b7}';

/// Extends the IUIAutomationElement6 interface.
///
/// {@category com}
class IUIAutomationElement7 extends IUIAutomationElement6 {
  IUIAutomationElement7(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement7Vtbl>().ref;

  final IUIAutomationElement7Vtbl _vtable;

  factory IUIAutomationElement7.from(IUnknown interface) =>
      IUIAutomationElement7(interface.toInterface(IID_IUIAutomationElement7));

  int findFirstWithOptions(
          int scope,
          VTablePointer condition,
          int traversalOptions,
          VTablePointer root,
          Pointer<VTablePointer> found) =>
      _vtable.FindFirstWithOptions.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  VTablePointer condition,
                  int traversalOptions,
                  VTablePointer root,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, traversalOptions, root, found);

  int findAllWithOptions(
          int scope,
          VTablePointer condition,
          int traversalOptions,
          VTablePointer root,
          Pointer<VTablePointer> found) =>
      _vtable.FindAllWithOptions.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  VTablePointer condition,
                  int traversalOptions,
                  VTablePointer root,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, traversalOptions, root, found);

  int findFirstWithOptionsBuildCache(
          int scope,
          VTablePointer condition,
          VTablePointer cacheRequest,
          int traversalOptions,
          VTablePointer root,
          Pointer<VTablePointer> found) =>
      _vtable.FindFirstWithOptionsBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  VTablePointer condition,
                  VTablePointer cacheRequest,
                  int traversalOptions,
                  VTablePointer root,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, traversalOptions, root, found);

  int findAllWithOptionsBuildCache(
          int scope,
          VTablePointer condition,
          VTablePointer cacheRequest,
          int traversalOptions,
          VTablePointer root,
          Pointer<VTablePointer> found) =>
      _vtable.FindAllWithOptionsBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  VTablePointer condition,
                  VTablePointer cacheRequest,
                  int traversalOptions,
                  VTablePointer root,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, traversalOptions, root, found);

  int getCurrentMetadataValue(
          int targetId, int metadataId, Pointer<VARIANT> returnVal) =>
      _vtable.GetCurrentMetadataValue.asFunction<
              int Function(VTablePointer, int targetId, int metadataId,
                  Pointer<VARIANT> returnVal)>()(
          ptr, targetId, metadataId, returnVal);
}

/// @nodoc
base class IUIAutomationElement7Vtbl extends Struct {
  external IUIAutomationElement6Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              Int32 traversalOptions,
              VTablePointer root,
              Pointer<VTablePointer> found)>> FindFirstWithOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              Int32 traversalOptions,
              VTablePointer root,
              Pointer<VTablePointer> found)>> FindAllWithOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Int32 traversalOptions,
              VTablePointer root,
              Pointer<VTablePointer> found)>> FindFirstWithOptionsBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Int32 traversalOptions,
              VTablePointer root,
              Pointer<VTablePointer> found)>> FindAllWithOptionsBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 targetId, Int32 metadataId,
              Pointer<VARIANT> returnVal)>> GetCurrentMetadataValue;
}
