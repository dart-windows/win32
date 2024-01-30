// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'custom_attributes_mixin.dart';
import 'field.dart';
import 'string.dart';

extension TypeDefHelpers on TypeDef {
  /// Returns the name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `Windows.Win32.UI.Shell.IShellLink` instead of
  /// `Windows.Win32.UI.Shell.IShellLinkW`).
  String get nameWithoutEncoding {
    var name = this.name;

    if (isNested) {
      final nestedTypes = enclosingClass!.fields
          .where((f) => f.isNested || f.isNestedArray)
          .map((f) => f.isNestedArray
              ? f.typeIdentifier.typeArg!.type!
              : f.typeIdentifier.type!)
          .toList();
      final index = nestedTypes.indexWhere((type) => type.name == name);
      if (index == -1) {
        throw StateError(
            'Could not find the index of $this in ${enclosingClass!.fields}');
      }

      name = '${enclosingClass!.safeTypename}_$index';
    }

    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some TypeDefs have a Unicode suffix (`W`) without corresponding ANSI
    // variants. As a result, these TypeDefs do not possess the
    // `UnicodeAttribute` (e.g., `IStillImageW`).
    if (name.endsWith('W') && _unicodeSuffixedTypeDefs.contains(name)) {
      return name.stripAnsiUnicodeSuffix();
    }

    return name;
  }

  /// Returns the topmost [TypeDef] in the nested tree.
  TypeDef get rootType {
    var rootType = this;

    while (rootType.enclosingClass != null) {
      rootType = rootType.enclosingClass!;
    }

    return rootType;
  }

  /// Returns a safe Dart filename for code generation, derived from the
  /// [safeTypename].
  ///
  /// The format is `{safeTypename in lowercase}.g.dart` (e.g.,
  /// `iunknown.g.dart`).
  String get safeFilename => '${safeTypename.toLowerCase()}.g.dart';

  /// Returns a safe Dart identifier based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeIdentifier` -> `SomeIdentifier`).
  String get safeIdentifier => nameWithoutEncoding.lastComponent.safeIdentifier;

  /// Returns a safe Dart typename based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeType` -> `SomeType`).
  String get safeTypename => nameWithoutEncoding.lastComponent.safeTypename;
}

/// The set of Unicode suffixed (`W`) typeDefs without corresponding ANSI
/// variants.
///
/// These typeDefs lack the `UnicodeAttribute` and serve as a reference to
/// determine whether Unicode suffixes should be stripped from a given typeDef
/// name.
const _unicodeSuffixedTypeDefs = <String>{
  'Windows.Win32.Devices.Fax.IStillImageW',
  'Windows.Win32.Devices.Fax.PFAXREGISTERROUTINGEXTENSIONW',
  'Windows.Win32.Devices.Fax.PFAXREGISTERSERVICEPROVIDERW',
  'Windows.Win32.Devices.Fax.PFAXUNREGISTERSERVICEPROVIDERW',
  'Windows.Win32.Devices.Fax.PFAX_ROUTING_INSTALLATION_CALLBACKW',
  'Windows.Win32.Devices.Fax.STI_DEVICE_INFORMATIONW',
  'Windows.Win32.Devices.Fax.STI_WIA_DEVICE_INFORMATIONW',
  'Windows.Win32.Devices.Fax._ERROR_INFOW',
  'Windows.Win32.Graphics.Gdi.EMREXTCREATEFONTINDIRECTW',
  'Windows.Win32.Media.Audio.tACMFORMATDETAILSW',
  'Windows.Win32.NetworkManagement.Dns.DNS_RECORD_OPTW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_CURSORS_3W',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_CURSOR_3W',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_KCC_DSA_FAILURESW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_KCC_DSA_FAILUREW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_NEIGHBORSW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_NEIGHBORW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_OPW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_PENDING_OPSW',
  'Windows.Win32.Networking.ActiveDirectory.DS_REPL_QUEUE_STATISTICSW',
  'Windows.Win32.Security.Authentication.Identity.ENCRYPTED_CREDENTIALW',
  'Windows.Win32.Security.Authentication.Identity.SecPkgCredentials_KdcProxySettingsW',
  'Windows.Win32.Security.Cryptography.Certificates.CSEDB_RSTMAPW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVBACKUPGETBACKUPLOGSW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVBACKUPGETDATABASENAMESW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVBACKUPGETDYNAMICFILELISTW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVBACKUPOPENFILEW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVBACKUPPREPAREW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVISSERVERONLINEW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVRESTOREGETDATABASELOCATIONSW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVRESTOREPREPAREW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVRESTOREREGISTERW',
  'Windows.Win32.Security.Cryptography.Certificates.FNCERTSRVSERVERCONTROLW',
  'Windows.Win32.Storage.Jet.JET_ERRINFOBASIC_W',
  'Windows.Win32.System.Diagnostics.Etw.WMIREGGUIDW',
  'Windows.Win32.System.Diagnostics.Etw.WMIREGINFOW',
  'Windows.Win32.System.Iis.AsyncIMSAdminBaseSinkW',
  'Windows.Win32.System.Iis.IMSAdminBase2W',
  'Windows.Win32.System.Iis.IMSAdminBase3W',
  'Windows.Win32.System.Iis.IMSAdminBaseSinkW',
  'Windows.Win32.System.Iis.IMSAdminBaseW',
  'Windows.Win32.System.Iis.IMSImpExpHelpW',
  'Windows.Win32.System.Iis.MD_CHANGE_OBJECT_W',
  'Windows.Win32.System.WindowsProgramming.PWINSTATIONQUERYINFORMATIONW',
  'Windows.Win32.System.WindowsProgramming.WINSTATIONINFORMATIONW',
  'Windows.Win32.UI.Shell.PFNCANSHAREFOLDERW',
  'Windows.Win32.UI.Shell.PFNSHOWSHAREFOLDERUIW',
  'Windows.Win32.UI.Shell.SHCREATEPROCESSINFOW',
  'Windows.Win32.UI.WindowsAndMessaging.PREGISTERCLASSNAMEW',
};
