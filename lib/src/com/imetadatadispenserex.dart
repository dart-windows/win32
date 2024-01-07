// imetadatadispenserex.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../types.dart';
import '../variant.dart';
import 'imetadatadispenser.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataDispenserEx = '{31bcfce2-dafb-11d2-9f81-00c04f79a0a3}';

/// Extends the IMetaDataDispenser Interface interface to provide the
/// capability to control how the metadata APIs operate on the current
/// metadata scope.
///
/// {@category com}
class IMetaDataDispenserEx extends IMetaDataDispenser {
  // vtable begins at 6, is 6 entries long.
  IMetaDataDispenserEx(super.ptr)
      : _vtable = ptr.value.value.cast<IMetaDataDispenserExVtbl>().ref;

  final IMetaDataDispenserExVtbl _vtable;

  factory IMetaDataDispenserEx.from(IUnknown interface) =>
      IMetaDataDispenserEx(interface.toInterface(IID_IMetaDataDispenserEx));

  int setOption(Pointer<GUID> optionid, Pointer<VARIANT> value) =>
      _vtable.SetOption.asFunction<
          int Function(VTablePointer, Pointer<GUID> optionid,
              Pointer<VARIANT> value)>()(ptr.value, optionid, value);

  int getOption(Pointer<GUID> optionid, Pointer<VARIANT> pvalue) =>
      _vtable.GetOption.asFunction<
          int Function(VTablePointer, Pointer<GUID> optionid,
              Pointer<VARIANT> pvalue)>()(ptr.value, optionid, pvalue);

  int openScopeOnITypeInfo(Pointer<VTablePointer> pITI, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<Pointer<VTablePointer>> ppIUnk) =>
      _vtable.OpenScopeOnITypeInfo.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pITI,
                  int dwOpenFlags,
                  Pointer<GUID> riid,
                  Pointer<Pointer<VTablePointer>> ppIUnk)>()(
          ptr.value, pITI, dwOpenFlags, riid, ppIUnk);

  int getCORSystemDirectory(
          Pointer<Utf16> szBuffer, int cchBuffer, Pointer<Uint32> pchBuffer) =>
      _vtable.GetCORSystemDirectory.asFunction<
              int Function(VTablePointer, Pointer<Utf16> szBuffer,
                  int cchBuffer, Pointer<Uint32> pchBuffer)>()(
          ptr.value, szBuffer, cchBuffer, pchBuffer);

  int findAssembly(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pcName) =>
      _vtable.FindAssembly.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> szAppBase,
                  Pointer<Utf16> szPrivateBin,
                  Pointer<Utf16> szGlobalBin,
                  Pointer<Utf16> szAssemblyName,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pcName)>()(ptr.value, szAppBase, szPrivateBin,
          szGlobalBin, szAssemblyName, szName, cchName, pcName);

  int findAssemblyModule(
          Pointer<Utf16> szAppBase,
          Pointer<Utf16> szPrivateBin,
          Pointer<Utf16> szGlobalBin,
          Pointer<Utf16> szAssemblyName,
          Pointer<Utf16> szModuleName,
          Pointer<Utf16> szName,
          int cchName,
          Pointer<Uint32> pcName) =>
      _vtable.FindAssemblyModule.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> szAppBase,
                  Pointer<Utf16> szPrivateBin,
                  Pointer<Utf16> szGlobalBin,
                  Pointer<Utf16> szAssemblyName,
                  Pointer<Utf16> szModuleName,
                  Pointer<Utf16> szName,
                  int cchName,
                  Pointer<Uint32> pcName)>()(ptr.value, szAppBase, szPrivateBin,
          szGlobalBin, szAssemblyName, szModuleName, szName, cchName, pcName);
}

/// @nodoc
base class IMetaDataDispenserExVtbl extends Struct {
  external IMetaDataDispenserVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> optionid,
              Pointer<VARIANT> value)>> SetOption;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> optionid,
              Pointer<VARIANT> pvalue)>> GetOption;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pITI,
              Uint32 dwOpenFlags,
              Pointer<GUID> riid,
              Pointer<Pointer<VTablePointer>> ppIUnk)>> OpenScopeOnITypeInfo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> szBuffer,
              Uint32 cchBuffer,
              Pointer<Uint32> pchBuffer)>> GetCORSystemDirectory;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> szAppBase,
              Pointer<Utf16> szPrivateBin,
              Pointer<Utf16> szGlobalBin,
              Pointer<Utf16> szAssemblyName,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pcName)>> FindAssembly;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> szAppBase,
              Pointer<Utf16> szPrivateBin,
              Pointer<Utf16> szGlobalBin,
              Pointer<Utf16> szAssemblyName,
              Pointer<Utf16> szModuleName,
              Pointer<Utf16> szName,
              Uint32 cchName,
              Pointer<Uint32> pcName)>> FindAssemblyModule;
}
