// imoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
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
  // vtable begins at 8, is 15 entries long.
  IMoniker(super.ptr) : _vtable = ptr.ref.vtable.cast<IMonikerVtbl>().ref;

  final IMonikerVtbl _vtable;

  factory IMoniker.from(IUnknown interface) =>
      IMoniker(interface.toInterface(IID_IMoniker));

  int bindToObject(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<GUID> riidResult, Pointer<Pointer> ppvResult) =>
      _vtable.BindToObject.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft,
                  Pointer<GUID> riidResult,
                  Pointer<Pointer> ppvResult)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riidResult, ppvResult);

  int bindToStorage(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<GUID> riid, Pointer<Pointer> ppvObj) =>
      _vtable.BindToStorage.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppvObj)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riid, ppvObj);

  int reduce(
          Pointer<COMObject> pbc,
          int dwReduceHowFar,
          Pointer<Pointer<COMObject>> ppmkToLeft,
          Pointer<Pointer<COMObject>> ppmkReduced) =>
      _vtable.Reduce.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  int dwReduceHowFar,
                  Pointer<Pointer<COMObject>> ppmkToLeft,
                  Pointer<Pointer<COMObject>> ppmkReduced)>()(
          ptr.ref.lpVtbl, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  int composeWith(Pointer<COMObject> pmkRight, int fOnlyIfNotGeneric,
          Pointer<Pointer<COMObject>> ppmkComposite) =>
      _vtable.ComposeWith.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pmkRight,
                  int fOnlyIfNotGeneric,
                  Pointer<Pointer<COMObject>> ppmkComposite)>()(
          ptr.ref.lpVtbl, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  int enum_(int fForward, Pointer<Pointer<COMObject>> ppenumMoniker) =>
      _vtable.Enum.asFunction<
              int Function(Pointer, int fForward,
                  Pointer<Pointer<COMObject>> ppenumMoniker)>()(
          ptr.ref.lpVtbl, fForward, ppenumMoniker);

  int isEqual(Pointer<COMObject> pmkOtherMoniker) => _vtable.IsEqual.asFunction<
          int Function(Pointer, Pointer<COMObject> pmkOtherMoniker)>()(
      ptr.ref.lpVtbl, pmkOtherMoniker);

  int hash(Pointer<Uint32> pdwHash) =>
      _vtable.Hash.asFunction<int Function(Pointer, Pointer<Uint32> pdwHash)>()(
          ptr.ref.lpVtbl, pdwHash);

  int isRunning(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<COMObject> pmkNewlyRunning) =>
      _vtable.IsRunning.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft,
                  Pointer<COMObject> pmkNewlyRunning)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pmkNewlyRunning);

  int getTimeOfLastChange(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<FILETIME> pFileTime) =>
      _vtable.GetTimeOfLastChange.asFunction<
              int Function(Pointer, Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft, Pointer<FILETIME> pFileTime)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pFileTime);

  int inverse(Pointer<Pointer<COMObject>> ppmk) => _vtable.Inverse.asFunction<
      int Function(
          Pointer, Pointer<Pointer<COMObject>> ppmk)>()(ptr.ref.lpVtbl, ppmk);

  int commonPrefixWith(Pointer<COMObject> pmkOther,
          Pointer<Pointer<COMObject>> ppmkPrefix) =>
      _vtable.CommonPrefixWith.asFunction<
              int Function(Pointer, Pointer<COMObject> pmkOther,
                  Pointer<Pointer<COMObject>> ppmkPrefix)>()(
          ptr.ref.lpVtbl, pmkOther, ppmkPrefix);

  int relativePathTo(Pointer<COMObject> pmkOther,
          Pointer<Pointer<COMObject>> ppmkRelPath) =>
      _vtable.RelativePathTo.asFunction<
              int Function(Pointer, Pointer<COMObject> pmkOther,
                  Pointer<Pointer<COMObject>> ppmkRelPath)>()(
          ptr.ref.lpVtbl, pmkOther, ppmkRelPath);

  int getDisplayName(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<Pointer<Utf16>> ppszDisplayName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft,
                  Pointer<Pointer<Utf16>> ppszDisplayName)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, ppszDisplayName);

  int parseDisplayName(
          Pointer<COMObject> pbc,
          Pointer<COMObject> pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer<COMObject>> ppmkOut) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pbc,
                  Pointer<COMObject> pmkToLeft,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<COMObject>> ppmkOut)>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  int isSystemMoniker(Pointer<Uint32> pdwMksys) =>
      _vtable.IsSystemMoniker.asFunction<
          int Function(
              Pointer, Pointer<Uint32> pdwMksys)>()(ptr.ref.lpVtbl, pdwMksys);
}

/// @nodoc
base class IMonikerVtbl extends Struct {
  external IPersistStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<GUID> riidResult,
              Pointer<Pointer> ppvResult)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>> BindToStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Uint32 dwReduceHowFar,
              Pointer<Pointer<COMObject>> ppmkToLeft,
              Pointer<Pointer<COMObject>> ppmkReduced)>> Reduce;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pmkRight,
              Int32 fOnlyIfNotGeneric,
              Pointer<Pointer<COMObject>> ppmkComposite)>> ComposeWith;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 fForward,
              Pointer<Pointer<COMObject>> ppenumMoniker)>> Enum;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkOtherMoniker)>> IsEqual;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwHash)>> Hash;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<COMObject> pmkNewlyRunning)>> IsRunning;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<FILETIME> pFileTime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppmk)>> Inverse;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkOther,
              Pointer<Pointer<COMObject>> ppmkPrefix)>> CommonPrefixWith;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pmkOther,
              Pointer<Pointer<COMObject>> ppmkRelPath)>> RelativePathTo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<Pointer<Utf16>> ppszDisplayName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<COMObject> pmkToLeft,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<COMObject>> ppmkOut)>> ParseDisplayName;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwMksys)>>
      IsSystemMoniker;
}
