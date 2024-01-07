// iuiautomationelement7.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

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
      : _vtable = ptr.value.value.cast<IUIAutomationElement7Vtbl>().ref;

  final IUIAutomationElement7Vtbl _vtable;

  factory IUIAutomationElement7.from(IUnknown interface) =>
      IUIAutomationElement7(interface.toInterface(IID_IUIAutomationElement7));

  int findFirstWithOptions(
          int scope,
          Pointer<VTablePointer> condition,
          int traversalOptions,
          Pointer<VTablePointer> root,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindFirstWithOptions.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  int traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, traversalOptions, root, found);

  int findAllWithOptions(
          int scope,
          Pointer<VTablePointer> condition,
          int traversalOptions,
          Pointer<VTablePointer> root,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindAllWithOptions.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  int traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, traversalOptions, root, found);

  int findFirstWithOptionsBuildCache(
          int scope,
          Pointer<VTablePointer> condition,
          Pointer<VTablePointer> cacheRequest,
          int traversalOptions,
          Pointer<VTablePointer> root,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindFirstWithOptionsBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  int traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>()(ptr.value, scope,
          condition, cacheRequest, traversalOptions, root, found);

  int findAllWithOptionsBuildCache(
          int scope,
          Pointer<VTablePointer> condition,
          Pointer<VTablePointer> cacheRequest,
          int traversalOptions,
          Pointer<VTablePointer> root,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindAllWithOptionsBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  int traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>()(ptr.value, scope,
          condition, cacheRequest, traversalOptions, root, found);

  int getCurrentMetadataValue(
          int targetId, int metadataId, Pointer<VARIANT> returnVal) =>
      _vtable.GetCurrentMetadataValue.asFunction<
              int Function(VTablePointer, int targetId, int metadataId,
                  Pointer<VARIANT> returnVal)>()(
          ptr.value, targetId, metadataId, returnVal);
}

/// @nodoc
base class IUIAutomationElement7Vtbl extends Struct {
  external IUIAutomationElement6Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Int32 traversalOptions,
              Pointer<VTablePointer> root,
              Pointer<Pointer<VTablePointer>> found)>> FindFirstWithOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Int32 traversalOptions,
              Pointer<VTablePointer> root,
              Pointer<Pointer<VTablePointer>> found)>> FindAllWithOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Int32 scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  Int32 traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>>
      FindFirstWithOptionsBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Int32 scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  Int32 traversalOptions,
                  Pointer<VTablePointer> root,
                  Pointer<Pointer<VTablePointer>> found)>>
      FindAllWithOptionsBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 targetId, Int32 metadataId,
              Pointer<VARIANT> returnVal)>> GetCurrentMetadataValue;
}
