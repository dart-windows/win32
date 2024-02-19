// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ITypeInfo = '{00020401-0000-0000-c000-000000000046}';

/// This section describes ITypeInfo, an interface typically used for reading
/// information about objects. For example, an object browser tool can use
/// ITypeInfo to extract information about the characteristics and capabilities
/// of objects from type libraries.
///
/// {@category com}
class ITypeInfo extends IUnknown {
  ITypeInfo(super.ptr) : _vtable = ptr.value.cast<ITypeInfoVtbl>().ref;

  final ITypeInfoVtbl _vtable;

  factory ITypeInfo.from(IUnknown interface) =>
      ITypeInfo(interface.toInterface(IID_ITypeInfo));

  int getTypeAttr(Pointer<Pointer<TYPEATTR>> ppTypeAttr) =>
      _vtable.GetTypeAttr.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<TYPEATTR>> ppTypeAttr)>()(ptr, ppTypeAttr);

  int getTypeComp(
          Pointer<VTablePointer> ppTComp) =>
      _vtable.GetTypeComp.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppTComp)>()(ptr, ppTComp);

  int getFuncDesc(int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc) =>
      _vtable.GetFuncDesc.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Pointer<FUNCDESC>> ppFuncDesc)>()(ptr, index, ppFuncDesc);

  int getVarDesc(int index, Pointer<Pointer<VARDESC>> ppVarDesc) =>
      _vtable.GetVarDesc.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Pointer<VARDESC>> ppVarDesc)>()(ptr, index, ppVarDesc);

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

  int getRefTypeOfImplType(int index, Pointer<Uint32> pRefType) =>
      _vtable.GetRefTypeOfImplType.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint32> pRefType)>()(ptr, index, pRefType);

  int getImplTypeFlags(int index, Pointer<Int32> pImplTypeFlags) =>
      _vtable.GetImplTypeFlags.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int32> pImplTypeFlags)>()(ptr, index, pImplTypeFlags);

  int getIDsOfNames(Pointer<Pointer<Utf16>> rgszNames, int cNames,
          Pointer<Int32> pMemId) =>
      _vtable.GetIDsOfNames.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> rgszNames,
              int cNames,
              Pointer<Int32> pMemId)>()(ptr, rgszNames, cNames, pMemId);

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

  int getRefTypeInfo(int hRefType, Pointer<VTablePointer> ppTInfo) =>
      _vtable.GetRefTypeInfo.asFunction<
          int Function(VTablePointer lpVtbl, int hRefType,
              Pointer<VTablePointer> ppTInfo)>()(ptr, hRefType, ppTInfo);

  int addressOfMember(int memid, int invKind, Pointer<Pointer> ppv) =>
      _vtable.AddressOfMember.asFunction<
          int Function(VTablePointer lpVtbl, int memid, int invKind,
              Pointer<Pointer> ppv)>()(ptr, memid, invKind, ppv);

  int createInstance(VTablePointer pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObj) =>
      _vtable.CreateInstance.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pUnkOuter,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>()(ptr, pUnkOuter, riid, ppvObj);

  int getMops(int memid, Pointer<Pointer<Utf16>> pBstrMops) =>
      _vtable.GetMops.asFunction<
          int Function(VTablePointer lpVtbl, int memid,
              Pointer<Pointer<Utf16>> pBstrMops)>()(ptr, memid, pBstrMops);

  int getContainingTypeLib(
          Pointer<VTablePointer> ppTLib, Pointer<Uint32> pIndex) =>
      _vtable.GetContainingTypeLib.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<VTablePointer> ppTLib,
              Pointer<Uint32> pIndex)>()(ptr, ppTLib, pIndex);

  void releaseTypeAttr(Pointer<TYPEATTR> pTypeAttr) =>
      _vtable.ReleaseTypeAttr.asFunction<
          void Function(VTablePointer lpVtbl,
              Pointer<TYPEATTR> pTypeAttr)>()(ptr, pTypeAttr);

  void releaseFuncDesc(Pointer<FUNCDESC> pFuncDesc) =>
      _vtable.ReleaseFuncDesc.asFunction<
          void Function(VTablePointer lpVtbl,
              Pointer<FUNCDESC> pFuncDesc)>()(ptr, pFuncDesc);

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
