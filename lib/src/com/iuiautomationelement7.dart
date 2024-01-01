// iuiautomationelement7.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../variant.dart';
import 'iuiautomationelement6.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement7 = '{204e8572-cfc3-4c11-b0c8-7da7420750b7}';

/// Extends the IUIAutomationElement6 interface.
///
/// {@category com}
class IUIAutomationElement7 extends IUIAutomationElement6 {
  // vtable begins at 110, is 5 entries long.
  IUIAutomationElement7(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationElement7Vtbl>().ref;

  final IUIAutomationElement7Vtbl _vtable;

  factory IUIAutomationElement7.from(IUnknown interface) =>
      IUIAutomationElement7(interface.toInterface(IID_IUIAutomationElement7));

  int findFirstWithOptions(
          int scope,
          Pointer<COMObject> condition,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindFirstWithOptions.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  int traversalOptions,
                  Pointer<COMObject> root,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, traversalOptions, root, found);

  int findAllWithOptions(
          int scope,
          Pointer<COMObject> condition,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindAllWithOptions.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  int traversalOptions,
                  Pointer<COMObject> root,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, traversalOptions, root, found);

  int findFirstWithOptionsBuildCache(
          int scope,
          Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindFirstWithOptionsBuildCache.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  Pointer<COMObject> cacheRequest,
                  int traversalOptions,
                  Pointer<COMObject> root,
                  Pointer<Pointer<COMObject>> found)>()(ptr.ref.lpVtbl, scope,
          condition, cacheRequest, traversalOptions, root, found);

  int findAllWithOptionsBuildCache(
          int scope,
          Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindAllWithOptionsBuildCache.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  Pointer<COMObject> cacheRequest,
                  int traversalOptions,
                  Pointer<COMObject> root,
                  Pointer<Pointer<COMObject>> found)>()(ptr.ref.lpVtbl, scope,
          condition, cacheRequest, traversalOptions, root, found);

  int getCurrentMetadataValue(
          int targetId, int metadataId, Pointer<VARIANT> returnVal) =>
      _vtable.GetCurrentMetadataValue.asFunction<
              int Function(Pointer, int targetId, int metadataId,
                  Pointer<VARIANT> returnVal)>()(
          ptr.ref.lpVtbl, targetId, metadataId, returnVal);
}

/// @nodoc
base class IUIAutomationElement7Vtbl extends Struct {
  external IUIAutomationElement6Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 scope,
              Pointer<COMObject> condition,
              Int32 traversalOptions,
              Pointer<COMObject> root,
              Pointer<Pointer<COMObject>> found)>> FindFirstWithOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 scope,
              Pointer<COMObject> condition,
              Int32 traversalOptions,
              Pointer<COMObject> root,
              Pointer<Pointer<COMObject>> found)>> FindAllWithOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Int32 scope,
                  Pointer<COMObject> condition,
                  Pointer<COMObject> cacheRequest,
                  Int32 traversalOptions,
                  Pointer<COMObject> root,
                  Pointer<Pointer<COMObject>> found)>>
      FindFirstWithOptionsBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 scope,
              Pointer<COMObject> condition,
              Pointer<COMObject> cacheRequest,
              Int32 traversalOptions,
              Pointer<COMObject> root,
              Pointer<Pointer<COMObject>> found)>> FindAllWithOptionsBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 targetId, Uint32 metadataId,
              Pointer<VARIANT> returnVal)>> GetCurrentMetadataValue;
}
