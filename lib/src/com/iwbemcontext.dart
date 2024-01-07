// iwbemcontext.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemContext = '{44aca674-e8fc-11d0-a07c-00c04fb68820}';

/// The IWbemContext interface is optionally used to communicate additional
/// context information to providers when submitting `IWbemServices` calls
/// to WMI. All primary calls in `IWbemServices` take an optional parameter
/// pointing to an object of this type.
///
/// {@category com}
class IWbemContext extends IUnknown {
  IWbemContext(super.ptr) : _vtable = ptr.value.cast<IWbemContextVtbl>().ref;

  final IWbemContextVtbl _vtable;

  factory IWbemContext.from(IUnknown interface) =>
      IWbemContext(interface.toInterface(IID_IWbemContext));

  int clone(Pointer<VTablePointer> ppNewCopy) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> ppNewCopy)>()(ptr, ppNewCopy);

  int getNames(int lFlags, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
          int Function(VTablePointer, int lFlags,
              Pointer<Pointer<SAFEARRAY>> pNames)>()(ptr, lFlags, pNames);

  int beginEnumeration(int lFlags) => _vtable.BeginEnumeration.asFunction<
      int Function(VTablePointer, int lFlags)>()(ptr, lFlags);

  int next(int lFlags, Pointer<Pointer<Utf16>> pstrName,
          Pointer<VARIANT> pValue) =>
      _vtable.Next.asFunction<
          int Function(
              VTablePointer,
              int lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<VARIANT> pValue)>()(ptr, lFlags, pstrName, pValue);

  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer)>()(ptr);

  int setValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.SetValue.asFunction<
          int Function(VTablePointer, Pointer<Utf16> wszName, int lFlags,
              Pointer<VARIANT> pValue)>()(ptr, wszName, lFlags, pValue);

  int getValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.GetValue.asFunction<
          int Function(VTablePointer, Pointer<Utf16> wszName, int lFlags,
              Pointer<VARIANT> pValue)>()(ptr, wszName, lFlags, pValue);

  int deleteValue(Pointer<Utf16> wszName, int lFlags) =>
      _vtable.DeleteValue.asFunction<
          int Function(VTablePointer, Pointer<Utf16> wszName,
              int lFlags)>()(ptr, wszName, lFlags);

  int deleteAll() =>
      _vtable.DeleteAll.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IWbemContextVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppNewCopy)>>
      Clone;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<Pointer<SAFEARRAY>> pNames)>> GetNames;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 lFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      EndEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pValue)>> SetValue;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pValue)>> GetValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> wszName, Int32 lFlags)>>
      DeleteValue;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> DeleteAll;
}

/// @nodoc
const CLSID_WbemContext = '{674b6698-ee92-11d0-ad71-00c04fd8fdff}';

/// {@category com}
class WbemContext extends IWbemContext {
  WbemContext(super.ptr);

  factory WbemContext.createInstance() =>
      WbemContext(createCOMObject(CLSID_WbemContext, IID_IWbemContext));
}
