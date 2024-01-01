// inetwork.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_INetwork = '{dcb00002-570f-4a9b-8d69-199fdba5723b}';

/// The INetwork interface represents a network on the local machine. It can
/// also represent a collection of network connections with a similar
/// network signature.
///
/// {@category com}
class INetwork extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  INetwork(super.ptr) : _vtable = ptr.ref.vtable.cast<INetworkVtbl>().ref;

  final INetworkVtbl _vtable;

  factory INetwork.from(IUnknown interface) =>
      INetwork(interface.toInterface(IID_INetwork));

  int getName(
          Pointer<Pointer<Utf16>> pszNetworkName) =>
      _vtable.GetName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pszNetworkName)>()(
          ptr.ref.lpVtbl, pszNetworkName);

  int setName(Pointer<Utf16> szNetworkNewName) => _vtable.SetName.asFunction<
          int Function(Pointer, Pointer<Utf16> szNetworkNewName)>()(
      ptr.ref.lpVtbl, szNetworkNewName);

  int getDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      _vtable.GetDescription.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pszDescription)>()(
          ptr.ref.lpVtbl, pszDescription);

  int setDescription(Pointer<Utf16> szDescription) => _vtable.SetDescription
          .asFunction<int Function(Pointer, Pointer<Utf16> szDescription)>()(
      ptr.ref.lpVtbl, szDescription);

  int getNetworkId(Pointer<GUID> pgdGuidNetworkId) => _vtable.GetNetworkId
          .asFunction<int Function(Pointer, Pointer<GUID> pgdGuidNetworkId)>()(
      ptr.ref.lpVtbl, pgdGuidNetworkId);

  int getDomainType(Pointer<Int32> pNetworkType) => _vtable.GetDomainType
          .asFunction<int Function(Pointer, Pointer<Int32> pNetworkType)>()(
      ptr.ref.lpVtbl, pNetworkType);

  int getNetworkConnections(
          Pointer<Pointer<COMObject>> ppEnumNetworkConnection) =>
      _vtable.GetNetworkConnections.asFunction<
              int Function(Pointer,
                  Pointer<Pointer<COMObject>> ppEnumNetworkConnection)>()(
          ptr.ref.lpVtbl, ppEnumNetworkConnection);

  int getTimeCreatedAndConnected(
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected) =>
      _vtable.GetTimeCreatedAndConnected.asFunction<
              int Function(
                  Pointer,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>()(
          ptr.ref.lpVtbl,
          pdwLowDateTimeCreated,
          pdwHighDateTimeCreated,
          pdwLowDateTimeConnected,
          pdwHighDateTimeConnected);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
              int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get isConnected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnected.asFunction<
              int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) => _vtable.GetConnectivity
          .asFunction<int Function(Pointer, Pointer<Int32> pConnectivity)>()(
      ptr.ref.lpVtbl, pConnectivity);

  int getCategory(Pointer<Int32> pCategory) => _vtable.GetCategory.asFunction<
      int Function(
          Pointer, Pointer<Int32> pCategory)>()(ptr.ref.lpVtbl, pCategory);

  int setCategory(int NewCategory) =>
      _vtable.SetCategory.asFunction<int Function(Pointer, int NewCategory)>()(
          ptr.ref.lpVtbl, NewCategory);
}

/// @nodoc
base class INetworkVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszNetworkName)>>
      GetName;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> szNetworkNewName)>> SetName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszDescription)>>
      GetDescription;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> szDescription)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<GUID> pgdGuidNetworkId)>>
      GetNetworkId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pNetworkType)>>
      GetDomainType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer,
                  Pointer<Pointer<COMObject>> ppEnumNetworkConnection)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>>
      GetTimeCreatedAndConnected;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnectedToInternet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pConnectivity)>>
      GetConnectivity;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pCategory)>>
      GetCategory;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 NewCategory)>>
      SetCategory;
}
