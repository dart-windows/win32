// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../projection/type.dart';
import 'custom_attributes_mixin.dart';
import 'string.dart';

extension MethodHelpers on Method {
  /// Whether the method can be projected as a Dart getter.
  bool get canBeProjectedAsGetter {
    // Check if the method is a get property and has exactly one parameter.
    if (isGetProperty && parameters.length == 1) {
      // Find the corresponding set property, if available.
      final setProperty = parent.methods
          .where((m) => m.name == name.replaceFirst('get_', 'put_'))
          .firstOrNull;

      // If no corresponding set property is found, the method can be projected
      // as a Dart getter.
      if (setProperty == null) return true;

      final getterProjection = TypeProjection(parameters[0].typeIdentifier);
      final setterProjection =
          TypeProjection(setProperty.parameters.first.typeIdentifier);
      final getterTypeArgProjection = getterProjection.dereference();

      if (!getterTypeArgProjection.isDartPrimitive) {
        return getterProjection.dartType == setterProjection.dartType;
      }

      return getterTypeArgProjection.dartType == setterProjection.dartType;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a Dart getter.
    return false;
  }

  /// Whether the method can be projected as a Dart setter.
  bool get canBeProjectedAsSetter {
    // Check if the method is a set property and has exactly one parameter.
    if (isSetProperty && parameters.length == 1) {
      // Find the corresponding get property, if available.
      final getProperty = parent.methods
          .where((m) => m.name == name.replaceFirst('put_', 'get_'))
          .firstOrNull;

      // If no corresponding get property is found, the method can be projected
      // as a Dart setter.
      if (getProperty == null) return true;

      // If a get property is found, check if it can be projected as a Dart
      // getter.
      return getProperty.canBeProjectedAsGetter;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a Dart setter.
    return false;
  }

  /// The method name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `GetClassName` instead of `GetClassNameW`).
  String get nameWithoutEncoding {
    // If the method is attributed with `AnsiAttribute` or `UnicodeAttribute`,
    // return the name with suffix stripped.
    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some methods have a Unicode suffix (`W`) without corresponding ANSI
    // variants. As a result, these methods do not possess the
    // `UnicodeAttribute` (e.g., `CommandLineToArgvW`).
    if (name.endsWith('W') && _unicodeSuffixedMethods.contains(name)) {
      return name.stripAnsiUnicodeSuffix();
    }

    // If the method name is neither ANSI, Unicode, nor a known Unicode suffixed
    // method, return the original name unchanged.
    return name;
  }

  /// A unique name for the method to handle Dart's lack of support for
  /// overloaded methods.
  String get uniqueName {
    // Check whether multiple methods exist with the same name.
    final overloads = parent.methods.where((m) => m.name == name).toList();
    var interfaceTypeDef = parent;

    // We also need to check up the interface chain, since otherwise overloaded
    // methods may be missed. For example, `IDWriteFactory2` contains methods
    // that overload those in `IDWriteFactory1`.

    // Perf optimization to save work on the most common case of IUnknown.
    while (interfaceTypeDef.interfaces.isNotEmpty &&
        !(interfaceTypeDef.interfaces.first.name ==
            'Windows.Win32.System.Com.IUnknown')) {
      interfaceTypeDef = interfaceTypeDef.interfaces.first;
      overloads.addAll(interfaceTypeDef.methods.where((m) => m.name == name));
    }

    // If there is more than one entry with the same name, add a suffix to all
    //but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toList();
      final overloadIndex =
          reversedOverloads.indexWhere((m) => m.token == token);
      if (overloadIndex > 0) return '${name.safeIdentifier}_$overloadIndex';
    }

    // Handle special cases:

    // Special case for the `get_RuntimeType` method in the `IPMTaskInfo`
    // interface. To avoid name conflicts with `Object.runtimeType`, underscore
    // suffix is added.
    if (name == 'get_RuntimeType') return 'get_RuntimeType_';

    // Special case for the `ToString` method in the `IInkStrokes` interface.
    // To avoid name conflicts with `Object.toString`, the method name is
    // replaced with `ToUtf16String`.
    if (name == 'ToString') return 'ToUtf16String';

    // Special case for methods named `toString` in interfaces within the
    // `Windows.Win32.Web.MsHtml` namespace. To avoid name conflicts with
    // `Object.toString`, the method name is replaced with `toUtf16String`.
    if (name == 'toString') return 'toUtf16String';

    // Otherwise, the original name is fine.
    return name;
  }
}

/// Set of Unicode suffixed (`W`) methods without corresponding ANSI variants.
///
/// This set serves as a reference to identify methods that have Unicode
/// suffixes (`W`) but lack corresponding ANSI variants. These methods typically
/// do not possess the `UnicodeAttribute` and used to determine whether a given
/// method name should have its Unicode suffix stripped.
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
