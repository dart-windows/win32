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
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataImport = '{7dac8207-d3ae-4c75-9b67-92801a497d44}';

/// Provides methods for importing and manipulating existing metadata from a
/// portable executable (PE) file or other source, such as a type library or a
/// stand-alone, run-time metadata binary.
///
/// {@category com}
class IMetaDataImport extends IUnknown {
  IMetaDataImport(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataImportVtbl>().ref;

  final IMetaDataImportVtbl _vtable;

  factory IMetaDataImport.from(IUnknown interface) =>
      IMetaDataImport(interface.toInterface(IID_IMetaDataImport));

  void closeEnum(Pointer hEnum) => _vtable.CloseEnum.asFunction<
      void Function(VTablePointer, Pointer hEnum)>()(ptr, hEnum);

  int countEnum(Pointer hEnum, Pointer<Uint32> pulCount) =>
      _vtable.CountEnum.asFunction<
          int Function(VTablePointer, Pointer hEnum,
              Pointer<Uint32> pulCount)>()(ptr, hEnum, pulCount);

  int resetEnum(Pointer hEnum, int ulPos) => _vtable.ResetEnum.asFunction<
      int Function(
          VTablePointer, Pointer hEnum, int ulPos)>()(ptr, hEnum, ulPos);

  int enumTypeDefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeDefs, int cMax,
          Pointer<Uint32> pcTypeDefs) =>
      _vtable.EnumTypeDefs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeDefs,
                  int cMax,
                  Pointer<Uint32> pcTypeDefs)>()(
          ptr, phEnum, rTypeDefs, cMax, pcTypeDefs);

  int enumInterfaceImpls(Pointer<Pointer> phEnum, int td,
          Pointer<Uint32> rImpls, int cMax, Pointer<Uint32> pcImpls) =>
      _vtable.EnumInterfaceImpls.asFunction<
              int Function(VTablePointer, Pointer<Pointer> phEnum, int td,
                  Pointer<Uint32> rImpls, int cMax, Pointer<Uint32> pcImpls)>()(
          ptr, phEnum, td, rImpls, cMax, pcImpls);

  int enumTypeRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeRefs, int cMax,
          Pointer<Uint32> pcTypeRefs) =>
      _vtable.EnumTypeRefs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeRefs,
                  int cMax,
                  Pointer<Uint32> pcTypeRefs)>()(
          ptr, phEnum, rTypeRefs, cMax, pcTypeRefs);

  int findTypeDefByName(Pointer<Utf16> szTypeDef, int tkEnclosingClass,
          Pointer<Uint32> ptd) =>
      _vtable.FindTypeDefByName.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> szTypeDef,
              int tkEnclosingClass,
              Pointer<Uint32> ptd)>()(ptr, szTypeDef, tkEnclosingClass, ptd);

  int getScopeProps(Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName,
          Pointer<GUID> pmvid) =>
      _vtable.GetScopeProps.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> szName,
              int cchName,
              Pointer<Uint32> pchName,
              Pointer<GUID> pmvid)>()(ptr, szName, cchName, pchName, pmvid);

  int getModuleFromScope(Pointer<Uint32> pmd) => _vtable.GetModuleFromScope
      .asFunction<int Function(VTablePointer, Pointer<Uint32> pmd)>()(ptr, pmd);

  int getTypeDefProps(
          int td,
          Pointer<Utf16> szTypeDef,
          int cchTypeDef,
          Pointer<Uint32> pchTypeDef,
          Pointer<Uint32> pdwTypeDefFlags,
          Pointer<Uint32> ptkExtends) =>
      _vtable.GetTypeDefProps.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Utf16> szTypeDef,
                  int cchTypeDef,
                  Pointer<Uint32> pchTypeDef,
                  Pointer<Uint32> pdwTypeDefFlags,
                  Pointer<Uint32> ptkExtends)>()(ptr, td, szTypeDef, cchTypeDef,
          pchTypeDef, pdwTypeDefFlags, ptkExtends);

  int getInterfaceImplProps(
          int iiImpl, Pointer<Uint32> pClass, Pointer<Uint32> ptkIface) =>
      _vtable.GetInterfaceImplProps.asFunction<
          int Function(VTablePointer, int iiImpl, Pointer<Uint32> pClass,
              Pointer<Uint32> ptkIface)>()(ptr, iiImpl, pClass, ptkIface);

  int getTypeRefProps(int tr, Pointer<Uint32> ptkResolutionScope,
          Pointer<Utf16> szName, int cchName, Pointer<Uint32> pchName) =>
      _vtable.GetTypeRefProps.asFunction<
              int Function(
                  VTablePointer,
                  int tr,
                  Pointer<Uint32> ptkResolutionScope,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName)>()(
          ptr, tr, ptkResolutionScope, szName, cchName, pchName);

  int resolveTypeRef(int tr, Pointer<GUID> riid,
          Pointer<VTablePointer> ppIScope, Pointer<Uint32> ptd) =>
      _vtable.ResolveTypeRef.asFunction<
          int Function(
              VTablePointer,
              int tr,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIScope,
              Pointer<Uint32> ptd)>()(ptr, tr, riid, ppIScope, ptd);

  int enumMembers(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMembers,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMembers.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rMembers,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rMembers, cMax, pcTokens);

  int enumMembersWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMembers,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMembersWithName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rMembers,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rMembers, cMax, pcTokens);

  int enumMethods(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethods.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rMethods, cMax, pcTokens);

  int enumMethodsWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMethods,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethodsWithName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rMethods, cMax, pcTokens);

  int enumFields(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rFields,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumFields.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rFields,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rFields, cMax, pcTokens);

  int enumFieldsWithName(Pointer<Pointer> phEnum, int cl, Pointer<Utf16> szName,
          Pointer<Uint32> rFields, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumFieldsWithName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rFields,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rFields, cMax, pcTokens);

  int enumParams(Pointer<Pointer> phEnum, int mb, Pointer<Uint32> rParams,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumParams.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int mb,
                  Pointer<Uint32> rParams,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, mb, rParams, cMax, pcTokens);

  int enumMemberRefs(Pointer<Pointer> phEnum, int tkParent,
          Pointer<Uint32> rMemberRefs, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMemberRefs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int tkParent,
                  Pointer<Uint32> rMemberRefs,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, tkParent, rMemberRefs, cMax, pcTokens);

  int enumMethodImpls(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rMethodBody,
          Pointer<Uint32> rMethodDecl,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethodImpls.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rMethodBody,
                  Pointer<Uint32> rMethodDecl,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, td, rMethodBody, rMethodDecl, cMax, pcTokens);

  int enumPermissionSets(Pointer<Pointer> phEnum, int tk, int dwActions,
          Pointer<Uint32> rPermission, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumPermissionSets.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int tk,
                  int dwActions,
                  Pointer<Uint32> rPermission,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, tk, dwActions, rPermission, cMax, pcTokens);

  int findMember(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      _vtable.FindMember.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmb)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findMethod(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      _vtable.FindMethod.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmb)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findField(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmb) =>
      _vtable.FindField.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmb)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmb);

  int findMemberRef(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmr) =>
      _vtable.FindMemberRef.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmr)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmr);

  int getMethodProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szMethod,
          int cchMethod,
          Pointer<Uint32> pchMethod,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags) =>
      _vtable.GetMethodProps.asFunction<
              int Function(
                  VTablePointer,
                  int mb,
                  Pointer<Uint32> pClass,
                  Pointer<Utf16> szMethod,
                  int cchMethod,
                  Pointer<Uint32> pchMethod,
                  Pointer<Uint32> pdwAttr,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pcbSigBlob,
                  Pointer<Uint32> pulCodeRVA,
                  Pointer<Uint32> pdwImplFlags)>()(
          ptr,
          mb,
          pClass,
          szMethod,
          cchMethod,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

  int getMemberRefProps(
          int mr,
          Pointer<Uint32> ptk,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pbSig) =>
      _vtable.GetMemberRefProps.asFunction<
              int Function(
                  VTablePointer,
                  int mr,
                  Pointer<Uint32> ptk,
                  Pointer<Utf16> szMember,
                  int cchMember,
                  Pointer<Uint32> pchMember,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pbSig)>()(
          ptr, mr, ptk, szMember, cchMember, pchMember, ppvSigBlob, pbSig);

  int enumProperties(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rProperties,
          int cMax,
          Pointer<Uint32> pcProperties) =>
      _vtable.EnumProperties.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rProperties,
                  int cMax,
                  Pointer<Uint32> pcProperties)>()(
          ptr, phEnum, td, rProperties, cMax, pcProperties);

  int enumEvents(Pointer<Pointer> phEnum, int td, Pointer<Uint32> rEvents,
          int cMax, Pointer<Uint32> pcEvents) =>
      _vtable.EnumEvents.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rEvents,
                  int cMax,
                  Pointer<Uint32> pcEvents)>()(
          ptr, phEnum, td, rEvents, cMax, pcEvents);

  int getEventProps(
          int ev,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szEvent,
          int cchEvent,
          Pointer<Uint32> pchEvent,
          Pointer<Uint32> pdwEventFlags,
          Pointer<Uint32> ptkEventType,
          Pointer<Uint32> pmdAddOn,
          Pointer<Uint32> pmdRemoveOn,
          Pointer<Uint32> pmdFire,
          Pointer<Uint32> rmdOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      _vtable.GetEventProps.asFunction<
              int Function(
                  VTablePointer,
                  int ev,
                  Pointer<Uint32> pClass,
                  Pointer<Utf16> szEvent,
                  int cchEvent,
                  Pointer<Uint32> pchEvent,
                  Pointer<Uint32> pdwEventFlags,
                  Pointer<Uint32> ptkEventType,
                  Pointer<Uint32> pmdAddOn,
                  Pointer<Uint32> pmdRemoveOn,
                  Pointer<Uint32> pmdFire,
                  Pointer<Uint32> rmdOtherMethod,
                  int cMax,
                  Pointer<Uint32> pcOtherMethod)>()(
          ptr,
          ev,
          pClass,
          szEvent,
          cchEvent,
          pchEvent,
          pdwEventFlags,
          ptkEventType,
          pmdAddOn,
          pmdRemoveOn,
          pmdFire,
          rmdOtherMethod,
          cMax,
          pcOtherMethod);

  int enumMethodSemantics(Pointer<Pointer> phEnum, int mb,
          Pointer<Uint32> rEventProp, int cMax, Pointer<Uint32> pcEventProp) =>
      _vtable.EnumMethodSemantics.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int mb,
                  Pointer<Uint32> rEventProp,
                  int cMax,
                  Pointer<Uint32> pcEventProp)>()(
          ptr, phEnum, mb, rEventProp, cMax, pcEventProp);

  int getMethodSemantics(
          int mb, int tkEventProp, Pointer<Uint32> pdwSemanticsFlags) =>
      _vtable.GetMethodSemantics.asFunction<
              int Function(VTablePointer, int mb, int tkEventProp,
                  Pointer<Uint32> pdwSemanticsFlags)>()(
          ptr, mb, tkEventProp, pdwSemanticsFlags);

  int getClassLayout(
          int td,
          Pointer<Uint32> pdwPackSize,
          Pointer<COR_FIELD_OFFSET> rFieldOffset,
          int cMax,
          Pointer<Uint32> pcFieldOffset,
          Pointer<Uint32> pulClassSize) =>
      _vtable.GetClassLayout.asFunction<
              int Function(
                  VTablePointer,
                  int td,
                  Pointer<Uint32> pdwPackSize,
                  Pointer<COR_FIELD_OFFSET> rFieldOffset,
                  int cMax,
                  Pointer<Uint32> pcFieldOffset,
                  Pointer<Uint32> pulClassSize)>()(ptr, td, pdwPackSize,
          rFieldOffset, cMax, pcFieldOffset, pulClassSize);

  int getFieldMarshal(int tk, Pointer<Pointer<Uint8>> ppvNativeType,
          Pointer<Uint32> pcbNativeType) =>
      _vtable.GetFieldMarshal.asFunction<
              int Function(
                  VTablePointer,
                  int tk,
                  Pointer<Pointer<Uint8>> ppvNativeType,
                  Pointer<Uint32> pcbNativeType)>()(
          ptr, tk, ppvNativeType, pcbNativeType);

  int getRVA(
          int tk, Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags) =>
      _vtable.GetRVA.asFunction<
              int Function(VTablePointer, int tk, Pointer<Uint32> pulCodeRVA,
                  Pointer<Uint32> pdwImplFlags)>()(
          ptr, tk, pulCodeRVA, pdwImplFlags);

  int getPermissionSetProps(int pm, Pointer<Uint32> pdwAction,
          Pointer<Pointer> ppvPermission, Pointer<Uint32> pcbPermission) =>
      _vtable.GetPermissionSetProps.asFunction<
              int Function(
                  VTablePointer,
                  int pm,
                  Pointer<Uint32> pdwAction,
                  Pointer<Pointer> ppvPermission,
                  Pointer<Uint32> pcbPermission)>()(
          ptr, pm, pdwAction, ppvPermission, pcbPermission);

  int getSigFromToken(
          int mdSig, Pointer<Pointer<Uint8>> ppvSig, Pointer<Uint32> pcbSig) =>
      _vtable.GetSigFromToken.asFunction<
          int Function(VTablePointer, int mdSig, Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>()(ptr, mdSig, ppvSig, pcbSig);

  int getModuleRefProps(int mur, Pointer<Utf16> szName, int cchName,
          Pointer<Uint32> pchName) =>
      _vtable.GetModuleRefProps.asFunction<
          int Function(
              VTablePointer,
              int mur,
              Pointer<Utf16> szName,
              int cchName,
              Pointer<Uint32> pchName)>()(ptr, mur, szName, cchName, pchName);

  int enumModuleRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rModuleRefs,
          int cmax, Pointer<Uint32> pcModuleRefs) =>
      _vtable.EnumModuleRefs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rModuleRefs,
                  int cmax,
                  Pointer<Uint32> pcModuleRefs)>()(
          ptr, phEnum, rModuleRefs, cmax, pcModuleRefs);

  int getTypeSpecFromToken(int typespec, Pointer<Pointer<Uint8>> ppvSig,
          Pointer<Uint32> pcbSig) =>
      _vtable.GetTypeSpecFromToken.asFunction<
          int Function(
              VTablePointer,
              int typespec,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>()(ptr, typespec, ppvSig, pcbSig);

  int getNameFromToken(int tk, Pointer<Pointer<Int8>> pszUtf8NamePtr) =>
      _vtable.GetNameFromToken.asFunction<
              int Function(VTablePointer, int tk,
                  Pointer<Pointer<Int8>> pszUtf8NamePtr)>()(
          ptr, tk, pszUtf8NamePtr);

  int enumUnresolvedMethods(Pointer<Pointer> phEnum, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumUnresolvedMethods.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, rMethods, cMax, pcTokens);

  int getUserString(int stk, Pointer<Utf16> szString, int cchString,
          Pointer<Uint32> pchString) =>
      _vtable.GetUserString.asFunction<
              int Function(VTablePointer, int stk, Pointer<Utf16> szString,
                  int cchString, Pointer<Uint32> pchString)>()(
          ptr, stk, szString, cchString, pchString);

  int getPinvokeMap(
          int tk,
          Pointer<Uint32> pdwMappingFlags,
          Pointer<Utf16> szImportName,
          int cchImportName,
          Pointer<Uint32> pchImportName,
          Pointer<Uint32> pmrImportDLL) =>
      _vtable.GetPinvokeMap.asFunction<
              int Function(
                  VTablePointer,
                  int tk,
                  Pointer<Uint32> pdwMappingFlags,
                  Pointer<Utf16> szImportName,
                  int cchImportName,
                  Pointer<Uint32> pchImportName,
                  Pointer<Uint32> pmrImportDLL)>()(ptr, tk, pdwMappingFlags,
          szImportName, cchImportName, pchImportName, pmrImportDLL);

  int enumSignatures(Pointer<Pointer> phEnum, Pointer<Uint32> rSignatures,
          int cmax, Pointer<Uint32> pcSignatures) =>
      _vtable.EnumSignatures.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rSignatures,
                  int cmax,
                  Pointer<Uint32> pcSignatures)>()(
          ptr, phEnum, rSignatures, cmax, pcSignatures);

  int enumTypeSpecs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeSpecs,
          int cmax, Pointer<Uint32> pcTypeSpecs) =>
      _vtable.EnumTypeSpecs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeSpecs,
                  int cmax,
                  Pointer<Uint32> pcTypeSpecs)>()(
          ptr, phEnum, rTypeSpecs, cmax, pcTypeSpecs);

  int enumUserStrings(Pointer<Pointer> phEnum, Pointer<Uint32> rStrings,
          int cmax, Pointer<Uint32> pcStrings) =>
      _vtable.EnumUserStrings.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rStrings,
                  int cmax,
                  Pointer<Uint32> pcStrings)>()(
          ptr, phEnum, rStrings, cmax, pcStrings);

  int getParamForMethodIndex(int md, int ulParamSeq, Pointer<Uint32> ppd) =>
      _vtable.GetParamForMethodIndex.asFunction<
          int Function(VTablePointer, int md, int ulParamSeq,
              Pointer<Uint32> ppd)>()(ptr, md, ulParamSeq, ppd);

  int enumCustomAttributes(
          Pointer<Pointer> phEnum,
          int tk,
          int tkType,
          Pointer<Uint32> rCustomAttributes,
          int cMax,
          Pointer<Uint32> pcCustomAttributes) =>
      _vtable.EnumCustomAttributes.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int tk,
                  int tkType,
                  Pointer<Uint32> rCustomAttributes,
                  int cMax,
                  Pointer<Uint32> pcCustomAttributes)>()(
          ptr, phEnum, tk, tkType, rCustomAttributes, cMax, pcCustomAttributes);

  int getCustomAttributeProps(
          int cv,
          Pointer<Uint32> ptkObj,
          Pointer<Uint32> ptkType,
          Pointer<Pointer> ppBlob,
          Pointer<Uint32> pcbSize) =>
      _vtable.GetCustomAttributeProps.asFunction<
              int Function(
                  VTablePointer,
                  int cv,
                  Pointer<Uint32> ptkObj,
                  Pointer<Uint32> ptkType,
                  Pointer<Pointer> ppBlob,
                  Pointer<Uint32> pcbSize)>()(
          ptr, cv, ptkObj, ptkType, ppBlob, pcbSize);

  int findTypeRef(
          int tkResolutionScope, Pointer<Utf16> szName, Pointer<Uint32> ptr_) =>
      _vtable.FindTypeRef.asFunction<
          int Function(
              VTablePointer,
              int tkResolutionScope,
              Pointer<Utf16> szName,
              Pointer<Uint32> ptr_)>()(ptr, tkResolutionScope, szName, ptr_);

  int getMemberProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      _vtable.GetMemberProps.asFunction<
              int Function(
                  VTablePointer,
                  int mb,
                  Pointer<Uint32> pClass,
                  Pointer<Utf16> szMember,
                  int cchMember,
                  Pointer<Uint32> pchMember,
                  Pointer<Uint32> pdwAttr,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pcbSigBlob,
                  Pointer<Uint32> pulCodeRVA,
                  Pointer<Uint32> pdwImplFlags,
                  Pointer<Uint32> pdwCPlusTypeFlag,
                  Pointer<Pointer> ppValue,
                  Pointer<Uint32> pcchValue)>()(
          ptr,
          mb,
          pClass,
          szMember,
          cchMember,
          pchMember,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getFieldProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szField,
          int cchField,
          Pointer<Uint32> pchField,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      _vtable.GetFieldProps.asFunction<
              int Function(
                  VTablePointer,
                  int mb,
                  Pointer<Uint32> pClass,
                  Pointer<Utf16> szField,
                  int cchField,
                  Pointer<Uint32> pchField,
                  Pointer<Uint32> pdwAttr,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pcbSigBlob,
                  Pointer<Uint32> pdwCPlusTypeFlag,
                  Pointer<Pointer> ppValue,
                  Pointer<Uint32> pcchValue)>()(
          ptr,
          mb,
          pClass,
          szField,
          cchField,
          pchField,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getPropertyProps(
          int prop,
          Pointer<Uint32> pClass,
          Pointer<Utf16> szProperty,
          int cchProperty,
          Pointer<Uint32> pchProperty,
          Pointer<Uint32> pdwPropFlags,
          Pointer<Pointer<Uint8>> ppvSig,
          Pointer<Uint32> pbSig,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppDefaultValue,
          Pointer<Uint32> pcchDefaultValue,
          Pointer<Uint32> pmdSetter,
          Pointer<Uint32> pmdGetter,
          Pointer<Uint32> rmdOtherMethod,
          int cMax,
          Pointer<Uint32> pcOtherMethod) =>
      _vtable.GetPropertyProps.asFunction<
              int Function(
                  VTablePointer,
                  int prop,
                  Pointer<Uint32> pClass,
                  Pointer<Utf16> szProperty,
                  int cchProperty,
                  Pointer<Uint32> pchProperty,
                  Pointer<Uint32> pdwPropFlags,
                  Pointer<Pointer<Uint8>> ppvSig,
                  Pointer<Uint32> pbSig,
                  Pointer<Uint32> pdwCPlusTypeFlag,
                  Pointer<Pointer> ppDefaultValue,
                  Pointer<Uint32> pcchDefaultValue,
                  Pointer<Uint32> pmdSetter,
                  Pointer<Uint32> pmdGetter,
                  Pointer<Uint32> rmdOtherMethod,
                  int cMax,
                  Pointer<Uint32> pcOtherMethod)>()(
          ptr,
          prop,
          pClass,
          szProperty,
          cchProperty,
          pchProperty,
          pdwPropFlags,
          ppvSig,
          pbSig,
          pdwCPlusTypeFlag,
          ppDefaultValue,
          pcchDefaultValue,
          pmdSetter,
          pmdGetter,
          rmdOtherMethod,
          cMax,
          pcOtherMethod);

  int getParamProps(
          int tk,
          Pointer<Uint32> pmd,
          Pointer<Uint32> pulSequence,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      _vtable.GetParamProps.asFunction<
              int Function(
                  VTablePointer,
                  int tk,
                  Pointer<Uint32> pmd,
                  Pointer<Uint32> pulSequence,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<Uint32> pdwAttr,
                  Pointer<Uint32> pdwCPlusTypeFlag,
                  Pointer<Pointer> ppValue,
                  Pointer<Uint32> pcchValue)>()(
          ptr,
          tk,
          pmd,
          pulSequence,
          szName,
          cchName,
          pchName,
          pdwAttr,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  int getCustomAttributeByName(int tkObj, Pointer<Utf16> szName,
          Pointer<Pointer> ppData, Pointer<Uint32> pcbData) =>
      _vtable.GetCustomAttributeByName.asFunction<
          int Function(
              VTablePointer,
              int tkObj,
              Pointer<Utf16> szName,
              Pointer<Pointer> ppData,
              Pointer<Uint32> pcbData)>()(ptr, tkObj, szName, ppData, pcbData);

  int isValidToken(int tk) =>
      _vtable.IsValidToken.asFunction<int Function(VTablePointer, int tk)>()(
          ptr, tk);

  int getNestedClassProps(
          int tdNestedClass, Pointer<Uint32> ptdEnclosingClass) =>
      _vtable.GetNestedClassProps.asFunction<
              int Function(VTablePointer, int tdNestedClass,
                  Pointer<Uint32> ptdEnclosingClass)>()(
          ptr, tdNestedClass, ptdEnclosingClass);

  int getNativeCallConvFromSig(
          Pointer pvSig, int cbSig, Pointer<Uint32> pCallConv) =>
      _vtable.GetNativeCallConvFromSig.asFunction<
          int Function(VTablePointer, Pointer pvSig, int cbSig,
              Pointer<Uint32> pCallConv)>()(ptr, pvSig, cbSig, pCallConv);

  int isGlobal(int pd, Pointer<Int32> pbGlobal) => _vtable.IsGlobal.asFunction<
      int Function(
          VTablePointer, int pd, Pointer<Int32> pbGlobal)>()(ptr, pd, pbGlobal);
}

/// @nodoc
base class IMetaDataImportVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Void Function(VTablePointer, Pointer hEnum)>>
      CloseEnum;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer hEnum, Pointer<Uint32> pulCount)>>
      CountEnum;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer hEnum, Uint32 ulPos)>>
      ResetEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeDefs,
              Uint32 cMax,
              Pointer<Uint32> pcTypeDefs)>> EnumTypeDefs;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rImpls,
              Uint32 cMax,
              Pointer<Uint32> pcImpls)>> EnumInterfaceImpls;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeRefs,
              Uint32 cMax,
              Pointer<Uint32> pcTypeRefs)>> EnumTypeRefs;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> szTypeDef,
              Uint32 tkEnclosingClass, Pointer<Uint32> ptd)>> FindTypeDefByName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> szName, Uint32 cchName,
              Pointer<Uint32> pchName, Pointer<GUID> pmvid)>> GetScopeProps;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> pmd)>>
      GetModuleFromScope;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Utf16> szTypeDef,
              Uint32 cchTypeDef,
              Pointer<Uint32> pchTypeDef,
              Pointer<Uint32> pdwTypeDefFlags,
              Pointer<Uint32> ptkExtends)>> GetTypeDefProps;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 iiImpl, Pointer<Uint32> pClass,
              Pointer<Uint32> ptkIface)>> GetInterfaceImplProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tr,
              Pointer<Uint32> ptkResolutionScope,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName)>> GetTypeRefProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tr,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIScope,
              Pointer<Uint32> ptd)>> ResolveTypeRef;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rMembers,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMembers;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rMembers,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMembersWithName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethods;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethodsWithName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rFields,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumFields;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rFields,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumFieldsWithName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 mb,
              Pointer<Uint32> rParams,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumParams;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 tkParent,
              Pointer<Uint32> rMemberRefs,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMemberRefs;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rMethodBody,
              Pointer<Uint32> rMethodDecl,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethodImpls;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Uint32 dwActions,
              Pointer<Uint32> rPermission,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumPermissionSets;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindMember;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindField;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmr)>> FindMemberRef;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 mb,
              Pointer<Uint32> pClass,
              Pointer<Utf16> szMethod,
              Uint32 cchMethod,
              Pointer<Uint32> pchMethod,
              Pointer<Uint32> pdwAttr,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pcbSigBlob,
              Pointer<Uint32> pulCodeRVA,
              Pointer<Uint32> pdwImplFlags)>> GetMethodProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 mr,
              Pointer<Uint32> ptk,
              Pointer<Utf16> szMember,
              Uint32 cchMember,
              Pointer<Uint32> pchMember,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pbSig)>> GetMemberRefProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rProperties,
              Uint32 cMax,
              Pointer<Uint32> pcProperties)>> EnumProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rEvents,
              Uint32 cMax,
              Pointer<Uint32> pcEvents)>> EnumEvents;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ev,
              Pointer<Uint32> pClass,
              Pointer<Utf16> szEvent,
              Uint32 cchEvent,
              Pointer<Uint32> pchEvent,
              Pointer<Uint32> pdwEventFlags,
              Pointer<Uint32> ptkEventType,
              Pointer<Uint32> pmdAddOn,
              Pointer<Uint32> pmdRemoveOn,
              Pointer<Uint32> pmdFire,
              Pointer<Uint32> rmdOtherMethod,
              Uint32 cMax,
              Pointer<Uint32> pcOtherMethod)>> GetEventProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 mb,
              Pointer<Uint32> rEventProp,
              Uint32 cMax,
              Pointer<Uint32> pcEventProp)>> EnumMethodSemantics;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 mb, Uint32 tkEventProp,
              Pointer<Uint32> pdwSemanticsFlags)>> GetMethodSemantics;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 td,
              Pointer<Uint32> pdwPackSize,
              Pointer<COR_FIELD_OFFSET> rFieldOffset,
              Uint32 cMax,
              Pointer<Uint32> pcFieldOffset,
              Pointer<Uint32> pulClassSize)>> GetClassLayout;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tk,
              Pointer<Pointer<Uint8>> ppvNativeType,
              Pointer<Uint32> pcbNativeType)>> GetFieldMarshal;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 tk, Pointer<Uint32> pulCodeRVA,
              Pointer<Uint32> pdwImplFlags)>> GetRVA;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 pm,
              Pointer<Uint32> pdwAction,
              Pointer<Pointer> ppvPermission,
              Pointer<Uint32> pcbPermission)>> GetPermissionSetProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 mdSig,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>> GetSigFromToken;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 mur, Pointer<Utf16> szName,
              Uint32 cchName, Pointer<Uint32> pchName)>> GetModuleRefProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rModuleRefs,
              Uint32 cmax,
              Pointer<Uint32> pcModuleRefs)>> EnumModuleRefs;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 typespec,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>> GetTypeSpecFromToken;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 tk,
              Pointer<Pointer<Int8>> pszUtf8NamePtr)>> GetNameFromToken;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumUnresolvedMethods;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 stk, Pointer<Utf16> szString,
              Uint32 cchString, Pointer<Uint32> pchString)>> GetUserString;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tk,
              Pointer<Uint32> pdwMappingFlags,
              Pointer<Utf16> szImportName,
              Uint32 cchImportName,
              Pointer<Uint32> pchImportName,
              Pointer<Uint32> pmrImportDLL)>> GetPinvokeMap;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rSignatures,
              Uint32 cmax,
              Pointer<Uint32> pcSignatures)>> EnumSignatures;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeSpecs,
              Uint32 cmax,
              Pointer<Uint32> pcTypeSpecs)>> EnumTypeSpecs;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rStrings,
              Uint32 cmax,
              Pointer<Uint32> pcStrings)>> EnumUserStrings;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 md, Uint32 ulParamSeq,
              Pointer<Uint32> ppd)>> GetParamForMethodIndex;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Uint32 tkType,
              Pointer<Uint32> rCustomAttributes,
              Uint32 cMax,
              Pointer<Uint32> pcCustomAttributes)>> EnumCustomAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 cv,
              Pointer<Uint32> ptkObj,
              Pointer<Uint32> ptkType,
              Pointer<Pointer> ppBlob,
              Pointer<Uint32> pcbSize)>> GetCustomAttributeProps;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 tkResolutionScope,
              Pointer<Utf16> szName, Pointer<Uint32> ptr_)>> FindTypeRef;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 mb,
              Pointer<Uint32> pClass,
              Pointer<Utf16> szMember,
              Uint32 cchMember,
              Pointer<Uint32> pchMember,
              Pointer<Uint32> pdwAttr,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pcbSigBlob,
              Pointer<Uint32> pulCodeRVA,
              Pointer<Uint32> pdwImplFlags,
              Pointer<Uint32> pdwCPlusTypeFlag,
              Pointer<Pointer> ppValue,
              Pointer<Uint32> pcchValue)>> GetMemberProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 mb,
              Pointer<Uint32> pClass,
              Pointer<Utf16> szField,
              Uint32 cchField,
              Pointer<Uint32> pchField,
              Pointer<Uint32> pdwAttr,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pcbSigBlob,
              Pointer<Uint32> pdwCPlusTypeFlag,
              Pointer<Pointer> ppValue,
              Pointer<Uint32> pcchValue)>> GetFieldProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 prop,
              Pointer<Uint32> pClass,
              Pointer<Utf16> szProperty,
              Uint32 cchProperty,
              Pointer<Uint32> pchProperty,
              Pointer<Uint32> pdwPropFlags,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pbSig,
              Pointer<Uint32> pdwCPlusTypeFlag,
              Pointer<Pointer> ppDefaultValue,
              Pointer<Uint32> pcchDefaultValue,
              Pointer<Uint32> pmdSetter,
              Pointer<Uint32> pmdGetter,
              Pointer<Uint32> rmdOtherMethod,
              Uint32 cMax,
              Pointer<Uint32> pcOtherMethod)>> GetPropertyProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tk,
              Pointer<Uint32> pmd,
              Pointer<Uint32> pulSequence,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<Uint32> pdwAttr,
              Pointer<Uint32> pdwCPlusTypeFlag,
              Pointer<Pointer> ppValue,
              Pointer<Uint32> pcchValue)>> GetParamProps;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 tkObj,
              Pointer<Utf16> szName,
              Pointer<Pointer> ppData,
              Pointer<Uint32> pcbData)>> GetCustomAttributeByName;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 tk)>>
      IsValidToken;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 tdNestedClass,
              Pointer<Uint32> ptdEnclosingClass)>> GetNestedClassProps;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer pvSig, Uint32 cbSig,
              Pointer<Uint32> pCallConv)>> GetNativeCallConvFromSig;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Uint32 pd, Pointer<Int32> pbGlobal)>> IsGlobal;
}
