// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../projection/type.dart';
import 'custom_attributes_mixin.dart';
import 'string.dart';

extension MethodHelpers on Method {
  /// Checks whether the method can be projected as a getter based on certain
  /// conditions.
  bool get canBeProjectedAsGetter {
    // Check if the method is a get property and has exactly one parameter
    if (isGetProperty && parameters.length == 1) {
      // Find the corresponding setter, if available
      final setter = parent.methods
          .where((m) => m.name == name.replaceFirst('get_', 'put_'))
          .firstOrNull;

      // If no corresponding setter is found, the method can be projected as a
      // getter.
      if (setter == null) return true;

      final getterProjection = TypeProjection(parameters[0].typeIdentifier);
      final setterProjection =
          TypeProjection(setter.parameters.first.typeIdentifier);
      final getterTypeArgProjection = getterProjection.dereference();

      if (!getterTypeArgProjection.isDartPrimitive) {
        return getterProjection.dartType == setterProjection.dartType;
      }

      return getterTypeArgProjection.dartType == setterProjection.dartType;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a getter.
    return false;
  }

  /// Checks whether the method can be projected as a setter based on certain
  /// conditions.
  bool get canBeProjectedAsSetter {
    // Check if the method is a set property and has exactly one parameter
    if (isSetProperty && parameters.length == 1) {
      // Find the corresponding getter, if available
      final getter = parent.methods
          .where((m) => m.name == name.replaceFirst('put_', 'get_'))
          .firstOrNull;

      // If no corresponding getter is found, the method can be projected as a
      // setter.
      if (getter == null) return true;

      // If a getter is found, check if it can be projected as a getter
      return getter.canBeProjectedAsGetter;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a setter.
    return false;
  }

  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `GetClassName` instead of `GetClassNameW`).
  String get nameWithoutEncoding {
    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some Methods have a Unicode suffix (`W`) without corresponding ANSI
    // variants. As a result, these methods do not possess the
    // `UnicodeAttribute` (e.g., `CommandLineToArgvW`).
    if (name.endsWith('W') && _unicodeSuffixedMethods.contains(name)) {
      return name.stripAnsiUnicodeSuffix();
    }

    return name;
  }

  /// Returns a unique name for the method.
  ///
  /// Dart doesn't allow overloaded methods, so we have to rename methods that
  /// are duplicated.
  String get uniqueName {
    // Check whether multiple methods exist with the same name. We also need to
    // check up the interface chain, since otherwise overloaded methods may be
    // missed. For example, IDWriteFactory2 contains methods that overload those
    // in IDWriteFactory1.
    final overloads = parent.methods.where((m) => m.name == name).toList();
    var interfaceTypeDef = parent;

    // perf optimization to save work on the most common case of IUnknown
    while (interfaceTypeDef.interfaces.isNotEmpty &&
        !(interfaceTypeDef.interfaces.first.name ==
            'Windows.Win32.System.Com.IUnknown')) {
      interfaceTypeDef = interfaceTypeDef.interfaces.first;
      overloads.addAll(interfaceTypeDef.methods.where((m) => m.name == name));
    }

    // If so, and there is more than one entry with the same name, add a suffix
    // to all but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toList();
      final overloadIndex =
          reversedOverloads.indexWhere((m) => m.token == token);
      if (overloadIndex > 0) return '${name.safeIdentifier}_$overloadIndex';
    }

    // Windows.Win32.System.ApplicationInstallationAndServicing.IPMTaskInfo
    // interface includes a .get_RuntimeType() method. We add `_` suffix to it
    // avoid name conflicts with `Object.runtimeType`.
    if (name == 'get_RuntimeType') return 'get_RuntimeType_';

    // Windows.Win32.UI.TabletPC.IInkStrokes interface includes a .ToString()
    // method. We replace this to avoid name conflicts with `Object.toString`.
    if (name == 'ToString') return 'ToUtf16String';

    // Interfaces in the Windows.Win32.Web.MsHtml namespace includes .toString()
    // methods. We replace these to avoid name conflicts with `Object.toString`.
    if (name == 'toString') return 'toUtf16String';

    // Otherwise the original name is fine.
    return name;
  }
}

/// The set of Unicode suffixed (`W`) methods without corresponding ANSI
/// variants.
///
/// These methods lack the `UnicodeAttribute` and serve as a reference to
/// determine whether Unicode suffixes should be stripped from a given method
/// name.
const _unicodeSuffixedMethods = <String>{
  'BackupPerfRegistryToFileW',
  'CM_Get_Class_PropertyW',
  'CM_Get_Class_Property_ExW',
  'CM_Get_DevNode_PropertyW',
  'CM_Get_DevNode_Property_ExW',
  'CM_Get_Device_Interface_PropertyW',
  'CM_Get_Device_Interface_Property_ExW',
  'CM_Get_Device_Interface_Property_KeysW',
  'CM_Get_Device_Interface_Property_Keys_ExW',
  'CM_Set_Class_PropertyW',
  'CM_Set_Class_Property_ExW',
  'CM_Set_DevNode_PropertyW',
  'CM_Set_DevNode_Property_ExW',
  'CM_Set_Device_Interface_PropertyW',
  'CM_Set_Device_Interface_Property_ExW',
  'CertSrvBackupGetBackupLogsW',
  'CertSrvBackupGetDatabaseNamesW',
  'CertSrvBackupGetDynamicFileListW',
  'CertSrvBackupOpenFileW',
  'CertSrvBackupPrepareW',
  'CertSrvIsServerOnlineW',
  'CertSrvRestoreGetDatabaseLocationsW',
  'CertSrvRestorePrepareW',
  'CertSrvRestoreRegisterW',
  'CertSrvServerControlW',
  'CommandLineToArgvW',
  'CopyFileFromAppW',
  'CreateDirectoryFromAppW',
  'CreateFile2FromAppW',
  'CreateFileFromAppW',
  'CreateProcessWithLogonW',
  'CreateProcessWithTokenW',
  'CreateUrlCacheEntryExW',
  'CredUIReadSSOCredW',
  'CredUIStoreSSOCredW',
  'DeleteFileFromAppW',
  'DnsExtractRecordsFromMessage_W',
  'DnsHostnameToComputerNameExW',
  'DnsWriteQuestionToBuffer_W',
  'DsCrackSpn3W',
  'DsCrackSpn4W',
  'DsGetDcCloseW',
  'DsGetForestTrustInformationW',
  'DsGetRdnW',
  'DsMergeForestTrustInformationW',
  'DsReplicaGetInfo2W',
  'DsReplicaGetInfoW',
  'FaxRegisterRoutingExtensionW',
  'FaxRegisterServiceProviderW',
  'FaxUnregisterServiceProviderW',
  'FindFirstFileExFromAppW',
  'FindFirstFileNameTransactedW',
  'FindFirstFileNameW',
  'FindFirstStreamTransactedW',
  'FindFirstStreamW',
  'FindNextFileNameW',
  'FindNextStreamW',
  'FreeAddrInfoW',
  'GetAddrInfoW',
  'GetFileAttributesExFromAppW',
  'GetHostNameW',
  'GetNameInfoW',
  'GetNodeCloudTypeDW',
  'GetRegistryValueWithFallbackW',
  'GetVolumeInformationByHandleW',
  'I_RpcBindingToStaticStringBindingW',
  'InetNtopW',
  'InetPtonW',
  'JetGetErrorInfoW',
  'MoveFileFromAppW',
  'PrivacyGetZonePreferenceW',
  'PrivacySetZonePreferenceW',
  'QueryActCtxSettingsW',
  'QueryActCtxW',
  'ReadDirectoryChangesExW',
  'ReadDirectoryChangesW',
  'RemoveDirectoryFromAppW',
  'ReplaceFileFromAppW',
  'RestorePerfRegistryFromFileW',
  'RunDll32ShimW',
  'SHCreateProcessAsUserW',
  'SHRegGetIntW',
  'SetComputerNameEx2W',
  'SetContextAttributesW',
  'SetFileAttributesFromAppW',
  'SetupDiGetClassPropertyExW',
  'SetupDiGetClassPropertyKeysExW',
  'SetupDiGetClassPropertyW',
  'SetupDiGetDeviceInterfacePropertyW',
  'SetupDiGetDevicePropertyW',
  'SetupDiSetClassPropertyExW',
  'SetupDiSetClassPropertyW',
  'SetupDiSetDeviceInterfacePropertyW',
  'SetupDiSetDevicePropertyW',
  'StiCreateInstanceW',
  'StrCatChainW',
  'StrCatW',
  'StrChrNIW',
  'StrChrNW',
  'StrCmpIW',
  'StrCmpLogicalW',
  'StrCmpW',
  'StrCpyNW',
  'StrCpyW',
  'StrStrNIW',
  'StrStrNW',
  'Str_SetPtrW',
  'UrlFixupW',
  'XcvDataW',
  'uaw_lstrcmpW',
  'uaw_lstrcmpiW',
  'uaw_lstrlenW',
};
