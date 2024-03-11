// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ITypeInfo = '{00020401-0000-0000-c000-000000000046}';

/// Used for reading information about objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-itypeinfo>.
///
/// {@category com}
class ITypeInfo extends IUnknown {
  ITypeInfo(super.ptr) : _vtable = ptr.value.cast<ITypeInfoVtbl>().ref;

  final ITypeInfoVtbl _vtable;

  /// Creates a new instance of `ITypeInfo` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ITypeInfo` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ITypeInfo.from(IUnknown interface) =>
      ITypeInfo(interface.toInterface(IID_ITypeInfo));

  /// Retrieves a TYPEATTR structure that contains the attributes of the type
  /// description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-gettypeattr>.
  int getTypeAttr(Pointer<Pointer<TYPEATTR>> ppTypeAttr) =>
      _vtable.GetTypeAttr.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<TYPEATTR>> ppTypeAttr)>()(ptr, ppTypeAttr);

  /// Retrieves the ITypeComp interface for the type description, which enables a
  /// client compiler to bind to the type description's members.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-gettypecomp>.
  int getTypeComp(
          Pointer<VTablePointer> ppTComp) =>
      _vtable.GetTypeComp.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppTComp)>()(ptr, ppTComp);

  /// Retrieves the FUNCDESC structure that contains information about a specified
  /// function.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getfuncdesc>.
  int getFuncDesc(int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc) =>
      _vtable.GetFuncDesc.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Pointer<FUNCDESC>> ppFuncDesc)>()(ptr, index, ppFuncDesc);

  /// Retrieves a VARDESC structure that describes the specified variable.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getvardesc>.
  int getVarDesc(int index, Pointer<Pointer<VARDESC>> ppVarDesc) =>
      _vtable.GetVarDesc.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Pointer<VARDESC>> ppVarDesc)>()(ptr, index, ppVarDesc);

  /// Retrieves the variable with the specified member ID or the name of the
  /// property or method and the parameters that correspond to the specified
  /// function ID.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getnames>.
  int getNames(int memid, Pointer<Pointer<Utf16>> rgBstrNames, int cMaxNames,
          Pointer<Uint32> pcNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int memid,
                  Pointer<Pointer<Utf16>> rgBstrNames,
                  int cMaxNames,
                  Pointer<Uint32> pcNames)>()(
          ptr, memid, rgBstrNames, cMaxNames, pcNames);

  /// If a type description describes a COM class, it retrieves the type
  /// description of the implemented interface types.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getreftypeofimpltype>.
  int getRefTypeOfImplType(int index, Pointer<Uint32> pRefType) =>
      _vtable.GetRefTypeOfImplType.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint32> pRefType)>()(ptr, index, pRefType);

  /// Retrieves the IMPLTYPEFLAGS enumeration for one implemented interface or
  /// base interface in a type description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getimpltypeflags>.
  int getImplTypeFlags(int index, Pointer<Int32> pImplTypeFlags) =>
      _vtable.GetImplTypeFlags.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int32> pImplTypeFlags)>()(ptr, index, pImplTypeFlags);

  /// Maps between member names and member IDs, and parameter names and parameter
  /// IDs.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getidsofnames>.
  int getIDsOfNames(Pointer<Pointer<Utf16>> rgszNames, int cNames,
          Pointer<Int32> pMemId) =>
      _vtable.GetIDsOfNames.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> rgszNames,
              int cNames,
              Pointer<Int32> pMemId)>()(ptr, rgszNames, cNames, pMemId);

  /// Invokes a method, or accesses a property of an object, that implements the
  /// interface described by the type description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-invoke>.
  int invoke(
          Pointer pvInstance,
          int memid,
          int wFlags,
          Pointer<DISPPARAMS> pDispParams,
          Pointer<VARIANT> pVarResult,
          Pointer<EXCEPINFO> pExcepInfo,
          Pointer<Uint32> puArgErr) =>
      _vtable.Invoke.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer pvInstance,
                  int memid,
                  int wFlags,
                  Pointer<DISPPARAMS> pDispParams,
                  Pointer<VARIANT> pVarResult,
                  Pointer<EXCEPINFO> pExcepInfo,
                  Pointer<Uint32> puArgErr)>()(ptr, pvInstance, memid, wFlags,
          pDispParams, pVarResult, pExcepInfo, puArgErr);

  /// Retrieves the documentation string, the complete Help file name and path,
  /// and the context ID for the Help topic for a specified type description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getdocumentation>.
  int getDocumentation(
          int memid,
          Pointer<Pointer<Utf16>>? pBstrName,
          Pointer<Pointer<Utf16>>? pBstrDocString,
          Pointer<Uint32> pdwHelpContext,
          Pointer<Pointer<Utf16>>? pBstrHelpFile) =>
      _vtable.GetDocumentation.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int memid,
                  Pointer<Pointer<Utf16>> pBstrName,
                  Pointer<Pointer<Utf16>> pBstrDocString,
                  Pointer<Uint32> pdwHelpContext,
                  Pointer<Pointer<Utf16>> pBstrHelpFile)>()(
          ptr,
          memid,
          pBstrName ?? nullptr,
          pBstrDocString ?? nullptr,
          pdwHelpContext,
          pBstrHelpFile ?? nullptr);

  /// Retrieves a description or specification of an entry point for a function in
  /// a DLL.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getdllentry>.
  int getDllEntry(int memid, int invKind, Pointer<Pointer<Utf16>>? pBstrDllName,
          Pointer<Pointer<Utf16>>? pBstrName, Pointer<Uint16> pwOrdinal) =>
      _vtable.GetDllEntry.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int memid,
                  int invKind,
                  Pointer<Pointer<Utf16>> pBstrDllName,
                  Pointer<Pointer<Utf16>> pBstrName,
                  Pointer<Uint16> pwOrdinal)>()(ptr, memid, invKind,
          pBstrDllName ?? nullptr, pBstrName ?? nullptr, pwOrdinal);

  /// If a type description references other type descriptions, it retrieves the
  /// referenced type descriptions.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getreftypeinfo>.
  int getRefTypeInfo(int hRefType, Pointer<VTablePointer> ppTInfo) =>
      _vtable.GetRefTypeInfo.asFunction<
          int Function(VTablePointer lpVtbl, int hRefType,
              Pointer<VTablePointer> ppTInfo)>()(ptr, hRefType, ppTInfo);

  /// Retrieves the addresses of static functions or variables, such as those
  /// defined in a DLL.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-addressofmember>.
  int addressOfMember(int memid, int invKind, Pointer<Pointer> ppv) =>
      _vtable.AddressOfMember.asFunction<
          int Function(VTablePointer lpVtbl, int memid, int invKind,
              Pointer<Pointer> ppv)>()(ptr, memid, invKind, ppv);

  /// Creates a new instance of a type that describes a component object class
  /// (coclass).
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-createinstance>.
  int createInstance(VTablePointer pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObj) =>
      _vtable.CreateInstance.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pUnkOuter,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>()(ptr, pUnkOuter, riid, ppvObj);

  /// Retrieves marshaling information.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getmops>.
  int getMops(int memid, Pointer<Pointer<Utf16>> pBstrMops) =>
      _vtable.GetMops.asFunction<
          int Function(VTablePointer lpVtbl, int memid,
              Pointer<Pointer<Utf16>> pBstrMops)>()(ptr, memid, pBstrMops);

  /// Retrieves the containing type library and the index of the type description
  /// within that type library.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-getcontainingtypelib>.
  int getContainingTypeLib(
          Pointer<VTablePointer> ppTLib, Pointer<Uint32> pIndex) =>
      _vtable.GetContainingTypeLib.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<VTablePointer> ppTLib,
              Pointer<Uint32> pIndex)>()(ptr, ppTLib, pIndex);

  /// Releases a TYPEATTR previously returned by `ITypeInfo.getTypeAttr`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasetypeattr>.
  void releaseTypeAttr(Pointer<TYPEATTR> pTypeAttr) =>
      _vtable.ReleaseTypeAttr.asFunction<
          void Function(VTablePointer lpVtbl,
              Pointer<TYPEATTR> pTypeAttr)>()(ptr, pTypeAttr);

  /// Releases a FUNCDESC previously returned by `ITypeInfo.getFuncDesc`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasefuncdesc>.
  void releaseFuncDesc(Pointer<FUNCDESC> pFuncDesc) =>
      _vtable.ReleaseFuncDesc.asFunction<
          void Function(VTablePointer lpVtbl,
              Pointer<FUNCDESC> pFuncDesc)>()(ptr, pFuncDesc);

  /// Releases a VARDESC previously returned by `ITypeInfo.getVarDesc`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypeinfo-releasevardesc>.
  void releaseVarDesc(Pointer<VARDESC> pVarDesc) =>
      _vtable.ReleaseVarDesc.asFunction<
              void Function(VTablePointer lpVtbl, Pointer<VARDESC> pVarDesc)>()(
          ptr, pVarDesc);
}

/// @nodoc
base class ITypeInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<TYPEATTR>> ppTypeAttr)>>
      GetTypeAttr;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppTComp)>>
      GetTypeComp;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Pointer<FUNCDESC>> ppFuncDesc)>> GetFuncDesc;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Pointer<VARDESC>> ppVarDesc)>> GetVarDesc;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 memid,
              Pointer<Pointer<Utf16>> rgBstrNames,
              Uint32 cMaxNames,
              Pointer<Uint32> pcNames)>> GetNames;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint32> pRefType)>> GetRefTypeOfImplType;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int32> pImplTypeFlags)>> GetImplTypeFlags;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> rgszNames,
              Uint32 cNames,
              Pointer<Int32> pMemId)>> GetIDsOfNames;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer pvInstance,
              Int32 memid,
              Uint16 wFlags,
              Pointer<DISPPARAMS> pDispParams,
              Pointer<VARIANT> pVarResult,
              Pointer<EXCEPINFO> pExcepInfo,
              Pointer<Uint32> puArgErr)>> Invoke;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 memid,
              Pointer<Pointer<Utf16>> pBstrName,
              Pointer<Pointer<Utf16>> pBstrDocString,
              Pointer<Uint32> pdwHelpContext,
              Pointer<Pointer<Utf16>> pBstrHelpFile)>> GetDocumentation;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 memid,
              Int32 invKind,
              Pointer<Pointer<Utf16>> pBstrDllName,
              Pointer<Pointer<Utf16>> pBstrName,
              Pointer<Uint16> pwOrdinal)>> GetDllEntry;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 hRefType,
              Pointer<VTablePointer> ppTInfo)>> GetRefTypeInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 memid, Int32 invKind,
              Pointer<Pointer> ppv)>> AddressOfMember;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pUnkOuter,
              Pointer<GUID> riid, Pointer<Pointer> ppvObj)>> CreateInstance;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 memid,
              Pointer<Pointer<Utf16>> pBstrMops)>> GetMops;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<VTablePointer> ppTLib,
              Pointer<Uint32> pIndex)>> GetContainingTypeLib;
  external Pointer<
          NativeFunction<
              Void Function(VTablePointer lpVtbl, Pointer<TYPEATTR> pTypeAttr)>>
      ReleaseTypeAttr;
  external Pointer<
          NativeFunction<
              Void Function(VTablePointer lpVtbl, Pointer<FUNCDESC> pFuncDesc)>>
      ReleaseFuncDesc;
  external Pointer<
          NativeFunction<
              Void Function(VTablePointer lpVtbl, Pointer<VARDESC> pVarDesc)>>
      ReleaseVarDesc;
}
