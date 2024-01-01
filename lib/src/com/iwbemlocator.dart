// iwbemlocator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemLocator = '{dc12a687-737f-11cf-884d-00aa004b2e24}';

/// Use the IWbemLocator interface to obtain the initial namespace pointer
/// to the `IWbemServices` interface for WMI on a specific host computer.
/// You can access Windows Management itself using the `IWbemServices`
/// pointer, which is returned by the `IWbemLocator::ConnectServer` method.
///
/// {@category com}
class IWbemLocator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemLocator(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemLocatorVtbl>().ref;

  final IWbemLocatorVtbl _vtable;

  factory IWbemLocator.from(IUnknown interface) =>
      IWbemLocator(interface.toInterface(IID_IWbemLocator));

  int connectServer(
          Pointer<Utf16> strNetworkResource,
          Pointer<Utf16> strUser,
          Pointer<Utf16> strPassword,
          Pointer<Utf16> strLocale,
          int lSecurityFlags,
          Pointer<Utf16> strAuthority,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppNamespace) =>
      _vtable.ConnectServer.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strNetworkResource,
                  Pointer<Utf16> strUser,
                  Pointer<Utf16> strPassword,
                  Pointer<Utf16> strLocale,
                  int lSecurityFlags,
                  Pointer<Utf16> strAuthority,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppNamespace)>()(
          ptr.ref.lpVtbl,
          strNetworkResource,
          strUser,
          strPassword,
          strLocale,
          lSecurityFlags,
          strAuthority,
          pCtx,
          ppNamespace);
}

/// @nodoc
base class IWbemLocatorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strNetworkResource,
              Pointer<Utf16> strUser,
              Pointer<Utf16> strPassword,
              Pointer<Utf16> strLocale,
              Int32 lSecurityFlags,
              Pointer<Utf16> strAuthority,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppNamespace)>> ConnectServer;
}

/// @nodoc
const CLSID_WbemLocator = '{4590f811-1d3a-11d0-891f-00aa004b2e24}';

/// {@category com}
class WbemLocator extends IWbemLocator {
  WbemLocator(super.ptr);

  factory WbemLocator.createInstance() =>
      WbemLocator(COMObject.createFromID(CLSID_WbemLocator, IID_IWbemLocator));
}
