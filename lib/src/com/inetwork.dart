// inetwork.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../types.dart';
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
  INetwork(super.ptr) : _vtable = ptr.value.cast<INetworkVtbl>().ref;

  final INetworkVtbl _vtable;

  factory INetwork.from(IUnknown interface) =>
      INetwork(interface.toInterface(IID_INetwork));

  int getName(
          Pointer<Pointer<Utf16>> pszNetworkName) =>
      _vtable.GetName.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pszNetworkName)>()(ptr, pszNetworkName);

  int setName(Pointer<Utf16> szNetworkNewName) => _vtable.SetName.asFunction<
          int Function(VTablePointer, Pointer<Utf16> szNetworkNewName)>()(
      ptr, szNetworkNewName);

  int getDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);

  int setDescription(Pointer<Utf16> szDescription) =>
      _vtable.SetDescription.asFunction<
              int Function(VTablePointer, Pointer<Utf16> szDescription)>()(
          ptr, szDescription);

  int getNetworkId(Pointer<GUID> pgdGuidNetworkId) =>
      _vtable.GetNetworkId.asFunction<
              int Function(VTablePointer, Pointer<GUID> pgdGuidNetworkId)>()(
          ptr, pgdGuidNetworkId);

  int getDomainType(Pointer<Int32> pNetworkType) =>
      _vtable.GetDomainType.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> pNetworkType)>()(ptr, pNetworkType);

  int getNetworkConnections(Pointer<VTablePointer> ppEnumNetworkConnection) =>
      _vtable.GetNetworkConnections.asFunction<
              int Function(VTablePointer,
                  Pointer<VTablePointer> ppEnumNetworkConnection)>()(
          ptr, ppEnumNetworkConnection);

  int getTimeCreatedAndConnected(
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected) =>
      _vtable.GetTimeCreatedAndConnected.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>()(
          ptr,
          pdwLowDateTimeCreated,
          pdwHighDateTimeCreated,
          pdwLowDateTimeConnected,
          pdwHighDateTimeConnected);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> pbIsConnected)>()(ptr, retValuePtr);
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
          int Function(
              VTablePointer, Pointer<Int16> pbIsConnected)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) =>
      _vtable.GetConnectivity.asFunction<
              int Function(VTablePointer, Pointer<Int32> pConnectivity)>()(
          ptr, pConnectivity);

  int getCategory(Pointer<Int32> pCategory) => _vtable.GetCategory.asFunction<
      int Function(VTablePointer, Pointer<Int32> pCategory)>()(ptr, pCategory);

  int setCategory(int NewCategory) => _vtable.SetCategory.asFunction<
      int Function(VTablePointer, int NewCategory)>()(ptr, NewCategory);
}

/// @nodoc
base class INetworkVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszNetworkName)>> GetName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> szNetworkNewName)>>
      SetName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDescription)>>
      GetDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> szDescription)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<GUID> pgdGuidNetworkId)>>
      GetNetworkId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> pNetworkType)>>
      GetDomainType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<VTablePointer> ppEnumNetworkConnection)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>>
      GetTimeCreatedAndConnected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnectedToInternet;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> pConnectivity)>>
      GetConnectivity;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> pCategory)>> GetCategory;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 NewCategory)>>
      SetCategory;
}
