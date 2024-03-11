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
import 'ipersiststream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMoniker = '{0000000f-0000-0000-c000-000000000046}';

/// Enables you to use a moniker object, which contains information that
/// uniquely identifies a COM object.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-imoniker>.
///
/// {@category com}
class IMoniker extends IPersistStream {
  IMoniker(super.ptr) : _vtable = ptr.value.cast<IMonikerVtbl>().ref;

  final IMonikerVtbl _vtable;

  /// Creates a new instance of `IMoniker` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMoniker` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMoniker.from(IUnknown interface) =>
      IMoniker(interface.toInterface(IID_IMoniker));

  /// Binds to the specified object.
  ///
  /// The binding process involves finding the object, putting it into the running
  /// state if necessary, and providing the caller with a pointer to a specified
  /// interface on the identified object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-bindtoobject>.
  int bindToObject(VTablePointer pbc, VTablePointer? pmkToLeft,
          Pointer<GUID> riidResult, Pointer<Pointer> ppvResult) =>
      _vtable.BindToObject.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<GUID> riidResult,
                  Pointer<Pointer> ppvResult)>()(
          ptr, pbc, pmkToLeft ?? nullptr, riidResult, ppvResult);

  /// Binds to the storage for the specified object.
  ///
  /// Unlike the `IMoniker.bindToObject` method, this method does not activate the
  /// object identified by the moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-bindtostorage>.
  int bindToStorage(VTablePointer pbc, VTablePointer? pmkToLeft,
          Pointer<GUID> riid, Pointer<Pointer> ppvObj) =>
      _vtable.BindToStorage.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppvObj)>()(
          ptr, pbc, pmkToLeft ?? nullptr, riid, ppvObj);

  /// Reduces a moniker to its simplest form.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-reduce>.
  int reduce(
          VTablePointer pbc,
          int dwReduceHowFar,
          Pointer<VTablePointer> ppmkToLeft,
          Pointer<VTablePointer> ppmkReduced) =>
      _vtable.Reduce.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pbc,
                  int dwReduceHowFar,
                  Pointer<VTablePointer> ppmkToLeft,
                  Pointer<VTablePointer> ppmkReduced)>()(
          ptr, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  /// Creates a new composite moniker by combining the current moniker with the
  /// specified moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-composewith>.
  int composeWith(VTablePointer pmkRight, int fOnlyIfNotGeneric,
          Pointer<VTablePointer> ppmkComposite) =>
      _vtable.ComposeWith.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pmkRight,
                  int fOnlyIfNotGeneric,
                  Pointer<VTablePointer> ppmkComposite)>()(
          ptr, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  /// Retrieves a pointer to an enumerator for the components of a composite
  /// moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-enum>.
  int enum_(int fForward, Pointer<VTablePointer> ppenumMoniker) =>
      _vtable.Enum.asFunction<
              int Function(VTablePointer lpVtbl, int fForward,
                  Pointer<VTablePointer> ppenumMoniker)>()(
          ptr, fForward, ppenumMoniker);

  /// Determines whether this moniker is identical to the specified moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-isequal>.
  int isEqual(VTablePointer pmkOtherMoniker) => _vtable.IsEqual.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pmkOtherMoniker)>()(
      ptr, pmkOtherMoniker);

  /// Creates a hash value using the internal state of the moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-hash>.
  int hash(Pointer<Uint32> pdwHash) => _vtable.Hash.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwHash)>()(ptr, pdwHash);

  /// Determines whether the object identified by this moniker is currently loaded
  /// and running.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-isrunning>.
  int isRunning(VTablePointer pbc, VTablePointer pmkToLeft,
          VTablePointer pmkNewlyRunning) =>
      _vtable.IsRunning.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pbc,
                  VTablePointer pmkToLeft, VTablePointer pmkNewlyRunning)>()(
          ptr, pbc, pmkToLeft, pmkNewlyRunning);

  /// Retrieves the time at which the object identified by this moniker was last
  /// changed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-gettimeoflastchange>.
  int getTimeOfLastChange(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<FILETIME> pFileTime) =>
      _vtable.GetTimeOfLastChange.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<FILETIME> pFileTime)>()(ptr, pbc, pmkToLeft, pFileTime);

  /// Creates a moniker that is the inverse of this moniker.
  ///
  /// When composed to the right of this moniker or one of similar structure, the
  /// moniker will compose to nothing.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-inverse>.
  int inverse(Pointer<VTablePointer> ppmk) => _vtable.Inverse.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppmk)>()(ptr, ppmk);

  /// Creates a new moniker based on the prefix that this moniker has in common
  /// with the specified moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-commonprefixwith>.
  int commonPrefixWith(
          VTablePointer pmkOther, Pointer<VTablePointer> ppmkPrefix) =>
      _vtable.CommonPrefixWith.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkPrefix)>()(ptr, pmkOther, ppmkPrefix);

  /// Creates a relative moniker between this moniker and the specified moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-relativepathto>.
  int relativePathTo(
          VTablePointer pmkOther, Pointer<VTablePointer> ppmkRelPath) =>
      _vtable.RelativePathTo.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pmkOther,
                  Pointer<VTablePointer> ppmkRelPath)>()(
          ptr, pmkOther, ppmkRelPath);

  /// Retrieves the display name for the moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-getdisplayname>.
  int getDisplayName(VTablePointer pbc, VTablePointer pmkToLeft,
          Pointer<Pointer<Utf16>> ppszDisplayName) =>
      _vtable.GetDisplayName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<Pointer<Utf16>> ppszDisplayName)>()(
          ptr, pbc, pmkToLeft, ppszDisplayName);

  /// Converts a display name into a moniker.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-parsedisplayname>.
  int parseDisplayName(
          VTablePointer pbc,
          VTablePointer pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<VTablePointer> ppmkOut) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pbc,
                  VTablePointer pmkToLeft,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<VTablePointer> ppmkOut)>()(
          ptr, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  /// Determines whether this moniker is one of the system-provided moniker
  /// classes.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-issystemmoniker>.
  int isSystemMoniker(Pointer<Uint32> pdwMksys) =>
      _vtable.IsSystemMoniker.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwMksys)>()(ptr, pdwMksys);
}

/// @nodoc
base class IMonikerVtbl extends Struct {
  external IPersistStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<GUID> riidResult,
              Pointer<Pointer> ppvResult)>> BindToObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObj)>> BindToStorage;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              Uint32 dwReduceHowFar,
              Pointer<VTablePointer> ppmkToLeft,
              Pointer<VTablePointer> ppmkReduced)>> Reduce;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pmkRight,
              BOOL fOnlyIfNotGeneric,
              Pointer<VTablePointer> ppmkComposite)>> ComposeWith;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BOOL fForward,
              Pointer<VTablePointer> ppenumMoniker)>> Enum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer pmkOtherMoniker)>> IsEqual;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwHash)>>
      Hash;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              VTablePointer pmkNewlyRunning)>> IsRunning;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<FILETIME> pFileTime)>> GetTimeOfLastChange;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppmk)>> Inverse;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkPrefix)>> CommonPrefixWith;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pmkOther,
              Pointer<VTablePointer> ppmkRelPath)>> RelativePathTo;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<Pointer<Utf16>> ppszDisplayName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              VTablePointer pmkToLeft,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<VTablePointer> ppmkOut)>> ParseDisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwMksys)>>
      IsSystemMoniker;
}
