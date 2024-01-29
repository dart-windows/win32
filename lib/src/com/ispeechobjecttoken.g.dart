// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechObjectToken = '{c74a3adc-b727-4500-a84a-b526721c8b8c}';

/// {@category com}
class ISpeechObjectToken extends IDispatch {
  ISpeechObjectToken(super.ptr)
      : _vtable = ptr.value.cast<ISpeechObjectTokenVtbl>().ref;

  final ISpeechObjectTokenVtbl _vtable;

  factory ISpeechObjectToken.from(IUnknown interface) =>
      ISpeechObjectToken(interface.toInterface(IID_ISpeechObjectToken));

  int get_Id(Pointer<Pointer<Utf16>> objectId) => _vtable.get_Id.asFunction<
      int Function(
          VTablePointer, Pointer<Pointer<Utf16>> objectId)>()(ptr, objectId);

  int get_DataKey(Pointer<VTablePointer> dataKey) => _vtable.get_DataKey
      .asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> dataKey)>()(ptr, dataKey);

  int get_Category(Pointer<VTablePointer> category) =>
      _vtable.get_Category.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> category)>()(ptr, category);

  int getDescription(int locale, Pointer<Pointer<Utf16>> description) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer, int locale,
              Pointer<Pointer<Utf16>> description)>()(ptr, locale, description);

  int setId(
          Pointer<Utf16> id, Pointer<Utf16> categoryID, int createIfNotExist) =>
      _vtable.SetId.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> id,
              Pointer<Utf16> categoryID,
              int createIfNotExist)>()(ptr, id, categoryID, createIfNotExist);

  int getAttribute(Pointer<Utf16> attributeName,
          Pointer<Pointer<Utf16>> attributeValue) =>
      _vtable.GetAttribute.asFunction<
              int Function(VTablePointer, Pointer<Utf16> attributeName,
                  Pointer<Pointer<Utf16>> attributeValue)>()(
          ptr, attributeName, attributeValue);

  int createInstance(VTablePointer? pUnkOuter, int clsContext,
          Pointer<VTablePointer> object) =>
      _vtable.CreateInstance.asFunction<
              int Function(VTablePointer, VTablePointer pUnkOuter,
                  int clsContext, Pointer<VTablePointer> object)>()(
          ptr, pUnkOuter ?? nullptr, clsContext, object);

  int remove(Pointer<Utf16> objectStorageCLSID) => _vtable.Remove.asFunction<
          int Function(VTablePointer, Pointer<Utf16> objectStorageCLSID)>()(
      ptr, objectStorageCLSID);

  int getStorageFileName(
          Pointer<Utf16> objectStorageCLSID,
          Pointer<Utf16> keyName,
          Pointer<Utf16> fileName,
          int folder,
          Pointer<Pointer<Utf16>> filePath) =>
      _vtable.GetStorageFileName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> objectStorageCLSID,
                  Pointer<Utf16> keyName,
                  Pointer<Utf16> fileName,
                  int folder,
                  Pointer<Pointer<Utf16>> filePath)>()(
          ptr, objectStorageCLSID, keyName, fileName, folder, filePath);

  int removeStorageFileName(Pointer<Utf16> objectStorageCLSID,
          Pointer<Utf16> keyName, int deleteFile) =>
      _vtable.RemoveStorageFileName.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> objectStorageCLSID,
              Pointer<Utf16> keyName,
              int deleteFile)>()(ptr, objectStorageCLSID, keyName, deleteFile);

  int isUISupported(Pointer<Utf16> typeOfUI, Pointer<VARIANT> extraData,
          VTablePointer? object, Pointer<Int16> supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> typeOfUI,
                  Pointer<VARIANT> extraData,
                  VTablePointer object,
                  Pointer<Int16> supported)>()(
          ptr, typeOfUI, extraData, object ?? nullptr, supported);

  int displayUI(int hWnd, Pointer<Utf16> title, Pointer<Utf16> typeOfUI,
          Pointer<VARIANT> extraData, VTablePointer? object) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer,
                  int hWnd,
                  Pointer<Utf16> title,
                  Pointer<Utf16> typeOfUI,
                  Pointer<VARIANT> extraData,
                  VTablePointer object)>()(
          ptr, hWnd, title, typeOfUI, extraData, object ?? nullptr);

  int matchesAttributes(Pointer<Utf16> attributes, Pointer<Int16> matches) =>
      _vtable.MatchesAttributes.asFunction<
          int Function(VTablePointer, Pointer<Utf16> attributes,
              Pointer<Int16> matches)>()(ptr, attributes, matches);
}

/// @nodoc
base class ISpeechObjectTokenVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> objectId)>>
      get_Id;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> dataKey)>>
      get_DataKey;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> category)>>
      get_Category;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 locale,
              Pointer<Pointer<Utf16>> description)>> GetDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> id,
              Pointer<Utf16> categoryID, Int16 createIfNotExist)>> SetId;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> attributeName,
              Pointer<Pointer<Utf16>> attributeValue)>> GetAttribute;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pUnkOuter,
              Uint32 clsContext,
              Pointer<VTablePointer> object)>> CreateInstance;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> objectStorageCLSID)>>
      Remove;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> objectStorageCLSID,
              Pointer<Utf16> keyName,
              Pointer<Utf16> fileName,
              Int32 folder,
              Pointer<Pointer<Utf16>> filePath)>> GetStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> objectStorageCLSID,
              Pointer<Utf16> keyName, Int16 deleteFile)>> RemoveStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              VTablePointer object,
              Pointer<Int16> supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 hWnd,
              Pointer<Utf16> title,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              VTablePointer object)>> DisplayUI;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> attributes,
              Pointer<Int16> matches)>> MatchesAttributes;
}
