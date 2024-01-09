// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

/// The IWbemClassObject interface contains and manipulates both class
/// definitions and class object instances.
///
/// {@category com}
class IWbemClassObject extends IUnknown {
  IWbemClassObject(super.ptr)
      : _vtable = ptr.value.cast<IWbemClassObjectVtbl>().ref;

  final IWbemClassObjectVtbl _vtable;

  factory IWbemClassObject.from(IUnknown interface) =>
      IWbemClassObject(interface.toInterface(IID_IWbemClassObject));

  int getQualifierSet(Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetQualifierSet.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> ppQualSet)>()(
          ptr, ppQualSet);

  int get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Get.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, wszName, lFlags, pVal, pType, plFlavor);

  int put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          int Type) =>
      _vtable.Put.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> wszName,
              int lFlags,
              Pointer<VARIANT> pVal,
              int Type)>()(ptr, wszName, lFlags, pVal, Type);

  int delete(Pointer<Utf16> wszName) => _vtable.Delete.asFunction<
      int Function(VTablePointer, Pointer<Utf16> wszName)>()(ptr, wszName);

  int getNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT> pQualifierVal, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> wszQualifierName,
                  int lFlags,
                  Pointer<VARIANT> pQualifierVal,
                  Pointer<Pointer<SAFEARRAY>> pNames)>()(
          ptr, wszQualifierName, lFlags, pQualifierVal, pNames);

  int beginEnumeration(int lEnumFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(VTablePointer, int lEnumFlags)>()(ptr, lEnumFlags);

  int next(int lFlags, Pointer<Pointer<Utf16>> strName, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer,
                  int lFlags,
                  Pointer<Pointer<Utf16>> strName,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, lFlags, strName, pVal, pType, plFlavor);

  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer)>()(ptr);

  int getPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetPropertyQualifierSet.asFunction<
          int Function(VTablePointer, Pointer<Utf16> wszProperty,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszProperty, ppQualSet);

  int clone(Pointer<VTablePointer> ppCopy) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> ppCopy)>()(ptr, ppCopy);

  int getObjectText(int lFlags, Pointer<Pointer<Utf16>> pstrObjectText) =>
      _vtable.GetObjectText.asFunction<
              int Function(VTablePointer, int lFlags,
                  Pointer<Pointer<Utf16>> pstrObjectText)>()(
          ptr, lFlags, pstrObjectText);

  int spawnDerivedClass(int lFlags, Pointer<VTablePointer> ppNewClass) =>
      _vtable.SpawnDerivedClass.asFunction<
          int Function(VTablePointer, int lFlags,
              Pointer<VTablePointer> ppNewClass)>()(ptr, lFlags, ppNewClass);

  int spawnInstance(int lFlags, Pointer<VTablePointer> ppNewInstance) =>
      _vtable.SpawnInstance.asFunction<
              int Function(VTablePointer, int lFlags,
                  Pointer<VTablePointer> ppNewInstance)>()(
          ptr, lFlags, ppNewInstance);

  int compareTo(int lFlags, VTablePointer pCompareTo) =>
      _vtable.CompareTo.asFunction<
          int Function(VTablePointer, int lFlags,
              VTablePointer pCompareTo)>()(ptr, lFlags, pCompareTo);

  int getPropertyOrigin(
          Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetPropertyOrigin.asFunction<
              int Function(VTablePointer, Pointer<Utf16> wszName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
          ptr, wszName, pstrClassName);

  int inheritsFrom(Pointer<Utf16> strAncestor) =>
      _vtable.InheritsFrom.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> strAncestor)>()(ptr, strAncestor);

  int getMethod(
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.GetMethod.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, wszName, lFlags, ppInSignature, ppOutSignature);

  int putMethod(Pointer<Utf16> wszName, int lFlags, VTablePointer pInSignature,
          VTablePointer pOutSignature) =>
      _vtable.PutMethod.asFunction<
              int Function(VTablePointer, Pointer<Utf16> wszName, int lFlags,
                  VTablePointer pInSignature, VTablePointer pOutSignature)>()(
          ptr, wszName, lFlags, pInSignature, pOutSignature);

  int deleteMethod(Pointer<Utf16> wszName) => _vtable.DeleteMethod.asFunction<
      int Function(VTablePointer, Pointer<Utf16> wszName)>()(ptr, wszName);

  int beginMethodEnumeration(int lEnumFlags) =>
      _vtable.BeginMethodEnumeration.asFunction<
          int Function(VTablePointer, int lEnumFlags)>()(ptr, lEnumFlags);

  int nextMethod(
          int lFlags,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.NextMethod.asFunction<
              int Function(
                  VTablePointer,
                  int lFlags,
                  Pointer<Pointer<Utf16>> pstrName,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, lFlags, pstrName, ppInSignature, ppOutSignature);

  int endMethodEnumeration() =>
      _vtable.EndMethodEnumeration.asFunction<int Function(VTablePointer)>()(
          ptr);

  int getMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetMethodQualifierSet.asFunction<
          int Function(VTablePointer, Pointer<Utf16> wszMethod,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszMethod, ppQualSet);

  int getMethodOrigin(Pointer<Utf16> wszMethodName,
          Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetMethodOrigin.asFunction<
              int Function(VTablePointer, Pointer<Utf16> wszMethodName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
          ptr, wszMethodName, pstrClassName);
}

/// @nodoc
base class IWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppQualSet)>>
      GetQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Get;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pVal, Int32 Type)>> Put;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> wszName)>>
      Delete;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> wszQualifierName,
              Int32 lFlags,
              Pointer<VARIANT> pQualifierVal,
              Pointer<Pointer<SAFEARRAY>> pNames)>> GetNames;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 lEnumFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> strName,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      EndEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszProperty,
              Pointer<VTablePointer> ppQualSet)>> GetPropertyQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> ppCopy)>> Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrObjectText)>> GetObjectText;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<VTablePointer> ppNewClass)>> SpawnDerivedClass;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<VTablePointer> ppNewInstance)>> SpawnInstance;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 lFlags, VTablePointer pCompareTo)>>
      CompareTo;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetPropertyOrigin;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> strAncestor)>>
      InheritsFrom;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> GetMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              VTablePointer pInSignature,
              VTablePointer pOutSignature)>> PutMethod;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> wszName)>>
      DeleteMethod;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 lEnumFlags)>>
      BeginMethodEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> NextMethod;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      EndMethodEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszMethod,
              Pointer<VTablePointer> ppQualSet)>> GetMethodQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszMethodName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetMethodOrigin;
}

/// @nodoc
const CLSID_WbemClassObject = '{9a653086-174f-11d2-b5f9-00104b703efd}';

/// {@category com}
class WbemClassObject extends IWbemClassObject {
  WbemClassObject(super.ptr);

  factory WbemClassObject.createInstance() => WbemClassObject(
      createCOMObject(CLSID_WbemClassObject, IID_IWbemClassObject));
}
