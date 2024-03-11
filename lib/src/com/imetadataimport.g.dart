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
const IID_IMetaDataImport = '{7dac8207-d3ae-4c75-9b67-92801a497d44}';

/// Provides methods for importing and manipulating existing metadata from a
/// portable executable (PE) file or other source, such as a type library or a
/// stand-alone, run-time metadata binary.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport>.
///
/// {@category com}
class IMetaDataImport extends IUnknown {
  IMetaDataImport(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataImportVtbl>().ref;

  final IMetaDataImportVtbl _vtable;

  /// Creates a new instance of `IMetaDataImport` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMetaDataImport` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMetaDataImport.from(IUnknown interface) =>
      IMetaDataImport(interface.toInterface(IID_IMetaDataImport));

  /// Closes the enumerator that is identified by the specified handle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-closeenum>.
  void closeEnum(Pointer hEnum) => _vtable.CloseEnum.asFunction<
      void Function(VTablePointer lpVtbl, Pointer hEnum)>()(ptr, hEnum);

  /// Gets the number of elements in the enumeration that was retrieved by the
  /// specified enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-countenum>.
  int countEnum(Pointer hEnum, Pointer<Uint32> pulCount) =>
      _vtable.CountEnum.asFunction<
          int Function(VTablePointer lpVtbl, Pointer hEnum,
              Pointer<Uint32> pulCount)>()(ptr, hEnum, pulCount);

  /// Resets the specified enumerator to the specified position.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-resetenum>.
  int resetEnum(Pointer hEnum, int ulPos) => _vtable.ResetEnum.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer hEnum, int ulPos)>()(ptr, hEnum, ulPos);

  /// Enumerates TypeDef tokens representing all types within the current scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumtypedefs>.
  int enumTypeDefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeDefs, int cMax,
          Pointer<Uint32> pcTypeDefs) =>
      _vtable.EnumTypeDefs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeDefs,
                  int cMax,
                  Pointer<Uint32> pcTypeDefs)>()(
          ptr, phEnum, rTypeDefs, cMax, pcTypeDefs);

  /// Enumerates MethodDef tokens representing interface implementations.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enuminterfaceimpls>.
  int enumInterfaceImpls(Pointer<Pointer> phEnum, int td,
          Pointer<Uint32> rImpls, int cMax, Pointer<Uint32> pcImpls) =>
      _vtable.EnumInterfaceImpls.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rImpls,
                  int cMax,
                  Pointer<Uint32> pcImpls)>()(
          ptr, phEnum, td, rImpls, cMax, pcImpls);

  /// Enumerates TypeRef tokens defined in the current metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumtyperefs>.
  int enumTypeRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeRefs, int cMax,
          Pointer<Uint32> pcTypeRefs) =>
      _vtable.EnumTypeRefs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeRefs,
                  int cMax,
                  Pointer<Uint32> pcTypeRefs)>()(
          ptr, phEnum, rTypeRefs, cMax, pcTypeRefs);

  /// Gets a pointer to the TypeDef metadata token for the Type with the specified
  /// name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-findtypedefbyname>.
  int findTypeDefByName(Pointer<Utf16> szTypeDef, int tkEnclosingClass,
          Pointer<Uint32> ptd) =>
      _vtable.FindTypeDefByName.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szTypeDef,
              int tkEnclosingClass,
              Pointer<Uint32> ptd)>()(ptr, szTypeDef, tkEnclosingClass, ptd);

  /// Gets the name and optionally the version identifier of the assembly or
  /// module in the current metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getscopeprops>.
  int getScopeProps(Pointer<Utf16>? szName, int cchName,
          Pointer<Uint32> pchName, Pointer<GUID> pmvid) =>
      _vtable.GetScopeProps.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> szName,
                  int cchName, Pointer<Uint32> pchName, Pointer<GUID> pmvid)>()(
          ptr, szName ?? nullptr, cchName, pchName, pmvid);

  /// Gets a metadata token for the module referenced in the current metadata
  /// scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmodulefromscope>.
  int getModuleFromScope(Pointer<Uint32> pmd) =>
      _vtable.GetModuleFromScope.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> pmd)>()(ptr, pmd);

  /// Returns metadata information for the Type represented by the specified
  /// TypeDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-gettypedefprops>.
  int getTypeDefProps(
          int td,
          Pointer<Utf16>? szTypeDef,
          int cchTypeDef,
          Pointer<Uint32> pchTypeDef,
          Pointer<Uint32> pdwTypeDefFlags,
          Pointer<Uint32> ptkExtends) =>
      _vtable.GetTypeDefProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int td,
                  Pointer<Utf16> szTypeDef,
                  int cchTypeDef,
                  Pointer<Uint32> pchTypeDef,
                  Pointer<Uint32> pdwTypeDefFlags,
                  Pointer<Uint32> ptkExtends)>()(ptr, td, szTypeDef ?? nullptr,
          cchTypeDef, pchTypeDef, pdwTypeDefFlags, ptkExtends);

  /// Gets a pointer to the metadata tokens for the Type that implements the
  /// specified method, and for the interface that declares that method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getinterfaceimplprops>.
  int getInterfaceImplProps(
          int iiImpl, Pointer<Uint32> pClass, Pointer<Uint32> ptkIface) =>
      _vtable.GetInterfaceImplProps.asFunction<
          int Function(VTablePointer lpVtbl, int iiImpl, Pointer<Uint32> pClass,
              Pointer<Uint32> ptkIface)>()(ptr, iiImpl, pClass, ptkIface);

  /// Gets the metadata associated with the Type referenced by the specified
  /// TypeRef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-gettyperefprops>.
  int getTypeRefProps(int tr, Pointer<Uint32> ptkResolutionScope,
          Pointer<Utf16>? szName, int cchName, Pointer<Uint32> pchName) =>
      _vtable.GetTypeRefProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int tr,
                  Pointer<Uint32> ptkResolutionScope,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName)>()(
          ptr, tr, ptkResolutionScope, szName ?? nullptr, cchName, pchName);

  /// Resolves a Type reference represented by the specified TypeRef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-resolvetyperef>.
  int resolveTypeRef(int tr, Pointer<GUID> riid,
          Pointer<VTablePointer> ppIScope, Pointer<Uint32> ptd) =>
      _vtable.ResolveTypeRef.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int tr,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIScope,
              Pointer<Uint32> ptd)>()(ptr, tr, riid, ppIScope, ptd);

  /// Enumerates MemberDef tokens representing members of the specified type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummembers>.
  int enumMembers(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMembers,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMembers.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rMembers,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rMembers, cMax, pcTokens);

  /// Enumerates MemberDef tokens representing members of the specified type with
  /// the specified name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummemberswithname>.
  int enumMembersWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMembers,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMembersWithName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rMembers,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rMembers, cMax, pcTokens);

  /// Enumerates MethodDef tokens representing methods of the specified type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummethods>.
  int enumMethods(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethods.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rMethods, cMax, pcTokens);

  /// Enumerates methods that have the specified name and that are defined by the
  /// type referenced by the specified TypeDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummethodswithname>.
  int enumMethodsWithName(
          Pointer<Pointer> phEnum,
          int cl,
          Pointer<Utf16> szName,
          Pointer<Uint32> rMethods,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethodsWithName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rMethods, cMax, pcTokens);

  /// Enumerates FieldDef tokens for the type referenced by the specified TypeDef
  /// token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumfields>.
  int enumFields(Pointer<Pointer> phEnum, int cl, Pointer<Uint32> rFields,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumFields.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Uint32> rFields,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, rFields, cMax, pcTokens);

  /// Enumerates FieldDef tokens of the specified type with the specified name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumfieldswithname>.
  int enumFieldsWithName(Pointer<Pointer> phEnum, int cl, Pointer<Utf16> szName,
          Pointer<Uint32> rFields, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumFieldsWithName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int cl,
                  Pointer<Utf16> szName,
                  Pointer<Uint32> rFields,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, cl, szName, rFields, cMax, pcTokens);

  /// Enumerates ParamDef tokens representing the parameters of the method
  /// referenced by the specified MethodDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumparams>.
  int enumParams(Pointer<Pointer> phEnum, int mb, Pointer<Uint32> rParams,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumParams.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int mb,
                  Pointer<Uint32> rParams,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, mb, rParams, cMax, pcTokens);

  /// Enumerates MemberRef tokens representing members of the specified type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummemberrefs>.
  int enumMemberRefs(Pointer<Pointer> phEnum, int tkParent,
          Pointer<Uint32> rMemberRefs, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumMemberRefs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int tkParent,
                  Pointer<Uint32> rMemberRefs,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, tkParent, rMemberRefs, cMax, pcTokens);

  /// Enumerates MethodBody and MethodDeclaration tokens representing methods of
  /// the specified type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummethodimpls>.
  int enumMethodImpls(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rMethodBody,
          Pointer<Uint32> rMethodDecl,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumMethodImpls.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rMethodBody,
                  Pointer<Uint32> rMethodDecl,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, td, rMethodBody, rMethodDecl, cMax, pcTokens);

  /// Enumerates permissions for the objects in a specified metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumpermissionsets>.
  int enumPermissionSets(Pointer<Pointer> phEnum, int tk, int dwActions,
          Pointer<Uint32> rPermission, int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumPermissionSets.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
                  VTablePointer lpVtbl,
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
                  VTablePointer lpVtbl,
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
                  VTablePointer lpVtbl,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmb)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmb);

  /// Gets a pointer to the MemberRef token for the member reference that is
  /// enclosed by the specified Type and that has the specified name and metadata
  /// signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-findmemberref>.
  int findMemberRef(int td, Pointer<Utf16> szName, Pointer<Uint8> pvSigBlob,
          int cbSigBlob, Pointer<Uint32> pmr) =>
      _vtable.FindMemberRef.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int td,
                  Pointer<Utf16> szName,
                  Pointer<Uint8> pvSigBlob,
                  int cbSigBlob,
                  Pointer<Uint32> pmr)>()(
          ptr, td, szName, pvSigBlob, cbSigBlob, pmr);

  /// Gets the metadata associated with the method referenced by the specified
  /// MethodDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmethodprops>.
  int getMethodProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16>? szMethod,
          int cchMethod,
          Pointer<Uint32> pchMethod,
          Pointer<Uint32> pdwAttr,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pcbSigBlob,
          Pointer<Uint32> pulCodeRVA,
          Pointer<Uint32> pdwImplFlags) =>
      _vtable.GetMethodProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          szMethod ?? nullptr,
          cchMethod,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

  /// Gets metadata associated with the member referenced by the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmemberrefprops>.
  int getMemberRefProps(
          int mr,
          Pointer<Uint32> ptk,
          Pointer<Utf16>? szMember,
          int cchMember,
          Pointer<Uint32> pchMember,
          Pointer<Pointer<Uint8>> ppvSigBlob,
          Pointer<Uint32> pbSig) =>
      _vtable.GetMemberRefProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mr,
                  Pointer<Uint32> ptk,
                  Pointer<Utf16> szMember,
                  int cchMember,
                  Pointer<Uint32> pchMember,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pbSig)>()(ptr, mr, ptk, szMember ?? nullptr,
          cchMember, pchMember, ppvSigBlob, pbSig);

  /// Enumerates PropertyDef tokens representing the properties of the type
  /// referenced by the specified TypeDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumproperties>.
  int enumProperties(
          Pointer<Pointer> phEnum,
          int td,
          Pointer<Uint32> rProperties,
          int cMax,
          Pointer<Uint32> pcProperties) =>
      _vtable.EnumProperties.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int td,
                  Pointer<Uint32> rProperties,
                  int cMax,
                  Pointer<Uint32> pcProperties)>()(
          ptr, phEnum, td, rProperties, cMax, pcProperties);

  /// Enumerates event definition tokens for the specified TypeDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumevents>.
  int enumEvents(Pointer<Pointer> phEnum, int td, Pointer<Uint32> rEvents,
          int cMax, Pointer<Uint32> pcEvents) =>
      _vtable.EnumEvents.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
                  VTablePointer lpVtbl,
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

  /// Enumerates the properties and the property-change events to which the
  /// specified method is related.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummethodsemantics>.
  int enumMethodSemantics(Pointer<Pointer> phEnum, int mb,
          Pointer<Uint32> rEventProp, int cMax, Pointer<Uint32> pcEventProp) =>
      _vtable.EnumMethodSemantics.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int mb,
                  Pointer<Uint32> rEventProp,
                  int cMax,
                  Pointer<Uint32> pcEventProp)>()(
          ptr, phEnum, mb, rEventProp, cMax, pcEventProp);

  /// Gets flags indicating the relationship between the method referenced by the
  /// specified MethodDef token and the paired property and event referenced by
  /// the specified EventProp token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmethodsemantics>.
  int getMethodSemantics(
          int mb, int tkEventProp, Pointer<Uint32> pdwSemanticsFlags) =>
      _vtable.GetMethodSemantics.asFunction<
              int Function(VTablePointer lpVtbl, int mb, int tkEventProp,
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
                  VTablePointer lpVtbl,
                  int td,
                  Pointer<Uint32> pdwPackSize,
                  Pointer<COR_FIELD_OFFSET> rFieldOffset,
                  int cMax,
                  Pointer<Uint32> pcFieldOffset,
                  Pointer<Uint32> pulClassSize)>()(ptr, td, pdwPackSize,
          rFieldOffset, cMax, pcFieldOffset, pulClassSize);

  /// Gets a pointer to the native, unmanaged type of the field represented by the
  /// specified field metadata token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getfieldmarshal>.
  int getFieldMarshal(int tk, Pointer<Pointer<Uint8>> ppvNativeType,
          Pointer<Uint32> pcbNativeType) =>
      _vtable.GetFieldMarshal.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int tk,
                  Pointer<Pointer<Uint8>> ppvNativeType,
                  Pointer<Uint32> pcbNativeType)>()(
          ptr, tk, ppvNativeType, pcbNativeType);

  /// Gets the relative virtual address (RVA) and the implementation flags of the
  /// method or field represented by the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getrva>.
  int getRVA(
          int tk, Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags) =>
      _vtable.GetRVA.asFunction<
              int Function(VTablePointer lpVtbl, int tk,
                  Pointer<Uint32> pulCodeRVA, Pointer<Uint32> pdwImplFlags)>()(
          ptr, tk, pulCodeRVA, pdwImplFlags);

  /// Gets the metadata associated with the System.Security.PermissionSet
  /// represented by the specified Permission token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getpermissionsetprops>.
  int getPermissionSetProps(int pm, Pointer<Uint32> pdwAction,
          Pointer<Pointer> ppvPermission, Pointer<Uint32> pcbPermission) =>
      _vtable.GetPermissionSetProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int pm,
                  Pointer<Uint32> pdwAction,
                  Pointer<Pointer> ppvPermission,
                  Pointer<Uint32> pcbPermission)>()(
          ptr, pm, pdwAction, ppvPermission, pcbPermission);

  /// Gets the binary metadata signature associated with the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getsigfromtoken>.
  int getSigFromToken(
          int mdSig, Pointer<Pointer<Uint8>> ppvSig, Pointer<Uint32> pcbSig) =>
      _vtable.GetSigFromToken.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int mdSig,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>()(ptr, mdSig, ppvSig, pcbSig);

  /// Gets the name of the module referenced by the specified metadata token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmodulerefprops>.
  int getModuleRefProps(int mur, Pointer<Utf16>? szName, int cchName,
          Pointer<Uint32> pchName) =>
      _vtable.GetModuleRefProps.asFunction<
              int Function(VTablePointer lpVtbl, int mur, Pointer<Utf16> szName,
                  int cchName, Pointer<Uint32> pchName)>()(
          ptr, mur, szName ?? nullptr, cchName, pchName);

  /// Enumerates ModuleRef tokens that represent imported modules.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enummodulerefs>.
  int enumModuleRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rModuleRefs,
          int cmax, Pointer<Uint32> pcModuleRefs) =>
      _vtable.EnumModuleRefs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rModuleRefs,
                  int cmax,
                  Pointer<Uint32> pcModuleRefs)>()(
          ptr, phEnum, rModuleRefs, cmax, pcModuleRefs);

  /// Gets the binary metadata signature of the type specification represented by
  /// the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-gettypespecfromtoken>.
  int getTypeSpecFromToken(int typespec, Pointer<Pointer<Uint8>> ppvSig,
          Pointer<Uint32> pcbSig) =>
      _vtable.GetTypeSpecFromToken.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int typespec,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>()(ptr, typespec, ppvSig, pcbSig);

  /// Gets the UTF-8 name of the object referenced by the specified metadata
  /// token.
  ///
  /// This method is obsolete.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getnamefromtoken>.
  int getNameFromToken(int tk, Pointer<Pointer<Int8>> pszUtf8NamePtr) =>
      _vtable.GetNameFromToken.asFunction<
              int Function(VTablePointer lpVtbl, int tk,
                  Pointer<Pointer<Int8>> pszUtf8NamePtr)>()(
          ptr, tk, pszUtf8NamePtr);

  /// Enumerates MemberDef tokens representing the unresolved methods in the
  /// current metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumunresolvedmethods>.
  int enumUnresolvedMethods(Pointer<Pointer> phEnum, Pointer<Uint32> rMethods,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumUnresolvedMethods.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rMethods,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, rMethods, cMax, pcTokens);

  /// Gets the literal string represented by the specified metadata token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getuserstring>.
  int getUserString(int stk, Pointer<Utf16>? szString, int cchString,
          Pointer<Uint32> pchString) =>
      _vtable.GetUserString.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int stk,
                  Pointer<Utf16> szString,
                  int cchString,
                  Pointer<Uint32> pchString)>()(
          ptr, stk, szString ?? nullptr, cchString, pchString);

  /// Gets a ModuleRef token to represent the target assembly of a PInvoke call.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getpinvokemap>.
  int getPinvokeMap(
          int tk,
          Pointer<Uint32> pdwMappingFlags,
          Pointer<Utf16>? szImportName,
          int cchImportName,
          Pointer<Uint32> pchImportName,
          Pointer<Uint32> pmrImportDLL) =>
      _vtable.GetPinvokeMap.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int tk,
                  Pointer<Uint32> pdwMappingFlags,
                  Pointer<Utf16> szImportName,
                  int cchImportName,
                  Pointer<Uint32> pchImportName,
                  Pointer<Uint32> pmrImportDLL)>()(ptr, tk, pdwMappingFlags,
          szImportName ?? nullptr, cchImportName, pchImportName, pmrImportDLL);

  /// Enumerates Signature tokens representing stand-alone signatures in the
  /// current scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumsignatures>.
  int enumSignatures(Pointer<Pointer> phEnum, Pointer<Uint32> rSignatures,
          int cmax, Pointer<Uint32> pcSignatures) =>
      _vtable.EnumSignatures.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rSignatures,
                  int cmax,
                  Pointer<Uint32> pcSignatures)>()(
          ptr, phEnum, rSignatures, cmax, pcSignatures);

  /// Enumerates TypeSpec tokens defined in the current metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumtypespecs>.
  int enumTypeSpecs(Pointer<Pointer> phEnum, Pointer<Uint32> rTypeSpecs,
          int cmax, Pointer<Uint32> pcTypeSpecs) =>
      _vtable.EnumTypeSpecs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rTypeSpecs,
                  int cmax,
                  Pointer<Uint32> pcTypeSpecs)>()(
          ptr, phEnum, rTypeSpecs, cmax, pcTypeSpecs);

  /// Enumerates String tokens representing hard-coded strings in the current
  /// metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumuserstrings>.
  int enumUserStrings(Pointer<Pointer> phEnum, Pointer<Uint32> rStrings,
          int cmax, Pointer<Uint32> pcStrings) =>
      _vtable.EnumUserStrings.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rStrings,
                  int cmax,
                  Pointer<Uint32> pcStrings)>()(
          ptr, phEnum, rStrings, cmax, pcStrings);

  /// Gets the token that represents a specified parameter of the method
  /// represented by the specified MethodDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getparamformethodindex>.
  int getParamForMethodIndex(int md, int ulParamSeq, Pointer<Uint32> ppd) =>
      _vtable.GetParamForMethodIndex.asFunction<
          int Function(VTablePointer lpVtbl, int md, int ulParamSeq,
              Pointer<Uint32> ppd)>()(ptr, md, ulParamSeq, ppd);

  /// Enumerates custom attribute-definition tokens associated with the specified
  /// type or member.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-enumcustomattributes>.
  int enumCustomAttributes(
          Pointer<Pointer> phEnum,
          int tk,
          int tkType,
          Pointer<Uint32> rCustomAttributes,
          int cMax,
          Pointer<Uint32> pcCustomAttributes) =>
      _vtable.EnumCustomAttributes.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int tk,
                  int tkType,
                  Pointer<Uint32> rCustomAttributes,
                  int cMax,
                  Pointer<Uint32> pcCustomAttributes)>()(
          ptr, phEnum, tk, tkType, rCustomAttributes, cMax, pcCustomAttributes);

  /// Gets the value of the custom attribute, given its metadata token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getcustomattributeprops>.
  int getCustomAttributeProps(
          int cv,
          Pointer<Uint32> ptkObj,
          Pointer<Uint32> ptkType,
          Pointer<Pointer> ppBlob,
          Pointer<Uint32> pcbSize) =>
      _vtable.GetCustomAttributeProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int cv,
                  Pointer<Uint32> ptkObj,
                  Pointer<Uint32> ptkType,
                  Pointer<Pointer> ppBlob,
                  Pointer<Uint32> pcbSize)>()(
          ptr, cv, ptkObj, ptkType, ppBlob, pcbSize);

  /// Gets a pointer to the TypeRef token for the Type reference that is in the
  /// specified scope and that has the specified name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-findtyperef>.
  int findTypeRef(
          int tkResolutionScope, Pointer<Utf16> szName, Pointer<Uint32> ptr_) =>
      _vtable.FindTypeRef.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int tkResolutionScope,
              Pointer<Utf16> szName,
              Pointer<Uint32> ptr_)>()(ptr, tkResolutionScope, szName, ptr_);

  /// Gets metadata information, including the name, binary signature, and
  /// relative virtual address, of the Type member referenced by the specified
  /// metadata token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getmemberprops>.
  int getMemberProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16>? szMember,
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
                  VTablePointer lpVtbl,
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
          szMember ?? nullptr,
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

  /// Gets metadata associated with the field referenced by the specified FieldDef
  /// token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getfieldprops>.
  int getFieldProps(
          int mb,
          Pointer<Uint32> pClass,
          Pointer<Utf16>? szField,
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
                  VTablePointer lpVtbl,
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
          szField ?? nullptr,
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
                  VTablePointer lpVtbl,
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

  /// Gets metadata values for the parameter referenced by the specified ParamDef
  /// token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getparamprops>.
  int getParamProps(
          int tk,
          Pointer<Uint32> pmd,
          Pointer<Uint32> pulSequence,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> pdwAttr,
          Pointer<Uint32> pdwCPlusTypeFlag,
          Pointer<Pointer> ppValue,
          Pointer<Uint32> pcchValue) =>
      _vtable.GetParamProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          szName ?? nullptr,
          cchName,
          pchName,
          pdwAttr,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

  /// Gets the custom attribute, given its name and owner.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getcustomattributebyname>.
  int getCustomAttributeByName(int tkObj, Pointer<Utf16> szName,
          Pointer<Pointer> ppData, Pointer<Uint32> pcbData) =>
      _vtable.GetCustomAttributeByName.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int tkObj,
              Pointer<Utf16> szName,
              Pointer<Pointer> ppData,
              Pointer<Uint32> pcbData)>()(ptr, tkObj, szName, ppData, pcbData);

  /// Gets a value indicating whether the specified token holds a valid reference
  /// to a code object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-isvalidtoken>.
  int isValidToken(int tk) => _vtable.IsValidToken.asFunction<
      int Function(VTablePointer lpVtbl, int tk)>()(ptr, tk);

  /// Gets the TypeDef token for the parent Type of the specified nested type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getnestedclassprops>.
  int getNestedClassProps(
          int tdNestedClass, Pointer<Uint32> ptdEnclosingClass) =>
      _vtable.GetNestedClassProps.asFunction<
              int Function(VTablePointer lpVtbl, int tdNestedClass,
                  Pointer<Uint32> ptdEnclosingClass)>()(
          ptr, tdNestedClass, ptdEnclosingClass);

  /// Gets the native calling convention for the method that is represented by the
  /// specified signature pointer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-getnativecallconvfromsig>.
  int getNativeCallConvFromSig(
          Pointer pvSig, int cbSig, Pointer<Uint32> pCallConv) =>
      _vtable.GetNativeCallConvFromSig.asFunction<
          int Function(VTablePointer lpVtbl, Pointer pvSig, int cbSig,
              Pointer<Uint32> pCallConv)>()(ptr, pvSig, cbSig, pCallConv);

  /// Gets a value indicating whether the field, method, or type represented by
  /// the specified metadata token has global scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport-isglobal>.
  int isGlobal(int pd, Pointer<Int32> pbGlobal) => _vtable.IsGlobal.asFunction<
      int Function(VTablePointer lpVtbl, int pd,
          Pointer<Int32> pbGlobal)>()(ptr, pd, pbGlobal);
}

/// @nodoc
base class IMetaDataImportVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Void Function(VTablePointer lpVtbl, Pointer hEnum)>>
      CloseEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer hEnum,
              Pointer<Uint32> pulCount)>> CountEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer hEnum, Uint32 ulPos)>> ResetEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeDefs,
              Uint32 cMax,
              Pointer<Uint32> pcTypeDefs)>> EnumTypeDefs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rImpls,
              Uint32 cMax,
              Pointer<Uint32> pcImpls)>> EnumInterfaceImpls;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeRefs,
              Uint32 cMax,
              Pointer<Uint32> pcTypeRefs)>> EnumTypeRefs;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> szTypeDef,
              Uint32 tkEnclosingClass, Pointer<Uint32> ptd)>> FindTypeDefByName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<GUID> pmvid)>> GetScopeProps;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pmd)>>
      GetModuleFromScope;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Utf16> szTypeDef,
              Uint32 cchTypeDef,
              Pointer<Uint32> pchTypeDef,
              Pointer<Uint32> pdwTypeDefFlags,
              Pointer<Uint32> ptkExtends)>> GetTypeDefProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 iiImpl,
              Pointer<Uint32> pClass,
              Pointer<Uint32> ptkIface)>> GetInterfaceImplProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tr,
              Pointer<Uint32> ptkResolutionScope,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName)>> GetTypeRefProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tr,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIScope,
              Pointer<Uint32> ptd)>> ResolveTypeRef;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rMembers,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMembers;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rMembers,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMembersWithName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethods;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethodsWithName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Uint32> rFields,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumFields;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 cl,
              Pointer<Utf16> szName,
              Pointer<Uint32> rFields,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumFieldsWithName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 mb,
              Pointer<Uint32> rParams,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumParams;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 tkParent,
              Pointer<Uint32> rMemberRefs,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMemberRefs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rMethodBody,
              Pointer<Uint32> rMethodDecl,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumMethodImpls;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Uint32 dwActions,
              Pointer<Uint32> rPermission,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumPermissionSets;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindMember;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindMethod;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmb)>> FindField;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Utf16> szName,
              Pointer<Uint8> pvSigBlob,
              Uint32 cbSigBlob,
              Pointer<Uint32> pmr)>> FindMemberRef;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mr,
              Pointer<Uint32> ptk,
              Pointer<Utf16> szMember,
              Uint32 cchMember,
              Pointer<Uint32> pchMember,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pbSig)>> GetMemberRefProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rProperties,
              Uint32 cMax,
              Pointer<Uint32> pcProperties)>> EnumProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 td,
              Pointer<Uint32> rEvents,
              Uint32 cMax,
              Pointer<Uint32> pcEvents)>> EnumEvents;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 mb,
              Pointer<Uint32> rEventProp,
              Uint32 cMax,
              Pointer<Uint32> pcEventProp)>> EnumMethodSemantics;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 mb, Uint32 tkEventProp,
              Pointer<Uint32> pdwSemanticsFlags)>> GetMethodSemantics;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 td,
              Pointer<Uint32> pdwPackSize,
              Pointer<COR_FIELD_OFFSET> rFieldOffset,
              Uint32 cMax,
              Pointer<Uint32> pcFieldOffset,
              Pointer<Uint32> pulClassSize)>> GetClassLayout;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tk,
              Pointer<Pointer<Uint8>> ppvNativeType,
              Pointer<Uint32> pcbNativeType)>> GetFieldMarshal;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tk,
              Pointer<Uint32> pulCodeRVA,
              Pointer<Uint32> pdwImplFlags)>> GetRVA;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 pm,
              Pointer<Uint32> pdwAction,
              Pointer<Pointer> ppvPermission,
              Pointer<Uint32> pcbPermission)>> GetPermissionSetProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mdSig,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>> GetSigFromToken;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mur,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName)>> GetModuleRefProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rModuleRefs,
              Uint32 cmax,
              Pointer<Uint32> pcModuleRefs)>> EnumModuleRefs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 typespec,
              Pointer<Pointer<Uint8>> ppvSig,
              Pointer<Uint32> pcbSig)>> GetTypeSpecFromToken;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 tk,
              Pointer<Pointer<Int8>> pszUtf8NamePtr)>> GetNameFromToken;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rMethods,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumUnresolvedMethods;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 stk,
              Pointer<Utf16> szString,
              Uint32 cchString,
              Pointer<Uint32> pchString)>> GetUserString;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tk,
              Pointer<Uint32> pdwMappingFlags,
              Pointer<Utf16> szImportName,
              Uint32 cchImportName,
              Pointer<Uint32> pchImportName,
              Pointer<Uint32> pmrImportDLL)>> GetPinvokeMap;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rSignatures,
              Uint32 cmax,
              Pointer<Uint32> pcSignatures)>> EnumSignatures;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rTypeSpecs,
              Uint32 cmax,
              Pointer<Uint32> pcTypeSpecs)>> EnumTypeSpecs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rStrings,
              Uint32 cmax,
              Pointer<Uint32> pcStrings)>> EnumUserStrings;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 md, Uint32 ulParamSeq,
              Pointer<Uint32> ppd)>> GetParamForMethodIndex;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Uint32 tkType,
              Pointer<Uint32> rCustomAttributes,
              Uint32 cMax,
              Pointer<Uint32> pcCustomAttributes)>> EnumCustomAttributes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 cv,
              Pointer<Uint32> ptkObj,
              Pointer<Uint32> ptkType,
              Pointer<Pointer> ppBlob,
              Pointer<Uint32> pcbSize)>> GetCustomAttributeProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 tkResolutionScope,
              Pointer<Utf16> szName, Pointer<Uint32> ptr_)>> FindTypeRef;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 tkObj,
              Pointer<Utf16> szName,
              Pointer<Pointer> ppData,
              Pointer<Uint32> pcbData)>> GetCustomAttributeByName;
  external Pointer<
          NativeFunction<BOOL Function(VTablePointer lpVtbl, Uint32 tk)>>
      IsValidToken;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 tdNestedClass,
              Pointer<Uint32> ptdEnclosingClass)>> GetNestedClassProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer pvSig, Uint32 cbSig,
              Pointer<Uint32> pCallConv)>> GetNativeCallConvFromSig;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 pd, Pointer<Int32> pbGlobal)>>
      IsGlobal;
}
