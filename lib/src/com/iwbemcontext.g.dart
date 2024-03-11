// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemContext = '{44aca674-e8fc-11d0-a07c-00c04fb68820}';

/// Used to communicate additional context information to providers when
/// submitting IWbemServices calls to WMI.
///
/// All primary calls in IWbemServices take an optional parameter pointing to an
/// object of this type.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemcontext>.
///
/// {@category com}
class IWbemContext extends IUnknown {
  IWbemContext(super.ptr) : _vtable = ptr.value.cast<IWbemContextVtbl>().ref;

  final IWbemContextVtbl _vtable;

  /// Creates a new instance of `IWbemContext` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWbemContext` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWbemContext.from(IUnknown interface) =>
      IWbemContext(interface.toInterface(IID_IWbemContext));

  /// Makes a logical copy of the current IWbemContext object.
  ///
  /// This method can be useful when many calls must be made which have largely
  /// identical IWbemContext objects.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-clone>.
  int clone(Pointer<VTablePointer> ppNewCopy) => _vtable.Clone.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<VTablePointer> ppNewCopy)>()(ptr, ppNewCopy);

  /// Returns a SAFEARRAY structure of all of the names of the named context
  /// values.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-getnames>.
  int getNames(int lFlags, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
          int Function(VTablePointer lpVtbl, int lFlags,
              Pointer<Pointer<SAFEARRAY>> pNames)>()(ptr, lFlags, pNames);

  /// Resets the enumeration of all the context values in the object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-beginenumeration>.
  int beginEnumeration(int lFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(VTablePointer lpVtbl, int lFlags)>()(ptr, lFlags);

  /// Retrieves the next value in an enumeration of all context values beginning
  /// with `IWbemContext.beginEnumeration`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-next>.
  int next(int lFlags, Pointer<Pointer<Utf16>> pstrName,
          Pointer<VARIANT> pValue) =>
      _vtable.Next.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<VARIANT> pValue)>()(ptr, lFlags, pstrName, pValue);

  /// Ends an enumeration sequence that begins with
  /// `IWbemContext.beginEnumeration`.
  ///
  /// This call is not required, but it releases as early as possible any system
  /// resources associated with the enumeration.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-endenumeration>.
  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Creates or overwrites a named context value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-setvalue>.
  int setValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.SetValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> wszName, int lFlags,
              Pointer<VARIANT> pValue)>()(ptr, wszName, lFlags, pValue);

  /// Used to retrieve a specific named context value by name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-getvalue>.
  int getValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.GetValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> wszName, int lFlags,
              Pointer<VARIANT> pValue)>()(ptr, wszName, lFlags, pValue);

  /// Deletes a named context value created by `IWbemContext.setValue`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-deletevalue>.
  int deleteValue(Pointer<Utf16> wszName, int lFlags) =>
      _vtable.DeleteValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
              int lFlags)>()(ptr, wszName, lFlags);

  /// Removes all named context values from the current object, thus emptying the
  /// object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcontext-deleteall>.
  int deleteAll() =>
      _vtable.DeleteAll.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IWbemContextVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppNewCopy)>> Clone;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<Pointer<SAFEARRAY>> pNames)>> GetNames;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 lFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue)>> Next;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndEnumeration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
              Int32 lFlags, Pointer<VARIANT> pValue)>> SetValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> wszName,
              Int32 lFlags, Pointer<VARIANT> pValue)>> GetValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> wszName, Int32 lFlags)>>
      DeleteValue;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      DeleteAll;
}

/// @nodoc
const WbemContext = '{674b6698-ee92-11d0-ad71-00c04fd8fdff}';
