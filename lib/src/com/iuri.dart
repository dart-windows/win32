// iuri.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUri = '{a39ee748-6a27-4817-a6f2-13914bef5890}';

/// Exposes methods and properties used to parse and build Uniform Resource
/// Identifiers (URIs).
///
/// {@category com}
class IUri extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IUri(super.ptr) : _vtable = ptr.value.value.cast<IUriVtbl>().ref;

  final IUriVtbl _vtable;

  factory IUri.from(IUnknown interface) =>
      IUri(interface.toInterface(IID_IUri));

  int getPropertyBSTR(
          int uriProp, Pointer<Pointer<Utf16>> pbstrProperty, int dwFlags) =>
      _vtable.GetPropertyBSTR.asFunction<
          int Function(
              VTablePointer,
              int uriProp,
              Pointer<Pointer<Utf16>> pbstrProperty,
              int dwFlags)>()(ptr.value, uriProp, pbstrProperty, dwFlags);

  int getPropertyLength(
          int uriProp, Pointer<Uint32> pcchProperty, int dwFlags) =>
      _vtable.GetPropertyLength.asFunction<
          int Function(VTablePointer, int uriProp, Pointer<Uint32> pcchProperty,
              int dwFlags)>()(ptr.value, uriProp, pcchProperty, dwFlags);

  int getPropertyDWORD(int uriProp, Pointer<Uint32> pdwProperty, int dwFlags) =>
      _vtable.GetPropertyDWORD.asFunction<
          int Function(VTablePointer, int uriProp, Pointer<Uint32> pdwProperty,
              int dwFlags)>()(ptr.value, uriProp, pdwProperty, dwFlags);

  int hasProperty(int uriProp, Pointer<Int32> pfHasProperty) =>
      _vtable.HasProperty.asFunction<
              int Function(
                  VTablePointer, int uriProp, Pointer<Int32> pfHasProperty)>()(
          ptr.value, uriProp, pfHasProperty);

  int getAbsoluteUri(Pointer<Pointer<Utf16>> pbstrAbsoluteUri) =>
      _vtable.GetAbsoluteUri.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrAbsoluteUri)>()(
          ptr.value, pbstrAbsoluteUri);

  int getAuthority(Pointer<Pointer<Utf16>> pbstrAuthority) =>
      _vtable.GetAuthority.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrAuthority)>()(
          ptr.value, pbstrAuthority);

  int getDisplayUri(Pointer<Pointer<Utf16>> pbstrDisplayString) =>
      _vtable.GetDisplayUri.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrDisplayString)>()(
          ptr.value, pbstrDisplayString);

  int getDomain(Pointer<Pointer<Utf16>> pbstrDomain) =>
      _vtable.GetDomain.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pbstrDomain)>()(ptr.value, pbstrDomain);

  int getExtension(Pointer<Pointer<Utf16>> pbstrExtension) =>
      _vtable.GetExtension.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrExtension)>()(
          ptr.value, pbstrExtension);

  int getFragment(Pointer<Pointer<Utf16>> pbstrFragment) =>
      _vtable.GetFragment.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrFragment)>()(
          ptr.value, pbstrFragment);

  int getHost(Pointer<Pointer<Utf16>> pbstrHost) => _vtable.GetHost.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbstrHost)>()(
      ptr.value, pbstrHost);

  int getPassword(Pointer<Pointer<Utf16>> pbstrPassword) =>
      _vtable.GetPassword.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrPassword)>()(
          ptr.value, pbstrPassword);

  int getPath(Pointer<Pointer<Utf16>> pbstrPath) => _vtable.GetPath.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> pbstrPath)>()(
      ptr.value, pbstrPath);

  int getPathAndQuery(Pointer<Pointer<Utf16>> pbstrPathAndQuery) =>
      _vtable.GetPathAndQuery.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrPathAndQuery)>()(
          ptr.value, pbstrPathAndQuery);

  int getQuery(Pointer<Pointer<Utf16>> pbstrQuery) =>
      _vtable.GetQuery.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pbstrQuery)>()(ptr.value, pbstrQuery);

  int getRawUri(Pointer<Pointer<Utf16>> pbstrRawUri) =>
      _vtable.GetRawUri.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pbstrRawUri)>()(ptr.value, pbstrRawUri);

  int getSchemeName(Pointer<Pointer<Utf16>> pbstrSchemeName) =>
      _vtable.GetSchemeName.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrSchemeName)>()(
          ptr.value, pbstrSchemeName);

  int getUserInfo(Pointer<Pointer<Utf16>> pbstrUserInfo) =>
      _vtable.GetUserInfo.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrUserInfo)>()(
          ptr.value, pbstrUserInfo);

  int getUserName(Pointer<Pointer<Utf16>> pbstrUserName) =>
      _vtable.GetUserName.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrUserName)>()(
          ptr.value, pbstrUserName);

  int getHostType(Pointer<Uint32> pdwHostType) =>
      _vtable.GetHostType.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pdwHostType)>()(
          ptr.value, pdwHostType);

  int getPort(Pointer<Uint32> pdwPort) => _vtable.GetPort.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwPort)>()(ptr.value, pdwPort);

  int getScheme(Pointer<Uint32> pdwScheme) => _vtable.GetScheme.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwScheme)>()(ptr.value, pdwScheme);

  int getZone(Pointer<Uint32> pdwZone) => _vtable.GetZone.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwZone)>()(ptr.value, pdwZone);

  int getProperties(Pointer<Uint32> pdwFlags) =>
      _vtable.GetProperties.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pdwFlags)>()(ptr.value, pdwFlags);

  int isEqual(Pointer<VTablePointer> pUri, Pointer<Int32> pfEqual) =>
      _vtable.IsEqual.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> pUri,
              Pointer<Int32> pfEqual)>()(ptr.value, pUri, pfEqual);
}

/// @nodoc
base class IUriVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 uriProp,
              Pointer<Pointer<Utf16>> pbstrProperty,
              Uint32 dwFlags)>> GetPropertyBSTR;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 uriProp,
              Pointer<Uint32> pcchProperty, Uint32 dwFlags)>> GetPropertyLength;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 uriProp,
              Pointer<Uint32> pdwProperty, Uint32 dwFlags)>> GetPropertyDWORD;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 uriProp, Pointer<Int32> pfHasProperty)>>
      HasProperty;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrAbsoluteUri)>>
      GetAbsoluteUri;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrAuthority)>>
      GetAuthority;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrDisplayString)>>
      GetDisplayUri;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<Utf16>> pbstrDomain)>> GetDomain;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrExtension)>>
      GetExtension;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrFragment)>>
      GetFragment;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbstrHost)>>
      GetHost;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrPassword)>>
      GetPassword;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pbstrPath)>>
      GetPath;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrPathAndQuery)>>
      GetPathAndQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<Utf16>> pbstrQuery)>> GetQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<Utf16>> pbstrRawUri)>> GetRawUri;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrSchemeName)>>
      GetSchemeName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrUserInfo)>>
      GetUserInfo;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pbstrUserName)>>
      GetUserName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwHostType)>>
      GetHostType;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwPort)>> GetPort;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwScheme)>> GetScheme;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwZone)>> GetZone;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwFlags)>>
      GetProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pUri,
              Pointer<Int32> pfEqual)>> IsEqual;
}
