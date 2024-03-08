// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _advapi32 = DynamicLibrary.open('advapi32.dll');

/// Changes the optional configuration parameters of a service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-changeserviceconfig2w>.
///
/// {@category advapi32}
int ChangeServiceConfig2(int hService, int dwInfoLevel, Pointer? lpInfo) =>
    _ChangeServiceConfig2(hService, dwInfoLevel, lpInfo ?? nullptr);

final _ChangeServiceConfig2 = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwInfoLevel, Pointer lpInfo),
    int Function(int hService, int dwInfoLevel,
        Pointer lpInfo)>('ChangeServiceConfig2W');

/// Closes a handle to a service control manager or service object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-closeservicehandle>.
///
/// {@category advapi32}
int CloseServiceHandle(int hSCObject) => _CloseServiceHandle(hSCObject);

final _CloseServiceHandle = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCObject),
    int Function(int hSCObject)>('CloseServiceHandle');

/// Sends a control code to a service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlservice>.
///
/// {@category advapi32}
int ControlService(
        int hService, int dwControl, Pointer<SERVICE_STATUS> lpServiceStatus) =>
    _ControlService(hService, dwControl, lpServiceStatus);

final _ControlService = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwControl,
        Pointer<SERVICE_STATUS> lpServiceStatus),
    int Function(int hService, int dwControl,
        Pointer<SERVICE_STATUS> lpServiceStatus)>('ControlService');

/// Sends a control code to a service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlserviceexw>.
///
/// {@category advapi32}
int ControlServiceEx(
        int hService, int dwControl, int dwInfoLevel, Pointer pControlParams) =>
    _ControlServiceEx(hService, dwControl, dwInfoLevel, pControlParams);

final _ControlServiceEx = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwControl, Uint32 dwInfoLevel,
        Pointer pControlParams),
    int Function(int hService, int dwControl, int dwInfoLevel,
        Pointer pControlParams)>('ControlServiceExW');

/// Deletes a credential from the user's credential set.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-creddeletew>.
///
/// {@category advapi32}
int CredDelete(Pointer<Utf16> targetName, int type) =>
    _CredDelete(targetName, type, 0);

final _CredDelete = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> targetName, Uint32 type, Uint32 flags),
    int Function(
        Pointer<Utf16> targetName, int type, int flags)>('CredDeleteW');

/// Frees a buffer returned by any of the credentials management functions.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credfree>.
///
/// {@category advapi32}
void CredFree(Pointer buffer) => _CredFree(buffer);

final _CredFree = _advapi32.lookupFunction<Void Function(Pointer buffer),
    void Function(Pointer buffer)>('CredFree');

/// Reads a credential from the user's credential set.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credreadw>.
///
/// {@category advapi32}
int CredRead(Pointer<Utf16> targetName, int type,
        Pointer<Pointer<CREDENTIAL>> credential) =>
    _CredRead(targetName, type, 0, credential);

final _CredRead = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> targetName, Uint32 type, Uint32 flags,
        Pointer<Pointer<CREDENTIAL>> credential),
    int Function(Pointer<Utf16> targetName, int type, int flags,
        Pointer<Pointer<CREDENTIAL>> credential)>('CredReadW');

/// Creates a new credential or modifies an existing credential in the user's
/// credential set.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew>.
///
/// {@category advapi32}
int CredWrite(Pointer<CREDENTIAL> credential, int flags) =>
    _CredWrite(credential, flags);

final _CredWrite = _advapi32.lookupFunction<
    BOOL Function(Pointer<CREDENTIAL> credential, Uint32 flags),
    int Function(Pointer<CREDENTIAL> credential, int flags)>('CredWriteW');

/// Decrypts an encrypted file or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-decryptfilew>.
///
/// {@category advapi32}
int DecryptFile(Pointer<Utf16> lpFileName) => _DecryptFile(lpFileName, 0);

final _DecryptFile = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName, Uint32 dwReserved),
    int Function(Pointer<Utf16> lpFileName, int dwReserved)>('DecryptFileW');

/// Marks the specified service for deletion from the service control manager
/// database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-deleteservice>.
///
/// {@category advapi32}
int DeleteService(int hService) => _DeleteService(hService);

final _DeleteService = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService),
    int Function(int hService)>('DeleteService');

/// Encrypts a file or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-encryptfilew>.
///
/// {@category advapi32}
int EncryptFile(Pointer<Utf16> lpFileName) => _EncryptFile(lpFileName);

final _EncryptFile = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName),
    int Function(Pointer<Utf16> lpFileName)>('EncryptFileW');

/// Retrieves the name and status of each service that depends on the specified
/// service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumdependentservicesw>.
///
/// {@category advapi32}
int EnumDependentServices(
        int hService,
        int dwServiceState,
        Pointer<ENUM_SERVICE_STATUS>? lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned) =>
    _EnumDependentServices(hService, dwServiceState, lpServices ?? nullptr,
        cbBufSize, pcbBytesNeeded, lpServicesReturned);

final _EnumDependentServices = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hService,
        Uint32 dwServiceState,
        Pointer<ENUM_SERVICE_STATUS> lpServices,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned),
    int Function(
        int hService,
        int dwServiceState,
        Pointer<ENUM_SERVICE_STATUS> lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned)>('EnumDependentServicesW');

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusw>.
///
/// {@category advapi32}
int EnumServicesStatus(
        int hSCManager,
        int dwServiceType,
        int dwServiceState,
        Pointer<ENUM_SERVICE_STATUS>? lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32>? lpResumeHandle) =>
    _EnumServicesStatus(
        hSCManager,
        dwServiceType,
        dwServiceState,
        lpServices ?? nullptr,
        cbBufSize,
        pcbBytesNeeded,
        lpServicesReturned,
        lpResumeHandle ?? nullptr);

final _EnumServicesStatus = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hSCManager,
        Uint32 dwServiceType,
        Uint32 dwServiceState,
        Pointer<ENUM_SERVICE_STATUS> lpServices,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32> lpResumeHandle),
    int Function(
        int hSCManager,
        int dwServiceType,
        int dwServiceState,
        Pointer<ENUM_SERVICE_STATUS> lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32> lpResumeHandle)>('EnumServicesStatusW');

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided, along with additional data
/// based on the specified information level.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusexw>.
///
/// {@category advapi32}
int EnumServicesStatusEx(
        int hSCManager,
        int infoLevel,
        int dwServiceType,
        int dwServiceState,
        Pointer<Uint8>? lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32>? lpResumeHandle,
        Pointer<Utf16>? pszGroupName) =>
    _EnumServicesStatusEx(
        hSCManager,
        infoLevel,
        dwServiceType,
        dwServiceState,
        lpServices ?? nullptr,
        cbBufSize,
        pcbBytesNeeded,
        lpServicesReturned,
        lpResumeHandle ?? nullptr,
        pszGroupName ?? nullptr);

final _EnumServicesStatusEx = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hSCManager,
        Int32 infoLevel,
        Uint32 dwServiceType,
        Uint32 dwServiceState,
        Pointer<Uint8> lpServices,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32> lpResumeHandle,
        Pointer<Utf16> pszGroupName),
    int Function(
        int hSCManager,
        int infoLevel,
        int dwServiceType,
        int dwServiceState,
        Pointer<Uint8> lpServices,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded,
        Pointer<Uint32> lpServicesReturned,
        Pointer<Uint32> lpResumeHandle,
        Pointer<Utf16> pszGroupName)>('EnumServicesStatusExW');

/// Retrieves the encryption status of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-fileencryptionstatusw>.
///
/// {@category advapi32}
int FileEncryptionStatus(Pointer<Utf16> lpFileName, Pointer<Uint32> lpStatus) =>
    _FileEncryptionStatus(lpFileName, lpStatus);

final _FileEncryptionStatus = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName, Pointer<Uint32> lpStatus),
    int Function(Pointer<Utf16> lpFileName,
        Pointer<Uint32> lpStatus)>('FileEncryptionStatusW');

/// Retrieves the display name of the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedisplaynamew>.
///
/// {@category advapi32}
int GetServiceDisplayName(int hSCManager, Pointer<Utf16> lpServiceName,
        Pointer<Utf16>? lpDisplayName, Pointer<Uint32> lpcchBuffer) =>
    _GetServiceDisplayName(
        hSCManager, lpServiceName, lpDisplayName ?? nullptr, lpcchBuffer);

final _GetServiceDisplayName = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCManager, Pointer<Utf16> lpServiceName,
        Pointer<Utf16> lpDisplayName, Pointer<Uint32> lpcchBuffer),
    int Function(
        int hSCManager,
        Pointer<Utf16> lpServiceName,
        Pointer<Utf16> lpDisplayName,
        Pointer<Uint32> lpcchBuffer)>('GetServiceDisplayNameW');

/// Retrieves the service name of the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicekeynamew>.
///
/// {@category advapi32}
int GetServiceKeyName(int hSCManager, Pointer<Utf16> lpDisplayName,
        Pointer<Utf16>? lpServiceName, Pointer<Uint32> lpcchBuffer) =>
    _GetServiceKeyName(
        hSCManager, lpDisplayName, lpServiceName ?? nullptr, lpcchBuffer);

final _GetServiceKeyName = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCManager, Pointer<Utf16> lpDisplayName,
        Pointer<Utf16> lpServiceName, Pointer<Uint32> lpcchBuffer),
    int Function(
        int hSCManager,
        Pointer<Utf16> lpDisplayName,
        Pointer<Utf16> lpServiceName,
        Pointer<Uint32> lpcchBuffer)>('GetServiceKeyNameW');

/// Retrieves a specified type of information about an access token.
///
/// The calling process must have appropriate access rights to obtain the
/// information.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/securitybaseapi/nf-securitybaseapi-gettokeninformation>.
///
/// {@category advapi32}
int GetTokenInformation(
        int tokenHandle,
        int tokenInformationClass,
        Pointer? tokenInformation,
        int tokenInformationLength,
        Pointer<Uint32> returnLength) =>
    _GetTokenInformation(tokenHandle, tokenInformationClass,
        tokenInformation ?? nullptr, tokenInformationLength, returnLength);

final _GetTokenInformation = _advapi32.lookupFunction<
    BOOL Function(
        HANDLE tokenHandle,
        Int32 tokenInformationClass,
        Pointer tokenInformation,
        Uint32 tokenInformationLength,
        Pointer<Uint32> returnLength),
    int Function(
        int tokenHandle,
        int tokenInformationClass,
        Pointer tokenInformation,
        int tokenInformationLength,
        Pointer<Uint32> returnLength)>('GetTokenInformation');

/// Retrieves the name of the user associated with the current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getusernamew>.
///
/// {@category advapi32}
int GetUserName(Pointer<Utf16>? lpBuffer, Pointer<Uint32> pcbBuffer) =>
    _GetUserName(lpBuffer ?? nullptr, pcbBuffer);

final _GetUserName = _advapi32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpBuffer, Pointer<Uint32> pcbBuffer),
    int Function(
        Pointer<Utf16> lpBuffer, Pointer<Uint32> pcbBuffer)>('GetUserNameW');

/// Initiates a shutdown and restart of the specified computer, and restarts any
/// applications that have been registered for restart.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-initiateshutdownw>.
///
/// {@category advapi32}
int InitiateShutdown(Pointer<Utf16>? lpMachineName, Pointer<Utf16>? lpMessage,
        int dwGracePeriod, int dwShutdownFlags, int dwReason) =>
    _InitiateShutdown(lpMachineName ?? nullptr, lpMessage ?? nullptr,
        dwGracePeriod, dwShutdownFlags, dwReason);

final _InitiateShutdown = _advapi32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpMachineName, Pointer<Utf16> lpMessage,
        Uint32 dwGracePeriod, Uint32 dwShutdownFlags, Uint32 dwReason),
    int Function(
        Pointer<Utf16> lpMachineName,
        Pointer<Utf16> lpMessage,
        int dwGracePeriod,
        int dwShutdownFlags,
        int dwReason)>('InitiateShutdownW');

/// Reports the boot status to the service control manager.
///
/// It is used by boot verification programs.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifybootconfigstatus>.
///
/// {@category advapi32}
int NotifyBootConfigStatus(int bootAcceptable) =>
    _NotifyBootConfigStatus(bootAcceptable);

final _NotifyBootConfigStatus = _advapi32.lookupFunction<
    BOOL Function(BOOL bootAcceptable),
    int Function(int bootAcceptable)>('NotifyBootConfigStatus');

/// Enables an application to receive notification when the specified service is
/// created or deleted or when its status changes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifyservicestatuschangew>.
///
/// {@category advapi32}
int NotifyServiceStatusChange(int hService, int dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer) =>
    _NotifyServiceStatusChange(hService, dwNotifyMask, pNotifyBuffer);

final _NotifyServiceStatusChange = _advapi32.lookupFunction<
    Uint32 Function(SC_HANDLE hService, Uint32 dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer),
    int Function(int hService, int dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer)>('NotifyServiceStatusChangeW');

/// Opens the access token associated with a process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocesstoken>.
///
/// {@category advapi32}
int OpenProcessToken(
        int processHandle, int desiredAccess, Pointer<HANDLE> tokenHandle) =>
    _OpenProcessToken(processHandle, desiredAccess, tokenHandle);

final _OpenProcessToken = _advapi32.lookupFunction<
    BOOL Function(HANDLE processHandle, Uint32 desiredAccess,
        Pointer<HANDLE> tokenHandle),
    int Function(int processHandle, int desiredAccess,
        Pointer<HANDLE> tokenHandle)>('OpenProcessToken');

/// Establishes a connection to the service control manager on the specified
/// computer and opens the specified service control manager database.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openscmanagerw>.
///
/// {@category advapi32}
int OpenSCManager(Pointer<Utf16>? lpMachineName, Pointer<Utf16>? lpDatabaseName,
        int dwDesiredAccess) =>
    _OpenSCManager(
        lpMachineName ?? nullptr, lpDatabaseName ?? nullptr, dwDesiredAccess);

final _OpenSCManager = _advapi32.lookupFunction<
    SC_HANDLE Function(Pointer<Utf16> lpMachineName,
        Pointer<Utf16> lpDatabaseName, Uint32 dwDesiredAccess),
    int Function(Pointer<Utf16> lpMachineName, Pointer<Utf16> lpDatabaseName,
        int dwDesiredAccess)>('OpenSCManagerW');

/// Opens an existing service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openservicew>.
///
/// {@category advapi32}
int OpenService(
        int hSCManager, Pointer<Utf16> lpServiceName, int dwDesiredAccess) =>
    _OpenService(hSCManager, lpServiceName, dwDesiredAccess);

final _OpenService = _advapi32.lookupFunction<
    SC_HANDLE Function(SC_HANDLE hSCManager, Pointer<Utf16> lpServiceName,
        Uint32 dwDesiredAccess),
    int Function(int hSCManager, Pointer<Utf16> lpServiceName,
        int dwDesiredAccess)>('OpenServiceW');

/// Opens the access token associated with a thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openthreadtoken>.
///
/// {@category advapi32}
int OpenThreadToken(int threadHandle, int desiredAccess, int openAsSelf,
        Pointer<HANDLE> tokenHandle) =>
    _OpenThreadToken(threadHandle, desiredAccess, openAsSelf, tokenHandle);

final _OpenThreadToken = _advapi32.lookupFunction<
    BOOL Function(HANDLE threadHandle, Uint32 desiredAccess, BOOL openAsSelf,
        Pointer<HANDLE> tokenHandle),
    int Function(int threadHandle, int desiredAccess, int openAsSelf,
        Pointer<HANDLE> tokenHandle)>('OpenThreadToken');

/// Retrieves the configuration parameters of the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfigw>.
///
/// {@category advapi32}
int QueryServiceConfig(
        int hService,
        Pointer<QUERY_SERVICE_CONFIG>? lpServiceConfig,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded) =>
    _QueryServiceConfig(
        hService, lpServiceConfig ?? nullptr, cbBufSize, pcbBytesNeeded);

final _QueryServiceConfig = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hService,
        Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded),
    int Function(int hService, Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
        int cbBufSize, Pointer<Uint32> pcbBytesNeeded)>('QueryServiceConfigW');

/// Retrieves the optional configuration parameters of the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfig2w>.
///
/// {@category advapi32}
int QueryServiceConfig2(int hService, int dwInfoLevel, Pointer<Uint8>? lpBuffer,
        int cbBufSize, Pointer<Uint32> pcbBytesNeeded) =>
    _QueryServiceConfig2(
        hService, dwInfoLevel, lpBuffer ?? nullptr, cbBufSize, pcbBytesNeeded);

final _QueryServiceConfig2 = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hService,
        Uint32 dwInfoLevel,
        Pointer<Uint8> lpBuffer,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded),
    int Function(int hService, int dwInfoLevel, Pointer<Uint8> lpBuffer,
        int cbBufSize, Pointer<Uint32> pcbBytesNeeded)>('QueryServiceConfig2W');

/// Retrieves dynamic information related to the current service start.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicedynamicinformation>.
///
/// {@category advapi32}
int QueryServiceDynamicInformation(
        int hServiceStatus, int dwInfoLevel, Pointer<Pointer> ppDynamicInfo) =>
    _QueryServiceDynamicInformation(hServiceStatus, dwInfoLevel, ppDynamicInfo);

final _QueryServiceDynamicInformation = _advapi32.lookupFunction<
    BOOL Function(SERVICE_STATUS_HANDLE hServiceStatus, Uint32 dwInfoLevel,
        Pointer<Pointer> ppDynamicInfo),
    int Function(int hServiceStatus, int dwInfoLevel,
        Pointer<Pointer> ppDynamicInfo)>('QueryServiceDynamicInformation');

/// Retrieves a copy of the security descriptor associated with a service
/// object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceobjectsecurity>.
///
/// {@category advapi32}
int QueryServiceObjectSecurity(
        int hService,
        int dwSecurityInformation,
        PSECURITY_DESCRIPTOR? lpSecurityDescriptor,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded) =>
    _QueryServiceObjectSecurity(hService, dwSecurityInformation,
        lpSecurityDescriptor ?? nullptr, cbBufSize, pcbBytesNeeded);

final _QueryServiceObjectSecurity = _advapi32.lookupFunction<
    BOOL Function(
        SC_HANDLE hService,
        Uint32 dwSecurityInformation,
        PSECURITY_DESCRIPTOR lpSecurityDescriptor,
        Uint32 cbBufSize,
        Pointer<Uint32> pcbBytesNeeded),
    int Function(
        int hService,
        int dwSecurityInformation,
        PSECURITY_DESCRIPTOR lpSecurityDescriptor,
        int cbBufSize,
        Pointer<Uint32> pcbBytesNeeded)>('QueryServiceObjectSecurity');

/// Retrieves the current status of the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatus>.
///
/// {@category advapi32}
int QueryServiceStatus(int hService, Pointer<SERVICE_STATUS> lpServiceStatus) =>
    _QueryServiceStatus(hService, lpServiceStatus);

final _QueryServiceStatus = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Pointer<SERVICE_STATUS> lpServiceStatus),
    int Function(int hService,
        Pointer<SERVICE_STATUS> lpServiceStatus)>('QueryServiceStatus');

/// Retrieves the current status of the specified service based on the specified
/// information level.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatusex>.
///
/// {@category advapi32}
int QueryServiceStatusEx(int hService, int infoLevel, Pointer<Uint8>? lpBuffer,
        int cbBufSize, Pointer<Uint32> pcbBytesNeeded) =>
    _QueryServiceStatusEx(
        hService, infoLevel, lpBuffer ?? nullptr, cbBufSize, pcbBytesNeeded);

final _QueryServiceStatusEx = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Int32 infoLevel, Pointer<Uint8> lpBuffer,
        Uint32 cbBufSize, Pointer<Uint32> pcbBytesNeeded),
    int Function(int hService, int infoLevel, Pointer<Uint8> lpBuffer,
        int cbBufSize, Pointer<Uint32> pcbBytesNeeded)>('QueryServiceStatusEx');

/// Closes a handle to the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regclosekey>.
///
/// {@category advapi32}
int RegCloseKey(int hKey) => _RegCloseKey(hKey);

final _RegCloseKey = _advapi32.lookupFunction<Uint32 Function(HKEY hKey),
    int Function(int hKey)>('RegCloseKey');

/// Establishes a connection to a predefined registry key on another computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regconnectregistryw>.
///
/// {@category advapi32}
int RegConnectRegistry(
        Pointer<Utf16>? lpMachineName, int hKey, Pointer<HKEY> phkResult) =>
    _RegConnectRegistry(lpMachineName ?? nullptr, hKey, phkResult);

final _RegConnectRegistry = _advapi32.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> lpMachineName, HKEY hKey, Pointer<HKEY> phkResult),
    int Function(Pointer<Utf16> lpMachineName, int hKey,
        Pointer<HKEY> phkResult)>('RegConnectRegistryW');

/// Copies the specified registry key, along with its values and subkeys, to the
/// specified destination key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcopytreew>.
///
/// {@category advapi32}
int RegCopyTree(int hKeySrc, Pointer<Utf16>? lpSubKey, int hKeyDest) =>
    _RegCopyTree(hKeySrc, lpSubKey ?? nullptr, hKeyDest);

final _RegCopyTree = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKeySrc, Pointer<Utf16> lpSubKey, HKEY hKeyDest),
    int Function(
        int hKeySrc, Pointer<Utf16> lpSubKey, int hKeyDest)>('RegCopyTreeW');

/// Creates the specified registry key.
///
/// If the key already exists in the registry, the function opens it.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeyw>.
///
/// {@category advapi32}
int RegCreateKey(int hKey, Pointer<Utf16>? lpSubKey, Pointer<HKEY> phkResult) =>
    _RegCreateKey(hKey, lpSubKey ?? nullptr, phkResult);

final _RegCreateKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Pointer<Utf16> lpSubKey, Pointer<HKEY> phkResult),
    int Function(int hKey, Pointer<Utf16> lpSubKey,
        Pointer<HKEY> phkResult)>('RegCreateKeyW');

/// Creates the specified registry key.
///
/// If the key already exists, the function opens it. Note that key names are
/// not case sensitive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeyexw>.
///
/// {@category advapi32}
int RegCreateKeyEx(
        int hKey,
        Pointer<Utf16> lpSubKey,
        Pointer<Utf16>? lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32>? lpdwDisposition) =>
    _RegCreateKeyEx(
        hKey,
        lpSubKey,
        0,
        lpClass ?? nullptr,
        dwOptions,
        samDesired,
        lpSecurityAttributes ?? nullptr,
        phkResult,
        lpdwDisposition ?? nullptr);

final _RegCreateKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpSubKey,
        Uint32 reserved,
        Pointer<Utf16> lpClass,
        Uint32 dwOptions,
        Uint32 samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition),
    int Function(
        int hKey,
        Pointer<Utf16> lpSubKey,
        int reserved,
        Pointer<Utf16> lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition)>('RegCreateKeyExW');

/// Creates the specified registry key and associates it with a transaction.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeytransactedw>.
///
/// {@category advapi32}
int RegCreateKeyTransacted(
        int hKey,
        Pointer<Utf16> lpSubKey,
        Pointer<Utf16>? lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32>? lpdwDisposition,
        int hTransaction) =>
    _RegCreateKeyTransacted(
        hKey,
        lpSubKey,
        0,
        lpClass ?? nullptr,
        dwOptions,
        samDesired,
        lpSecurityAttributes ?? nullptr,
        phkResult,
        lpdwDisposition ?? nullptr,
        hTransaction,
        nullptr);

final _RegCreateKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpSubKey,
        Uint32 reserved,
        Pointer<Utf16> lpClass,
        Uint32 dwOptions,
        Uint32 samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition,
        HANDLE hTransaction,
        Pointer pExtendedParemeter),
    int Function(
        int hKey,
        Pointer<Utf16> lpSubKey,
        int reserved,
        Pointer<Utf16> lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition,
        int hTransaction,
        Pointer pExtendedParemeter)>('RegCreateKeyTransactedW');

/// Deletes a subkey and its values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyw>.
///
/// {@category advapi32}
int RegDeleteKey(int hKey, Pointer<Utf16> lpSubKey) =>
    _RegDeleteKey(hKey, lpSubKey);

final _RegDeleteKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey),
    int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteKeyW');

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyexw>.
///
/// {@category advapi32}
int RegDeleteKeyEx(int hKey, Pointer<Utf16> lpSubKey, int samDesired) =>
    _RegDeleteKeyEx(hKey, lpSubKey, samDesired, 0);

final _RegDeleteKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Pointer<Utf16> lpSubKey, Uint32 samDesired, Uint32 reserved),
    int Function(int hKey, Pointer<Utf16> lpSubKey, int samDesired,
        int reserved)>('RegDeleteKeyExW');

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry as a transacted operation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeytransactedw>.
///
/// {@category advapi32}
int RegDeleteKeyTransacted(
        int hKey, Pointer<Utf16> lpSubKey, int samDesired, int hTransaction) =>
    _RegDeleteKeyTransacted(
        hKey, lpSubKey, samDesired, 0, hTransaction, nullptr);

final _RegDeleteKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey, Uint32 samDesired,
        Uint32 reserved, HANDLE hTransaction, Pointer pExtendedParameter),
    int Function(
        int hKey,
        Pointer<Utf16> lpSubKey,
        int samDesired,
        int reserved,
        int hTransaction,
        Pointer pExtendedParameter)>('RegDeleteKeyTransactedW');

/// Removes the specified value from the specified registry key and subkey.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyvaluew>.
///
/// {@category advapi32}
int RegDeleteKeyValue(
        int hKey, Pointer<Utf16>? lpSubKey, Pointer<Utf16>? lpValueName) =>
    _RegDeleteKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr);

final _RegDeleteKeyValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpValueName),
    int Function(int hKey, Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpValueName)>('RegDeleteKeyValueW');

/// Deletes the subkeys and values of the specified key recursively.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletetreew>.
///
/// {@category advapi32}
int RegDeleteTree(int hKey, Pointer<Utf16>? lpSubKey) =>
    _RegDeleteTree(hKey, lpSubKey ?? nullptr);

final _RegDeleteTree = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey),
    int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteTreeW');

/// Removes a named value from the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletevaluew>.
///
/// {@category advapi32}
int RegDeleteValue(int hKey, Pointer<Utf16>? lpValueName) =>
    _RegDeleteValue(hKey, lpValueName ?? nullptr);

final _RegDeleteValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpValueName),
    int Function(int hKey, Pointer<Utf16> lpValueName)>('RegDeleteValueW');

/// Disables handle caching of the predefined registry handle for
/// HKEY_CURRENT_USER for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcache>.
///
/// {@category advapi32}
int RegDisablePredefinedCache() => _RegDisablePredefinedCache();

final _RegDisablePredefinedCache =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCache');

/// Disables handle caching for all predefined registry handles for the current
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcacheex>.
///
/// {@category advapi32}
int RegDisablePredefinedCacheEx() => _RegDisablePredefinedCacheEx();

final _RegDisablePredefinedCacheEx =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCacheEx');

/// Disables registry reflection for the specified key.
///
/// Disabling reflection for a key does not affect reflection of any subkeys.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablereflectionkey>.
///
/// {@category advapi32}
int RegDisableReflectionKey(int hBase) => _RegDisableReflectionKey(hBase);

final _RegDisableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase),
    int Function(int hBase)>('RegDisableReflectionKey');

/// Restores registry reflection for the specified disabled key.
///
/// Restoring reflection for a key does not affect reflection of any subkeys.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenablereflectionkey>.
///
/// {@category advapi32}
int RegEnableReflectionKey(int hBase) => _RegEnableReflectionKey(hBase);

final _RegEnableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase),
    int Function(int hBase)>('RegEnableReflectionKey');

/// Enumerates the subkeys of the specified open registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyw>.
///
/// {@category advapi32}
int RegEnumKey(int hKey, int dwIndex, Pointer<Utf16>? lpName, int cchName) =>
    _RegEnumKey(hKey, dwIndex, lpName ?? nullptr, cchName);

final _RegEnumKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Uint32 dwIndex, Pointer<Utf16> lpName, Uint32 cchName),
    int Function(int hKey, int dwIndex, Pointer<Utf16> lpName,
        int cchName)>('RegEnumKeyW');

/// Enumerates the subkeys of the specified open registry key.
///
/// The function retrieves information about one subkey each time it is called.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyexw>.
///
/// {@category advapi32}
int RegEnumKeyEx(
        int hKey,
        int dwIndex,
        Pointer<Utf16>? lpName,
        Pointer<Uint32> lpcchName,
        Pointer<Utf16>? lpClass,
        Pointer<Uint32>? lpcchClass,
        Pointer<FILETIME>? lpftLastWriteTime) =>
    _RegEnumKeyEx(
        hKey,
        dwIndex,
        lpName ?? nullptr,
        lpcchName,
        nullptr,
        lpClass ?? nullptr,
        lpcchClass ?? nullptr,
        lpftLastWriteTime ?? nullptr);

final _RegEnumKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Uint32 dwIndex,
        Pointer<Utf16> lpName,
        Pointer<Uint32> lpcchName,
        Pointer<Uint32> lpReserved,
        Pointer<Utf16> lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<FILETIME> lpftLastWriteTime),
    int Function(
        int hKey,
        int dwIndex,
        Pointer<Utf16> lpName,
        Pointer<Uint32> lpcchName,
        Pointer<Uint32> lpReserved,
        Pointer<Utf16> lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<FILETIME> lpftLastWriteTime)>('RegEnumKeyExW');

/// Enumerates the values for the specified open registry key.
///
/// The function copies one indexed value name and data block for the key each
/// time it is called.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumvaluew>.
///
/// {@category advapi32}
int RegEnumValue(
        int hKey,
        int dwIndex,
        Pointer<Utf16>? lpValueName,
        Pointer<Uint32> lpcchValueName,
        Pointer<Uint32>? lpType,
        Pointer<Uint8>? lpData,
        Pointer<Uint32>? lpcbData) =>
    _RegEnumValue(hKey, dwIndex, lpValueName ?? nullptr, lpcchValueName,
        nullptr, lpType ?? nullptr, lpData ?? nullptr, lpcbData ?? nullptr);

final _RegEnumValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Uint32 dwIndex,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpcchValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData),
    int Function(
        int hKey,
        int dwIndex,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpcchValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData)>('RegEnumValueW');

/// Writes all the attributes of the specified open registry key into the
/// registry.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regflushkey>.
///
/// {@category advapi32}
int RegFlushKey(int hKey) => _RegFlushKey(hKey);

final _RegFlushKey = _advapi32.lookupFunction<Uint32 Function(HKEY hKey),
    int Function(int hKey)>('RegFlushKey');

/// Retrieves the type and data for the specified registry value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-reggetvaluew>.
///
/// {@category advapi32}
int RegGetValue(
        int hkey,
        Pointer<Utf16>? lpSubKey,
        Pointer<Utf16>? lpValue,
        int dwFlags,
        Pointer<Uint32>? pdwType,
        Pointer? pvData,
        Pointer<Uint32>? pcbData) =>
    _RegGetValue(hkey, lpSubKey ?? nullptr, lpValue ?? nullptr, dwFlags,
        pdwType ?? nullptr, pvData ?? nullptr, pcbData ?? nullptr);

final _RegGetValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hkey,
        Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpValue,
        Uint32 dwFlags,
        Pointer<Uint32> pdwType,
        Pointer pvData,
        Pointer<Uint32> pcbData),
    int Function(
        int hkey,
        Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpValue,
        int dwFlags,
        Pointer<Uint32> pdwType,
        Pointer pvData,
        Pointer<Uint32> pcbData)>('RegGetValueW');

/// Registers a function to handle service control requests.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-registerservicectrlhandlerw>.
///
/// {@category advapi32}
int RegisterServiceCtrlHandler(Pointer<Utf16> lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc) =>
    _RegisterServiceCtrlHandler(lpServiceName, lpHandlerProc);

final _RegisterServiceCtrlHandler = _advapi32.lookupFunction<
        SERVICE_STATUS_HANDLE Function(Pointer<Utf16> lpServiceName,
            Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc),
        int Function(Pointer<Utf16> lpServiceName,
            Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc)>(
    'RegisterServiceCtrlHandlerW');

/// Registers a function to handle extended service control requests.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-registerservicectrlhandlerexw>.
///
/// {@category advapi32}
int RegisterServiceCtrlHandlerEx(
        Pointer<Utf16> lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer? lpContext) =>
    _RegisterServiceCtrlHandlerEx(
        lpServiceName, lpHandlerProc, lpContext ?? nullptr);

final _RegisterServiceCtrlHandlerEx = _advapi32.lookupFunction<
    SERVICE_STATUS_HANDLE Function(
        Pointer<Utf16> lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer lpContext),
    int Function(
        Pointer<Utf16> lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer lpContext)>('RegisterServiceCtrlHandlerExW');

/// Loads the specified registry hive as an application hive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadappkeyw>.
///
/// {@category advapi32}
int RegLoadAppKey(Pointer<Utf16> lpFile, Pointer<HKEY> phkResult,
        int samDesired, int dwOptions) =>
    _RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, 0);

final _RegLoadAppKey = _advapi32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpFile, Pointer<HKEY> phkResult,
        Uint32 samDesired, Uint32 dwOptions, Uint32 reserved),
    int Function(Pointer<Utf16> lpFile, Pointer<HKEY> phkResult, int samDesired,
        int dwOptions, int reserved)>('RegLoadAppKeyW');

/// Creates a subkey under HKEY_USERS or HKEY_LOCAL_MACHINE and loads the data
/// from the specified registry hive into that subkey.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadkeyw>.
///
/// {@category advapi32}
int RegLoadKey(int hKey, Pointer<Utf16>? lpSubKey, Pointer<Utf16> lpFile) =>
    _RegLoadKey(hKey, lpSubKey ?? nullptr, lpFile);

final _RegLoadKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpFile),
    int Function(int hKey, Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpFile)>('RegLoadKeyW');

/// Loads the specified string from the specified key and subkey.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadmuistringw>.
///
/// {@category advapi32}
int RegLoadMUIString(
        int hKey,
        Pointer<Utf16>? pszValue,
        Pointer<Utf16>? pszOutBuf,
        int cbOutBuf,
        Pointer<Uint32>? pcbData,
        int flags,
        Pointer<Utf16>? pszDirectory) =>
    _RegLoadMUIString(hKey, pszValue ?? nullptr, pszOutBuf ?? nullptr, cbOutBuf,
        pcbData ?? nullptr, flags, pszDirectory ?? nullptr);

final _RegLoadMUIString = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> pszValue,
        Pointer<Utf16> pszOutBuf,
        Uint32 cbOutBuf,
        Pointer<Uint32> pcbData,
        Uint32 flags,
        Pointer<Utf16> pszDirectory),
    int Function(
        int hKey,
        Pointer<Utf16> pszValue,
        Pointer<Utf16> pszOutBuf,
        int cbOutBuf,
        Pointer<Uint32> pcbData,
        int flags,
        Pointer<Utf16> pszDirectory)>('RegLoadMUIStringW');

/// Notifies the caller about changes to the attributes or contents of a
/// specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regnotifychangekeyvalue>.
///
/// {@category advapi32}
int RegNotifyChangeKeyValue(int hKey, int bWatchSubtree, int dwNotifyFilter,
        int? hEvent, int fAsynchronous) =>
    _RegNotifyChangeKeyValue(
        hKey, bWatchSubtree, dwNotifyFilter, hEvent ?? 0, fAsynchronous);

final _RegNotifyChangeKeyValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, BOOL bWatchSubtree, Uint32 dwNotifyFilter,
        HANDLE hEvent, BOOL fAsynchronous),
    int Function(int hKey, int bWatchSubtree, int dwNotifyFilter, int hEvent,
        int fAsynchronous)>('RegNotifyChangeKeyValue');

/// Retrieves a handle to the HKEY_CURRENT_USER key for the user the current
/// thread is impersonating.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopencurrentuser>.
///
/// {@category advapi32}
int RegOpenCurrentUser(int samDesired, Pointer<HKEY> phkResult) =>
    _RegOpenCurrentUser(samDesired, phkResult);

final _RegOpenCurrentUser = _advapi32.lookupFunction<
    Uint32 Function(Uint32 samDesired, Pointer<HKEY> phkResult),
    int Function(
        int samDesired, Pointer<HKEY> phkResult)>('RegOpenCurrentUser');

/// Opens the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeyw>.
///
/// {@category advapi32}
int RegOpenKey(int hKey, Pointer<Utf16>? lpSubKey, Pointer<HKEY> phkResult) =>
    _RegOpenKey(hKey, lpSubKey ?? nullptr, phkResult);

final _RegOpenKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Pointer<Utf16> lpSubKey, Pointer<HKEY> phkResult),
    int Function(int hKey, Pointer<Utf16> lpSubKey,
        Pointer<HKEY> phkResult)>('RegOpenKeyW');

/// Opens the specified registry key.
///
/// Note that key names are not case sensitive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeyexw>.
///
/// {@category advapi32}
int RegOpenKeyEx(int hKey, Pointer<Utf16>? lpSubKey, int? ulOptions,
        int samDesired, Pointer<HKEY> phkResult) =>
    _RegOpenKeyEx(
        hKey, lpSubKey ?? nullptr, ulOptions ?? 0, samDesired, phkResult);

final _RegOpenKeyEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey, Uint32 ulOptions,
        Uint32 samDesired, Pointer<HKEY> phkResult),
    int Function(int hKey, Pointer<Utf16> lpSubKey, int ulOptions,
        int samDesired, Pointer<HKEY> phkResult)>('RegOpenKeyExW');

/// Opens the specified registry key and associates it with a transaction.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeytransactedw>.
///
/// {@category advapi32}
int RegOpenKeyTransacted(int hKey, Pointer<Utf16>? lpSubKey, int? ulOptions,
        int samDesired, Pointer<HKEY> phkResult, int hTransaction) =>
    _RegOpenKeyTransacted(hKey, lpSubKey ?? nullptr, ulOptions ?? 0, samDesired,
        phkResult, hTransaction, nullptr);

final _RegOpenKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpSubKey,
        Uint32 ulOptions,
        Uint32 samDesired,
        Pointer<HKEY> phkResult,
        HANDLE hTransaction,
        Pointer pExtendedParemeter),
    int Function(
        int hKey,
        Pointer<Utf16> lpSubKey,
        int ulOptions,
        int samDesired,
        Pointer<HKEY> phkResult,
        int hTransaction,
        Pointer pExtendedParemeter)>('RegOpenKeyTransactedW');

/// Retrieves a handle to the HKEY_CLASSES_ROOT key for a specified user.
///
/// The user is identified by an access token.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenuserclassesroot>.
///
/// {@category advapi32}
int RegOpenUserClassesRoot(
        int hToken, int samDesired, Pointer<HKEY> phkResult) =>
    _RegOpenUserClassesRoot(hToken, 0, samDesired, phkResult);

final _RegOpenUserClassesRoot = _advapi32.lookupFunction<
    Uint32 Function(HANDLE hToken, Uint32 dwOptions, Uint32 samDesired,
        Pointer<HKEY> phkResult),
    int Function(int hToken, int dwOptions, int samDesired,
        Pointer<HKEY> phkResult)>('RegOpenUserClassesRoot');

/// Maps a predefined registry key to the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regoverridepredefkey>.
///
/// {@category advapi32}
int RegOverridePredefKey(int hKey, int? hNewHKey) =>
    _RegOverridePredefKey(hKey, hNewHKey ?? 0);

final _RegOverridePredefKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, HKEY hNewHKey),
    int Function(int hKey, int hNewHKey)>('RegOverridePredefKey');

/// Retrieves information about the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryinfokeyw>.
///
/// {@category advapi32}
int RegQueryInfoKey(
        int hKey,
        Pointer<Utf16>? lpClass,
        Pointer<Uint32>? lpcchClass,
        Pointer<Uint32>? lpcSubKeys,
        Pointer<Uint32>? lpcbMaxSubKeyLen,
        Pointer<Uint32>? lpcbMaxClassLen,
        Pointer<Uint32>? lpcValues,
        Pointer<Uint32>? lpcbMaxValueNameLen,
        Pointer<Uint32>? lpcbMaxValueLen,
        Pointer<Uint32>? lpcbSecurityDescriptor,
        Pointer<FILETIME>? lpftLastWriteTime) =>
    _RegQueryInfoKey(
        hKey,
        lpClass ?? nullptr,
        lpcchClass ?? nullptr,
        nullptr,
        lpcSubKeys ?? nullptr,
        lpcbMaxSubKeyLen ?? nullptr,
        lpcbMaxClassLen ?? nullptr,
        lpcValues ?? nullptr,
        lpcbMaxValueNameLen ?? nullptr,
        lpcbMaxValueLen ?? nullptr,
        lpcbSecurityDescriptor ?? nullptr,
        lpftLastWriteTime ?? nullptr);

final _RegQueryInfoKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpcSubKeys,
        Pointer<Uint32> lpcbMaxSubKeyLen,
        Pointer<Uint32> lpcbMaxClassLen,
        Pointer<Uint32> lpcValues,
        Pointer<Uint32> lpcbMaxValueNameLen,
        Pointer<Uint32> lpcbMaxValueLen,
        Pointer<Uint32> lpcbSecurityDescriptor,
        Pointer<FILETIME> lpftLastWriteTime),
    int Function(
        int hKey,
        Pointer<Utf16> lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpcSubKeys,
        Pointer<Uint32> lpcbMaxSubKeyLen,
        Pointer<Uint32> lpcbMaxClassLen,
        Pointer<Uint32> lpcValues,
        Pointer<Uint32> lpcbMaxValueNameLen,
        Pointer<Uint32> lpcbMaxValueLen,
        Pointer<Uint32> lpcbSecurityDescriptor,
        Pointer<FILETIME> lpftLastWriteTime)>('RegQueryInfoKeyW');

/// Retrieves the type and data for a list of value names associated with an
/// open registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regquerymultiplevaluesw>.
///
/// {@category advapi32}
int RegQueryMultipleValues(int hKey, Pointer<VALENT> val_list, int num_vals,
        Pointer<Utf16>? lpValueBuf, Pointer<Uint32>? ldwTotsize) =>
    _RegQueryMultipleValues(
        hKey, val_list, num_vals, lpValueBuf ?? nullptr, ldwTotsize ?? nullptr);

final _RegQueryMultipleValues = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<VALENT> val_list, Uint32 num_vals,
        Pointer<Utf16> lpValueBuf, Pointer<Uint32> ldwTotsize),
    int Function(
        int hKey,
        Pointer<VALENT> val_list,
        int num_vals,
        Pointer<Utf16> lpValueBuf,
        Pointer<Uint32> ldwTotsize)>('RegQueryMultipleValuesW');

/// Determines whether reflection has been disabled or enabled for the specified
/// key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryreflectionkey>.
///
/// {@category advapi32}
int RegQueryReflectionKey(int hBase, Pointer<BOOL> bIsReflectionDisabled) =>
    _RegQueryReflectionKey(hBase, bIsReflectionDisabled);

final _RegQueryReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase, Pointer<BOOL> bIsReflectionDisabled),
    int Function(int hBase,
        Pointer<BOOL> bIsReflectionDisabled)>('RegQueryReflectionKey');

/// Retrieves the data associated with the default or unnamed value of a
/// specified registry key.
///
/// The data must be a null-terminated string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryvaluew>.
///
/// {@category advapi32}
int RegQueryValue(int hKey, Pointer<Utf16>? lpSubKey, Pointer<Utf16>? lpData,
        Pointer<Int32>? lpcbData) =>
    _RegQueryValue(
        hKey, lpSubKey ?? nullptr, lpData ?? nullptr, lpcbData ?? nullptr);

final _RegQueryValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpData,
        Pointer<Int32> lpcbData),
    int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpData,
        Pointer<Int32> lpcbData)>('RegQueryValueW');

/// Retrieves the type and data for the specified value name associated with an
/// open registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryvalueexw>.
///
/// {@category advapi32}
int RegQueryValueEx(
        int hKey,
        Pointer<Utf16>? lpValueName,
        Pointer<Uint32>? lpType,
        Pointer<Uint8>? lpData,
        Pointer<Uint32>? lpcbData) =>
    _RegQueryValueEx(hKey, lpValueName ?? nullptr, nullptr, lpType ?? nullptr,
        lpData ?? nullptr, lpcbData ?? nullptr);

final _RegQueryValueEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData),
    int Function(
        int hKey,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData)>('RegQueryValueExW');

/// Changes the name of the specified registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regrenamekey>.
///
/// {@category advapi32}
int RegRenameKey(
        int hKey, Pointer<Utf16>? lpSubKeyName, Pointer<Utf16> lpNewKeyName) =>
    _RegRenameKey(hKey, lpSubKeyName ?? nullptr, lpNewKeyName);

final _RegRenameKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, Pointer<Utf16> lpSubKeyName, Pointer<Utf16> lpNewKeyName),
    int Function(int hKey, Pointer<Utf16> lpSubKeyName,
        Pointer<Utf16> lpNewKeyName)>('RegRenameKey');

/// Replaces the file backing a registry key and all its subkeys with another
/// file, so that when the system is next started, the key and subkeys will have
/// the values stored in the new file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regreplacekeyw>.
///
/// {@category advapi32}
int RegReplaceKey(int hKey, Pointer<Utf16>? lpSubKey, Pointer<Utf16> lpNewFile,
        Pointer<Utf16> lpOldFile) =>
    _RegReplaceKey(hKey, lpSubKey ?? nullptr, lpNewFile, lpOldFile);

final _RegReplaceKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpNewFile, Pointer<Utf16> lpOldFile),
    int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpNewFile,
        Pointer<Utf16> lpOldFile)>('RegReplaceKeyW');

/// Reads the registry information in a specified file and copies it over the
/// specified key.
///
/// This registry information may be in the form of a key and multiple levels of
/// subkeys.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regrestorekeyw>.
///
/// {@category advapi32}
int RegRestoreKey(int hKey, Pointer<Utf16> lpFile, int dwFlags) =>
    _RegRestoreKey(hKey, lpFile, dwFlags);

final _RegRestoreKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpFile, Uint32 dwFlags),
    int Function(
        int hKey, Pointer<Utf16> lpFile, int dwFlags)>('RegRestoreKeyW');

/// Saves the specified key and all of its subkeys and values to a new file, in
/// the standard format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsavekeyw>.
///
/// {@category advapi32}
int RegSaveKey(int hKey, Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes) =>
    _RegSaveKey(hKey, lpFile, lpSecurityAttributes ?? nullptr);

final _RegSaveKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
    int Function(int hKey, Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>('RegSaveKeyW');

/// Saves the specified key and all of its subkeys and values to a registry
/// file, in the specified format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsavekeyexw>.
///
/// {@category advapi32}
int RegSaveKeyEx(int hKey, Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes, int flags) =>
    _RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes ?? nullptr, flags);

final _RegSaveKeyEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes, Uint32 flags),
    int Function(
        int hKey,
        Pointer<Utf16> lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        int flags)>('RegSaveKeyExW');

/// Sets the data for the specified value in the specified registry key and
/// subkey.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetkeyvaluew>.
///
/// {@category advapi32}
int RegSetKeyValue(int hKey, Pointer<Utf16>? lpSubKey,
        Pointer<Utf16>? lpValueName, int dwType, Pointer? lpData, int cbData) =>
    _RegSetKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr, dwType,
        lpData ?? nullptr, cbData);

final _RegSetKeyValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        Pointer<Utf16> lpSubKey,
        Pointer<Utf16> lpValueName,
        Uint32 dwType,
        Pointer lpData,
        Uint32 cbData),
    int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpValueName,
        int dwType, Pointer lpData, int cbData)>('RegSetKeyValueW');

/// Sets the data for the default or unnamed value of a specified registry key.
///
/// The data must be a text string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetvaluew>.
///
/// {@category advapi32}
int RegSetValue(int hKey, Pointer<Utf16>? lpSubKey, int dwType,
        Pointer<Utf16>? lpData, int cbData) =>
    _RegSetValue(hKey, lpSubKey ?? nullptr, dwType, lpData ?? nullptr, cbData);

final _RegSetValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey, Uint32 dwType,
        Pointer<Utf16> lpData, Uint32 cbData),
    int Function(int hKey, Pointer<Utf16> lpSubKey, int dwType,
        Pointer<Utf16> lpData, int cbData)>('RegSetValueW');

/// Sets the data and type of a specified value under a registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetvalueexw>.
///
/// {@category advapi32}
int RegSetValueEx(int hKey, Pointer<Utf16>? lpValueName, int dwType,
        Pointer<Uint8>? lpData, int cbData) =>
    _RegSetValueEx(
        hKey, lpValueName ?? nullptr, 0, dwType, lpData ?? nullptr, cbData);

final _RegSetValueEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpValueName, Uint32 reserved,
        Uint32 dwType, Pointer<Uint8> lpData, Uint32 cbData),
    int Function(int hKey, Pointer<Utf16> lpValueName, int reserved, int dwType,
        Pointer<Uint8> lpData, int cbData)>('RegSetValueExW');

/// Unloads the specified registry key and its subkeys from the registry.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regunloadkeyw>.
///
/// {@category advapi32}
int RegUnLoadKey(int hKey, Pointer<Utf16>? lpSubKey) =>
    _RegUnLoadKey(hKey, lpSubKey ?? nullptr);

final _RegUnLoadKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<Utf16> lpSubKey),
    int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegUnLoadKeyW');

/// Sets the security descriptor of a service object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setserviceobjectsecurity>.
///
/// {@category advapi32}
int SetServiceObjectSecurity(int hService, int dwSecurityInformation,
        PSECURITY_DESCRIPTOR lpSecurityDescriptor) =>
    _SetServiceObjectSecurity(
        hService, dwSecurityInformation, lpSecurityDescriptor);

final _SetServiceObjectSecurity = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwSecurityInformation,
        PSECURITY_DESCRIPTOR lpSecurityDescriptor),
    int Function(int hService, int dwSecurityInformation,
        PSECURITY_DESCRIPTOR lpSecurityDescriptor)>('SetServiceObjectSecurity');

/// Updates the service control manager's status information for the calling
/// service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setservicestatus>.
///
/// {@category advapi32}
int SetServiceStatus(
        int hServiceStatus, Pointer<SERVICE_STATUS> lpServiceStatus) =>
    _SetServiceStatus(hServiceStatus, lpServiceStatus);

final _SetServiceStatus = _advapi32.lookupFunction<
    BOOL Function(SERVICE_STATUS_HANDLE hServiceStatus,
        Pointer<SERVICE_STATUS> lpServiceStatus),
    int Function(int hServiceStatus,
        Pointer<SERVICE_STATUS> lpServiceStatus)>('SetServiceStatus');

/// Assigns an impersonation token to a thread.
///
/// The function can also cause a thread to stop using an impersonation token.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setthreadtoken>.
///
/// {@category advapi32}
int SetThreadToken(Pointer<HANDLE>? thread, int? token) =>
    _SetThreadToken(thread ?? nullptr, token ?? 0);

final _SetThreadToken = _advapi32.lookupFunction<
    BOOL Function(Pointer<HANDLE> thread, HANDLE token),
    int Function(Pointer<HANDLE> thread, int token)>('SetThreadToken');

/// Starts a service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicew>.
///
/// {@category advapi32}
int StartService(int hService, int dwNumServiceArgs,
        Pointer<Pointer<Utf16>>? lpServiceArgVectors) =>
    _StartService(hService, dwNumServiceArgs, lpServiceArgVectors ?? nullptr);

final _StartService = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwNumServiceArgs,
        Pointer<Pointer<Utf16>> lpServiceArgVectors),
    int Function(int hService, int dwNumServiceArgs,
        Pointer<Pointer<Utf16>> lpServiceArgVectors)>('StartServiceW');

/// Connects the main thread of a service process to the service control
/// manager, which causes the thread to be the service control dispatcher thread
/// for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicectrldispatcherw>.
///
/// {@category advapi32}
int StartServiceCtrlDispatcher(
        Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable) =>
    _StartServiceCtrlDispatcher(lpServiceStartTable);

final _StartServiceCtrlDispatcher = _advapi32.lookupFunction<
        BOOL Function(Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable),
        int Function(Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable)>(
    'StartServiceCtrlDispatcherW');
