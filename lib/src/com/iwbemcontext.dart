// iwbemcontext.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
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
  // vtable begins at 3, is 9 entries long.
  IWbemContext(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemContextVtbl>().ref;

  final IWbemContextVtbl _vtable;

  factory IWbemContext.from(IUnknown interface) =>
      IWbemContext(interface.toInterface(IID_IWbemContext));

  int clone(Pointer<Pointer<COMObject>> ppNewCopy) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppNewCopy)>()(
      ptr.ref.lpVtbl, ppNewCopy);

  int getNames(int lFlags, Pointer<Pointer<SAFEARRAY>> pNames) =>
      _vtable.GetNames.asFunction<
              int Function(
                  Pointer, int lFlags, Pointer<Pointer<SAFEARRAY>> pNames)>()(
          ptr.ref.lpVtbl, lFlags, pNames);

  int beginEnumeration(int lFlags) =>
      _vtable.BeginEnumeration.asFunction<int Function(Pointer, int lFlags)>()(
          ptr.ref.lpVtbl, lFlags);

  int next(int lFlags, Pointer<Pointer<Utf16>> pstrName,
          Pointer<VARIANT> pValue) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int lFlags,
                  Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue)>()(
          ptr.ref.lpVtbl, lFlags, pstrName, pValue);

  int endEnumeration() =>
      _vtable.EndEnumeration.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int setValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.SetValue.asFunction<
              int Function(Pointer, Pointer<Utf16> wszName, int lFlags,
                  Pointer<VARIANT> pValue)>()(
          ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int getValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      _vtable.GetValue.asFunction<
              int Function(Pointer, Pointer<Utf16> wszName, int lFlags,
                  Pointer<VARIANT> pValue)>()(
          ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int deleteValue(Pointer<Utf16> wszName, int lFlags) =>
      _vtable.DeleteValue.asFunction<
              int Function(Pointer, Pointer<Utf16> wszName, int lFlags)>()(
          ptr.ref.lpVtbl, wszName, lFlags);

  int deleteAll() =>
      _vtable.DeleteAll.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
base class IWbemContextVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppNewCopy)>>
      Clone;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 lFlags, Pointer<Pointer<SAFEARRAY>> pNames)>>
      GetNames;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>
      BeginEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> EndEnumeration;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pValue)>> SetValue;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> wszName, Int32 lFlags,
              Pointer<VARIANT> pValue)>> GetValue;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Utf16> wszName, Int32 lFlags)>>
      DeleteValue;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> DeleteAll;
}

/// @nodoc
const CLSID_WbemContext = '{674b6698-ee92-11d0-ad71-00c04fd8fdff}';

/// {@category com}
class WbemContext extends IWbemContext {
  WbemContext(super.ptr);

  factory WbemContext.createInstance() =>
      WbemContext(COMObject.createFromID(CLSID_WbemContext, IID_IWbemContext));
}
