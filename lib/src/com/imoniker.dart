// imoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

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
  IMoniker(super.ptr) : _vtable = ptr.value.value.cast<IMonikerVtbl>().ref;

  final IMonikerVtbl _vtable;

  factory IMoniker.from(IUnknown interface) =>
      IMoniker(interface.toInterface(IID_IMoniker));

  int bindToObject(Pointer<VTablePointer> pbc, Pointer<VTablePointer> pmkToLeft,
          Pointer<GUID> riidResult, Pointer<Pointer> ppvResult) =>
      _vtable.BindToObject.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<GUID> riidResult,
                  Pointer<Pointer> ppvResult)>()(
          ptr.value, pbc, pmkToLeft, riidResult, ppvResult);

  int bindToStorage(
          Pointer<VTablePointer> pbc,
          Pointer<VTablePointer> pmkToLeft,
          Pointer<GUID> riid,
          Pointer<Pointer> ppvObj) =>
      _vtable.BindToStorage.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppvObj)>()(
          ptr.value, pbc, pmkToLeft, riid, ppvObj);

  int reduce(
          Pointer<VTablePointer> pbc,
          int dwReduceHowFar,
          Pointer<Pointer<VTablePointer>> ppmkToLeft,
          Pointer<Pointer<VTablePointer>> ppmkReduced) =>
      _vtable.Reduce.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  int dwReduceHowFar,
                  Pointer<Pointer<VTablePointer>> ppmkToLeft,
                  Pointer<Pointer<VTablePointer>> ppmkReduced)>()(
          ptr.value, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  int composeWith(Pointer<VTablePointer> pmkRight, int fOnlyIfNotGeneric,
          Pointer<Pointer<VTablePointer>> ppmkComposite) =>
      _vtable.ComposeWith.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pmkRight,
                  int fOnlyIfNotGeneric,
                  Pointer<Pointer<VTablePointer>> ppmkComposite)>()(
          ptr.value, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  int enum_(int fForward, Pointer<Pointer<VTablePointer>> ppenumMoniker) =>
      _vtable.Enum.asFunction<
              int Function(VTablePointer, int fForward,
                  Pointer<Pointer<VTablePointer>> ppenumMoniker)>()(
          ptr.value, fForward, ppenumMoniker);

  int isEqual(
          Pointer<VTablePointer> pmkOtherMoniker) =>
      _vtable.IsEqual.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> pmkOtherMoniker)>()(
          ptr.value, pmkOtherMoniker);

  int hash(Pointer<Uint32> pdwHash) => _vtable.Hash.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwHash)>()(ptr.value, pdwHash);

  int isRunning(Pointer<VTablePointer> pbc, Pointer<VTablePointer> pmkToLeft,
          Pointer<VTablePointer> pmkNewlyRunning) =>
      _vtable.IsRunning.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<VTablePointer> pmkNewlyRunning)>()(
          ptr.value, pbc, pmkToLeft, pmkNewlyRunning);

  int getTimeOfLastChange(Pointer<VTablePointer> pbc,
          Pointer<VTablePointer> pmkToLeft, Pointer<FILETIME> pFileTime) =>
      _vtable.GetTimeOfLastChange.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<FILETIME> pFileTime)>()(
          ptr.value, pbc, pmkToLeft, pFileTime);

  int inverse(Pointer<Pointer<VTablePointer>> ppmk) =>
      _vtable.Inverse.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppmk)>()(ptr.value, ppmk);

  int commonPrefixWith(Pointer<VTablePointer> pmkOther,
          Pointer<Pointer<VTablePointer>> ppmkPrefix) =>
      _vtable.CommonPrefixWith.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pmkOther,
                  Pointer<Pointer<VTablePointer>> ppmkPrefix)>()(
          ptr.value, pmkOther, ppmkPrefix);

  int relativePathTo(Pointer<VTablePointer> pmkOther,
          Pointer<Pointer<VTablePointer>> ppmkRelPath) =>
      _vtable.RelativePathTo.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pmkOther,
                  Pointer<Pointer<VTablePointer>> ppmkRelPath)>()(
          ptr.value, pmkOther, ppmkRelPath);

  int getDisplayName(
          Pointer<VTablePointer> pbc,
          Pointer<VTablePointer> pmkToLeft,
          Pointer<Pointer<Utf16>> ppszDisplayName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<Pointer<Utf16>> ppszDisplayName)>()(
          ptr.value, pbc, pmkToLeft, ppszDisplayName);

  int parseDisplayName(
          Pointer<VTablePointer> pbc,
          Pointer<VTablePointer> pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer<VTablePointer>> ppmkOut) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pbc,
                  Pointer<VTablePointer> pmkToLeft,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<VTablePointer>> ppmkOut)>()(
          ptr.value, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  int isSystemMoniker(Pointer<Uint32> pdwMksys) =>
      _vtable.IsSystemMoniker.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pdwMksys)>()(ptr.value, pdwMksys);
}

/// @nodoc
base class IMonikerVtbl extends Struct {
  external IPersistStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<GUID> riidResult,
              Pointer<Pointer> ppvResult)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>> BindToStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Uint32 dwReduceHowFar,
              Pointer<Pointer<VTablePointer>> ppmkToLeft,
              Pointer<Pointer<VTablePointer>> ppmkReduced)>> Reduce;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pmkRight,
              Int32 fOnlyIfNotGeneric,
              Pointer<Pointer<VTablePointer>> ppmkComposite)>> ComposeWith;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 fForward,
              Pointer<Pointer<VTablePointer>> ppenumMoniker)>> Enum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> pmkOtherMoniker)>> IsEqual;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwHash)>> Hash;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<VTablePointer> pmkNewlyRunning)>> IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<FILETIME> pFileTime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppmk)>> Inverse;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pmkOther,
              Pointer<Pointer<VTablePointer>> ppmkPrefix)>> CommonPrefixWith;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pmkOther,
              Pointer<Pointer<VTablePointer>> ppmkRelPath)>> RelativePathTo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<Pointer<Utf16>> ppszDisplayName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pbc,
              Pointer<VTablePointer> pmkToLeft,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<VTablePointer>> ppmkOut)>> ParseDisplayName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwMksys)>>
      IsSystemMoniker;
}
