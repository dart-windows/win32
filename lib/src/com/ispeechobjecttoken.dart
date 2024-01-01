// ispeechobjecttoken.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
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
      : _vtable = ptr.ref.vtable.cast<ISpeechObjectTokenVtbl>().ref;

  final ISpeechObjectTokenVtbl _vtable;

  factory ISpeechObjectToken.from(IUnknown interface) =>
      ISpeechObjectToken(interface.toInterface(IID_ISpeechObjectToken));

  Pointer<Utf16> get id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Id.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> ObjectId)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get dataKey {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_DataKey
            .asFunction<int Function(Pointer, Pointer<COMObject> DataKey)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get category {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Category
            .asFunction<int Function(Pointer, Pointer<COMObject> Category)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int getDescription(int Locale, Pointer<Pointer<Utf16>> Description) =>
      _vtable.GetDescription.asFunction<
              int Function(
                  Pointer, int Locale, Pointer<Pointer<Utf16>> Description)>()(
          ptr.ref.lpVtbl, Locale, Description);

  int setId(
          Pointer<Utf16> Id, Pointer<Utf16> CategoryID, int CreateIfNotExist) =>
      _vtable.SetId.asFunction<
              int Function(Pointer, Pointer<Utf16> Id,
                  Pointer<Utf16> CategoryID, int CreateIfNotExist)>()(
          ptr.ref.lpVtbl, Id, CategoryID, CreateIfNotExist);

  int getAttribute(Pointer<Utf16> AttributeName,
          Pointer<Pointer<Utf16>> AttributeValue) =>
      _vtable.GetAttribute.asFunction<
              int Function(Pointer, Pointer<Utf16> AttributeName,
                  Pointer<Pointer<Utf16>> AttributeValue)>()(
          ptr.ref.lpVtbl, AttributeName, AttributeValue);

  int createInstance(Pointer<COMObject> pUnkOuter, int ClsContext,
          Pointer<Pointer<COMObject>> Object) =>
      _vtable.CreateInstance.asFunction<
              int Function(Pointer, Pointer<COMObject> pUnkOuter,
                  int ClsContext, Pointer<Pointer<COMObject>> Object)>()(
          ptr.ref.lpVtbl, pUnkOuter, ClsContext, Object);

  int remove(Pointer<Utf16> ObjectStorageCLSID) => _vtable.Remove.asFunction<
          int Function(Pointer, Pointer<Utf16> ObjectStorageCLSID)>()(
      ptr.ref.lpVtbl, ObjectStorageCLSID);

  int getStorageFileName(
          Pointer<Utf16> ObjectStorageCLSID,
          Pointer<Utf16> KeyName,
          Pointer<Utf16> FileName,
          int Folder,
          Pointer<Pointer<Utf16>> FilePath) =>
      _vtable.GetStorageFileName.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> ObjectStorageCLSID,
                  Pointer<Utf16> KeyName,
                  Pointer<Utf16> FileName,
                  int Folder,
                  Pointer<Pointer<Utf16>> FilePath)>()(ptr.ref.lpVtbl,
          ObjectStorageCLSID, KeyName, FileName, Folder, FilePath);

  int removeStorageFileName(Pointer<Utf16> ObjectStorageCLSID,
          Pointer<Utf16> KeyName, int DeleteFile) =>
      _vtable.RemoveStorageFileName.asFunction<
              int Function(Pointer, Pointer<Utf16> ObjectStorageCLSID,
                  Pointer<Utf16> KeyName, int DeleteFile)>()(
          ptr.ref.lpVtbl, ObjectStorageCLSID, KeyName, DeleteFile);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          Pointer<COMObject> Object, Pointer<Int16> Supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  Pointer<COMObject> Object,
                  Pointer<Int16> Supported)>()(
          ptr.ref.lpVtbl, TypeOfUI, ExtraData, Object, Supported);

  int displayUI(int hWnd, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData, Pointer<COMObject> Object) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  Pointer,
                  int hWnd,
                  Pointer<Utf16> Title,
                  Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData,
                  Pointer<COMObject> Object)>()(
          ptr.ref.lpVtbl, hWnd, Title, TypeOfUI, ExtraData, Object);

  int matchesAttributes(Pointer<Utf16> Attributes, Pointer<Int16> Matches) =>
      _vtable.MatchesAttributes.asFunction<
          int Function(Pointer, Pointer<Utf16> Attributes,
              Pointer<Int16> Matches)>()(ptr.ref.lpVtbl, Attributes, Matches);
}

/// @nodoc
base class ISpeechObjectTokenVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<Utf16>> ObjectId)>> get_Id;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> DataKey)>>
      get_DataKey;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> Category)>>
      get_Category;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 Locale, Pointer<Pointer<Utf16>> Description)>>
      GetDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> Id, Pointer<Utf16> CategoryID,
              Int16 CreateIfNotExist)>> SetId;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> AttributeName,
              Pointer<Pointer<Utf16>> AttributeValue)>> GetAttribute;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pUnkOuter,
              Uint32 ClsContext,
              Pointer<Pointer<COMObject>> Object)>> CreateInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> ObjectStorageCLSID)>> Remove;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> ObjectStorageCLSID,
              Pointer<Utf16> KeyName,
              Pointer<Utf16> FileName,
              Int32 Folder,
              Pointer<Pointer<Utf16>> FilePath)>> GetStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> ObjectStorageCLSID,
              Pointer<Utf16> KeyName, Int16 DeleteFile)>> RemoveStorageFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<COMObject> Object,
              Pointer<Int16> Supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 hWnd,
              Pointer<Utf16> Title,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<COMObject> Object)>> DisplayUI;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> Attributes, Pointer<Int16> Matches)>>
      MatchesAttributes;
}
