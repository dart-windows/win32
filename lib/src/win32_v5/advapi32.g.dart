// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _advapi32 = DynamicLibrary.open('advapi32.dll');

/// ```c
/// BOOL ChangeServiceConfig2W(
///   [in]           SC_HANDLE hService,
///   [in]           DWORD     dwInfoLevel,
///   [in, optional] LPVOID    lpInfo
/// );
/// ```
/// {@category advapi32}
int ChangeServiceConfig2(int hService, int dwInfoLevel, Pointer? lpInfo) =>
    _ChangeServiceConfig2(hService, dwInfoLevel, lpInfo ?? nullptr);

final _ChangeServiceConfig2 = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwInfoLevel, Pointer lpInfo),
    int Function(int hService, int dwInfoLevel,
        Pointer lpInfo)>('ChangeServiceConfig2W');

/// Closes a handle to a service control manager or service object.
///
/// ```c
/// BOOL CloseServiceHandle(
///   [in] SC_HANDLE hSCObject
/// );
/// ```
/// {@category advapi32}
int CloseServiceHandle(int hSCObject) => _CloseServiceHandle(hSCObject);

final _CloseServiceHandle = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCObject),
    int Function(int hSCObject)>('CloseServiceHandle');

/// Sends a control code to a service.
///
/// ```c
/// BOOL ControlService(
///   [in]  SC_HANDLE        hService,
///   [in]  DWORD            dwControl,
///   [out] LPSERVICE_STATUS lpServiceStatus
/// );
/// ```
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
/// ```c
/// BOOL ControlServiceExW(
///   [in]      SC_HANDLE hService,
///   [in]      DWORD     dwControl,
///   [in]      DWORD     dwInfoLevel,
///   [in, out] PVOID     pControlParams
/// );
/// ```
/// {@category advapi32}
int ControlServiceEx(
        int hService, int dwControl, int dwInfoLevel, Pointer pControlParams) =>
    _ControlServiceEx(hService, dwControl, dwInfoLevel, pControlParams);

final _ControlServiceEx = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwControl, Uint32 dwInfoLevel,
        Pointer pControlParams),
    int Function(int hService, int dwControl, int dwInfoLevel,
        Pointer pControlParams)>('ControlServiceExW');

/// The CredDelete function deletes a credential from the user's credential set.
/// The credential set used is the one associated with the logon session of the
/// current token. The token must not have the user's SID disabled.
///
/// ```c
/// BOOL CredDeleteW(
///   LPCWSTR TargetName,
///   DWORD   Type,
///   DWORD   Flags
/// );
/// ```
/// {@category advapi32}
int CredDelete(PWSTR targetName, int type) => _CredDelete(targetName, type, 0);

final _CredDelete = _advapi32.lookupFunction<
    BOOL Function(PWSTR targetName, Uint32 type, Uint32 flags),
    int Function(PWSTR targetName, int type, int flags)>('CredDeleteW');

/// The CredFree function frees a buffer returned by any of the credentials
/// management functions.
///
/// ```c
/// void CredFree(
///   PVOID Buffer
/// );
/// ```
/// {@category advapi32}
void CredFree(Pointer buffer) => _CredFree(buffer);

final _CredFree = _advapi32.lookupFunction<Void Function(Pointer buffer),
    void Function(Pointer buffer)>('CredFree');

/// The CredRead function reads a credential from the user's credential set. The
/// credential set used is the one associated with the logon session of the
/// current token. The token must not have the user's SID disabled.
///
/// ```c
/// BOOL CredReadW(
///   LPCWSTR      TargetName,
///   DWORD        Type,
///   DWORD        Flags,
///   PCREDENTIALW *Credential
/// );
/// ```
/// {@category advapi32}
int CredRead(
        PWSTR targetName, int type, Pointer<Pointer<CREDENTIAL>> credential) =>
    _CredRead(targetName, type, 0, credential);

final _CredRead = _advapi32.lookupFunction<
    BOOL Function(PWSTR targetName, Uint32 type, Uint32 flags,
        Pointer<Pointer<CREDENTIAL>> credential),
    int Function(PWSTR targetName, int type, int flags,
        Pointer<Pointer<CREDENTIAL>> credential)>('CredReadW');

/// The CredWrite function creates a new credential or modifies an existing
/// credential in the user's credential set. The new credential is associated
/// with the logon session of the current token. The token must not have the
/// user's security identifier (SID) disabled.
///
/// ```c
/// BOOL CredWriteW(
///   PCREDENTIALW Credential,
///   DWORD        Flags
/// );
/// ```
/// {@category advapi32}
int CredWrite(Pointer<CREDENTIAL> credential, int flags) =>
    _CredWrite(credential, flags);

final _CredWrite = _advapi32.lookupFunction<
    BOOL Function(Pointer<CREDENTIAL> credential, Uint32 flags),
    int Function(Pointer<CREDENTIAL> credential, int flags)>('CredWriteW');

/// Decrypts an encrypted file or directory.
///
/// ```c
/// BOOL DecryptFileW(
///   LPCWSTR lpFileName,
///   DWORD   dwReserved
/// );
/// ```
/// {@category advapi32}
int DecryptFile(PWSTR lpFileName) => _DecryptFile(lpFileName, 0);

final _DecryptFile = _advapi32.lookupFunction<
    BOOL Function(PWSTR lpFileName, Uint32 dwReserved),
    int Function(PWSTR lpFileName, int dwReserved)>('DecryptFileW');

/// Marks the specified service for deletion from the service control manager
/// database.
///
/// ```c
/// BOOL DeleteService(
///   [in] SC_HANDLE hService
/// );
/// ```
/// {@category advapi32}
int DeleteService(int hService) => _DeleteService(hService);

final _DeleteService = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService),
    int Function(int hService)>('DeleteService');

/// Encrypts a file or directory. All data streams in a file are encrypted. All
/// new files created in an encrypted directory are encrypted.
///
/// ```c
/// BOOL EncryptFileW(
///   LPCWSTR lpFileName
/// );
/// ```
/// {@category advapi32}
int EncryptFile(PWSTR lpFileName) => _EncryptFile(lpFileName);

final _EncryptFile = _advapi32.lookupFunction<BOOL Function(PWSTR lpFileName),
    int Function(PWSTR lpFileName)>('EncryptFileW');

/// Retrieves the name and status of each service that depends on the specified
/// service; that is, the specified service must be running before the dependent
/// services can run.
///
/// ```c
/// BOOL EnumDependentServicesW(
///   [in]            SC_HANDLE              hService,
///   [in]            DWORD                  dwServiceState,
///   [out, optional] LPENUM_SERVICE_STATUSW lpServices,
///   [in]            DWORD                  cbBufSize,
///   [out]           LPDWORD                pcbBytesNeeded,
///   [out]           LPDWORD                lpServicesReturned
/// );
/// ```
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

/// Enumerates services in the specified service control manager database. The
/// name and status of each service are provided.
///
/// ```c
/// BOOL EnumServicesStatusW(
///   [in]                SC_HANDLE              hSCManager,
///   [in]                DWORD                  dwServiceType,
///   [in]                DWORD                  dwServiceState,
///   [out, optional]     LPENUM_SERVICE_STATUSW lpServices,
///   [in]                DWORD                  cbBufSize,
///   [out]               LPDWORD                pcbBytesNeeded,
///   [out]               LPDWORD                lpServicesReturned,
///   [in, out, optional] LPDWORD                lpResumeHandle
/// );
/// ```
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

/// Enumerates services in the specified service control manager database. The
/// name and status of each service are provided, along with additional data
/// based on the specified information level.
///
/// ```c
/// BOOL EnumServicesStatusExW(
///   [in]                SC_HANDLE    hSCManager,
///   [in]                SC_ENUM_TYPE InfoLevel,
///   [in]                DWORD        dwServiceType,
///   [in]                DWORD        dwServiceState,
///   [out, optional]     LPBYTE       lpServices,
///   [in]                DWORD        cbBufSize,
///   [out]               LPDWORD      pcbBytesNeeded,
///   [out]               LPDWORD      lpServicesReturned,
///   [in, out, optional] LPDWORD      lpResumeHandle,
///   [in, optional]      LPCWSTR      pszGroupName
/// );
/// ```
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
        PWSTR? pszGroupName) =>
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
        PWSTR pszGroupName),
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
        PWSTR pszGroupName)>('EnumServicesStatusExW');

/// Retrieves the encryption status of the specified file.
///
/// ```c
/// BOOL FileEncryptionStatusW(
///   LPCWSTR lpFileName,
///   LPDWORD lpStatus
/// );
/// ```
/// {@category advapi32}
int FileEncryptionStatus(PWSTR lpFileName, Pointer<Uint32> lpStatus) =>
    _FileEncryptionStatus(lpFileName, lpStatus);

final _FileEncryptionStatus = _advapi32.lookupFunction<
    BOOL Function(PWSTR lpFileName, Pointer<Uint32> lpStatus),
    int Function(
        PWSTR lpFileName, Pointer<Uint32> lpStatus)>('FileEncryptionStatusW');

/// Retrieves the display name of the specified service.
///
/// ```c
/// BOOL GetServiceDisplayNameW(
///   [in]            SC_HANDLE hSCManager,
///   [in]            LPCWSTR   lpServiceName,
///   [out, optional] LPWSTR    lpDisplayName,
///   [in, out]       LPDWORD   lpcchBuffer
/// );
/// ```
/// {@category advapi32}
int GetServiceDisplayName(int hSCManager, PWSTR lpServiceName,
        PWSTR? lpDisplayName, Pointer<Uint32> lpcchBuffer) =>
    _GetServiceDisplayName(
        hSCManager, lpServiceName, lpDisplayName ?? nullptr, lpcchBuffer);

final _GetServiceDisplayName = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCManager, PWSTR lpServiceName,
        PWSTR lpDisplayName, Pointer<Uint32> lpcchBuffer),
    int Function(int hSCManager, PWSTR lpServiceName, PWSTR lpDisplayName,
        Pointer<Uint32> lpcchBuffer)>('GetServiceDisplayNameW');

/// Retrieves the service name of the specified service.
///
/// ```c
/// BOOL GetServiceKeyNameW(
///    [in]            SC_HANDLE hSCManager,
///    [in]            LPCWSTR   lpDisplayName,
///    [out, optional] LPWSTR    lpServiceName,
///    [in, out]       LPDWORD   lpcchBuffer
///  );
/// ```
/// {@category advapi32}
int GetServiceKeyName(int hSCManager, PWSTR lpDisplayName, PWSTR? lpServiceName,
        Pointer<Uint32> lpcchBuffer) =>
    _GetServiceKeyName(
        hSCManager, lpDisplayName, lpServiceName ?? nullptr, lpcchBuffer);

final _GetServiceKeyName = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hSCManager, PWSTR lpDisplayName,
        PWSTR lpServiceName, Pointer<Uint32> lpcchBuffer),
    int Function(int hSCManager, PWSTR lpDisplayName, PWSTR lpServiceName,
        Pointer<Uint32> lpcchBuffer)>('GetServiceKeyNameW');

/// The GetTokenInformation function retrieves a specified type of information
/// about an access token. The calling process must have appropriate access
/// rights to obtain the information.
///
/// ```c
/// BOOL GetTokenInformation(
///   HANDLE                  TokenHandle,
///   TOKEN_INFORMATION_CLASS TokenInformationClass,
///   LPVOID                  TokenInformation,
///   DWORD                   TokenInformationLength,
///   PDWORD                  ReturnLength
/// );
/// ```
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
/// ```c
/// BOOL GetUserNameW(
///   LPWSTR  lpBuffer,
///   LPDWORD pcbBuffer);
/// ```
/// {@category advapi32}
int GetUserName(PWSTR? lpBuffer, Pointer<Uint32> pcbBuffer) =>
    _GetUserName(lpBuffer ?? nullptr, pcbBuffer);

final _GetUserName = _advapi32.lookupFunction<
    BOOL Function(PWSTR lpBuffer, Pointer<Uint32> pcbBuffer),
    int Function(PWSTR lpBuffer, Pointer<Uint32> pcbBuffer)>('GetUserNameW');

/// Initiates a shutdown and restart of the specified computer, and restarts any
/// applications that have been registered for restart.
///
/// ```c
/// DWORD InitiateShutdownW(
///   LPWSTR lpMachineName,
///   LPWSTR lpMessage,
///   DWORD  dwGracePeriod,
///   DWORD  dwShutdownFlags,
///   DWORD  dwReason
/// );
/// ```
/// {@category advapi32}
int InitiateShutdown(PWSTR? lpMachineName, PWSTR? lpMessage, int dwGracePeriod,
        int dwShutdownFlags, int dwReason) =>
    _InitiateShutdown(lpMachineName ?? nullptr, lpMessage ?? nullptr,
        dwGracePeriod, dwShutdownFlags, dwReason);

final _InitiateShutdown = _advapi32.lookupFunction<
    Uint32 Function(PWSTR lpMachineName, PWSTR lpMessage, Uint32 dwGracePeriod,
        Uint32 dwShutdownFlags, Uint32 dwReason),
    int Function(PWSTR lpMachineName, PWSTR lpMessage, int dwGracePeriod,
        int dwShutdownFlags, int dwReason)>('InitiateShutdownW');

/// Reports the boot status to the service control manager. It is used by boot
/// verification programs. This function can be called only by a process running
/// in the LocalSystem or Administrator's account.
///
/// ```c
/// BOOL NotifyBootConfigStatus(
///   [in] BOOL BootAcceptable
/// );
/// ```
/// {@category advapi32}
int NotifyBootConfigStatus(int bootAcceptable) =>
    _NotifyBootConfigStatus(bootAcceptable);

final _NotifyBootConfigStatus = _advapi32.lookupFunction<
    BOOL Function(BOOL bootAcceptable),
    int Function(int bootAcceptable)>('NotifyBootConfigStatus');

/// Enables an application to receive notification when the specified service is
/// created or deleted or when its status changes.
///
/// ```c
/// DWORD NotifyServiceStatusChangeW(
///   [in] SC_HANDLE        hService,
///   [in] DWORD            dwNotifyMask,
///   [in] PSERVICE_NOTIFYW pNotifyBuffer
/// );
/// ```
/// {@category advapi32}
int NotifyServiceStatusChange(int hService, int dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer) =>
    _NotifyServiceStatusChange(hService, dwNotifyMask, pNotifyBuffer);

final _NotifyServiceStatusChange = _advapi32.lookupFunction<
    Uint32 Function(SC_HANDLE hService, Uint32 dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer),
    int Function(int hService, int dwNotifyMask,
        Pointer<SERVICE_NOTIFY_2> pNotifyBuffer)>('NotifyServiceStatusChangeW');

/// The OpenProcessToken function opens the access token associated with a
/// process.
///
/// ```c
/// BOOL OpenProcessToken(
///   HANDLE  ProcessHandle,
///   DWORD   DesiredAccess,
///   PHANDLE TokenHandle
/// );
/// ```
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
/// ```c
/// SC_HANDLE OpenSCManagerW(
///   [in, optional] LPCWSTR lpMachineName,
///   [in, optional] LPCWSTR lpDatabaseName,
///   [in]           DWORD   dwDesiredAccess
/// );
/// ```
/// {@category advapi32}
int OpenSCManager(
        PWSTR? lpMachineName, PWSTR? lpDatabaseName, int dwDesiredAccess) =>
    _OpenSCManager(
        lpMachineName ?? nullptr, lpDatabaseName ?? nullptr, dwDesiredAccess);

final _OpenSCManager = _advapi32.lookupFunction<
    SC_HANDLE Function(
        PWSTR lpMachineName, PWSTR lpDatabaseName, Uint32 dwDesiredAccess),
    int Function(PWSTR lpMachineName, PWSTR lpDatabaseName,
        int dwDesiredAccess)>('OpenSCManagerW');

/// Opens an existing service.
///
/// ```c
/// SC_HANDLE OpenServiceW(
///   [in] SC_HANDLE hSCManager,
///   [in] LPCWSTR   lpServiceName,
///   [in] DWORD     dwDesiredAccess
/// );
/// ```
/// {@category advapi32}
int OpenService(int hSCManager, PWSTR lpServiceName, int dwDesiredAccess) =>
    _OpenService(hSCManager, lpServiceName, dwDesiredAccess);

final _OpenService = _advapi32.lookupFunction<
    SC_HANDLE Function(
        SC_HANDLE hSCManager, PWSTR lpServiceName, Uint32 dwDesiredAccess),
    int Function(int hSCManager, PWSTR lpServiceName,
        int dwDesiredAccess)>('OpenServiceW');

/// The OpenThreadToken function opens the access token associated with a
/// thread.
///
/// ```c
/// BOOL OpenThreadToken(
///   HANDLE  ThreadHandle,
///   DWORD   DesiredAccess,
///   BOOL    OpenAsSelf,
///   PHANDLE TokenHandle
/// );
/// ```
/// {@category advapi32}
int OpenThreadToken(int threadHandle, int desiredAccess, int openAsSelf,
        Pointer<HANDLE> tokenHandle) =>
    _OpenThreadToken(threadHandle, desiredAccess, openAsSelf, tokenHandle);

final _OpenThreadToken = _advapi32.lookupFunction<
    BOOL Function(HANDLE threadHandle, Uint32 desiredAccess, BOOL openAsSelf,
        Pointer<HANDLE> tokenHandle),
    int Function(int threadHandle, int desiredAccess, int openAsSelf,
        Pointer<HANDLE> tokenHandle)>('OpenThreadToken');

/// Retrieves the configuration parameters of the specified service. Optional
/// configuration parameters are available using the QueryServiceConfig2
/// function.
///
/// ```c
/// BOOL QueryServiceConfigW(
///   [in]            SC_HANDLE               hService,
///   [out, optional] LPQUERY_SERVICE_CONFIGW lpServiceConfig,
///   [in]            DWORD                   cbBufSize,
///   [out]           LPDWORD                 pcbBytesNeeded
/// );
/// ```
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
/// ```c
/// BOOL QueryServiceConfig2W(
///   [in]            SC_HANDLE hService,
///   [in]            DWORD     dwInfoLevel,
///   [out, optional] LPBYTE    lpBuffer,
///   [in]            DWORD     cbBufSize,
///   [out]           LPDWORD   pcbBytesNeeded
/// );
/// ```
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
/// ```c
/// BOOL QueryServiceDynamicInformation(
///   [in] SERVICE_STATUS_HANDLE hServiceStatus,
///   [in] DWORD                 dwInfoLevel,
///        PVOID                 *ppDynamicInfo
/// );
/// ```
/// {@category advapi32}
int QueryServiceDynamicInformation(
        int hServiceStatus, int dwInfoLevel, Pointer<Pointer> ppDynamicInfo) =>
    _QueryServiceDynamicInformation(hServiceStatus, dwInfoLevel, ppDynamicInfo);

final _QueryServiceDynamicInformation = _advapi32.lookupFunction<
    BOOL Function(SERVICE_STATUS_HANDLE hServiceStatus, Uint32 dwInfoLevel,
        Pointer<Pointer> ppDynamicInfo),
    int Function(int hServiceStatus, int dwInfoLevel,
        Pointer<Pointer> ppDynamicInfo)>('QueryServiceDynamicInformation');

/// The QueryServiceObjectSecurity function retrieves a copy of the security
/// descriptor associated with a service object. You can also use the
/// GetNamedSecurityInfo function to retrieve a security descriptor.
///
/// ```c
/// BOOL QueryServiceObjectSecurity(
///   [in]            SC_HANDLE            hService,
///   [in]            SECURITY_INFORMATION dwSecurityInformation,
///   [out, optional] PSECURITY_DESCRIPTOR lpSecurityDescriptor,
///   [in]            DWORD                cbBufSize,
///   [out]           LPDWORD              pcbBytesNeeded
/// );
/// ```
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
/// ```c
/// BOOL QueryServiceStatus(
///   [in]  SC_HANDLE        hService,
///   [out] LPSERVICE_STATUS lpServiceStatus
/// );
/// ```
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
/// ```c
/// BOOL QueryServiceStatusEx(
///   [in]            SC_HANDLE      hService,
///   [in]            SC_STATUS_TYPE InfoLevel,
///   [out, optional] LPBYTE         lpBuffer,
///   [in]            DWORD          cbBufSize,
///   [out]           LPDWORD        pcbBytesNeeded
/// );
/// ```
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
/// ```c
/// LSTATUS RegCloseKey(
///   HKEY hKey
/// );
/// ```
/// {@category advapi32}
int RegCloseKey(int hKey) => _RegCloseKey(hKey);

final _RegCloseKey = _advapi32.lookupFunction<Uint32 Function(HKEY hKey),
    int Function(int hKey)>('RegCloseKey');

/// Establishes a connection to a predefined registry key on another computer.
///
/// ```c
/// LSTATUS RegConnectRegistryW(
///   LPCWSTR lpMachineName,
///   HKEY    hKey,
///   PHKEY   phkResult
/// );
/// ```
/// {@category advapi32}
int RegConnectRegistry(
        PWSTR? lpMachineName, int hKey, Pointer<HKEY> phkResult) =>
    _RegConnectRegistry(lpMachineName ?? nullptr, hKey, phkResult);

final _RegConnectRegistry = _advapi32.lookupFunction<
    Uint32 Function(PWSTR lpMachineName, HKEY hKey, Pointer<HKEY> phkResult),
    int Function(PWSTR lpMachineName, int hKey,
        Pointer<HKEY> phkResult)>('RegConnectRegistryW');

/// Copies the specified registry key, along with its values and subkeys, to the
/// specified destination key.
///
/// ```c
/// LSTATUS RegCopyTreeW(
///   HKEY    hKeySrc,
///   LPCWSTR lpSubKey,
///   HKEY    hKeyDest
/// );
/// ```
/// {@category advapi32}
int RegCopyTree(int hKeySrc, PWSTR? lpSubKey, int hKeyDest) =>
    _RegCopyTree(hKeySrc, lpSubKey ?? nullptr, hKeyDest);

final _RegCopyTree = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKeySrc, PWSTR lpSubKey, HKEY hKeyDest),
    int Function(int hKeySrc, PWSTR lpSubKey, int hKeyDest)>('RegCopyTreeW');

/// Creates the specified registry key. If the key already exists in the
/// registry, the function opens it.
///
/// ```c
/// LSTATUS RegCreateKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   PHKEY   phkResult);
/// ```
/// {@category advapi32}
int RegCreateKey(int hKey, PWSTR? lpSubKey, Pointer<HKEY> phkResult) =>
    _RegCreateKey(hKey, lpSubKey ?? nullptr, phkResult);

final _RegCreateKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, Pointer<HKEY> phkResult),
    int Function(
        int hKey, PWSTR lpSubKey, Pointer<HKEY> phkResult)>('RegCreateKeyW');

/// Creates the specified registry key. If the key already exists, the function
/// opens it. Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegCreateKeyExW(
///   HKEY hKey,
///   LPCWSTR lpSubKey,
///   DWORD Reserved,
///   LPWSTR lpClass,
///   DWORD dwOptions,
///   REGSAM samDesired,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   PHKEY phkResult,
///   LPDWORD lpdwDisposition
/// );
/// ```
/// {@category advapi32}
int RegCreateKeyEx(
        int hKey,
        PWSTR lpSubKey,
        PWSTR? lpClass,
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
        PWSTR lpSubKey,
        Uint32 reserved,
        PWSTR lpClass,
        Uint32 dwOptions,
        Uint32 samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition),
    int Function(
        int hKey,
        PWSTR lpSubKey,
        int reserved,
        PWSTR lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition)>('RegCreateKeyExW');

/// Establishes a connection to a predefined registry key on another computer.
///
/// ```c
/// LSTATUS RegCreateKeyTransactedW(
///   HKEY     hKey,
///   LPCWSTR  lpSubKey,
///   DWORD    Reserved,
///   LPWSTR   lpClass,
///   DWORD    dwOptions,
///   REGSAM   samDesired,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   PHKEY    phkResult,
///   LPDWORD  lpdwDisposition,
///   HANDLE   hTransaction,
///   PVOID    pExtendedParemeter);
/// ```
/// {@category advapi32}
int RegCreateKeyTransacted(
        int hKey,
        PWSTR lpSubKey,
        PWSTR? lpClass,
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
        PWSTR lpSubKey,
        Uint32 reserved,
        PWSTR lpClass,
        Uint32 dwOptions,
        Uint32 samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition,
        HANDLE hTransaction,
        Pointer pExtendedParemeter),
    int Function(
        int hKey,
        PWSTR lpSubKey,
        int reserved,
        PWSTR lpClass,
        int dwOptions,
        int samDesired,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Pointer<HKEY> phkResult,
        Pointer<Uint32> lpdwDisposition,
        int hTransaction,
        Pointer pExtendedParemeter)>('RegCreateKeyTransactedW');

/// Deletes a subkey and its values. Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegDeleteKey(int hKey, PWSTR lpSubKey) => _RegDeleteKey(hKey, lpSubKey);

final _RegDeleteKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey),
    int Function(int hKey, PWSTR lpSubKey)>('RegDeleteKeyW');

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry. Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyExW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   REGSAM  samDesired,
///   DWORD   Reserved);
/// ```
/// {@category advapi32}
int RegDeleteKeyEx(int hKey, PWSTR lpSubKey, int samDesired) =>
    _RegDeleteKeyEx(hKey, lpSubKey, samDesired, 0);

final _RegDeleteKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, PWSTR lpSubKey, Uint32 samDesired, Uint32 reserved),
    int Function(int hKey, PWSTR lpSubKey, int samDesired,
        int reserved)>('RegDeleteKeyExW');

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry as a transacted operation. Note that key names are not case
/// sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyTransactedW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   REGSAM  samDesired,
///   DWORD   Reserved,
///   HANDLE  hTransaction,
///   PVOID   pExtendedParameter);
/// ```
/// {@category advapi32}
int RegDeleteKeyTransacted(
        int hKey, PWSTR lpSubKey, int samDesired, int hTransaction) =>
    _RegDeleteKeyTransacted(
        hKey, lpSubKey, samDesired, 0, hTransaction, nullptr);

final _RegDeleteKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, Uint32 samDesired,
        Uint32 reserved, HANDLE hTransaction, Pointer pExtendedParameter),
    int Function(
        int hKey,
        PWSTR lpSubKey,
        int samDesired,
        int reserved,
        int hTransaction,
        Pointer pExtendedParameter)>('RegDeleteKeyTransactedW');

/// Removes the specified value from the specified registry key and subkey.
///
/// ```c
/// LSTATUS RegDeleteKeyValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValueName);
/// ```
/// {@category advapi32}
int RegDeleteKeyValue(int hKey, PWSTR? lpSubKey, PWSTR? lpValueName) =>
    _RegDeleteKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr);

final _RegDeleteKeyValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, PWSTR lpValueName),
    int Function(
        int hKey, PWSTR lpSubKey, PWSTR lpValueName)>('RegDeleteKeyValueW');

/// Deletes the subkeys and values of the specified key recursively.
///
/// ```c
/// LSTATUS RegDeleteTreeW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegDeleteTree(int hKey, PWSTR? lpSubKey) =>
    _RegDeleteTree(hKey, lpSubKey ?? nullptr);

final _RegDeleteTree = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey),
    int Function(int hKey, PWSTR lpSubKey)>('RegDeleteTreeW');

/// Removes a named value from the specified registry key. Note that value names
/// are not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteValueW(
///   HKEY    hKey,
///   LPCWSTR lpValueName);
/// ```
/// {@category advapi32}
int RegDeleteValue(int hKey, PWSTR? lpValueName) =>
    _RegDeleteValue(hKey, lpValueName ?? nullptr);

final _RegDeleteValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpValueName),
    int Function(int hKey, PWSTR lpValueName)>('RegDeleteValueW');

/// Disables handle caching of the predefined registry handle for
/// HKEY_CURRENT_USER for the current process. This function does not work on a
/// remote computer.
///
/// ```c
/// LSTATUS RegDisablePredefinedCache();
/// ```
/// {@category advapi32}
int RegDisablePredefinedCache() => _RegDisablePredefinedCache();

final _RegDisablePredefinedCache =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCache');

/// Disables handle caching for all predefined registry handles for the current
/// process.
///
/// ```c
/// LSTATUS RegDisablePredefinedCacheEx();
/// ```
/// {@category advapi32}
int RegDisablePredefinedCacheEx() => _RegDisablePredefinedCacheEx();

final _RegDisablePredefinedCacheEx =
    _advapi32.lookupFunction<Uint32 Function(), int Function()>(
        'RegDisablePredefinedCacheEx');

/// Disables registry reflection for the specified key. Disabling reflection for
/// a key does not affect reflection of any subkeys.
///
/// ```c
/// LONG RegDisableReflectionKey(
///   HKEY hBase);
/// ```
/// {@category advapi32}
int RegDisableReflectionKey(int hBase) => _RegDisableReflectionKey(hBase);

final _RegDisableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase),
    int Function(int hBase)>('RegDisableReflectionKey');

/// Restores registry reflection for the specified disabled key. Restoring
/// reflection for a key does not affect reflection of any subkeys.
///
/// ```c
/// LONG RegEnableReflectionKey(
///   HKEY hBase);
/// ```
/// {@category advapi32}
int RegEnableReflectionKey(int hBase) => _RegEnableReflectionKey(hBase);

final _RegEnableReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase),
    int Function(int hBase)>('RegEnableReflectionKey');

/// Enumerates the subkeys of the specified open registry key. The function
/// retrieves the name of one subkey each time it is called.
///
/// ```c
/// LSTATUS RegEnumKeyW(
///   HKEY   hKey,
///   DWORD  dwIndex,
///   LPWSTR lpName,
///   DWORD  cchName);
/// ```
/// {@category advapi32}
int RegEnumKey(int hKey, int dwIndex, PWSTR? lpName, int cchName) =>
    _RegEnumKey(hKey, dwIndex, lpName ?? nullptr, cchName);

final _RegEnumKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Uint32 dwIndex, PWSTR lpName, Uint32 cchName),
    int Function(
        int hKey, int dwIndex, PWSTR lpName, int cchName)>('RegEnumKeyW');

/// Enumerates the subkeys of the specified open registry key. The function
/// retrieves information about one subkey each time it is called.
///
/// ```c
/// LSTATUS RegEnumKeyExW(
///   HKEY      hKey,
///   DWORD     dwIndex,
///   LPWSTR    lpName,
///   LPDWORD   lpcchName,
///   LPDWORD   lpReserved,
///   LPWSTR    lpClass,
///   LPDWORD   lpcchClass,
///   PFILETIME lpftLastWriteTime);
/// ```
/// {@category advapi32}
int RegEnumKeyEx(
        int hKey,
        int dwIndex,
        PWSTR? lpName,
        Pointer<Uint32> lpcchName,
        PWSTR? lpClass,
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
        PWSTR lpName,
        Pointer<Uint32> lpcchName,
        Pointer<Uint32> lpReserved,
        PWSTR lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<FILETIME> lpftLastWriteTime),
    int Function(
        int hKey,
        int dwIndex,
        PWSTR lpName,
        Pointer<Uint32> lpcchName,
        Pointer<Uint32> lpReserved,
        PWSTR lpClass,
        Pointer<Uint32> lpcchClass,
        Pointer<FILETIME> lpftLastWriteTime)>('RegEnumKeyExW');

/// Enumerates the values for the specified open registry key. The function
/// copies one indexed value name and data block for the key each time it is
/// called.
///
/// ```c
/// LSTATUS RegEnumValueW(
///   HKEY    hKey,
///   DWORD   dwIndex,
///   LPWSTR  lpValueName,
///   LPDWORD lpcchValueName,
///   LPDWORD lpReserved,
///   LPDWORD lpType,
///   LPBYTE  lpData,
///   LPDWORD lpcbData);
/// ```
/// {@category advapi32}
int RegEnumValue(
        int hKey,
        int dwIndex,
        PWSTR? lpValueName,
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
        PWSTR lpValueName,
        Pointer<Uint32> lpcchValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData),
    int Function(
        int hKey,
        int dwIndex,
        PWSTR lpValueName,
        Pointer<Uint32> lpcchValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData)>('RegEnumValueW');

/// Writes all the attributes of the specified open registry key into the
/// registry.
///
/// ```c
/// LSTATUS RegFlushKey(
///   HKEY hKey);
/// ```
/// {@category advapi32}
int RegFlushKey(int hKey) => _RegFlushKey(hKey);

final _RegFlushKey = _advapi32.lookupFunction<Uint32 Function(HKEY hKey),
    int Function(int hKey)>('RegFlushKey');

/// Retrieves the type and data for the specified registry value.
///
/// ```c
/// LSTATUS RegGetValueW(
///   HKEY    hkey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValue,
///   DWORD   dwFlags,
///   LPDWORD pdwType,
///   PVOID   pvData,
///   LPDWORD pcbData);
/// ```
/// {@category advapi32}
int RegGetValue(int hkey, PWSTR? lpSubKey, PWSTR? lpValue, int dwFlags,
        Pointer<Uint32>? pdwType, Pointer? pvData, Pointer<Uint32>? pcbData) =>
    _RegGetValue(hkey, lpSubKey ?? nullptr, lpValue ?? nullptr, dwFlags,
        pdwType ?? nullptr, pvData ?? nullptr, pcbData ?? nullptr);

final _RegGetValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hkey, PWSTR lpSubKey, PWSTR lpValue, Uint32 dwFlags,
        Pointer<Uint32> pdwType, Pointer pvData, Pointer<Uint32> pcbData),
    int Function(
        int hkey,
        PWSTR lpSubKey,
        PWSTR lpValue,
        int dwFlags,
        Pointer<Uint32> pdwType,
        Pointer pvData,
        Pointer<Uint32> pcbData)>('RegGetValueW');

/// Registers a function to handle service control requests.
///
/// ```c
/// SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerW(
///   [in] LPCWSTR            lpServiceName,
///   [in] LPHANDLER_FUNCTION lpHandlerProc
/// );
/// ```
/// {@category advapi32}
int RegisterServiceCtrlHandler(PWSTR lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc) =>
    _RegisterServiceCtrlHandler(lpServiceName, lpHandlerProc);

final _RegisterServiceCtrlHandler = _advapi32.lookupFunction<
        SERVICE_STATUS_HANDLE Function(PWSTR lpServiceName,
            Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc),
        int Function(PWSTR lpServiceName,
            Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc)>(
    'RegisterServiceCtrlHandlerW');

/// Registers a function to handle extended service control requests.
///
/// ```c
/// SERVICE_STATUS_HANDLE RegisterServiceCtrlHandlerExW(
///   [in]           LPCWSTR               lpServiceName,
///   [in]           LPHANDLER_FUNCTION_EX lpHandlerProc,
///   [in, optional] LPVOID                lpContext
/// );
/// ```
/// {@category advapi32}
int RegisterServiceCtrlHandlerEx(
        PWSTR lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer? lpContext) =>
    _RegisterServiceCtrlHandlerEx(
        lpServiceName, lpHandlerProc, lpContext ?? nullptr);

final _RegisterServiceCtrlHandlerEx = _advapi32.lookupFunction<
    SERVICE_STATUS_HANDLE Function(
        PWSTR lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer lpContext),
    int Function(
        PWSTR lpServiceName,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
        Pointer lpContext)>('RegisterServiceCtrlHandlerExW');

/// Loads the specified registry hive as an application hive.
///
/// ```c
/// LSTATUS RegLoadAppKeyW(
///   LPCWSTR lpFile,
///   PHKEY   phkResult,
///   REGSAM  samDesired,
///   DWORD   dwOptions,
///   DWORD   Reserved);
/// ```
/// {@category advapi32}
int RegLoadAppKey(
        PWSTR lpFile, Pointer<HKEY> phkResult, int samDesired, int dwOptions) =>
    _RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, 0);

final _RegLoadAppKey = _advapi32.lookupFunction<
    Uint32 Function(PWSTR lpFile, Pointer<HKEY> phkResult, Uint32 samDesired,
        Uint32 dwOptions, Uint32 reserved),
    int Function(PWSTR lpFile, Pointer<HKEY> phkResult, int samDesired,
        int dwOptions, int reserved)>('RegLoadAppKeyW');

/// Creates a subkey under HKEY_USERS or HKEY_LOCAL_MACHINE and loads the data
/// from the specified registry hive into that subkey.
///
/// ```c
/// LSTATUS RegLoadKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpFile);
/// ```
/// {@category advapi32}
int RegLoadKey(int hKey, PWSTR? lpSubKey, PWSTR lpFile) =>
    _RegLoadKey(hKey, lpSubKey ?? nullptr, lpFile);

final _RegLoadKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, PWSTR lpFile),
    int Function(int hKey, PWSTR lpSubKey, PWSTR lpFile)>('RegLoadKeyW');

/// Loads the specified string from the specified key and subkey.
///
/// ```c
/// LSTATUS RegLoadMUIStringW(
///   HKEY    hKey,
///   LPCWSTR pszValue,
///   LPWSTR  pszOutBuf,
///   DWORD   cbOutBuf,
///   LPDWORD pcbData,
///   DWORD   Flags,
///   LPCWSTR pszDirectory);
/// ```
/// {@category advapi32}
int RegLoadMUIString(int hKey, PWSTR? pszValue, PWSTR? pszOutBuf, int cbOutBuf,
        Pointer<Uint32>? pcbData, int flags, PWSTR? pszDirectory) =>
    _RegLoadMUIString(hKey, pszValue ?? nullptr, pszOutBuf ?? nullptr, cbOutBuf,
        pcbData ?? nullptr, flags, pszDirectory ?? nullptr);

final _RegLoadMUIString = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR pszValue, PWSTR pszOutBuf, Uint32 cbOutBuf,
        Pointer<Uint32> pcbData, Uint32 flags, PWSTR pszDirectory),
    int Function(
        int hKey,
        PWSTR pszValue,
        PWSTR pszOutBuf,
        int cbOutBuf,
        Pointer<Uint32> pcbData,
        int flags,
        PWSTR pszDirectory)>('RegLoadMUIStringW');

/// Notifies the caller about changes to the attributes or contents of a
/// specified registry key.
///
/// ```c
/// LSTATUS RegNotifyChangeKeyValue(
///   HKEY   hKey,
///   BOOL   bWatchSubtree,
///   DWORD  dwNotifyFilter,
///   HANDLE hEvent,
///   BOOL   fAsynchronous);
/// ```
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
/// ```c
/// LSTATUS RegOpenCurrentUser(
///   REGSAM samDesired,
///   PHKEY  phkResult);
/// ```
/// {@category advapi32}
int RegOpenCurrentUser(int samDesired, Pointer<HKEY> phkResult) =>
    _RegOpenCurrentUser(samDesired, phkResult);

final _RegOpenCurrentUser = _advapi32.lookupFunction<
    Uint32 Function(Uint32 samDesired, Pointer<HKEY> phkResult),
    int Function(
        int samDesired, Pointer<HKEY> phkResult)>('RegOpenCurrentUser');

/// Opens the specified registry key.
///
/// ```c
/// LSTATUS RegOpenKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   PHKEY   phkResult);
/// ```
/// {@category advapi32}
int RegOpenKey(int hKey, PWSTR? lpSubKey, Pointer<HKEY> phkResult) =>
    _RegOpenKey(hKey, lpSubKey ?? nullptr, phkResult);

final _RegOpenKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, Pointer<HKEY> phkResult),
    int Function(
        int hKey, PWSTR lpSubKey, Pointer<HKEY> phkResult)>('RegOpenKeyW');

/// Opens the specified registry key. Note that key names are not case
/// sensitive.
///
/// ```c
/// LSTATUS RegOpenKeyExW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   ulOptions,
///   REGSAM  samDesired,
///   PHKEY   phkResult
/// );
/// ```
/// {@category advapi32}
int RegOpenKeyEx(int hKey, PWSTR? lpSubKey, int? ulOptions, int samDesired,
        Pointer<HKEY> phkResult) =>
    _RegOpenKeyEx(
        hKey, lpSubKey ?? nullptr, ulOptions ?? 0, samDesired, phkResult);

final _RegOpenKeyEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, Uint32 ulOptions,
        Uint32 samDesired, Pointer<HKEY> phkResult),
    int Function(int hKey, PWSTR lpSubKey, int ulOptions, int samDesired,
        Pointer<HKEY> phkResult)>('RegOpenKeyExW');

/// Opens the specified registry key and associates it with a transaction. Note
/// that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegOpenKeyTransactedW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   ulOptions,
///   REGSAM  samDesired,
///   PHKEY   phkResult,
///   HANDLE  hTransaction,
///   PVOID   pExtendedParemeter);
/// ```
/// {@category advapi32}
int RegOpenKeyTransacted(int hKey, PWSTR? lpSubKey, int? ulOptions,
        int samDesired, Pointer<HKEY> phkResult, int hTransaction) =>
    _RegOpenKeyTransacted(hKey, lpSubKey ?? nullptr, ulOptions ?? 0, samDesired,
        phkResult, hTransaction, nullptr);

final _RegOpenKeyTransacted = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        PWSTR lpSubKey,
        Uint32 ulOptions,
        Uint32 samDesired,
        Pointer<HKEY> phkResult,
        HANDLE hTransaction,
        Pointer pExtendedParemeter),
    int Function(
        int hKey,
        PWSTR lpSubKey,
        int ulOptions,
        int samDesired,
        Pointer<HKEY> phkResult,
        int hTransaction,
        Pointer pExtendedParemeter)>('RegOpenKeyTransactedW');

/// Retrieves a handle to the HKEY_CLASSES_ROOT key for a specified user. The
/// user is identified by an access token.
///
/// ```c
/// LSTATUS RegOpenUserClassesRoot(
///   HANDLE hToken,
///   DWORD  dwOptions,
///   REGSAM samDesired,
///   PHKEY  phkResult);
/// ```
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
/// ```c
/// LSTATUS RegOverridePredefKey(
///   HKEY hKey,
///   HKEY hNewHKey);
/// ```
/// {@category advapi32}
int RegOverridePredefKey(int hKey, int? hNewHKey) =>
    _RegOverridePredefKey(hKey, hNewHKey ?? 0);

final _RegOverridePredefKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, HKEY hNewHKey),
    int Function(int hKey, int hNewHKey)>('RegOverridePredefKey');

/// Retrieves information about the specified registry key.
///
/// ```c
/// LSTATUS RegQueryInfoKeyW(
///   HKEY      hKey,
///   LPWSTR    lpClass,
///   LPDWORD   lpcchClass,
///   LPDWORD   lpReserved,
///   LPDWORD   lpcSubKeys,
///   LPDWORD   lpcbMaxSubKeyLen,
///   LPDWORD   lpcbMaxClassLen,
///   LPDWORD   lpcValues,
///   LPDWORD   lpcbMaxValueNameLen,
///   LPDWORD   lpcbMaxValueLen,
///   LPDWORD   lpcbSecurityDescriptor,
///   PFILETIME lpftLastWriteTime);
/// ```
/// {@category advapi32}
int RegQueryInfoKey(
        int hKey,
        PWSTR? lpClass,
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
        PWSTR lpClass,
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
        PWSTR lpClass,
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
/// ```c
/// LSTATUS RegQueryMultipleValuesW(
///   HKEY     hKey,
///   PVALENTW val_list,
///   DWORD    num_vals,
///   LPWSTR   lpValueBuf,
///   LPDWORD  ldwTotsize);
/// ```
/// {@category advapi32}
int RegQueryMultipleValues(int hKey, Pointer<VALENT> val_list, int num_vals,
        PWSTR? lpValueBuf, Pointer<Uint32>? ldwTotsize) =>
    _RegQueryMultipleValues(
        hKey, val_list, num_vals, lpValueBuf ?? nullptr, ldwTotsize ?? nullptr);

final _RegQueryMultipleValues = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, Pointer<VALENT> val_list, Uint32 num_vals,
        PWSTR lpValueBuf, Pointer<Uint32> ldwTotsize),
    int Function(
        int hKey,
        Pointer<VALENT> val_list,
        int num_vals,
        PWSTR lpValueBuf,
        Pointer<Uint32> ldwTotsize)>('RegQueryMultipleValuesW');

/// Determines whether reflection has been disabled or enabled for the specified
/// key.
///
/// ```c
/// LONG RegQueryReflectionKey(
///   HKEY hBase,
///   BOOL *bIsReflectionDisabled);
/// ```
/// {@category advapi32}
int RegQueryReflectionKey(int hBase, Pointer<BOOL> bIsReflectionDisabled) =>
    _RegQueryReflectionKey(hBase, bIsReflectionDisabled);

final _RegQueryReflectionKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hBase, Pointer<BOOL> bIsReflectionDisabled),
    int Function(int hBase,
        Pointer<BOOL> bIsReflectionDisabled)>('RegQueryReflectionKey');

/// Retrieves the data associated with the default or unnamed value of a
/// specified registry key. The data must be a null-terminated string.
///
/// ```c
/// LSTATUS RegQueryValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPWSTR  lpData,
///   PLONG   lpcbData);
/// ```
/// {@category advapi32}
int RegQueryValue(
        int hKey, PWSTR? lpSubKey, PWSTR? lpData, Pointer<Int32>? lpcbData) =>
    _RegQueryValue(
        hKey, lpSubKey ?? nullptr, lpData ?? nullptr, lpcbData ?? nullptr);

final _RegQueryValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, PWSTR lpSubKey, PWSTR lpData, Pointer<Int32> lpcbData),
    int Function(int hKey, PWSTR lpSubKey, PWSTR lpData,
        Pointer<Int32> lpcbData)>('RegQueryValueW');

/// Retrieves the type and data for the specified value name associated with an
/// open registry key. To ensure that any string values (REG_SZ, REG_MULTI_SZ,
/// and REG_EXPAND_SZ) returned are null-terminated, use the RegGetValue
/// function.
///
/// ```c
/// LSTATUS RegQueryValueExW(
///   HKEY    hKey,
///   LPCWSTR lpValueName,
///   LPDWORD lpReserved,
///   LPDWORD lpType,
///   LPBYTE  lpData,
///   LPDWORD lpcbData
/// );
/// ```
/// {@category advapi32}
int RegQueryValueEx(int hKey, PWSTR? lpValueName, Pointer<Uint32>? lpType,
        Pointer<Uint8>? lpData, Pointer<Uint32>? lpcbData) =>
    _RegQueryValueEx(hKey, lpValueName ?? nullptr, nullptr, lpType ?? nullptr,
        lpData ?? nullptr, lpcbData ?? nullptr);

final _RegQueryValueEx = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey,
        PWSTR lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData),
    int Function(
        int hKey,
        PWSTR lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData)>('RegQueryValueExW');

/// Changes the name of the specified registry key.
///
/// ```c
/// LSTATUS RegRenameKey(
///   HKEY    hKey,
///   LPCWSTR lpSubKeyName,
///   LPCWSTR lpNewKeyName
/// );
/// ```
/// {@category advapi32}
int RegRenameKey(int hKey, PWSTR? lpSubKeyName, PWSTR lpNewKeyName) =>
    _RegRenameKey(hKey, lpSubKeyName ?? nullptr, lpNewKeyName);

final _RegRenameKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKeyName, PWSTR lpNewKeyName),
    int Function(
        int hKey, PWSTR lpSubKeyName, PWSTR lpNewKeyName)>('RegRenameKey');

/// Replaces the file backing a registry key and all its subkeys with another
/// file, so that when the system is next started, the key and subkeys will have
/// the values stored in the new file.
///
/// ```c
/// LSTATUS RegReplaceKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpNewFile,
///   LPCWSTR lpOldFile);
/// ```
/// {@category advapi32}
int RegReplaceKey(
        int hKey, PWSTR? lpSubKey, PWSTR lpNewFile, PWSTR lpOldFile) =>
    _RegReplaceKey(hKey, lpSubKey ?? nullptr, lpNewFile, lpOldFile);

final _RegReplaceKey = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, PWSTR lpSubKey, PWSTR lpNewFile, PWSTR lpOldFile),
    int Function(int hKey, PWSTR lpSubKey, PWSTR lpNewFile,
        PWSTR lpOldFile)>('RegReplaceKeyW');

/// Reads the registry information in a specified file and copies it over the
/// specified key. This registry information may be in the form of a key and
/// multiple levels of subkeys.
///
/// ```c
/// LSTATUS RegRestoreKeyW(
///   HKEY    hKey,
///   LPCWSTR lpFile,
///   DWORD   dwFlags);
/// ```
/// {@category advapi32}
int RegRestoreKey(int hKey, PWSTR lpFile, int dwFlags) =>
    _RegRestoreKey(hKey, lpFile, dwFlags);

final _RegRestoreKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpFile, Uint32 dwFlags),
    int Function(int hKey, PWSTR lpFile, int dwFlags)>('RegRestoreKeyW');

/// Saves the specified key and all of its subkeys and values to a new file, in
/// the standard format.
///
/// ```c
/// LSTATUS RegSaveKeyW(
///   HKEY                        hKey,
///   LPCWSTR                     lpFile,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes);
/// ```
/// {@category advapi32}
int RegSaveKey(int hKey, PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes) =>
    _RegSaveKey(hKey, lpFile, lpSecurityAttributes ?? nullptr);

final _RegSaveKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
    int Function(int hKey, PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>('RegSaveKeyW');

/// Saves the specified key and all of its subkeys and values to a registry
/// file, in the specified format.
///
/// ```c
/// LSTATUS RegSaveKeyExW(
///   HKEY                        hKey,
///   LPCWSTR                     lpFile,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   DWORD                       Flags);
/// ```
/// {@category advapi32}
int RegSaveKeyEx(int hKey, PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes, int flags) =>
    _RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes ?? nullptr, flags);

final _RegSaveKeyEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes, Uint32 flags),
    int Function(
        int hKey,
        PWSTR lpFile,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        int flags)>('RegSaveKeyExW');

/// Sets the data for the specified value in the specified registry key and
/// subkey.
///
/// ```c
/// LSTATUS RegSetKeyValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValueName,
///   DWORD   dwType,
///   LPCVOID lpData,
///   DWORD   cbData);
/// ```
/// {@category advapi32}
int RegSetKeyValue(int hKey, PWSTR? lpSubKey, PWSTR? lpValueName, int dwType,
        Pointer? lpData, int cbData) =>
    _RegSetKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr, dwType,
        lpData ?? nullptr, cbData);

final _RegSetKeyValue = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey, PWSTR lpValueName, Uint32 dwType,
        Pointer lpData, Uint32 cbData),
    int Function(int hKey, PWSTR lpSubKey, PWSTR lpValueName, int dwType,
        Pointer lpData, int cbData)>('RegSetKeyValueW');

/// Sets the data for the default or unnamed value of a specified registry key.
/// The data must be a text string.
///
/// ```c
/// LSTATUS RegSetValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   dwType,
///   LPCWSTR lpData,
///   DWORD   cbData);
/// ```
/// {@category advapi32}
int RegSetValue(
        int hKey, PWSTR? lpSubKey, int dwType, PWSTR? lpData, int cbData) =>
    _RegSetValue(hKey, lpSubKey ?? nullptr, dwType, lpData ?? nullptr, cbData);

final _RegSetValue = _advapi32.lookupFunction<
    Uint32 Function(
        HKEY hKey, PWSTR lpSubKey, Uint32 dwType, PWSTR lpData, Uint32 cbData),
    int Function(int hKey, PWSTR lpSubKey, int dwType, PWSTR lpData,
        int cbData)>('RegSetValueW');

/// Sets the data and type of a specified value under a registry key.
///
/// ```c
/// LSTATUS RegSetValueExW(
///   HKEY       hKey,
///   LPCWSTR    lpValueName,
///   DWORD      Reserved,
///   DWORD      dwType,
///   const BYTE *lpData,
///   DWORD      cbData
/// );
/// ```
/// {@category advapi32}
int RegSetValueEx(int hKey, PWSTR? lpValueName, int dwType,
        Pointer<Uint8>? lpData, int cbData) =>
    _RegSetValueEx(
        hKey, lpValueName ?? nullptr, 0, dwType, lpData ?? nullptr, cbData);

final _RegSetValueEx = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpValueName, Uint32 reserved,
        Uint32 dwType, Pointer<Uint8> lpData, Uint32 cbData),
    int Function(int hKey, PWSTR lpValueName, int reserved, int dwType,
        Pointer<Uint8> lpData, int cbData)>('RegSetValueExW');

/// Unloads the specified registry key and its subkeys from the registry.
///
/// ```c
/// LSTATUS RegUnLoadKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegUnLoadKey(int hKey, PWSTR? lpSubKey) =>
    _RegUnLoadKey(hKey, lpSubKey ?? nullptr);

final _RegUnLoadKey = _advapi32.lookupFunction<
    Uint32 Function(HKEY hKey, PWSTR lpSubKey),
    int Function(int hKey, PWSTR lpSubKey)>('RegUnLoadKeyW');

/// The SetServiceObjectSecurity function sets the security descriptor of a
/// service object.
///
/// ```c
/// BOOL SetServiceObjectSecurity(
///   [in] SC_HANDLE            hService,
///   [in] SECURITY_INFORMATION dwSecurityInformation,
///   [in] PSECURITY_DESCRIPTOR lpSecurityDescriptor
/// );
/// ```
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
/// ```c
/// BOOL SetServiceStatus(
///   [in] SERVICE_STATUS_HANDLE hServiceStatus,
///   [in] LPSERVICE_STATUS      lpServiceStatus
/// );
/// ```
/// {@category advapi32}
int SetServiceStatus(
        int hServiceStatus, Pointer<SERVICE_STATUS> lpServiceStatus) =>
    _SetServiceStatus(hServiceStatus, lpServiceStatus);

final _SetServiceStatus = _advapi32.lookupFunction<
    BOOL Function(SERVICE_STATUS_HANDLE hServiceStatus,
        Pointer<SERVICE_STATUS> lpServiceStatus),
    int Function(int hServiceStatus,
        Pointer<SERVICE_STATUS> lpServiceStatus)>('SetServiceStatus');

/// The SetThreadToken function assigns an impersonation token to a thread. The
/// function can also cause a thread to stop using an impersonation token.
///
/// ```c
/// BOOL SetThreadToken(
///   PHANDLE Thread,
///   HANDLE  Token
/// );
/// ```
/// {@category advapi32}
int SetThreadToken(Pointer<HANDLE>? thread, int? token) =>
    _SetThreadToken(thread ?? nullptr, token ?? 0);

final _SetThreadToken = _advapi32.lookupFunction<
    BOOL Function(Pointer<HANDLE> thread, HANDLE token),
    int Function(Pointer<HANDLE> thread, int token)>('SetThreadToken');

/// Starts a service.
///
/// ```c
/// BOOL StartServiceW(
///   [in]           SC_HANDLE hService,
///   [in]           DWORD     dwNumServiceArgs,
///   [in, optional] LPCWSTR   *lpServiceArgVectors
/// );
/// ```
/// {@category advapi32}
int StartService(int hService, int dwNumServiceArgs,
        Pointer<PWSTR>? lpServiceArgVectors) =>
    _StartService(hService, dwNumServiceArgs, lpServiceArgVectors ?? nullptr);

final _StartService = _advapi32.lookupFunction<
    BOOL Function(SC_HANDLE hService, Uint32 dwNumServiceArgs,
        Pointer<PWSTR> lpServiceArgVectors),
    int Function(int hService, int dwNumServiceArgs,
        Pointer<PWSTR> lpServiceArgVectors)>('StartServiceW');

/// Connects the main thread of a service process to the service control
/// manager, which causes the thread to be the service control dispatcher thread
/// for the calling process.
///
/// ```c
/// BOOL StartServiceCtrlDispatcherW(
///   [in] const SERVICE_TABLE_ENTRYW *lpServiceStartTable
/// );
/// ```
/// {@category advapi32}
int StartServiceCtrlDispatcher(
        Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable) =>
    _StartServiceCtrlDispatcher(lpServiceStartTable);

final _StartServiceCtrlDispatcher = _advapi32.lookupFunction<
        BOOL Function(Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable),
        int Function(Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable)>(
    'StartServiceCtrlDispatcherW');
