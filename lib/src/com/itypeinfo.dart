// itypeinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ITypeInfo = '{00020401-0000-0000-c000-000000000046}';

/// This section describes ITypeInfo, an interface typically used for
/// reading information about objects. For example, an object browser tool
/// can use ITypeInfo to extract information about the characteristics and
/// capabilities of objects from type libraries.
///
/// {@category com}
class ITypeInfo extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  ITypeInfo(super.ptr) : _vtable = ptr.ref.vtable.cast<ITypeInfoVtbl>().ref;

  final ITypeInfoVtbl _vtable;

  factory ITypeInfo.from(IUnknown interface) =>
      ITypeInfo(interface.toInterface(IID_ITypeInfo));

  int getTypeAttr(Pointer<Pointer<TYPEATTR>> ppTypeAttr) =>
      _vtable.GetTypeAttr.asFunction<
              int Function(Pointer, Pointer<Pointer<TYPEATTR>> ppTypeAttr)>()(
          ptr.ref.lpVtbl, ppTypeAttr);

  int getTypeComp(Pointer<Pointer<COMObject>> ppTComp) =>
      _vtable.GetTypeComp.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppTComp)>()(
          ptr.ref.lpVtbl, ppTComp);

  int getFuncDesc(int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc) =>
      _vtable.GetFuncDesc.asFunction<
              int Function(
                  Pointer, int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc)>()(
          ptr.ref.lpVtbl, index, ppFuncDesc);

  int getVarDesc(int index, Pointer<Pointer<VARDESC>> ppVarDesc) =>
      _vtable.GetVarDesc.asFunction<
              int Function(
                  Pointer, int index, Pointer<Pointer<VARDESC>> ppVarDesc)>()(
          ptr.ref.lpVtbl, index, ppVarDesc);

  int getNames(int memid, Pointer<Pointer<Utf16>> rgBstrNames, int cMaxNames,
          Pointer<Uint32> pcNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  Pointer,
                  int memid,
                  Pointer<Pointer<Utf16>> rgBstrNames,
                  int cMaxNames,
                  Pointer<Uint32> pcNames)>()(
          ptr.ref.lpVtbl, memid, rgBstrNames, cMaxNames, pcNames);

  int getRefTypeOfImplType(int index, Pointer<Uint32> pRefType) =>
      _vtable.GetRefTypeOfImplType.asFunction<
              int Function(Pointer, int index, Pointer<Uint32> pRefType)>()(
          ptr.ref.lpVtbl, index, pRefType);

  int getImplTypeFlags(int index, Pointer<Int32> pImplTypeFlags) =>
      _vtable.GetImplTypeFlags.asFunction<
              int Function(
                  Pointer, int index, Pointer<Int32> pImplTypeFlags)>()(
          ptr.ref.lpVtbl, index, pImplTypeFlags);

  int getIDsOfNames(Pointer<Pointer<Utf16>> rgszNames, int cNames,
          Pointer<Int32> pMemId) =>
      _vtable.GetIDsOfNames.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> rgszNames,
                  int cNames, Pointer<Int32> pMemId)>()(
          ptr.ref.lpVtbl, rgszNames, cNames, pMemId);

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
                  Pointer,
                  Pointer pvInstance,
                  int memid,
                  int wFlags,
                  Pointer<DISPPARAMS> pDispParams,
                  Pointer<VARIANT> pVarResult,
                  Pointer<EXCEPINFO> pExcepInfo,
                  Pointer<Uint32> puArgErr)>()(ptr.ref.lpVtbl, pvInstance,
          memid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);

  int getDocumentation(
          int memid,
          Pointer<Pointer<Utf16>> pBstrName,
          Pointer<Pointer<Utf16>> pBstrDocString,
          Pointer<Uint32> pdwHelpContext,
          Pointer<Pointer<Utf16>> pBstrHelpFile) =>
      _vtable.GetDocumentation.asFunction<
              int Function(
                  Pointer,
                  int memid,
                  Pointer<Pointer<Utf16>> pBstrName,
                  Pointer<Pointer<Utf16>> pBstrDocString,
                  Pointer<Uint32> pdwHelpContext,
                  Pointer<Pointer<Utf16>> pBstrHelpFile)>()(ptr.ref.lpVtbl,
          memid, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile);

  int getDllEntry(int memid, int invKind, Pointer<Pointer<Utf16>> pBstrDllName,
          Pointer<Pointer<Utf16>> pBstrName, Pointer<Uint16> pwOrdinal) =>
      _vtable.GetDllEntry.asFunction<
              int Function(
                  Pointer,
                  int memid,
                  int invKind,
                  Pointer<Pointer<Utf16>> pBstrDllName,
                  Pointer<Pointer<Utf16>> pBstrName,
                  Pointer<Uint16> pwOrdinal)>()(
          ptr.ref.lpVtbl, memid, invKind, pBstrDllName, pBstrName, pwOrdinal);

  int getRefTypeInfo(int hRefType, Pointer<Pointer<COMObject>> ppTInfo) =>
      _vtable.GetRefTypeInfo.asFunction<
              int Function(Pointer, int hRefType,
                  Pointer<Pointer<COMObject>> ppTInfo)>()(
          ptr.ref.lpVtbl, hRefType, ppTInfo);

  int addressOfMember(int memid, int invKind, Pointer<Pointer> ppv) =>
      _vtable.AddressOfMember.asFunction<
          int Function(Pointer, int memid, int invKind,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, memid, invKind, ppv);

  int createInstance(Pointer<COMObject> pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObj) =>
      _vtable.CreateInstance.asFunction<
              int Function(Pointer, Pointer<COMObject> pUnkOuter,
                  Pointer<GUID> riid, Pointer<Pointer> ppvObj)>()(
          ptr.ref.lpVtbl, pUnkOuter, riid, ppvObj);

  int getMops(int memid, Pointer<Pointer<Utf16>> pBstrMops) =>
      _vtable.GetMops.asFunction<
              int Function(
                  Pointer, int memid, Pointer<Pointer<Utf16>> pBstrMops)>()(
          ptr.ref.lpVtbl, memid, pBstrMops);

  int getContainingTypeLib(
          Pointer<Pointer<COMObject>> ppTLib, Pointer<Uint32> pIndex) =>
      _vtable.GetContainingTypeLib.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppTLib,
              Pointer<Uint32> pIndex)>()(ptr.ref.lpVtbl, ppTLib, pIndex);

  void releaseTypeAttr(Pointer<TYPEATTR> pTypeAttr) => _vtable.ReleaseTypeAttr
          .asFunction<void Function(Pointer, Pointer<TYPEATTR> pTypeAttr)>()(
      ptr.ref.lpVtbl, pTypeAttr);

  void releaseFuncDesc(Pointer<FUNCDESC> pFuncDesc) => _vtable.ReleaseFuncDesc
          .asFunction<void Function(Pointer, Pointer<FUNCDESC> pFuncDesc)>()(
      ptr.ref.lpVtbl, pFuncDesc);

  void releaseVarDesc(Pointer<VARDESC> pVarDesc) =>
      _vtable.ReleaseVarDesc.asFunction<
          void Function(
              Pointer, Pointer<VARDESC> pVarDesc)>()(ptr.ref.lpVtbl, pVarDesc);
}

/// @nodoc
base class ITypeInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<TYPEATTR>> ppTypeAttr)>>
      GetTypeAttr;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppTComp)>>
      GetTypeComp;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 index,
              Pointer<Pointer<FUNCDESC>> ppFuncDesc)>> GetFuncDesc;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 index, Pointer<Pointer<VARDESC>> ppVarDesc)>>
      GetVarDesc;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 memid,
              Pointer<Pointer<Utf16>> rgBstrNames,
              Uint32 cMaxNames,
              Pointer<Uint32> pcNames)>> GetNames;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 index, Pointer<Uint32> pRefType)>>
      GetRefTypeOfImplType;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 index, Pointer<Int32> pImplTypeFlags)>>
      GetImplTypeFlags;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<Utf16>> rgszNames,
              Uint32 cNames, Pointer<Int32> pMemId)>> GetIDsOfNames;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer pvInstance,
              Int32 memid,
              Uint16 wFlags,
              Pointer<DISPPARAMS> pDispParams,
              Pointer<VARIANT> pVarResult,
              Pointer<EXCEPINFO> pExcepInfo,
              Pointer<Uint32> puArgErr)>> Invoke;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 memid,
              Pointer<Pointer<Utf16>> pBstrName,
              Pointer<Pointer<Utf16>> pBstrDocString,
              Pointer<Uint32> pdwHelpContext,
              Pointer<Pointer<Utf16>> pBstrHelpFile)>> GetDocumentation;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 memid,
              Int32 invKind,
              Pointer<Pointer<Utf16>> pBstrDllName,
              Pointer<Pointer<Utf16>> pBstrName,
              Pointer<Uint16> pwOrdinal)>> GetDllEntry;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 hRefType,
              Pointer<Pointer<COMObject>> ppTInfo)>> GetRefTypeInfo;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 memid, Int32 invKind, Pointer<Pointer> ppv)>>
      AddressOfMember;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pUnkOuter,
              Pointer<GUID> riid, Pointer<Pointer> ppvObj)>> CreateInstance;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 memid, Pointer<Pointer<Utf16>> pBstrMops)>>
      GetMops;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppTLib,
              Pointer<Uint32> pIndex)>> GetContainingTypeLib;
  external Pointer<
          NativeFunction<Void Function(Pointer, Pointer<TYPEATTR> pTypeAttr)>>
      ReleaseTypeAttr;
  external Pointer<
          NativeFunction<Void Function(Pointer, Pointer<FUNCDESC> pFuncDesc)>>
      ReleaseFuncDesc;
  external Pointer<
          NativeFunction<Void Function(Pointer, Pointer<VARDESC> pVarDesc)>>
      ReleaseVarDesc;
}
