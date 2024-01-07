// iwbemservices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
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
  IWbemServices(super.ptr) : _vtable = ptr.value.cast<IWbemServicesVtbl>().ref;

  final IWbemServicesVtbl _vtable;

  factory IWbemServices.from(IUnknown interface) =>
      IWbemServices(interface.toInterface(IID_IWbemServices));

  int openNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer> ppWorkingNamespace,
          Pointer<VTablePointer> ppResult) =>
      _vtable.OpenNamespace.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strNamespace,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppWorkingNamespace,
                  Pointer<VTablePointer> ppResult)>()(
          ptr, strNamespace, lFlags, pCtx, ppWorkingNamespace, ppResult);

  int cancelAsyncCall(VTablePointer pSink) =>
      _vtable.CancelAsyncCall.asFunction<
          int Function(VTablePointer, VTablePointer pSink)>()(ptr, pSink);

  int queryObjectSink(int lFlags, Pointer<VTablePointer> ppResponseHandler) =>
      _vtable.QueryObjectSink.asFunction<
              int Function(VTablePointer, int lFlags,
                  Pointer<VTablePointer> ppResponseHandler)>()(
          ptr, lFlags, ppResponseHandler);

  int getObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer> ppObject,
          Pointer<VTablePointer> ppCallResult) =>
      _vtable.GetObject.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppObject,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int getObjectAsync(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.GetObjectAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strObjectPath, lFlags, pCtx, pResponseHandler);

  int putClass(VTablePointer pObject, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer> ppCallResult) =>
      _vtable.PutClass.asFunction<
              int Function(VTablePointer, VTablePointer pObject, int lFlags,
                  VTablePointer pCtx, Pointer<VTablePointer> ppCallResult)>()(
          ptr, pObject, lFlags, pCtx, ppCallResult);

  int putClassAsync(VTablePointer pObject, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.PutClassAsync.asFunction<
              int Function(VTablePointer, VTablePointer pObject, int lFlags,
                  VTablePointer pCtx, VTablePointer pResponseHandler)>()(
          ptr, pObject, lFlags, pCtx, pResponseHandler);

  int deleteClass(Pointer<Utf16> strClass, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer> ppCallResult) =>
      _vtable.DeleteClass.asFunction<
              int Function(VTablePointer, Pointer<Utf16> strClass, int lFlags,
                  VTablePointer pCtx, Pointer<VTablePointer> ppCallResult)>()(
          ptr, strClass, lFlags, pCtx, ppCallResult);

  int deleteClassAsync(Pointer<Utf16> strClass, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.DeleteClassAsync.asFunction<
              int Function(VTablePointer, Pointer<Utf16> strClass, int lFlags,
                  VTablePointer pCtx, VTablePointer pResponseHandler)>()(
          ptr, strClass, lFlags, pCtx, pResponseHandler);

  int createClassEnum(Pointer<Utf16> strSuperclass, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.CreateClassEnum.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strSuperclass, lFlags, pCtx, ppEnum);

  int createClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.CreateClassEnumAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strSuperclass, lFlags, pCtx, pResponseHandler);

  int putInstance(VTablePointer pInst, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer> ppCallResult) =>
      _vtable.PutInstance.asFunction<
              int Function(VTablePointer, VTablePointer pInst, int lFlags,
                  VTablePointer pCtx, Pointer<VTablePointer> ppCallResult)>()(
          ptr, pInst, lFlags, pCtx, ppCallResult);

  int putInstanceAsync(VTablePointer pInst, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.PutInstanceAsync.asFunction<
              int Function(VTablePointer, VTablePointer pInst, int lFlags,
                  VTablePointer pCtx, VTablePointer pResponseHandler)>()(
          ptr, pInst, lFlags, pCtx, pResponseHandler);

  int deleteInstance(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer> ppCallResult) =>
      _vtable.DeleteInstance.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, strObjectPath, lFlags, pCtx, ppCallResult);

  int deleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.DeleteInstanceAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strObjectPath, lFlags, pCtx, pResponseHandler);

  int createInstanceEnum(Pointer<Utf16> strFilter, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.CreateInstanceEnum.asFunction<
              int Function(VTablePointer, Pointer<Utf16> strFilter, int lFlags,
                  VTablePointer pCtx, Pointer<VTablePointer> ppEnum)>()(
          ptr, strFilter, lFlags, pCtx, ppEnum);

  int createInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.CreateInstanceEnumAsync.asFunction<
              int Function(VTablePointer, Pointer<Utf16> strFilter, int lFlags,
                  VTablePointer pCtx, VTablePointer pResponseHandler)>()(
          ptr, strFilter, lFlags, pCtx, pResponseHandler);

  int execQuery(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.ExecQuery.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execQueryAsync(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.ExecQueryAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer> ppEnum) =>
      _vtable.ExecNotificationQuery.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.ExecNotificationQueryAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pInParams,
          Pointer<VTablePointer> ppOutParams,
          Pointer<VTablePointer> ppCallResult) =>
      _vtable.ExecMethod.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pInParams,
                  Pointer<VTablePointer> ppOutParams,
                  Pointer<VTablePointer> ppCallResult)>()(ptr, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, ppOutParams, ppCallResult);

  int execMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pInParams,
          VTablePointer pResponseHandler) =>
      _vtable.ExecMethodAsync.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pInParams,
                  VTablePointer pResponseHandler)>()(ptr, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, pResponseHandler);
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
              VTablePointer pCtx,
              Pointer<VTablePointer> ppWorkingNamespace,
              Pointer<VTablePointer> ppResult)>> OpenNamespace;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer pSink)>>
      CancelAsyncCall;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 lFlags,
              Pointer<VTablePointer> ppResponseHandler)>> QueryObjectSink;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppObject,
              Pointer<VTablePointer> ppCallResult)>> GetObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> GetObjectAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pObject,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> PutClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pObject,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> PutClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> DeleteClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> DeleteClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> CreateClassEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> CreateClassEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pInst,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> PutInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pInst,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> PutInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> DeleteInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> DeleteInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> CreateInstanceEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> CreateInstanceEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> ExecQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> ExecQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> ExecNotificationQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> ExecNotificationQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pInParams,
              Pointer<VTablePointer> ppOutParams,
              Pointer<VTablePointer> ppCallResult)>> ExecMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pInParams,
              VTablePointer pResponseHandler)>> ExecMethodAsync;
}
