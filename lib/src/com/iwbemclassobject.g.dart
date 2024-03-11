// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

/// Contains and manipulates both class definitions and class object instances.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemclassobject>.
///
/// {@category com}
class IWbemClassObject extends IUnknown {
  IWbemClassObject(super.ptr)
      : _vtable = ptr.value.cast<IWbemClassObjectVtbl>().ref;

  final IWbemClassObjectVtbl _vtable;

  /// Creates a new instance of `IWbemClassObject` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWbemClassObject` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWbemClassObject.from(IUnknown interface) =>
      IWbemClassObject(interface.toInterface(IID_IWbemClassObject));

  /// Returns an interface pointer that allows read and write operations on the
  /// set of qualifiers for the entire class object, whether the object is an
  /// instance or a class definition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getqualifierset>.
  int getQualifierSet(Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetQualifierSet.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppQualSet)>()(ptr, ppQualSet);

  /// Retrieves the specified property value, if it exists.
  ///
  /// This method can also return system properties.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-get>.
  int get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          Pointer<Int32>? pType, Pointer<Int32>? plFlavor) =>
      _vtable.Get.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, wszName, lFlags, pVal, pType ?? nullptr, plFlavor ?? nullptr);

  /// Sets a named property to a new value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-put>.
  int put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          int type) =>
      _vtable.Put.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> wszName,
              int lFlags,
              Pointer<VARIANT> pVal,
              int type)>()(ptr, wszName, lFlags, pVal, type);

  /// Deletes the specified property from a CIM class definition and all of its
  /// qualifiers.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-delete>.
  int delete(Pointer<Utf16> wszName) => _vtable.Delete.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> wszName)>()(ptr, wszName);

  /// Retrieves the names of the properties in the object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getnames>.
  int getNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT> pQualifierVal, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> wszQualifierName,
                  int lFlags,
                  Pointer<VARIANT> pQualifierVal,
                  Pointer<Pointer<SAFEARRAY>> pNames)>()(
          ptr, wszQualifierName, lFlags, pQualifierVal, pNames);

  /// Resets an enumeration back to the beginning of the enumeration.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-beginenumeration>.
  int beginEnumeration(int lEnumFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(VTablePointer lpVtbl, int lEnumFlags)>()(ptr, lEnumFlags);

  /// Retrieves the next property in an enumeration that started with
  /// `IWbemClassObject.beginEnumeration`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-next>.
  int next(int lFlags, Pointer<Pointer<Utf16>> strName, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int lFlags,
                  Pointer<Pointer<Utf16>> strName,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr, lFlags, strName, pVal, pType, plFlavor);

  /// Terminates an enumeration sequence started with
  /// `IWbemClassObject.beginEnumeration`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-endenumeration>.
  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Gets the qualifier set for a particular property in the class object.
  ///
  /// You can use this method with properties that are a member of an instance or
  /// a class definition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getpropertyqualifierset>.
  int getPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetPropertyQualifierSet.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> wszProperty,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszProperty, ppQualSet);

  /// Returns a new object that is a complete clone of the current object.
  ///
  /// The new object has a COM reference count of 1.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-clone>.
  int clone(Pointer<VTablePointer> ppCopy) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppCopy)>()(ptr, ppCopy);

  /// Returns a textual rendering of the object in the MOF syntax.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getobjecttext>.
  int getObjectText(int lFlags, Pointer<Pointer<Utf16>> pstrObjectText) =>
      _vtable.GetObjectText.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags,
                  Pointer<Pointer<Utf16>> pstrObjectText)>()(
          ptr, lFlags, pstrObjectText);

  /// Use the `IWbemClassObject.spawnDerivedClass` method to create a newly
  /// derived class object from the current object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-spawnderivedclass>.
  int spawnDerivedClass(int lFlags, Pointer<VTablePointer> ppNewClass) =>
      _vtable.SpawnDerivedClass.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              Pointer<VTablePointer> ppNewClass)>()(ptr, lFlags, ppNewClass);

  /// Use the `IWbemClassObject.spawnInstance` method to create a new instance of
  /// a class.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-spawninstance>.
  int spawnInstance(int lFlags, Pointer<VTablePointer> ppNewInstance) =>
      _vtable.SpawnInstance.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags,
                  Pointer<VTablePointer> ppNewInstance)>()(
          ptr, lFlags, ppNewInstance);

  /// Compares an object to another Windows Management object.
  ///
  /// Note that there are certain constraints in this comparison process.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-compareto>.
  int compareTo(int lFlags, VTablePointer pCompareTo) =>
      _vtable.CompareTo.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              VTablePointer pCompareTo)>()(ptr, lFlags, pCompareTo);

  /// Retrieves the name of the class in which a particular property was
  /// introduced.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getpropertyorigin>.
  int getPropertyOrigin(
          Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetPropertyOrigin.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
          ptr, wszName, pstrClassName);

  /// Determines if the current class or instance derives from a specified parent
  /// class.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-inheritsfrom>.
  int inheritsFrom(Pointer<Utf16> strAncestor) =>
      _vtable.InheritsFrom.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> strAncestor)>()(
          ptr, strAncestor);

  /// Returns information about the requested method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethod>.
  int getMethod(
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.GetMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, wszName, lFlags, ppInSignature, ppOutSignature);

  /// Used to create a method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-putmethod>.
  int putMethod(Pointer<Utf16> wszName, int lFlags, VTablePointer pInSignature,
          VTablePointer pOutSignature) =>
      _vtable.PutMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  VTablePointer pInSignature,
                  VTablePointer pOutSignature)>()(
          ptr, wszName, lFlags, pInSignature, pOutSignature);

  /// Use the `IWbemClassObject.deleteMethod` method to delete a method.
  ///
  /// This call is supported only if the current object is a CIM class definition.
  /// Method manipulation is not available from IWbemClassObject pointers which
  /// point to CIM instances.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-deletemethod>.
  int deleteMethod(Pointer<Utf16> wszName) => _vtable.DeleteMethod.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> wszName)>()(ptr, wszName);

  /// Use the `IWbemClassObject.beginMethodEnumeration` method call to begin an
  /// enumeration of the methods available for the object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-beginmethodenumeration>.
  int beginMethodEnumeration(int lEnumFlags) =>
      _vtable.BeginMethodEnumeration.asFunction<
          int Function(
              VTablePointer lpVtbl, int lEnumFlags)>()(ptr, lEnumFlags);

  /// Used to retrieve the next method in a method enumeration sequence that
  /// starts with a call to `IWbemClassObject.beginMethodEnumeration`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-nextmethod>.
  int nextMethod(
          int lFlags,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<VTablePointer> ppInSignature,
          Pointer<VTablePointer> ppOutSignature) =>
      _vtable.NextMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int lFlags,
                  Pointer<Pointer<Utf16>> pstrName,
                  Pointer<VTablePointer> ppInSignature,
                  Pointer<VTablePointer> ppOutSignature)>()(
          ptr, lFlags, pstrName, ppInSignature, ppOutSignature);

  /// Used to terminate a method enumeration sequence started with
  /// `IWbemClassObject.beginMethodEnumeration`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-endmethodenumeration>.
  int endMethodEnumeration() => _vtable.EndMethodEnumeration.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  /// The `IWbemClassObject.getMethodQualifierSet` is used to retrieve the
  /// qualifier set for a particular method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethodqualifierset>.
  int getMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<VTablePointer> ppQualSet) =>
      _vtable.GetMethodQualifierSet.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> wszMethod,
              Pointer<VTablePointer> ppQualSet)>()(ptr, wszMethod, ppQualSet);

  /// Used to determine the class for which a method was declared.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemclassobject-getmethodorigin>.
  int getMethodOrigin(Pointer<Utf16> wszMethodName,
          Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetMethodOrigin.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> wszMethodName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
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
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Get;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
              Int32 lFlags, Pointer<VARIANT> pVal, Int32 type)>> Put;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName)>>
      Delete;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> wszQualifierName,
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
              Pointer<Pointer<Utf16>> strName,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Next;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszProperty,
              Pointer<VTablePointer> ppQualSet)>> GetPropertyQualifierSet;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppCopy)>> Clone;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrObjectText)>> GetObjectText;
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetPropertyOrigin;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Utf16> strAncestor)>> InheritsFrom;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> GetMethod;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              VTablePointer pInSignature,
              VTablePointer pOutSignature)>> PutMethod;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName)>>
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
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<VTablePointer> ppInSignature,
              Pointer<VTablePointer> ppOutSignature)>> NextMethod;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndMethodEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszMethod,
              Pointer<VTablePointer> ppQualSet)>> GetMethodQualifierSet;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszMethodName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetMethodOrigin;
}

/// @nodoc
const WbemClassObject = '{9a653086-174f-11d2-b5f9-00104b703efd}';
