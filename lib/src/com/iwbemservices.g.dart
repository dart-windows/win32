// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

/// Used by clients and providers to access WMI services.
///
/// The interface is implemented by WMI and WMI providers, and is the primary
/// WMI interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemservices>.
///
/// {@category com}
class IWbemServices extends IUnknown {
  IWbemServices(super.ptr) : _vtable = ptr.value.cast<IWbemServicesVtbl>().ref;

  final IWbemServicesVtbl _vtable;

  /// Creates a new instance of `IWbemServices` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWbemServices` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWbemServices.from(IUnknown interface) =>
      IWbemServices(interface.toInterface(IID_IWbemServices));

  /// Provides the caller with a new IWbemServices pointer that has the specified
  /// child namespace as its operating context.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-opennamespace>.
  int openNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer>? ppWorkingNamespace,
          Pointer<VTablePointer>? ppResult) =>
      _vtable.OpenNamespace.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strNamespace,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppWorkingNamespace,
                  Pointer<VTablePointer> ppResult)>()(ptr, strNamespace, lFlags,
          pCtx, ppWorkingNamespace ?? nullptr, ppResult ?? nullptr);

  /// Cancels any currently pending asynchronous calls based on the
  /// IWbemObjectSink pointer, which was originally passed to the asynchronous
  /// method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-cancelasynccall>.
  int cancelAsyncCall(
          VTablePointer pSink) =>
      _vtable.CancelAsyncCall.asFunction<
          int Function(
              VTablePointer lpVtbl, VTablePointer pSink)>()(ptr, pSink);

  /// Allows the caller to obtain a notification handler that is exported by
  /// Windows Management.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-queryobjectsink>.
  int queryObjectSink(int lFlags, Pointer<VTablePointer> ppResponseHandler) =>
      _vtable.QueryObjectSink.asFunction<
              int Function(VTablePointer lpVtbl, int lFlags,
                  Pointer<VTablePointer> ppResponseHandler)>()(
          ptr, lFlags, ppResponseHandler);

  /// Retrieves a class or instance.
  ///
  /// This method only retrieves objects from the namespace associated with the
  /// current IWbemServices object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-getobject>.
  int getObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer>? ppObject,
          Pointer<VTablePointer>? ppCallResult) =>
      _vtable.GetObject.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppObject,
                  Pointer<VTablePointer> ppCallResult)>()(ptr, strObjectPath,
          lFlags, pCtx, ppObject ?? nullptr, ppCallResult ?? nullptr);

  /// Retrieves an object, either a class definition or instance, based on its
  /// path.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-getobjectasync>.
  int getObjectAsync(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.GetObjectAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strObjectPath, lFlags, pCtx, pResponseHandler);

  /// Creates a new class or updates an existing one.
  ///
  /// The class specified by the pObject parameter must have been correctly
  /// initialized with all of the required property values.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putclass>.
  int putClass(VTablePointer pObject, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer>? ppCallResult) =>
      _vtable.PutClass.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pObject,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, pObject, lFlags, pCtx, ppCallResult ?? nullptr);

  /// Creates a new class, or updates an existing one.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putclassasync>.
  int putClassAsync(VTablePointer pObject, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.PutClassAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pObject,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, pObject, lFlags, pCtx, pResponseHandler);

  /// Deletes the specified class from the current namespace.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteclass>.
  int deleteClass(Pointer<Utf16> strClass, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer>? ppCallResult) =>
      _vtable.DeleteClass.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, strClass, lFlags, pCtx, ppCallResult ?? nullptr);

  /// Deletes the specified class from the current namespace.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteclassasync>.
  int deleteClassAsync(Pointer<Utf16> strClass, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.DeleteClassAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strClass,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strClass, lFlags, pCtx, pResponseHandler);

  /// Returns an enumerator for all classes that satisfy selection criteria.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createclassenum>.
  int createClassEnum(Pointer<Utf16> strSuperclass, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.CreateClassEnum.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strSuperclass, lFlags, pCtx, ppEnum);

  /// Returns an enumeration of all classes that the class provider supports.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createclassenumasync>.
  int createClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.CreateClassEnumAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strSuperclass,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strSuperclass, lFlags, pCtx, pResponseHandler);

  /// Creates or updates an instance of an existing class.
  ///
  /// The instance is written to the WMI repository.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putinstance>.
  int putInstance(VTablePointer pInst, int lFlags, VTablePointer pCtx,
          Pointer<VTablePointer>? ppCallResult) =>
      _vtable.PutInstance.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pInst,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, pInst, lFlags, pCtx, ppCallResult ?? nullptr);

  /// Asynchronously creates or updates an instance of an existing class.
  ///
  /// Update confirmation or error reporting is provided through the
  /// IWbemObjectSink interface implemented by the caller.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putinstanceasync>.
  int putInstanceAsync(VTablePointer pInst, int lFlags, VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.PutInstanceAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pInst,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, pInst, lFlags, pCtx, pResponseHandler);

  /// Deletes an instance of an existing class in the current namespace.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteinstance>.
  int deleteInstance(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer>? ppCallResult) =>
      _vtable.DeleteInstance.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr, strObjectPath, lFlags, pCtx, ppCallResult ?? nullptr);

  /// Asynchronously deletes an instance of an existing class in the current
  /// namespace.
  ///
  /// The confirmation or failure of the operation is reported through the
  /// IWbemObjectSink interface implemented by the caller.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteinstanceasync>.
  int deleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.DeleteInstanceAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strObjectPath,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strObjectPath, lFlags, pCtx, pResponseHandler);

  /// Creates an enumerator that returns the instances of a specified class
  /// according to user-specified selection criteria.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createinstanceenum>.
  int createInstanceEnum(Pointer<Utf16> strFilter, int lFlags,
          VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.CreateInstanceEnum.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strFilter, lFlags, pCtx, ppEnum);

  /// Creates an enumerator that asynchronously returns the instances of a
  /// specified class according to user-specified selection criteria.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createinstanceenumasync>.
  int createInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.CreateInstanceEnumAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strFilter,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strFilter, lFlags, pCtx, pResponseHandler);

  /// Executes a query to retrieve objects.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execquery>.
  int execQuery(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, VTablePointer pCtx, Pointer<VTablePointer> ppEnum) =>
      _vtable.ExecQuery.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  /// Executes a query to retrieve objects asynchronously.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execqueryasync>.
  int execQueryAsync(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, VTablePointer pCtx, VTablePointer pResponseHandler) =>
      _vtable.ExecQueryAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  /// Executes a query to receive events.
  ///
  /// The call returns immediately, and the user can poll the returned enumerator
  /// for events as they arrive. Releasing the returned enumerator cancels the
  /// query.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execnotificationquery>.
  int execNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          VTablePointer pCtx,
          Pointer<VTablePointer> ppEnum) =>
      _vtable.ExecNotificationQuery.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  Pointer<VTablePointer> ppEnum)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  /// Performs the same task as `IWbemServices.execNotificationQuery` except that
  /// events are supplied to the specified response handler until CancelAsyncCall
  /// is called to stop the event notification.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execnotificationqueryasync>.
  int execNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pResponseHandler) =>
      _vtable.ExecNotificationQueryAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strQueryLanguage,
                  Pointer<Utf16> strQuery,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pResponseHandler)>()(
          ptr, strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  /// Executes a method exported by a CIM object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execmethod>.
  int execMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pInParams,
          Pointer<VTablePointer>? ppOutParams,
          Pointer<VTablePointer>? ppCallResult) =>
      _vtable.ExecMethod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> strObjectPath,
                  Pointer<Utf16> strMethodName,
                  int lFlags,
                  VTablePointer pCtx,
                  VTablePointer pInParams,
                  Pointer<VTablePointer> ppOutParams,
                  Pointer<VTablePointer> ppCallResult)>()(
          ptr,
          strObjectPath,
          strMethodName,
          lFlags,
          pCtx,
          pInParams,
          ppOutParams ?? nullptr,
          ppCallResult ?? nullptr);

  /// Asynchronously executes a method exported by a CIM object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execmethodasync>.
  int execMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          VTablePointer pCtx,
          VTablePointer pInParams,
          VTablePointer pResponseHandler) =>
      _vtable.ExecMethodAsync.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strNamespace,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppWorkingNamespace,
              Pointer<VTablePointer> ppResult)>> OpenNamespace;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pSink)>>
      CancelAsyncCall;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 lFlags,
              Pointer<VTablePointer> ppResponseHandler)>> QueryObjectSink;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppObject,
              Pointer<VTablePointer> ppCallResult)>> GetObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> GetObjectAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pObject,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> PutClass;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pObject,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> PutClassAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> DeleteClass;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> DeleteClassAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> CreateClassEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> CreateClassEnumAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pInst,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> PutInstance;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pInst,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> PutInstanceAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppCallResult)>> DeleteInstance;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> DeleteInstanceAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> CreateInstanceEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> CreateInstanceEnumAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> ExecQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> ExecQueryAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              Pointer<VTablePointer> ppEnum)>> ExecNotificationQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pResponseHandler)>> ExecNotificationQueryAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pInParams,
              Pointer<VTablePointer> ppOutParams,
              Pointer<VTablePointer> ppCallResult)>> ExecMethod;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              VTablePointer pCtx,
              VTablePointer pInParams,
              VTablePointer pResponseHandler)>> ExecMethodAsync;
}
