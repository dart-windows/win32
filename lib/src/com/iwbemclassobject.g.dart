// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

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
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppQualSet)>()(ptr, ppQualSet);

  int get(PWSTR wszName, int lFlags, Pointer<VARIANT> pVal,
          Pointer<Int32>? pType, Pointer<Int32>? plFlavor) =>
      _vtable.Get.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  PWSTR wszName,
                  int lFlags,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, wszName, lFlags, pVal, pType ?? nullptr, plFlavor ?? nullptr);

  int put(PWSTR wszName, int lFlags, Pointer<VARIANT> pVal, int type) =>
      _vtable.Put.asFunction<
          int Function(
              VTablePointer lpVtbl,
              PWSTR wszName,
              int lFlags,
              Pointer<VARIANT> pVal,
              int type)>()(ptr, wszName, lFlags, pVal, type);

  int delete(PWSTR wszName) => _vtable.Delete.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR wszName)>()(ptr, wszName);

  int getNames(PWSTR wszQualifierName, int lFlags,
          Pointer<VARIANT> pQualifierVal, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  PWSTR wszQualifierName,
                  int lFlags,
                  Pointer<VARIANT> pQualifierVal,
                  Pointer<Pointer<SAFEARRAY>> pNames)>()(
          ptr, wszQualifierName, lFlags, pQualifierVal, pNames);

  int beginEnumeration(int lEnumFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(VTablePointer lpVtbl, int lEnumFlags)>()(ptr, lEnumFlags);

  int next(int lFlags, Pointer<BSTR> strName, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int lFlags,
                  Pointer<BSTR> strName,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, lFlags, strName, pVal, pType, plFlavor);

  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int getPropertyQualifierSet(
          PWSTR wszProperty, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetPropertyQualifierSet.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR wszProperty,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszProperty, ppQualSet);

  int clone(Pointer<VTablePointer> ppCopy) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppCopy)>()(ptr, ppCopy);

  int getObjectText(int lFlags, Pointer<BSTR> pstrObjectText) =>
      _vtable.GetObjectText.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              Pointer<BSTR> pstrObjectText)>()(ptr, lFlags, pstrObjectText);

  int spawnDerivedClass(int lFlags, Pointer<VTablePointer> ppNewClass) =>
      _vtable.SpawnDerivedClass.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              Pointer<VTablePointer> ppNewClass)>()(ptr, lFlags, ppNewClass);

  int spawnInstance(int lFlags, Pointer<VTablePointer> ppNewInstance) =>
      _vtable.SpawnInstance.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags,
                  Pointer<VTablePointer> ppNewInstance)>()(
          ptr, lFlags, ppNewInstance);

  int compareTo(int lFlags, VTablePointer pCompareTo) =>
      _vtable.CompareTo.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              VTablePointer pCompareTo)>()(ptr, lFlags, pCompareTo);

  int getPropertyOrigin(PWSTR wszName, Pointer<BSTR> pstrClassName) =>
      _vtable.GetPropertyOrigin.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR wszName,
              Pointer<BSTR> pstrClassName)>()(ptr, wszName, pstrClassName);

  int inheritsFrom(PWSTR strAncestor) => _vtable.InheritsFrom.asFunction<
      int Function(
          VTablePointer lpVtbl, PWSTR strAncestor)>()(ptr, strAncestor);

  int getMethod(PWSTR wszName, int lFlags, Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.GetMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  PWSTR wszName,
                  int lFlags,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, wszName, lFlags, ppInSignature, ppOutSignature);

  int putMethod(PWSTR wszName, int lFlags, VTablePointer pInSignature,
          VTablePointer pOutSignature) =>
      _vtable.PutMethod.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR wszName, int lFlags,
                  VTablePointer pInSignature, VTablePointer pOutSignature)>()(
          ptr, wszName, lFlags, pInSignature, pOutSignature);

  int deleteMethod(PWSTR wszName) => _vtable.DeleteMethod.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR wszName)>()(ptr, wszName);

  int beginMethodEnumeration(int lEnumFlags) =>
      _vtable.BeginMethodEnumeration.asFunction<
          int Function(
              VTablePointer lpVtbl, int lEnumFlags)>()(ptr, lEnumFlags);

  int nextMethod(
          int lFlags,
          Pointer<BSTR> pstrName,
          Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.NextMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int lFlags,
                  Pointer<BSTR> pstrName,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, lFlags, pstrName, ppInSignature, ppOutSignature);

  int endMethodEnumeration() => _vtable.EndMethodEnumeration.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  int getMethodQualifierSet(
          PWSTR wszMethod, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetMethodQualifierSet.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR wszMethod,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszMethod, ppQualSet);

  int getMethodOrigin(PWSTR wszMethodName, Pointer<BSTR> pstrClassName) =>
      _vtable.GetMethodOrigin.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR wszMethodName,
                  Pointer<BSTR> pstrClassName)>()(
          ptr, wszMethodName, pstrClassName);
}

/// @nodoc
base class IWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppQualSet)>>
      GetQualifierSet;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Get;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR wszName, Int32 lFlags,
              Pointer<VARIANT> pVal, Int32 type)>> Put;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR wszName)>>
      Delete;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR wszQualifierName,
              Int32 lFlags,
              Pointer<VARIANT> pQualifierVal,
              Pointer<Pointer<SAFEARRAY>> pNames)>> GetNames;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 lEnumFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lFlags,
              Pointer<BSTR> strName,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Next;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR wszProperty,
              Pointer<VTablePointer> ppQualSet)>> GetPropertyQualifierSet;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppCopy)>> Clone;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<BSTR> pstrObjectText)>> GetObjectText;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<VTablePointer> ppNewClass)>> SpawnDerivedClass;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<VTablePointer> ppNewInstance)>> SpawnInstance;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              VTablePointer pCompareTo)>> CompareTo;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR wszName,
              Pointer<BSTR> pstrClassName)>> GetPropertyOrigin;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR strAncestor)>>
      InheritsFrom;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR wszName,
              Int32 lFlags,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> GetMethod;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              PWSTR wszName,
              Int32 lFlags,
              VTablePointer pInSignature,
              VTablePointer pOutSignature)>> PutMethod;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR wszName)>>
      DeleteMethod;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 lEnumFlags)>>
      BeginMethodEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 lFlags,
              Pointer<BSTR> pstrName,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> NextMethod;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndMethodEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR wszMethod,
              Pointer<VTablePointer> ppQualSet)>> GetMethodQualifierSet;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR wszMethodName,
              Pointer<BSTR> pstrClassName)>> GetMethodOrigin;
}

/// @nodoc
const WbemClassObject = '{9a653086-174f-11d2-b5f9-00104b703efd}';
