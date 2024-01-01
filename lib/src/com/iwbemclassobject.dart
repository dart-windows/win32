// iwbemclassobject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

/// The IWbemClassObject interface contains and manipulates both class
/// definitions and class object instances.
///
/// {@category com}
class IWbemClassObject extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IWbemClassObject(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemClassObjectVtbl>().ref;

  final IWbemClassObjectVtbl _vtable;

  factory IWbemClassObject.from(IUnknown interface) =>
      IWbemClassObject(interface.toInterface(IID_IWbemClassObject));

  int getQualifierSet(Pointer<Pointer<COMObject>> ppQualSet) =>
      _vtable.GetQualifierSet.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppQualSet)>()(
          ptr.ref.lpVtbl, ppQualSet);

  int get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Get.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          int Type) =>
      _vtable.Put.asFunction<
          int Function(
              Pointer,
              Pointer<Utf16> wszName,
              int lFlags,
              Pointer<VARIANT> pVal,
              int Type)>()(ptr.ref.lpVtbl, wszName, lFlags, pVal, Type);

  int delete(Pointer<Utf16> wszName) => _vtable.Delete.asFunction<
      int Function(Pointer, Pointer<Utf16> wszName)>()(ptr.ref.lpVtbl, wszName);

  int getNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT> pQualifierVal, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> wszQualifierName,
                  int lFlags,
                  Pointer<VARIANT> pQualifierVal,
                  Pointer<Pointer<SAFEARRAY>> pNames)>()(
          ptr.ref.lpVtbl, wszQualifierName, lFlags, pQualifierVal, pNames);

  int beginEnumeration(int lEnumFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(Pointer, int lEnumFlags)>()(ptr.ref.lpVtbl, lEnumFlags);

  int next(int lFlags, Pointer<Pointer<Utf16>> strName, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      _vtable.Next.asFunction<
              int Function(
                  Pointer,
                  int lFlags,
                  Pointer<Pointer<Utf16>> strName,
                  Pointer<VARIANT> pVal,
                  Pointer<Int32> pType,
                  Pointer<Int32> plFlavor)>()(
          ptr.ref.lpVtbl, lFlags, strName, pVal, pType, plFlavor);

  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int getPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<Pointer<COMObject>> ppQualSet) =>
      _vtable.GetPropertyQualifierSet.asFunction<
              int Function(Pointer, Pointer<Utf16> wszProperty,
                  Pointer<Pointer<COMObject>> ppQualSet)>()(
          ptr.ref.lpVtbl, wszProperty, ppQualSet);

  int clone(Pointer<Pointer<COMObject>> ppCopy) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppCopy)>()(
      ptr.ref.lpVtbl, ppCopy);

  int getObjectText(int lFlags, Pointer<Pointer<Utf16>> pstrObjectText) =>
      _vtable.GetObjectText.asFunction<
              int Function(Pointer, int lFlags,
                  Pointer<Pointer<Utf16>> pstrObjectText)>()(
          ptr.ref.lpVtbl, lFlags, pstrObjectText);

  int spawnDerivedClass(int lFlags, Pointer<Pointer<COMObject>> ppNewClass) =>
      _vtable.SpawnDerivedClass.asFunction<
              int Function(Pointer, int lFlags,
                  Pointer<Pointer<COMObject>> ppNewClass)>()(
          ptr.ref.lpVtbl, lFlags, ppNewClass);

  int spawnInstance(int lFlags, Pointer<Pointer<COMObject>> ppNewInstance) =>
      _vtable.SpawnInstance.asFunction<
              int Function(Pointer, int lFlags,
                  Pointer<Pointer<COMObject>> ppNewInstance)>()(
          ptr.ref.lpVtbl, lFlags, ppNewInstance);

  int compareTo(int lFlags, Pointer<COMObject> pCompareTo) =>
      _vtable.CompareTo.asFunction<
              int Function(
                  Pointer, int lFlags, Pointer<COMObject> pCompareTo)>()(
          ptr.ref.lpVtbl, lFlags, pCompareTo);

  int getPropertyOrigin(
          Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetPropertyOrigin.asFunction<
              int Function(Pointer, Pointer<Utf16> wszName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
          ptr.ref.lpVtbl, wszName, pstrClassName);

  int inheritsFrom(Pointer<Utf16> strAncestor) => _vtable.InheritsFrom
          .asFunction<int Function(Pointer, Pointer<Utf16> strAncestor)>()(
      ptr.ref.lpVtbl, strAncestor);

  int getMethod(
          Pointer<Utf16> wszName,
          int lFlags,
          Pointer<Pointer<COMObject>> ppInSignature,
          Pointer<Pointer<COMObject>> ppOutSignature) =>
      _vtable.GetMethod.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<Pointer<COMObject>> ppInSignature,
                  Pointer<Pointer<COMObject>> ppOutSignature)>()(
          ptr.ref.lpVtbl, wszName, lFlags, ppInSignature, ppOutSignature);

  int putMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<COMObject> pInSignature, Pointer<COMObject> pOutSignature) =>
      _vtable.PutMethod.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> wszName,
                  int lFlags,
                  Pointer<COMObject> pInSignature,
                  Pointer<COMObject> pOutSignature)>()(
          ptr.ref.lpVtbl, wszName, lFlags, pInSignature, pOutSignature);

  int deleteMethod(Pointer<Utf16> wszName) => _vtable.DeleteMethod.asFunction<
      int Function(Pointer, Pointer<Utf16> wszName)>()(ptr.ref.lpVtbl, wszName);

  int beginMethodEnumeration(int lEnumFlags) =>
      _vtable.BeginMethodEnumeration.asFunction<
          int Function(Pointer, int lEnumFlags)>()(ptr.ref.lpVtbl, lEnumFlags);

  int nextMethod(
          int lFlags,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<Pointer<COMObject>> ppInSignature,
          Pointer<Pointer<COMObject>> ppOutSignature) =>
      _vtable.NextMethod.asFunction<
              int Function(
                  Pointer,
                  int lFlags,
                  Pointer<Pointer<Utf16>> pstrName,
                  Pointer<Pointer<COMObject>> ppInSignature,
                  Pointer<Pointer<COMObject>> ppOutSignature)>()(
          ptr.ref.lpVtbl, lFlags, pstrName, ppInSignature, ppOutSignature);

  int endMethodEnumeration() =>
      _vtable.EndMethodEnumeration.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int getMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<Pointer<COMObject>> ppQualSet) =>
      _vtable.GetMethodQualifierSet.asFunction<
              int Function(Pointer, Pointer<Utf16> wszMethod,
                  Pointer<Pointer<COMObject>> ppQualSet)>()(
          ptr.ref.lpVtbl, wszMethod, ppQualSet);

  int getMethodOrigin(Pointer<Utf16> wszMethodName,
          Pointer<Pointer<Utf16>> pstrClassName) =>
      _vtable.GetMethodOrigin.asFunction<
              int Function(Pointer, Pointer<Utf16> wszMethodName,
                  Pointer<Pointer<Utf16>> pstrClassName)>()(
          ptr.ref.lpVtbl, wszMethodName, pstrClassName);
}

/// @nodoc
base class IWbemClassObjectVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppQualSet)>>
      GetQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Get;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pVal, Int32 Type)>> Put;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Utf16> wszName)>> Delete;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> wszQualifierName,
              Int32 lFlags,
              Pointer<VARIANT> pQualifierVal,
              Pointer<Pointer<SAFEARRAY>> pNames)>> GetNames;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 lEnumFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> strName,
              Pointer<VARIANT> pVal,
              Pointer<Int32> pType,
              Pointer<Int32> plFlavor)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> EndEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszProperty,
              Pointer<Pointer<COMObject>> ppQualSet)>> GetPropertyQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppCopy)>> Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrObjectText)>> GetObjectText;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags,
              Pointer<Pointer<COMObject>> ppNewClass)>> SpawnDerivedClass;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags,
              Pointer<Pointer<COMObject>> ppNewInstance)>> SpawnInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 lFlags, Pointer<COMObject> pCompareTo)>> CompareTo;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetPropertyOrigin;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> strAncestor)>>
      InheritsFrom;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<Pointer<COMObject>> ppInSignature,
              Pointer<Pointer<COMObject>> ppOutSignature)>> GetMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> wszName,
              Int32 lFlags,
              Pointer<COMObject> pInSignature,
              Pointer<COMObject> pOutSignature)>> PutMethod;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> wszName)>>
      DeleteMethod;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 lEnumFlags)>>
      BeginMethodEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Pointer<COMObject>> ppInSignature,
              Pointer<Pointer<COMObject>> ppOutSignature)>> NextMethod;
  external Pointer<NativeFunction<Int32 Function(Pointer)>>
      EndMethodEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszMethod,
              Pointer<Pointer<COMObject>> ppQualSet)>> GetMethodQualifierSet;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszMethodName,
              Pointer<Pointer<Utf16>> pstrClassName)>> GetMethodOrigin;
}

/// @nodoc
const CLSID_WbemClassObject = '{9a653086-174f-11d2-b5f9-00104b703efd}';

/// {@category com}
class WbemClassObject extends IWbemClassObject {
  WbemClassObject(super.ptr);

  factory WbemClassObject.createInstance() => WbemClassObject(
      COMObject.createFromID(CLSID_WbemClassObject, IID_IWbemClassObject));
}
