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
import 'ipersiststream.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMoniker = '{0000000f-0000-0000-c000-000000000046}';

/// Enables you to use a moniker object, which contains information that
/// uniquely identifies a COM object. An object that has a pointer to the
/// moniker object's IMoniker interface can locate, activate, and get access
/// to the identified object without having any other specific information
/// on where the object is actually located in a distributed system.
/// Monikers are used as the basis for linking in COM. A linked object
/// contains a moniker that identifies its source. When the user activates
/// the linked object to edit it, the moniker is bound; this loads the link
/// source into memory.
///
/// {@category com}
class IMoniker extends IPersistStream {
  IMoniker(super.ptr) : _vtable = ptr.value.cast<IMonikerVtbl>().ref;

  final IMonikerVtbl _vtable;

  factory IMoniker.from(IUnknown interface) =>
      IMoniker(interface.toInterface(IID_IMoniker));

  int bindToObject(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<GUID> riidResult, Pointer<Pointer> ppvResult) =>
      _vtable.BindToObject.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<GUID> riidResult,
                  Pointer<Pointer> ppvResult)>()(
          ptr, pbc, pmkToLeft, riidResult, ppvResult);

  int bindToStorage(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<GUID> riid, Pointer<Pointer> ppvObj) =>
      _vtable.BindToStorage.asFunction<
          int Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>()(ptr, pbc, pmkToLeft, riid, ppvObj);

  int reduce(
          VTablePointer pbc,
          int dwReduceHowFar,
          Pointer<VTablePointer> ppmkToLeft,
          Pointer<VTablePointer> ppmkReduced) =>
      _vtable.Reduce.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pbc,
                  int dwReduceHowFar,
                  Pointer<VTablePointer> ppmkToLeft,
                  Pointer<VTablePointer> ppmkReduced)>()(
          ptr, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  int composeWith(VTablePointer pmkRight, int fOnlyIfNotGeneric,
          Pointer<VTablePointer> ppmkComposite) =>
      _vtable.ComposeWith.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pmkRight,
                  int fOnlyIfNotGeneric,
                  Pointer<VTablePointer> ppmkComposite)>()(
          ptr, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  int enum_(int fForward, Pointer<VTablePointer> ppenumMoniker) =>
      _vtable.Enum.asFunction<
              int Function(VTablePointer, int fForward,
                  Pointer<VTablePointer> ppenumMoniker)>()(
          ptr, fForward, ppenumMoniker);

  int isEqual(VTablePointer pmkOtherMoniker) => _vtable.IsEqual.asFunction<
          int Function(VTablePointer, VTablePointer pmkOtherMoniker)>()(
      ptr, pmkOtherMoniker);

  int hash(Pointer<Uint32> pdwHash) => _vtable.Hash.asFunction<
      int Function(VTablePointer, Pointer<Uint32> pdwHash)>()(ptr, pdwHash);

  int isRunning(VTablePointer pbc, VTablePointer pmkToLeft,
          VTablePointer pmkNewlyRunning) =>
      _vtable.IsRunning.asFunction<
              int Function(VTablePointer, VTablePointer pbc,
                  VTablePointer pmkToLeft, VTablePointer pmkNewlyRunning)>()(
          ptr, pbc, pmkToLeft, pmkNewlyRunning);

  int getTimeOfLastChange(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<FILETIME> pFileTime) =>
      _vtable.GetTimeOfLastChange.asFunction<
          int Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<FILETIME> pFileTime)>()(ptr, pbc, pmkToLeft, pFileTime);

  int inverse(Pointer<VTablePointer> ppmk) => _vtable.Inverse.asFunction<
      int Function(VTablePointer, Pointer<VTablePointer> ppmk)>()(ptr, ppmk);

  int commonPrefixWith(
          VTablePointer pmkOther, Pointer<VTablePointer> ppmkPrefix) =>
      _vtable.CommonPrefixWith.asFunction<
          int Function(VTablePointer, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkPrefix)>()(ptr, pmkOther, ppmkPrefix);

  int relativePathTo(
          VTablePointer pmkOther, Pointer<VTablePointer> ppmkRelPath) =>
      _vtable.RelativePathTo.asFunction<
              int Function(VTablePointer, VTablePointer pmkOther,
                  Pointer<VTablePointer> ppmkRelPath)>()(
          ptr, pmkOther, ppmkRelPath);

  int getDisplayName(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<Pointer<Utf16>> ppszDisplayName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<Pointer<Utf16>> ppszDisplayName)>()(
          ptr, pbc, pmkToLeft, ppszDisplayName);

  int parseDisplayName(
          VTablePointer pbc,
          VTablePointer pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<VTablePointer> ppmkOut) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<VTablePointer> ppmkOut)>()(
          ptr, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  int isSystemMoniker(Pointer<Uint32> pdwMksys) =>
      _vtable.IsSystemMoniker.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pdwMksys)>()(ptr, pdwMksys);
}

/// @nodoc
base class IMonikerVtbl extends Struct {
  external IPersistStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<GUID> riidResult,
              Pointer<Pointer> ppvResult)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>> BindToStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              Uint32 dwReduceHowFar,
              Pointer<VTablePointer> ppmkToLeft,
              Pointer<VTablePointer> ppmkReduced)>> Reduce;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pmkRight,
              Int32 fOnlyIfNotGeneric,
              Pointer<VTablePointer> ppmkComposite)>> ComposeWith;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 fForward,
              Pointer<VTablePointer> ppenumMoniker)>> Enum;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer pmkOtherMoniker)>>
      IsEqual;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwHash)>> Hash;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              VTablePointer pmkNewlyRunning)>> IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<FILETIME> pFileTime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> ppmk)>> Inverse;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkPrefix)>> CommonPrefixWith;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkRelPath)>> RelativePathTo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<Pointer<Utf16>> ppszDisplayName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<VTablePointer> ppmkOut)>> ParseDisplayName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwMksys)>>
      IsSystemMoniker;
}
