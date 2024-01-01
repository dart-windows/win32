// iwbemservices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

/// The IWbemServices interface is used by clients and providers to access
/// WMI services. The interface is implemented by WMI and WMI providers, and
/// is the primary WMI interface.
///
/// {@category com}
class IWbemServices extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IWbemServices(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IWbemServicesVtbl>().ref;

  final IWbemServicesVtbl _vtable;

  factory IWbemServices.from(IUnknown interface) =>
      IWbemServices(interface.toInterface(IID_IWbemServices));

  int openNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppWorkingNamespace,
          Pointer<Pointer<COMObject>> ppResult) =>
      _vtable.OpenNamespace.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strNamespace,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppWorkingNamespace,
                  Pointer<Pointer<COMObject>> ppResult)>()(ptr.ref.lpVtbl,
          strNamespace, lFlags, pCtx, ppWorkingNamespace, ppResult);

  int cancelAsyncCall(Pointer<COMObject> pSink) =>
      _vtable.CancelAsyncCall.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pSink)>()(ptr.ref.lpVtbl, pSink);

  int queryObjectSink(
          int lFlags, Pointer<Pointer<COMObject>> ppResponseHandler) =>
      _vtable.QueryObjectSink.asFunction<
              int Function(Pointer, int lFlags,
                  Pointer<Pointer<COMObject>> ppResponseHandler)>()(
          ptr.ref.lpVtbl, lFlags, ppResponseHandler);

  int getObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppObject,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.GetObject.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppObject,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int getObjectAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.GetObjectAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int putClass(Pointer<COMObject> pObject, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.PutClass.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pObject,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, ppCallResult);

  int putClassAsync(Pointer<COMObject> pObject, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.PutClassAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pObject,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, pResponseHandler);

  int deleteClass(Pointer<Utf16> strClass, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.DeleteClass.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, ppCallResult);

  int deleteClassAsync(Pointer<Utf16> strClass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.DeleteClassAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, pResponseHandler);

  int createClassEnum(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.CreateClassEnum.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, ppEnum);

  int createClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.CreateClassEnumAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, pResponseHandler);

  int putInstance(Pointer<COMObject> pInst, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.PutInstance.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pInst,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, ppCallResult);

  int putInstanceAsync(Pointer<COMObject> pInst, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.PutInstanceAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pInst,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, pResponseHandler);

  int deleteInstance(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.DeleteInstance.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppCallResult);

  int deleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.DeleteInstanceAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int createInstanceEnum(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.CreateInstanceEnum.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, ppEnum);

  int createInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      _vtable.CreateInstanceEnumAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, pResponseHandler);

  int execQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.ExecQuery.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      _vtable.ExecQueryAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.ExecNotificationQuery.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      _vtable.ExecNotificationQueryAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pResponseHandler)>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int execMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<Pointer<COMObject>> ppOutParams,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      _vtable.ExecMethod.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pInParams,
                  Pointer<Pointer<COMObject>> ppOutParams,
                  Pointer<Pointer<COMObject>> ppCallResult)>()(
          ptr.ref.lpVtbl,
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
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<COMObject> pResponseHandler) =>
      _vtable.ExecMethodAsync.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  Pointer<COMObject> pCtx,
                  Pointer<COMObject> pInParams,
                  Pointer<COMObject> pResponseHandler)>()(
          ptr.ref.lpVtbl,
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
              Pointer,
              Pointer<Utf16> strNamespace,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppWorkingNamespace,
              Pointer<Pointer<COMObject>> ppResult)>> OpenNamespace;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSink)>>
      CancelAsyncCall;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 lFlags,
              Pointer<Pointer<COMObject>> ppResponseHandler)>> QueryObjectSink;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppObject,
              Pointer<Pointer<COMObject>> ppCallResult)>> GetObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> GetObjectAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pObject,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult)>> PutClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pObject,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> PutClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult)>> DeleteClass;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> DeleteClassAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum)>> CreateClassEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> CreateClassEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pInst,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult)>> PutInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pInst,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> PutInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult)>> DeleteInstance;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> DeleteInstanceAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum)>> CreateInstanceEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> CreateInstanceEnumAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum)>> ExecQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> ExecQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum)>> ExecNotificationQuery;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler)>> ExecNotificationQueryAsync;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pInParams,
              Pointer<Pointer<COMObject>> ppOutParams,
              Pointer<Pointer<COMObject>> ppCallResult)>> ExecMethod;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pInParams,
              Pointer<COMObject> pResponseHandler)>> ExecMethodAsync;
}
