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
import 'iunknown.g.dart';

/// @nodoc
const IID_IMetaDataAssemblyImport = '{ee62470b-e94b-424e-9b7c-2f00c9249f93}';

/// Provides methods to access and examine the contents of an assembly manifest.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataassemblyimport>.
///
/// {@category com}
class IMetaDataAssemblyImport extends IUnknown {
  IMetaDataAssemblyImport(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataAssemblyImportVtbl>().ref;

  final IMetaDataAssemblyImportVtbl _vtable;

  factory IMetaDataAssemblyImport.from(IUnknown interface) =>
      IMetaDataAssemblyImport(
          interface.toInterface(IID_IMetaDataAssemblyImport));

  /// Gets the set of properties for the assembly with the specified metadata
  /// signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyprops>.
  int getAssemblyProps(
          int mda,
          Pointer<Pointer> ppbPublicKey,
          Pointer<Uint32> pcbPublicKey,
          Pointer<Uint32> pulHashAlgId,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYMETADATA> pMetaData,
          Pointer<Uint32> pdwAssemblyFlags) =>
      _vtable.GetAssemblyProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mda,
                  Pointer<Pointer> ppbPublicKey,
                  Pointer<Uint32> pcbPublicKey,
                  Pointer<Uint32> pulHashAlgId,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<ASSEMBLYMETADATA> pMetaData,
                  Pointer<Uint32> pdwAssemblyFlags)>()(
          ptr,
          mda,
          ppbPublicKey,
          pcbPublicKey,
          pulHashAlgId,
          szName ?? nullptr,
          cchName,
          pchName,
          pMetaData,
          pdwAssemblyFlags);

  /// Gets the set of properties for the assembly reference with the specified
  /// metadata signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyrefprops>.
  int getAssemblyRefProps(
          int mdar,
          Pointer<Pointer> ppbPublicKeyOrToken,
          Pointer<Uint32> pcbPublicKeyOrToken,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<ASSEMBLYMETADATA> pMetaData,
          Pointer<Pointer> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwAssemblyRefFlags) =>
      _vtable.GetAssemblyRefProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mdar,
                  Pointer<Pointer> ppbPublicKeyOrToken,
                  Pointer<Uint32> pcbPublicKeyOrToken,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<ASSEMBLYMETADATA> pMetaData,
                  Pointer<Pointer> ppbHashValue,
                  Pointer<Uint32> pcbHashValue,
                  Pointer<Uint32> pdwAssemblyRefFlags)>()(
          ptr,
          mdar,
          ppbPublicKeyOrToken,
          pcbPublicKeyOrToken,
          szName ?? nullptr,
          cchName,
          pchName,
          pMetaData,
          ppbHashValue,
          pcbHashValue,
          pdwAssemblyRefFlags);

  /// Gets the properties of the file with the specified metadata signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getfileprops>.
  int getFileProps(
          int mdf,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Pointer> ppbHashValue,
          Pointer<Uint32> pcbHashValue,
          Pointer<Uint32> pdwFileFlags) =>
      _vtable.GetFileProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mdf,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<Pointer> ppbHashValue,
                  Pointer<Uint32> pcbHashValue,
                  Pointer<Uint32> pdwFileFlags)>()(ptr, mdf, szName ?? nullptr,
          cchName, pchName, ppbHashValue, pcbHashValue, pdwFileFlags);

  /// Gets the set of properties of the exported type with the specified metadata
  /// signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getexportedtypeprops>.
  int getExportedTypeProps(
          int mdct,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> ptkTypeDef,
          Pointer<Uint32> pdwExportedTypeFlags) =>
      _vtable.GetExportedTypeProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mdct,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<Uint32> ptkImplementation,
                  Pointer<Uint32> ptkTypeDef,
                  Pointer<Uint32> pdwExportedTypeFlags)>()(
          ptr,
          mdct,
          szName ?? nullptr,
          cchName,
          pchName,
          ptkImplementation,
          ptkTypeDef,
          pdwExportedTypeFlags);

  /// Gets the set of properties of the manifest resource with the specified
  /// metadata signature.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getmanifestresourceprops>.
  int getManifestResourceProps(
          int mdmr,
          Pointer<Utf16>? szName,
          int cchName,
          Pointer<Uint32> pchName,
          Pointer<Uint32> ptkImplementation,
          Pointer<Uint32> pdwOffset,
          Pointer<Uint32> pdwResourceFlags) =>
      _vtable.GetManifestResourceProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mdmr,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pchName,
                  Pointer<Uint32> ptkImplementation,
                  Pointer<Uint32> pdwOffset,
                  Pointer<Uint32> pdwResourceFlags)>()(
          ptr,
          mdmr,
          szName ?? nullptr,
          cchName,
          pchName,
          ptkImplementation,
          pdwOffset,
          pdwResourceFlags);

  /// Enumerates the mdAssemblyRef instances that are defined in the assembly
  /// manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumassemblyrefs>.
  int enumAssemblyRefs(Pointer<Pointer> phEnum, Pointer<Uint32> rAssemblyRefs,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumAssemblyRefs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rAssemblyRefs,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, rAssemblyRefs, cMax, pcTokens);

  /// Enumerates the files referenced in the current assembly manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumfiles>.
  int enumFiles(Pointer<Pointer> phEnum, Pointer<Uint32> rFiles, int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumFiles.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rFiles,
              int cMax,
              Pointer<Uint32> pcTokens)>()(ptr, phEnum, rFiles, cMax, pcTokens);

  /// Enumerates the exported types referenced in the assembly manifest in the
  /// current metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumexportedtypes>.
  int enumExportedTypes(Pointer<Pointer> phEnum, Pointer<Uint32> rExportedTypes,
          int cMax, Pointer<Uint32> pcTokens) =>
      _vtable.EnumExportedTypes.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rExportedTypes,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, rExportedTypes, cMax, pcTokens);

  /// Gets a pointer to an enumerator for the resources referenced in the current
  /// assembly manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enummanifestresources>.
  int enumManifestResources(
          Pointer<Pointer> phEnum,
          Pointer<Uint32> rManifestResources,
          int cMax,
          Pointer<Uint32> pcTokens) =>
      _vtable.EnumManifestResources.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Pointer<Uint32> rManifestResources,
                  int cMax,
                  Pointer<Uint32> pcTokens)>()(
          ptr, phEnum, rManifestResources, cMax, pcTokens);

  /// Gets a pointer to the assembly in the current scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyfromscope>.
  int getAssemblyFromScope(Pointer<Uint32> ptkAssembly) =>
      _vtable.GetAssemblyFromScope.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> ptkAssembly)>()(ptr, ptkAssembly);

  /// Gets a pointer to an exported type, given its name and enclosing type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findexportedtypebyname>.
  int findExportedTypeByName(Pointer<Utf16> szName, int mdtExportedType,
          Pointer<Uint32> ptkExportedType) =>
      _vtable.FindExportedTypeByName.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> szName,
                  int mdtExportedType, Pointer<Uint32> ptkExportedType)>()(
          ptr, szName, mdtExportedType, ptkExportedType);

  /// Gets a pointer to the manifest resource with the specified name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findmanifestresourcebyname>.
  int findManifestResourceByName(
          Pointer<Utf16> szName, Pointer<Uint32> ptkManifestResource) =>
      _vtable.FindManifestResourceByName.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> szName,
                  Pointer<Uint32> ptkManifestResource)>()(
          ptr, szName, ptkManifestResource);

  /// Releases a reference to the specified enumeration instance.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-closeenum>.
  void closeEnum(Pointer hEnum) => _vtable.CloseEnum.asFunction<
      void Function(VTablePointer lpVtbl, Pointer hEnum)>()(ptr, hEnum);

  /// Gets an array of assemblies with the specified name, using the standard
  /// rules employed by the common language runtime (CLR) for resolving
  /// references.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findassembliesbyname>.
  int findAssembliesByName(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<VTablePointer> ppIUnk,
          int cMax,
          Pointer<Uint32> pcAssemblies) =>
      _vtable.FindAssembliesByName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> szAppBase,
                  Pointer<Utf16> szPrivateBin,
                  Pointer<Utf16> szAssemblyName,
                  Pointer<VTablePointer> ppIUnk,
                  int cMax,
                  Pointer<Uint32> pcAssemblies)>()(ptr, szAppBase, szPrivateBin,
          szAssemblyName, ppIUnk, cMax, pcAssemblies);
}

/// @nodoc
base class IMetaDataAssemblyImportVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mda,
              Pointer<Pointer> ppbPublicKey,
              Pointer<Uint32> pcbPublicKey,
              Pointer<Uint32> pulHashAlgId,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<ASSEMBLYMETADATA> pMetaData,
              Pointer<Uint32> pdwAssemblyFlags)>> GetAssemblyProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mdar,
              Pointer<Pointer> ppbPublicKeyOrToken,
              Pointer<Uint32> pcbPublicKeyOrToken,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<ASSEMBLYMETADATA> pMetaData,
              Pointer<Pointer> ppbHashValue,
              Pointer<Uint32> pcbHashValue,
              Pointer<Uint32> pdwAssemblyRefFlags)>> GetAssemblyRefProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mdf,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<Pointer> ppbHashValue,
              Pointer<Uint32> pcbHashValue,
              Pointer<Uint32> pdwFileFlags)>> GetFileProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mdct,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<Uint32> ptkImplementation,
              Pointer<Uint32> ptkTypeDef,
              Pointer<Uint32> pdwExportedTypeFlags)>> GetExportedTypeProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mdmr,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pchName,
              Pointer<Uint32> ptkImplementation,
              Pointer<Uint32> pdwOffset,
              Pointer<Uint32> pdwResourceFlags)>> GetManifestResourceProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rAssemblyRefs,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumAssemblyRefs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rFiles,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumFiles;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rExportedTypes,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumExportedTypes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Pointer<Uint32> rManifestResources,
              Uint32 cMax,
              Pointer<Uint32> pcTokens)>> EnumManifestResources;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> ptkAssembly)>>
      GetAssemblyFromScope;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szName,
              Uint32 mdtExportedType,
              Pointer<Uint32> ptkExportedType)>> FindExportedTypeByName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> szName,
              Pointer<Uint32> ptkManifestResource)>> FindManifestResourceByName;
  external Pointer<
          NativeFunction<Void Function(VTablePointer lpVtbl, Pointer hEnum)>>
      CloseEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szAppBase,
              Pointer<Utf16> szPrivateBin,
              Pointer<Utf16> szAssemblyName,
              Pointer<VTablePointer> ppIUnk,
              Uint32 cMax,
              Pointer<Uint32> pcAssemblies)>> FindAssembliesByName;
}
