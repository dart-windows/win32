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
import 'imetadataimport.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMetaDataImport2 = '{fce5efa0-8bba-4f8e-a036-8f2022b08466}';

/// Extends the IMetaDataImport interface to provide the capability of working
/// with generic types.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport2>.
///
/// {@category com}
class IMetaDataImport2 extends IMetaDataImport {
  IMetaDataImport2(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataImport2Vtbl>().ref;

  final IMetaDataImport2Vtbl _vtable;

  factory IMetaDataImport2.from(IUnknown interface) =>
      IMetaDataImport2(interface.toInterface(IID_IMetaDataImport2));

  /// Gets an enumerator for an array of generic parameter tokens associated with
  /// the specified TypeDef or MethodDef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enumgenericparams>.
  int enumGenericParams(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParams,
          int cMax,
          Pointer<Uint32> pcGenericParams) =>
      _vtable.EnumGenericParams.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int tk,
                  Pointer<Uint32> rGenericParams,
                  int cMax,
                  Pointer<Uint32> pcGenericParams)>()(
          ptr, phEnum, tk, rGenericParams, cMax, pcGenericParams);

  /// Gets the metadata associated with the generic parameter represented by the
  /// specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getgenericparamprops>.
  int getGenericParamProps(
          int gp,
          Pointer<Uint32> pulParamSeq,
          Pointer<Uint32> pdwParamFlags,
          Pointer<Uint32> ptOwner,
          Pointer<Uint32> reserved,
          Pointer<Utf16>? wzname,
          int cchName,
          Pointer<Uint32> pchName) =>
      _vtable.GetGenericParamProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int gp,
                  Pointer<Uint32> pulParamSeq,
                  Pointer<Uint32> pdwParamFlags,
                  Pointer<Uint32> ptOwner,
                  Pointer<Uint32> reserved,
                  Pointer<Utf16> wzname,
                  int cchName,
                  Pointer<Uint32> pchName)>()(
          ptr,
          gp,
          pulParamSeq,
          pdwParamFlags,
          ptOwner,
          reserved,
          wzname ?? nullptr,
          cchName,
          pchName);

  /// Gets the metadata signature of the method referenced by the specified
  /// MethodSpec token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getmethodspecprops>.
  int getMethodSpecProps(int mi, Pointer<Uint32> tkParent,
          Pointer<Pointer<Uint8>> ppvSigBlob, Pointer<Uint32> pcbSigBlob) =>
      _vtable.GetMethodSpecProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int mi,
                  Pointer<Uint32> tkParent,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pcbSigBlob)>()(
          ptr, mi, tkParent, ppvSigBlob, pcbSigBlob);

  /// Gets an enumerator for an array of generic parameter constraints associated
  /// with the generic parameter represented by the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enumgenericparamconstraints>.
  int enumGenericParamConstraints(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParamConstraints,
          int cMax,
          Pointer<Uint32> pcGenericParamConstraints) =>
      _vtable.EnumGenericParamConstraints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int tk,
                  Pointer<Uint32> rGenericParamConstraints,
                  int cMax,
                  Pointer<Uint32> pcGenericParamConstraints)>()(ptr, phEnum, tk,
          rGenericParamConstraints, cMax, pcGenericParamConstraints);

  /// Gets the metadata associated with the generic parameter constraint
  /// represented by the specified constraint token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getgenericparamconstraintprops>.
  int getGenericParamConstraintProps(int gpc, Pointer<Uint32> ptGenericParam,
          Pointer<Uint32> ptkConstraintType) =>
      _vtable.GetGenericParamConstraintProps.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int gpc,
                  Pointer<Uint32> ptGenericParam,
                  Pointer<Uint32> ptkConstraintType)>()(
          ptr, gpc, ptGenericParam, ptkConstraintType);

  /// Gets a value identifying the nature of the code in the portable executable
  /// (PE) file, typically a DLL or EXE file, that is defined in the current
  /// metadata scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getpekind>.
  int getPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) =>
      _vtable.GetPEKind.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> pdwPEKind,
              Pointer<Uint32> pdwMAchine)>()(ptr, pdwPEKind, pdwMAchine);

  /// Gets the version number of the runtime that was used to build the assembly.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getversionstring>.
  int getVersionString(
          Pointer<Utf16>? pwzBuf, int ccBufSize, Pointer<Uint32> pccBufSize) =>
      _vtable.GetVersionString.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Utf16> pwzBuf,
                  int ccBufSize, Pointer<Uint32> pccBufSize)>()(
          ptr, pwzBuf ?? nullptr, ccBufSize, pccBufSize);

  /// Gets an enumerator for an array of MethodSpec tokens associated with the
  /// specified MethodDef or MemberRef token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enummethodspecs>.
  int enumMethodSpecs(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rMethodSpecs,
          int cMax,
          Pointer<Uint32> pcMethodSpecs) =>
      _vtable.EnumMethodSpecs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  int tk,
                  Pointer<Uint32> rMethodSpecs,
                  int cMax,
                  Pointer<Uint32> pcMethodSpecs)>()(
          ptr, phEnum, tk, rMethodSpecs, cMax, pcMethodSpecs);
}

/// @nodoc
base class IMetaDataImport2Vtbl extends Struct {
  external IMetaDataImportVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Pointer<Uint32> rGenericParams,
              Uint32 cMax,
              Pointer<Uint32> pcGenericParams)>> EnumGenericParams;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 gp,
              Pointer<Uint32> pulParamSeq,
              Pointer<Uint32> pdwParamFlags,
              Pointer<Uint32> ptOwner,
              Pointer<Uint32> reserved,
              Pointer<Utf16> wzname,
              Uint32 cchName,
              Pointer<Uint32> pchName)>> GetGenericParamProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 mi,
              Pointer<Uint32> tkParent,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pcbSigBlob)>> GetMethodSpecProps;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer> phEnum,
                  Uint32 tk,
                  Pointer<Uint32> rGenericParamConstraints,
                  Uint32 cMax,
                  Pointer<Uint32> pcGenericParamConstraints)>>
      EnumGenericParamConstraints;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Uint32 gpc,
                  Pointer<Uint32> ptGenericParam,
                  Pointer<Uint32> ptkConstraintType)>>
      GetGenericParamConstraintProps;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwPEKind,
              Pointer<Uint32> pdwMAchine)>> GetPEKind;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pwzBuf,
              Uint32 ccBufSize, Pointer<Uint32> pccBufSize)>> GetVersionString;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Pointer<Uint32> rMethodSpecs,
              Uint32 cMax,
              Pointer<Uint32> pcMethodSpecs)>> EnumMethodSpecs;
}
