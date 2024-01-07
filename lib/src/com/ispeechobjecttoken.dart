// ispeechobjecttoken.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechObjectToken = '{c74a3adc-b727-4500-a84a-b526721c8b8c}';

/// {@category com}
class ISpeechObjectToken extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  ISpeechObjectToken(super.ptr)
      : _vtable = ptr.value.value.cast<ISpeechObjectTokenVtbl>().ref;

  final ISpeechObjectTokenVtbl _vtable;

  factory ISpeechObjectToken.from(IUnknown interface) =>
      ISpeechObjectToken(interface.toInterface(IID_ISpeechObjectToken));

  Pointer<Utf16> get id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Id.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> ObjectId)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get dataKey {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_DataKey.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> DataKey)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get category {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_Category.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> Category)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int getDescription(int Locale, Pointer<Pointer<Utf16>> Description) =>
      _vtable.GetDescription.asFunction<
              int Function(VTablePointer, int Locale,
                  Pointer<Pointer<Utf16>> Description)>()(
          ptr.value, Locale, Description);

  int setId(
          Pointer<Utf16> Id, Pointer<Utf16> CategoryID, int CreateIfNotExist) =>
      _vtable.SetId.asFunction<
              int Function(VTablePointer, Pointer<Utf16> Id,
                  Pointer<Utf16> CategoryID, int CreateIfNotExist)>()(
          ptr.value, Id, CategoryID, CreateIfNotExist);

  int getAttribute(Pointer<Utf16> AttributeName,
          Pointer<Pointer<Utf16>> AttributeValue) =>
      _vtable.GetAttribute.asFunction<
              int Function(VTablePointer, Pointer<Utf16> AttributeName,
                  Pointer<Pointer<Utf16>> AttributeValue)>()(
          ptr.value, AttributeName, AttributeValue);

  int createInstance(Pointer<VTablePointer> pUnkOuter, int ClsContext,
          Pointer<Pointer<VTablePointer>> Object) =>
      _vtable.CreateInstance.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pUnkOuter,
                  int ClsContext, Pointer<Pointer<VTablePointer>> Object)>()(
          ptr.value, pUnkOuter, ClsContext, Object);

  int remove(Pointer<Utf16> ObjectStorageCLSID) => _vtable.Remove.asFunction<
          int Function(VTablePointer, Pointer<Utf16> ObjectStorageCLSID)>()(
      ptr.value, ObjectStorageCLSID);

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
          ptr.value, ObjectStorageCLSID, KeyName, FileName, Folder, FilePath);

  int removeStorageFileName(Pointer<Utf16> ObjectStorageCLSID,
          Pointer<Utf16> KeyName, int DeleteFile) =>
      _vtable.RemoveStorageFileName.asFunction<
              int Function(VTablePointer, Pointer<Utf16> ObjectStorageCLSID,
                  Pointer<Utf16> KeyName, int DeleteFile)>()(
          ptr.value, ObjectStorageCLSID, KeyName, DeleteFile);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          Pointer<VTablePointer> Object, Pointer<Int16> Supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  Pointer<VTablePointer> Object,
                  Pointer<Int16> Supported)>()(
          ptr.value, TypeOfUI, ExtraData, Object, Supported);

  int displayUI(int hWnd, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData, Pointer<VTablePointer> Object) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer,
                  int hWnd,
                  Pointer<Utf16> Title,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  Pointer<VTablePointer> Object)>()(
          ptr.value, hWnd, Title, TypeOfUI, ExtraData, Object);

  int matchesAttributes(Pointer<Utf16> Attributes, Pointer<Int16> Matches) =>
      _vtable.MatchesAttributes.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Attributes,
              Pointer<Int16> Matches)>()(ptr.value, Attributes, Matches);
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
              Pointer<VTablePointer> pUnkOuter,
              Uint32 ClsContext,
              Pointer<Pointer<VTablePointer>> Object)>> CreateInstance;
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
              Pointer<VTablePointer> Object,
              Pointer<Int16> Supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 hWnd,
              Pointer<Utf16> Title,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<VTablePointer> Object)>> DisplayUI;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Attributes,
              Pointer<Int16> Matches)>> MatchesAttributes;
}
