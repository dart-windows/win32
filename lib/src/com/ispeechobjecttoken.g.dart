// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
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

  BSTR get id {
    final objectId = calloc<BSTR>();
    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> objectId)>()(ptr, objectId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = objectId.value;
      return retValue;
    } finally {
      free(objectId);
    }
  }

  VTablePointer get dataKey {
    final dataKey = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_DataKey.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> dataKey)>()(ptr, dataKey);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = dataKey.value;
      return retValue;
    } finally {
      free(dataKey);
    }
  }

  VTablePointer get category {
    final category = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_Category.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> category)>()(ptr, category);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = category.value;
      return retValue;
    } finally {
      free(category);
    }
  }

  int getDescription(int locale, Pointer<BSTR> description) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer lpVtbl, int locale,
              Pointer<BSTR> description)>()(ptr, locale, description);

  int setId(BSTR id, BSTR categoryID, int createIfNotExist) =>
      _vtable.SetId.asFunction<
          int Function(VTablePointer lpVtbl, BSTR id, BSTR categoryID,
              int createIfNotExist)>()(ptr, id, categoryID, createIfNotExist);

  int getAttribute(BSTR attributeName, Pointer<BSTR> attributeValue) =>
      _vtable.GetAttribute.asFunction<
              int Function(VTablePointer lpVtbl, BSTR attributeName,
                  Pointer<BSTR> attributeValue)>()(
          ptr, attributeName, attributeValue);

  int createInstance(VTablePointer? pUnkOuter, int clsContext,
          Pointer<VTablePointer> object) =>
      _vtable.CreateInstance.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pUnkOuter,
                  int clsContext, Pointer<VTablePointer> object)>()(
          ptr, pUnkOuter ?? nullptr, clsContext, object);

  int remove(BSTR objectStorageCLSID) => _vtable.Remove.asFunction<
          int Function(VTablePointer lpVtbl, BSTR objectStorageCLSID)>()(
      ptr, objectStorageCLSID);

  int getStorageFileName(BSTR objectStorageCLSID, BSTR keyName, BSTR fileName,
          int folder, Pointer<BSTR> filePath) =>
      _vtable.GetStorageFileName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  BSTR objectStorageCLSID,
                  BSTR keyName,
                  BSTR fileName,
                  int folder,
                  Pointer<BSTR> filePath)>()(
          ptr, objectStorageCLSID, keyName, fileName, folder, filePath);

  int removeStorageFileName(
          BSTR objectStorageCLSID, BSTR keyName, int deleteFile) =>
      _vtable.RemoveStorageFileName.asFunction<
          int Function(
              VTablePointer lpVtbl,
              BSTR objectStorageCLSID,
              BSTR keyName,
              int deleteFile)>()(ptr, objectStorageCLSID, keyName, deleteFile);

  int isUISupported(BSTR typeOfUI, Pointer<VARIANT> extraData,
          VTablePointer? object, Pointer<VARIANT_BOOL> supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  BSTR typeOfUI,
                  Pointer<VARIANT> extraData,
                  VTablePointer object,
                  Pointer<VARIANT_BOOL> supported)>()(
          ptr, typeOfUI, extraData, object ?? nullptr, supported);

  int displayUI(int hWnd, BSTR title, BSTR typeOfUI, Pointer<VARIANT> extraData,
          VTablePointer? object) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int hWnd,
                  BSTR title,
                  BSTR typeOfUI,
                  Pointer<VARIANT> extraData,
                  VTablePointer object)>()(
          ptr, hWnd, title, typeOfUI, extraData, object ?? nullptr);

  int matchesAttributes(BSTR attributes, Pointer<VARIANT_BOOL> matches) =>
      _vtable.MatchesAttributes.asFunction<
          int Function(VTablePointer lpVtbl, BSTR attributes,
              Pointer<VARIANT_BOOL> matches)>()(ptr, attributes, matches);
}

/// @nodoc
base class ISpeechObjectTokenVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> objectId)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> dataKey)>>
      get_DataKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> category)>>
      get_Category;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 locale,
              Pointer<BSTR> description)>> GetDescription;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BSTR id, BSTR categoryID,
              VARIANT_BOOL createIfNotExist)>> SetId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BSTR attributeName,
              Pointer<BSTR> attributeValue)>> GetAttribute;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pUnkOuter,
              Uint32 clsContext,
              Pointer<VTablePointer> object)>> CreateInstance;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BSTR objectStorageCLSID)>>
      Remove;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              BSTR objectStorageCLSID,
              BSTR keyName,
              BSTR fileName,
              Int32 folder,
              Pointer<BSTR> filePath)>> GetStorageFileName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BSTR objectStorageCLSID,
              BSTR keyName, VARIANT_BOOL deleteFile)>> RemoveStorageFileName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              BSTR typeOfUI,
              Pointer<VARIANT> extraData,
              VTablePointer object,
              Pointer<VARIANT_BOOL> supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 hWnd,
              BSTR title,
              BSTR typeOfUI,
              Pointer<VARIANT> extraData,
              VTablePointer object)>> DisplayUI;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BSTR attributes,
              Pointer<VARIANT_BOOL> matches)>> MatchesAttributes;
}
