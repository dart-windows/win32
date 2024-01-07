// iwbemservices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

/// The IWbemServices interface is used by clients and providers to access
/// WMI services. The interface is implemented by WMI and WMI providers, and
/// is the primary WMI interface.
///
/// {@category com}
class IWbemServices extends IUnknown {
  IWbemServices(super.ptr)
      : _vtable = ptr.value.value.cast<IWbemServicesVtbl>().ref;

  final IWbemServicesVtbl _vtable;

  factory IWbemServices.from(IUnknown interface) =>
      IWbemServices(interface.toInterface(IID_IWbemServices));

  int openNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppWorkingNamespace,
          Pointer<Pointer<VTablePointer>> ppResult) =>
      _vtable.OpenNamespace.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strNamespace,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppWorkingNamespace,
                  Pointer<Pointer<VTablePointer>> ppResult)>()(
          ptr.value, strNamespace, lFlags, pCtx, ppWorkingNamespace, ppResult);

  int cancelAsyncCall(Pointer<VTablePointer> pSink) =>
      _vtable.CancelAsyncCall.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> pSink)>()(ptr.value, pSink);

  int queryObjectSink(
          int lFlags, Pointer<Pointer<VTablePointer>> ppResponseHandler) =>
      _vtable.QueryObjectSink.asFunction<
              int Function(VTablePointer, int lFlags,
                  Pointer<Pointer<VTablePointer>> ppResponseHandler)>()(
          ptr.value, lFlags, ppResponseHandler);

  int getObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppObject,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.GetObject.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppObject,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int getObjectAsync(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.GetObjectAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, strObjectPath, lFlags, pCtx, pResponseHandler);

  int putClass(
          Pointer<VTablePointer> pObject,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.PutClass.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pObject,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value, pObject, lFlags, pCtx, ppCallResult);

  int putClassAsync(
          Pointer<VTablePointer> pObject,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.PutClassAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pObject,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, pObject, lFlags, pCtx, pResponseHandler);

  int deleteClass(
          Pointer<Utf16> strClass,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.DeleteClass.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value, strClass, lFlags, pCtx, ppCallResult);

  int deleteClassAsync(
          Pointer<Utf16> strClass,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.DeleteClassAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, strClass, lFlags, pCtx, pResponseHandler);

  int createClassEnum(
          Pointer<Utf16> strSuperclass,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.CreateClassEnum.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppEnum)>()(
          ptr.value, strSuperclass, lFlags, pCtx, ppEnum);

  int createClassEnumAsync(
          Pointer<Utf16> strSuperclass,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.CreateClassEnumAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, strSuperclass, lFlags, pCtx, pResponseHandler);

  int putInstance(
          Pointer<VTablePointer> pInst,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.PutInstance.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pInst,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value, pInst, lFlags, pCtx, ppCallResult);

  int putInstanceAsync(
          Pointer<VTablePointer> pInst,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.PutInstanceAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pInst,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, pInst, lFlags, pCtx, pResponseHandler);

  int deleteInstance(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.DeleteInstance.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value, strObjectPath, lFlags, pCtx, ppCallResult);

  int deleteInstanceAsync(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.DeleteInstanceAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, strObjectPath, lFlags, pCtx, pResponseHandler);

  int createInstanceEnum(
          Pointer<Utf16> strFilter,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.CreateInstanceEnum.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppEnum)>()(
          ptr.value, strFilter, lFlags, pCtx, ppEnum);

  int createInstanceEnumAsync(
          Pointer<Utf16> strFilter,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.CreateInstanceEnumAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value, strFilter, lFlags, pCtx, pResponseHandler);

  int execQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.ExecQuery.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppEnum)>()(
          ptr.value, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.ExecQueryAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(ptr.value,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.ExecNotificationQuery.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<Pointer<VTablePointer>> ppEnum)>()(
          ptr.value, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.ExecNotificationQueryAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>()(ptr.value,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pInParams,
          Pointer<Pointer<VTablePointer>> ppOutParams,
          Pointer<Pointer<VTablePointer>> ppCallResult) =>
      _vtable.ExecMethod.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pInParams,
                  Pointer<Pointer<VTablePointer>> ppOutParams,
                  Pointer<Pointer<VTablePointer>> ppCallResult)>()(
          ptr.value,
          strObjectPath,
          strMethodName,
          lFlags,
          pCtx,
          pInParams,
          ppOutParams,
          ppCallResult);

  int execMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<VTablePointer> pCtx,
          Pointer<VTablePointer> pInParams,
          Pointer<VTablePointer> pResponseHandler) =>
      _vtable.ExecMethodAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pInParams,
                  Pointer<VTablePointer> pResponseHandler)>()(
          ptr.value,
          strObjectPath,
          strMethodName,
          lFlags,
          pCtx,
          pInParams,
          pResponseHandler);
}

/// @nodoc
base class IWbemServicesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strNamespace,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppWorkingNamespace,
              Pointer<Pointer<VTablePointer>> ppResult)>> OpenNamespace;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pSink)>>
      CancelAsyncCall;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 lFlags,
                  Pointer<Pointer<VTablePointer>> ppResponseHandler)>>
      QueryObjectSink;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppObject,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> GetObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> GetObjectAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pObject,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> PutClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pObject,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> PutClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> DeleteClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> DeleteClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppEnum)>> CreateClassEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> CreateClassEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pInst,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> PutInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> pInst,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> PutInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> DeleteInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> DeleteInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppEnum)>> CreateInstanceEnum;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Utf16> strFilter,
                  Int32 lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>>
      CreateInstanceEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppEnum)>> ExecQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pResponseHandler)>> ExecQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<Pointer<VTablePointer>> ppEnum)>> ExecNotificationQuery;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  Int32 lFlags,
                  Pointer<VTablePointer> pCtx,
                  Pointer<VTablePointer> pResponseHandler)>>
      ExecNotificationQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pInParams,
              Pointer<Pointer<VTablePointer>> ppOutParams,
              Pointer<Pointer<VTablePointer>> ppCallResult)>> ExecMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<VTablePointer> pCtx,
              Pointer<VTablePointer> pInParams,
              Pointer<VTablePointer> pResponseHandler)>> ExecMethodAsync;
}
