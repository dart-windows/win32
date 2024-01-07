// imetadataimport2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'imetadataimport.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataImport2 = '{fce5efa0-8bba-4f8e-a036-8f2022b08466}';

/// Extends the IMetaDataImport interface to provide the capability of
/// working with generic types.
///
/// {@category com}
class IMetaDataImport2 extends IMetaDataImport {
  IMetaDataImport2(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataImport2Vtbl>().ref;

  final IMetaDataImport2Vtbl _vtable;

  factory IMetaDataImport2.from(IUnknown interface) =>
      IMetaDataImport2(interface.toInterface(IID_IMetaDataImport2));

  int enumGenericParams(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParams,
          int cMax,
          Pointer<Uint32> pcGenericParams) =>
      _vtable.EnumGenericParams.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int tk,
                  Pointer<Uint32> rGenericParams,
                  int cMax,
                  Pointer<Uint32> pcGenericParams)>()(
          ptr, phEnum, tk, rGenericParams, cMax, pcGenericParams);

  int getGenericParamProps(
          int gp,
          Pointer<Uint32> pulParamSeq,
          Pointer<Uint32> pdwParamFlags,
          Pointer<Uint32> ptOwner,
          Pointer<Uint32> reserved,
          Pointer<Utf16> wzname,
          int cchName,
          Pointer<Uint32> pchName) =>
      _vtable.GetGenericParamProps.asFunction<
              int Function(
                  VTablePointer,
                  int gp,
                  Pointer<Uint32> pulParamSeq,
                  Pointer<Uint32> pdwParamFlags,
                  Pointer<Uint32> ptOwner,
                  Pointer<Uint32> reserved,
                  Pointer<Utf16> wzname,
                  int cchName,
                  Pointer<Uint32> pchName)>()(ptr, gp, pulParamSeq,
          pdwParamFlags, ptOwner, reserved, wzname, cchName, pchName);

  int getMethodSpecProps(int mi, Pointer<Uint32> tkParent,
          Pointer<Pointer<Uint8>> ppvSigBlob, Pointer<Uint32> pcbSigBlob) =>
      _vtable.GetMethodSpecProps.asFunction<
              int Function(
                  VTablePointer,
                  int mi,
                  Pointer<Uint32> tkParent,
                  Pointer<Pointer<Uint8>> ppvSigBlob,
                  Pointer<Uint32> pcbSigBlob)>()(
          ptr, mi, tkParent, ppvSigBlob, pcbSigBlob);

  int enumGenericParamConstraints(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParamConstraints,
          int cMax,
          Pointer<Uint32> pcGenericParamConstraints) =>
      _vtable.EnumGenericParamConstraints.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  int tk,
                  Pointer<Uint32> rGenericParamConstraints,
                  int cMax,
                  Pointer<Uint32> pcGenericParamConstraints)>()(ptr, phEnum, tk,
          rGenericParamConstraints, cMax, pcGenericParamConstraints);

  int getGenericParamConstraintProps(int gpc, Pointer<Uint32> ptGenericParam,
          Pointer<Uint32> ptkConstraintType) =>
      _vtable.GetGenericParamConstraintProps.asFunction<
              int Function(
                  VTablePointer,
                  int gpc,
                  Pointer<Uint32> ptGenericParam,
                  Pointer<Uint32> ptkConstraintType)>()(
          ptr, gpc, ptGenericParam, ptkConstraintType);

  int getPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) =>
      _vtable.GetPEKind.asFunction<
          int Function(VTablePointer, Pointer<Uint32> pdwPEKind,
              Pointer<Uint32> pdwMAchine)>()(ptr, pdwPEKind, pdwMAchine);

  int getVersionString(
          Pointer<Utf16> pwzBuf, int ccBufSize, Pointer<Uint32> pccBufSize) =>
      _vtable.GetVersionString.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pwzBuf, int ccBufSize,
                  Pointer<Uint32> pccBufSize)>()(
          ptr, pwzBuf, ccBufSize, pccBufSize);

  int enumMethodSpecs(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rMethodSpecs,
          int cMax,
          Pointer<Uint32> pcMethodSpecs) =>
      _vtable.EnumMethodSpecs.asFunction<
              int Function(
                  VTablePointer,
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
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Pointer<Uint32> rGenericParams,
              Uint32 cMax,
              Pointer<Uint32> pcGenericParams)>> EnumGenericParams;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
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
          Int32 Function(
              VTablePointer,
              Uint32 mi,
              Pointer<Uint32> tkParent,
              Pointer<Pointer<Uint8>> ppvSigBlob,
              Pointer<Uint32> pcbSigBlob)>> GetMethodSpecProps;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Pointer> phEnum,
                  Uint32 tk,
                  Pointer<Uint32> rGenericParamConstraints,
                  Uint32 cMax,
                  Pointer<Uint32> pcGenericParamConstraints)>>
      EnumGenericParamConstraints;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Uint32 gpc,
                  Pointer<Uint32> ptGenericParam,
                  Pointer<Uint32> ptkConstraintType)>>
      GetGenericParamConstraintProps;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwPEKind,
              Pointer<Uint32> pdwMAchine)>> GetPEKind;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pwzBuf, Uint32 ccBufSize,
              Pointer<Uint32> pccBufSize)>> GetVersionString;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer> phEnum,
              Uint32 tk,
              Pointer<Uint32> rMethodSpecs,
              Uint32 cMax,
              Pointer<Uint32> pcMethodSpecs)>> EnumMethodSpecs;
}
