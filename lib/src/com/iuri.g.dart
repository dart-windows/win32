// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUri = '{a39ee748-6a27-4817-a6f2-13914bef5890}';

/// Exposes methods and properties used to parse and build Uniform Resource
/// Identifiers (URIs).
///
/// {@category com}
class IUri extends IUnknown {
  IUri(super.ptr) : _vtable = ptr.value.cast<IUriVtbl>().ref;

  final IUriVtbl _vtable;

  factory IUri.from(IUnknown interface) =>
      IUri(interface.toInterface(IID_IUri));

  int getPropertyBSTR(int uriProp, Pointer<BSTR> pbstrProperty, int dwFlags) =>
      _vtable.GetPropertyBSTR.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int uriProp,
              Pointer<BSTR> pbstrProperty,
              int dwFlags)>()(ptr, uriProp, pbstrProperty, dwFlags);

  int getPropertyLength(
          int uriProp, Pointer<Uint32> pcchProperty, int dwFlags) =>
      _vtable.GetPropertyLength.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int uriProp,
              Pointer<Uint32> pcchProperty,
              int dwFlags)>()(ptr, uriProp, pcchProperty, dwFlags);

  int getPropertyDWORD(int uriProp, Pointer<Uint32> pdwProperty, int dwFlags) =>
      _vtable.GetPropertyDWORD.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int uriProp,
              Pointer<Uint32> pdwProperty,
              int dwFlags)>()(ptr, uriProp, pdwProperty, dwFlags);

  int hasProperty(int uriProp, Pointer<BOOL> pfHasProperty) =>
      _vtable.HasProperty.asFunction<
          int Function(VTablePointer lpVtbl, int uriProp,
              Pointer<BOOL> pfHasProperty)>()(ptr, uriProp, pfHasProperty);

  int getAbsoluteUri(Pointer<BSTR> pbstrAbsoluteUri) =>
      _vtable.GetAbsoluteUri.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrAbsoluteUri)>()(ptr, pbstrAbsoluteUri);

  int getAuthority(
          Pointer<BSTR> pbstrAuthority) =>
      _vtable.GetAuthority.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrAuthority)>()(ptr, pbstrAuthority);

  int getDisplayUri(Pointer<BSTR> pbstrDisplayString) =>
      _vtable.GetDisplayUri.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrDisplayString)>()(ptr, pbstrDisplayString);

  int getDomain(Pointer<BSTR> pbstrDomain) => _vtable.GetDomain.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BSTR> pbstrDomain)>()(ptr, pbstrDomain);

  int getExtension(
          Pointer<BSTR> pbstrExtension) =>
      _vtable.GetExtension.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrExtension)>()(ptr, pbstrExtension);

  int getFragment(Pointer<BSTR> pbstrFragment) =>
      _vtable.GetFragment.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrFragment)>()(ptr, pbstrFragment);

  int getHost(Pointer<BSTR> pbstrHost) => _vtable.GetHost.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BSTR> pbstrHost)>()(ptr, pbstrHost);

  int getPassword(Pointer<BSTR> pbstrPassword) =>
      _vtable.GetPassword.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrPassword)>()(ptr, pbstrPassword);

  int getPath(Pointer<BSTR> pbstrPath) => _vtable.GetPath.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BSTR> pbstrPath)>()(ptr, pbstrPath);

  int getPathAndQuery(Pointer<BSTR> pbstrPathAndQuery) =>
      _vtable.GetPathAndQuery.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrPathAndQuery)>()(ptr, pbstrPathAndQuery);

  int getQuery(Pointer<BSTR> pbstrQuery) => _vtable.GetQuery.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BSTR> pbstrQuery)>()(ptr, pbstrQuery);

  int getRawUri(Pointer<BSTR> pbstrRawUri) => _vtable.GetRawUri.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BSTR> pbstrRawUri)>()(ptr, pbstrRawUri);

  int getSchemeName(Pointer<BSTR> pbstrSchemeName) =>
      _vtable.GetSchemeName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrSchemeName)>()(ptr, pbstrSchemeName);

  int getUserInfo(Pointer<BSTR> pbstrUserInfo) =>
      _vtable.GetUserInfo.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrUserInfo)>()(ptr, pbstrUserInfo);

  int getUserName(Pointer<BSTR> pbstrUserName) =>
      _vtable.GetUserName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BSTR> pbstrUserName)>()(ptr, pbstrUserName);

  int getHostType(Pointer<Uint32> pdwHostType) =>
      _vtable.GetHostType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwHostType)>()(ptr, pdwHostType);

  int getPort(Pointer<Uint32> pdwPort) => _vtable.GetPort.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwPort)>()(ptr, pdwPort);

  int getScheme(Pointer<Uint32> pdwScheme) => _vtable.GetScheme.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwScheme)>()(ptr, pdwScheme);

  int getZone(Pointer<Uint32> pdwZone) => _vtable.GetZone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwZone)>()(ptr, pdwZone);

  int getProperties(Pointer<Uint32> pdwFlags) =>
      _vtable.GetProperties.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>()(ptr, pdwFlags);

  int isEqual(VTablePointer pUri, Pointer<BOOL> pfEqual) =>
      _vtable.IsEqual.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pUri,
              Pointer<BOOL> pfEqual)>()(ptr, pUri, pfEqual);
}

/// @nodoc
base class IUriVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 uriProp,
              Pointer<BSTR> pbstrProperty, Uint32 dwFlags)>> GetPropertyBSTR;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 uriProp,
              Pointer<Uint32> pcchProperty, Uint32 dwFlags)>> GetPropertyLength;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 uriProp,
              Pointer<Uint32> pdwProperty, Uint32 dwFlags)>> GetPropertyDWORD;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 uriProp,
              Pointer<BOOL> pfHasProperty)>> HasProperty;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrAbsoluteUri)>>
      GetAbsoluteUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrAuthority)>>
      GetAuthority;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrDisplayString)>>
      GetDisplayUri;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrDomain)>> GetDomain;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrExtension)>>
      GetExtension;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrFragment)>> GetFragment;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> pbstrHost)>>
      GetHost;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrPassword)>> GetPassword;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> pbstrPath)>>
      GetPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrPathAndQuery)>>
      GetPathAndQuery;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> pbstrQuery)>>
      GetQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrRawUri)>> GetRawUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BSTR> pbstrSchemeName)>>
      GetSchemeName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrUserInfo)>> GetUserInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<BSTR> pbstrUserName)>> GetUserName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwHostType)>> GetHostType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwPort)>>
      GetPort;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwScheme)>> GetScheme;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwZone)>>
      GetZone;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>>
      GetProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pUri,
              Pointer<BOOL> pfEqual)>> IsEqual;
}
