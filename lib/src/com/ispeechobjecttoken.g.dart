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
import '../types.dart';
import '../utils.dart';
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

  Pointer<Utf16> get id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Id.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> ObjectId)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get dataKey {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_DataKey.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> DataKey)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get category {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_Category.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> Category)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getDescription(int Locale, Pointer<Pointer<Utf16>> Description) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer, int Locale,
              Pointer<Pointer<Utf16>> Description)>()(ptr, Locale, Description);

  int setId(
          Pointer<Utf16> Id, Pointer<Utf16> CategoryID, int CreateIfNotExist) =>
      _vtable.SetId.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> Id,
              Pointer<Utf16> CategoryID,
              int CreateIfNotExist)>()(ptr, Id, CategoryID, CreateIfNotExist);

  int getAttribute(Pointer<Utf16> AttributeName,
          Pointer<Pointer<Utf16>> AttributeValue) =>
      _vtable.GetAttribute.asFunction<
              int Function(VTablePointer, Pointer<Utf16> AttributeName,
                  Pointer<Pointer<Utf16>> AttributeValue)>()(
          ptr, AttributeName, AttributeValue);

  int createInstance(VTablePointer? pUnkOuter, int ClsContext,
          Pointer<VTablePointer> Object) =>
      _vtable.CreateInstance.asFunction<
              int Function(VTablePointer, VTablePointer pUnkOuter,
                  int ClsContext, Pointer<VTablePointer> Object)>()(
          ptr, pUnkOuter ?? nullptr, ClsContext, Object);

  int remove(Pointer<Utf16> ObjectStorageCLSID) => _vtable.Remove.asFunction<
          int Function(VTablePointer, Pointer<Utf16> ObjectStorageCLSID)>()(
      ptr, ObjectStorageCLSID);

  int getStorageFileName(
          Pointer<Utf16> ObjectStorageCLSID,
          Pointer<Utf16> KeyName,
          Pointer<Utf16> FileName,
          int Folder,
          Pointer<Pointer<Utf16>> FilePath) =>
      _vtable.GetStorageFileName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> ObjectStorageCLSID,
                  Pointer<Utf16> KeyName,
                  Pointer<Utf16> FileName,
                  int Folder,
                  Pointer<Pointer<Utf16>> FilePath)>()(
          ptr, ObjectStorageCLSID, KeyName, FileName, Folder, FilePath);

  int removeStorageFileName(Pointer<Utf16> ObjectStorageCLSID,
          Pointer<Utf16> KeyName, int DeleteFile) =>
      _vtable.RemoveStorageFileName.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> ObjectStorageCLSID,
              Pointer<Utf16> KeyName,
              int DeleteFile)>()(ptr, ObjectStorageCLSID, KeyName, DeleteFile);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          VTablePointer? Object, Pointer<Int16> Supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  VTablePointer Object,
                  Pointer<Int16> Supported)>()(
          ptr, TypeOfUI, ExtraData, Object ?? nullptr, Supported);

  int displayUI(int hWnd, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData, VTablePointer? Object) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer,
                  int hWnd,
                  Pointer<Utf16> Title,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  VTablePointer Object)>()(
          ptr, hWnd, Title, TypeOfUI, ExtraData, Object ?? nullptr);

  int matchesAttributes(Pointer<Utf16> Attributes, Pointer<Int16> Matches) =>
      _vtable.MatchesAttributes.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Attributes,
              Pointer<Int16> Matches)>()(ptr, Attributes, Matches);
}

/// @nodoc
base class ISpeechObjectTokenVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> ObjectId)>>
      get_Id;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> DataKey)>>
      get_DataKey;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> Category)>>
      get_Category;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 Locale,
              Pointer<Pointer<Utf16>> Description)>> GetDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Id,
              Pointer<Utf16> CategoryID, Int16 CreateIfNotExist)>> SetId;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> AttributeName,
              Pointer<Pointer<Utf16>> AttributeValue)>> GetAttribute;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pUnkOuter,
              Uint32 ClsContext,
              Pointer<VTablePointer> Object)>> CreateInstance;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> ObjectStorageCLSID)>>
      Remove;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> ObjectStorageCLSID,
              Pointer<Utf16> KeyName,
              Pointer<Utf16> FileName,
              Int32 Folder,
              Pointer<Pointer<Utf16>> FilePath)>> GetStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> ObjectStorageCLSID,
              Pointer<Utf16> KeyName, Int16 DeleteFile)>> RemoveStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              VTablePointer Object,
              Pointer<Int16> Supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 hWnd,
              Pointer<Utf16> Title,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              VTablePointer Object)>> DisplayUI;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Attributes,
              Pointer<Int16> Matches)>> MatchesAttributes;
}
