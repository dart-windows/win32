// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of common enums used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_types, constant_identifier_names

/// {@category enum}
extension type const SYSTEM_INFORMATION_CLASS(int _) implements int {
  static const SystemBasicInformation = SYSTEM_INFORMATION_CLASS(0x00000000);
  static const SystemPerformanceInformation =
      SYSTEM_INFORMATION_CLASS(0x00000002);
  static const SystemTimeOfDayInformation =
      SYSTEM_INFORMATION_CLASS(0x00000003);
  static const SystemProcessInformation = SYSTEM_INFORMATION_CLASS(0x00000005);
  static const SystemProcessorPerformanceInformation =
      SYSTEM_INFORMATION_CLASS(0x00000008);
  static const SystemInterruptInformation =
      SYSTEM_INFORMATION_CLASS(0x00000017);
  static const SystemExceptionInformation =
      SYSTEM_INFORMATION_CLASS(0x00000021);
  static const SystemRegistryQuotaInformation =
      SYSTEM_INFORMATION_CLASS(0x00000025);
  static const SystemLookasideInformation =
      SYSTEM_INFORMATION_CLASS(0x0000002d);
  static const SystemCodeIntegrityInformation =
      SYSTEM_INFORMATION_CLASS(0x00000067);
  static const SystemPolicyInformation = SYSTEM_INFORMATION_CLASS(0x00000086);
}

/// {@category enum}
extension type const ACCEL_VIRT_FLAGS(int _) implements int {
  static const FVIRTKEY = ACCEL_VIRT_FLAGS(0x01);
  static const FNOINVERT = ACCEL_VIRT_FLAGS(0x02);
  static const FSHIFT = ACCEL_VIRT_FLAGS(0x04);
  static const FCONTROL = ACCEL_VIRT_FLAGS(0x08);
  static const FALT = ACCEL_VIRT_FLAGS(0x10);
}

/// {@category enum}
extension type const ACTIVATEOPTIONS(int _) implements int {
  static const AO_NONE = ACTIVATEOPTIONS(0x00000000);
  static const AO_DESIGNMODE = ACTIVATEOPTIONS(0x00000001);
  static const AO_NOERRORUI = ACTIVATEOPTIONS(0x00000002);
  static const AO_NOSPLASHSCREEN = ACTIVATEOPTIONS(0x00000004);
  static const AO_PRELAUNCH = ACTIVATEOPTIONS(0x02000000);
}

/// {@category enum}
extension type const ACTIVATE_KEYBOARD_LAYOUT_FLAGS(int _) implements int {
  static const KLF_REORDER = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000008);
  static const KLF_RESET = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x40000000);
  static const KLF_SETFORPROCESS = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000100);
  static const KLF_SHIFTLOCK = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00010000);
  static const KLF_ACTIVATE = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000001);
  static const KLF_NOTELLSHELL = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000080);
  static const KLF_REPLACELANG = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000010);
  static const KLF_SUBSTITUTE_OK = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(0x00000002);
}

/// {@category enum}
extension type const ADDRESS_FAMILY(int _) implements int {
  static const AF_INET = ADDRESS_FAMILY(0x0002);
  static const AF_INET6 = ADDRESS_FAMILY(0x0017);
  static const AF_UNSPEC = ADDRESS_FAMILY(0x0000);
}

/// {@category enum}
extension type const ADVANCED_FEATURE_FLAGS(int _) implements int {
  static const FADF_AUTO = ADVANCED_FEATURE_FLAGS(0x0001);
  static const FADF_STATIC = ADVANCED_FEATURE_FLAGS(0x0002);
  static const FADF_EMBEDDED = ADVANCED_FEATURE_FLAGS(0x0004);
  static const FADF_FIXEDSIZE = ADVANCED_FEATURE_FLAGS(0x0010);
  static const FADF_RECORD = ADVANCED_FEATURE_FLAGS(0x0020);
  static const FADF_HAVEIID = ADVANCED_FEATURE_FLAGS(0x0040);
  static const FADF_HAVEVARTYPE = ADVANCED_FEATURE_FLAGS(0x0080);
  static const FADF_BSTR = ADVANCED_FEATURE_FLAGS(0x0100);
  static const FADF_UNKNOWN = ADVANCED_FEATURE_FLAGS(0x0200);
  static const FADF_DISPATCH = ADVANCED_FEATURE_FLAGS(0x0400);
  static const FADF_VARIANT = ADVANCED_FEATURE_FLAGS(0x0800);
  static const FADF_RESERVED = ADVANCED_FEATURE_FLAGS(0xf008);
}

/// {@category enum}
extension type const ANIMATE_WINDOW_FLAGS(int _) implements int {
  static const AW_ACTIVATE = ANIMATE_WINDOW_FLAGS(0x00020000);
  static const AW_BLEND = ANIMATE_WINDOW_FLAGS(0x00080000);
  static const AW_CENTER = ANIMATE_WINDOW_FLAGS(0x00000010);
  static const AW_HIDE = ANIMATE_WINDOW_FLAGS(0x00010000);
  static const AW_HOR_POSITIVE = ANIMATE_WINDOW_FLAGS(0x00000001);
  static const AW_HOR_NEGATIVE = ANIMATE_WINDOW_FLAGS(0x00000002);
  static const AW_SLIDE = ANIMATE_WINDOW_FLAGS(0x00040000);
  static const AW_VER_POSITIVE = ANIMATE_WINDOW_FLAGS(0x00000004);
  static const AW_VER_NEGATIVE = ANIMATE_WINDOW_FLAGS(0x00000008);
}

/// {@category enum}
extension type const APPX_CAPABILITIES(int _) implements int {
  static const APPX_CAPABILITY_INTERNET_CLIENT = APPX_CAPABILITIES(0x00000001);
  static const APPX_CAPABILITY_INTERNET_CLIENT_SERVER =
      APPX_CAPABILITIES(0x00000002);
  static const APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER =
      APPX_CAPABILITIES(0x00000004);
  static const APPX_CAPABILITY_DOCUMENTS_LIBRARY =
      APPX_CAPABILITIES(0x00000008);
  static const APPX_CAPABILITY_PICTURES_LIBRARY = APPX_CAPABILITIES(0x00000010);
  static const APPX_CAPABILITY_VIDEOS_LIBRARY = APPX_CAPABILITIES(0x00000020);
  static const APPX_CAPABILITY_MUSIC_LIBRARY = APPX_CAPABILITIES(0x00000040);
  static const APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION =
      APPX_CAPABILITIES(0x00000080);
  static const APPX_CAPABILITY_SHARED_USER_CERTIFICATES =
      APPX_CAPABILITIES(0x00000100);
  static const APPX_CAPABILITY_REMOVABLE_STORAGE =
      APPX_CAPABILITIES(0x00000200);
  static const APPX_CAPABILITY_APPOINTMENTS = APPX_CAPABILITIES(0x00000400);
  static const APPX_CAPABILITY_CONTACTS = APPX_CAPABILITIES(0x00000800);
}

/// {@category enum}
extension type const APPX_CAPABILITY_CLASS_TYPE(int _) implements int {
  static const APPX_CAPABILITY_CLASS_DEFAULT =
      APPX_CAPABILITY_CLASS_TYPE(0x00000000);
  static const APPX_CAPABILITY_CLASS_GENERAL =
      APPX_CAPABILITY_CLASS_TYPE(0x00000001);
  static const APPX_CAPABILITY_CLASS_RESTRICTED =
      APPX_CAPABILITY_CLASS_TYPE(0x00000002);
  static const APPX_CAPABILITY_CLASS_WINDOWS =
      APPX_CAPABILITY_CLASS_TYPE(0x00000004);
  static const APPX_CAPABILITY_CLASS_ALL =
      APPX_CAPABILITY_CLASS_TYPE(0x00000007);
  static const APPX_CAPABILITY_CLASS_CUSTOM =
      APPX_CAPABILITY_CLASS_TYPE(0x00000008);
}

/// {@category enum}
extension type const APPX_COMPRESSION_OPTION(int _) implements int {
  static const APPX_COMPRESSION_OPTION_NONE =
      APPX_COMPRESSION_OPTION(0x00000000);
  static const APPX_COMPRESSION_OPTION_NORMAL =
      APPX_COMPRESSION_OPTION(0x00000001);
  static const APPX_COMPRESSION_OPTION_MAXIMUM =
      APPX_COMPRESSION_OPTION(0x00000002);
  static const APPX_COMPRESSION_OPTION_FAST =
      APPX_COMPRESSION_OPTION(0x00000003);
  static const APPX_COMPRESSION_OPTION_SUPERFAST =
      APPX_COMPRESSION_OPTION(0x00000004);
}

/// {@category enum}
extension type const APPX_FOOTPRINT_FILE_TYPE(int _) implements int {
  static const APPX_FOOTPRINT_FILE_TYPE_MANIFEST =
      APPX_FOOTPRINT_FILE_TYPE(0x00000000);
  static const APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP =
      APPX_FOOTPRINT_FILE_TYPE(0x00000001);
  static const APPX_FOOTPRINT_FILE_TYPE_SIGNATURE =
      APPX_FOOTPRINT_FILE_TYPE(0x00000002);
  static const APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY =
      APPX_FOOTPRINT_FILE_TYPE(0x00000003);
  static const APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP =
      APPX_FOOTPRINT_FILE_TYPE(0x00000004);
}

/// {@category enum}
extension type const APPX_PACKAGE_ARCHITECTURE(int _) implements int {
  static const APPX_PACKAGE_ARCHITECTURE_X86 =
      APPX_PACKAGE_ARCHITECTURE(0x00000000);
  static const APPX_PACKAGE_ARCHITECTURE_ARM =
      APPX_PACKAGE_ARCHITECTURE(0x00000005);
  static const APPX_PACKAGE_ARCHITECTURE_X64 =
      APPX_PACKAGE_ARCHITECTURE(0x00000009);
  static const APPX_PACKAGE_ARCHITECTURE_NEUTRAL =
      APPX_PACKAGE_ARCHITECTURE(0x0000000b);
  static const APPX_PACKAGE_ARCHITECTURE_ARM64 =
      APPX_PACKAGE_ARCHITECTURE(0x0000000c);
}

/// {@category enum}
extension type const APTTYPE(int _) implements int {
  static const APTTYPE_CURRENT = APTTYPE(0xffffffff);
  static const APTTYPE_STA = APTTYPE(0x00000000);
  static const APTTYPE_MTA = APTTYPE(0x00000001);
  static const APTTYPE_NA = APTTYPE(0x00000002);
  static const APTTYPE_MAINSTA = APTTYPE(0x00000003);
}

/// {@category enum}
extension type const APTTYPEQUALIFIER(int _) implements int {
  static const APTTYPEQUALIFIER_NONE = APTTYPEQUALIFIER(0x00000000);
  static const APTTYPEQUALIFIER_IMPLICIT_MTA = APTTYPEQUALIFIER(0x00000001);
  static const APTTYPEQUALIFIER_NA_ON_MTA = APTTYPEQUALIFIER(0x00000002);
  static const APTTYPEQUALIFIER_NA_ON_STA = APTTYPEQUALIFIER(0x00000003);
  static const APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA =
      APTTYPEQUALIFIER(0x00000004);
  static const APTTYPEQUALIFIER_NA_ON_MAINSTA = APTTYPEQUALIFIER(0x00000005);
  static const APTTYPEQUALIFIER_APPLICATION_STA = APTTYPEQUALIFIER(0x00000006);
  static const APTTYPEQUALIFIER_RESERVED_1 = APTTYPEQUALIFIER(0x00000007);
}

/// {@category enum}
extension type const AUDCLNT_SHAREMODE(int _) implements int {
  static const AUDCLNT_SHAREMODE_SHARED = AUDCLNT_SHAREMODE(0x00000000);
  static const AUDCLNT_SHAREMODE_EXCLUSIVE = AUDCLNT_SHAREMODE(0x00000001);
}

/// {@category enum}
extension type const AUDCLNT_STREAMOPTIONS(int _) implements int {
  static const AUDCLNT_STREAMOPTIONS_NONE = AUDCLNT_STREAMOPTIONS(0x00000000);
  static const AUDCLNT_STREAMOPTIONS_RAW = AUDCLNT_STREAMOPTIONS(0x00000001);
  static const AUDCLNT_STREAMOPTIONS_MATCH_FORMAT =
      AUDCLNT_STREAMOPTIONS(0x00000002);
  static const AUDCLNT_STREAMOPTIONS_AMBISONICS =
      AUDCLNT_STREAMOPTIONS(0x00000004);
}

/// {@category enum}
extension type const AUDIO_DUCKING_OPTIONS(int _) implements int {
  static const AUDIO_DUCKING_OPTIONS_DEFAULT =
      AUDIO_DUCKING_OPTIONS(0x00000000);
  static const AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS =
      AUDIO_DUCKING_OPTIONS(0x00000001);
}

/// {@category enum}
extension type const AUDIO_STREAM_CATEGORY(int _) implements int {
  static const AudioCategory_Other = AUDIO_STREAM_CATEGORY(0x00000000);
  static const AudioCategory_ForegroundOnlyMedia =
      AUDIO_STREAM_CATEGORY(0x00000001);
  static const AudioCategory_Communications = AUDIO_STREAM_CATEGORY(0x00000003);
  static const AudioCategory_Alerts = AUDIO_STREAM_CATEGORY(0x00000004);
  static const AudioCategory_SoundEffects = AUDIO_STREAM_CATEGORY(0x00000005);
  static const AudioCategory_GameEffects = AUDIO_STREAM_CATEGORY(0x00000006);
  static const AudioCategory_GameMedia = AUDIO_STREAM_CATEGORY(0x00000007);
  static const AudioCategory_GameChat = AUDIO_STREAM_CATEGORY(0x00000008);
  static const AudioCategory_Speech = AUDIO_STREAM_CATEGORY(0x00000009);
  static const AudioCategory_Movie = AUDIO_STREAM_CATEGORY(0x0000000a);
  static const AudioCategory_Media = AUDIO_STREAM_CATEGORY(0x0000000b);
  static const AudioCategory_FarFieldSpeech = AUDIO_STREAM_CATEGORY(0x0000000c);
  static const AudioCategory_UniformSpeech = AUDIO_STREAM_CATEGORY(0x0000000d);
  static const AudioCategory_VoiceTyping = AUDIO_STREAM_CATEGORY(0x0000000e);
}

/// {@category enum}
extension type const AUTHENTICATION_REQUIREMENTS(int _) implements int {
  static const MITMProtectionNotRequired =
      AUTHENTICATION_REQUIREMENTS(0x00000000);
  static const MITMProtectionRequired = AUTHENTICATION_REQUIREMENTS(0x00000001);
  static const MITMProtectionNotRequiredBonding =
      AUTHENTICATION_REQUIREMENTS(0x00000002);
  static const MITMProtectionRequiredBonding =
      AUTHENTICATION_REQUIREMENTS(0x00000003);
  static const MITMProtectionNotRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(0x00000004);
  static const MITMProtectionRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(0x00000005);
  static const MITMProtectionNotDefined =
      AUTHENTICATION_REQUIREMENTS(0x000000ff);
}

/// {@category enum}
extension type const AudioSessionState(int _) implements int {
  static const AudioSessionStateInactive = AudioSessionState(0x00000000);
  static const AudioSessionStateActive = AudioSessionState(0x00000001);
  static const AudioSessionStateExpired = AudioSessionState(0x00000002);
}

/// {@category enum}
extension type const AutomationElementMode(int _) implements int {
  static const AutomationElementMode_None = AutomationElementMode(0x00000000);
  static const AutomationElementMode_Full = AutomationElementMode(0x00000001);
}

/// {@category enum}
extension type const BATTERY_DEVTYPE(int _) implements int {
  static const BATTERY_DEVTYPE_GAMEPAD = BATTERY_DEVTYPE(0x00);
  static const BATTERY_DEVTYPE_HEADSET = BATTERY_DEVTYPE(0x01);
}

/// {@category enum}
extension type const BATTERY_LEVEL(int _) implements int {
  static const BATTERY_LEVEL_EMPTY = BATTERY_LEVEL(0x00);
  static const BATTERY_LEVEL_LOW = BATTERY_LEVEL(0x01);
  static const BATTERY_LEVEL_MEDIUM = BATTERY_LEVEL(0x02);
  static const BATTERY_LEVEL_FULL = BATTERY_LEVEL(0x03);
}

/// {@category enum}
extension type const BATTERY_TYPE(int _) implements int {
  static const BATTERY_TYPE_DISCONNECTED = BATTERY_TYPE(0x00);
  static const BATTERY_TYPE_WIRED = BATTERY_TYPE(0x01);
  static const BATTERY_TYPE_ALKALINE = BATTERY_TYPE(0x02);
  static const BATTERY_TYPE_NIMH = BATTERY_TYPE(0x03);
  static const BATTERY_TYPE_UNKNOWN = BATTERY_TYPE(0xff);
}

/// {@category enum}
extension type const BLUETOOTH_AUTHENTICATION_METHOD(int _) implements int {
  static const BLUETOOTH_AUTHENTICATION_METHOD_LEGACY =
      BLUETOOTH_AUTHENTICATION_METHOD(0x00000001);
  static const BLUETOOTH_AUTHENTICATION_METHOD_OOB =
      BLUETOOTH_AUTHENTICATION_METHOD(0x00000002);
  static const BLUETOOTH_AUTHENTICATION_METHOD_NUMERIC_COMPARISON =
      BLUETOOTH_AUTHENTICATION_METHOD(0x00000003);
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY_NOTIFICATION =
      BLUETOOTH_AUTHENTICATION_METHOD(0x00000004);
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY =
      BLUETOOTH_AUTHENTICATION_METHOD(0x00000005);
}

/// {@category enum}
extension type const BLUETOOTH_AUTHENTICATION_REQUIREMENTS(int _)
    implements int {
  static const BLUETOOTH_MITM_ProtectionNotRequired =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000000);
  static const BLUETOOTH_MITM_ProtectionRequired =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000001);
  static const BLUETOOTH_MITM_ProtectionNotRequiredBonding =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000002);
  static const BLUETOOTH_MITM_ProtectionRequiredBonding =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000003);
  static const BLUETOOTH_MITM_ProtectionNotRequiredGeneralBonding =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000004);
  static const BLUETOOTH_MITM_ProtectionRequiredGeneralBonding =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x00000005);
  static const BLUETOOTH_MITM_ProtectionNotDefined =
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0x000000ff);
}

/// {@category enum}
extension type const BLUETOOTH_IO_CAPABILITY(int _) implements int {
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYONLY =
      BLUETOOTH_IO_CAPABILITY(0x00000000);
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYYESNO =
      BLUETOOTH_IO_CAPABILITY(0x00000001);
  static const BLUETOOTH_IO_CAPABILITY_KEYBOARDONLY =
      BLUETOOTH_IO_CAPABILITY(0x00000002);
  static const BLUETOOTH_IO_CAPABILITY_NOINPUTNOOUTPUT =
      BLUETOOTH_IO_CAPABILITY(0x00000003);
  static const BLUETOOTH_IO_CAPABILITY_UNDEFINED =
      BLUETOOTH_IO_CAPABILITY(0x000000ff);
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_FLAGS(int _) implements int {
  static const BSF_ALLOWSFW = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000080);
  static const BSF_FLUSHDISK = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000004);
  static const BSF_FORCEIFHUNG = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000020);
  static const BSF_IGNORECURRENTTASK =
      BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000002);
  static const BSF_NOHANG = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000008);
  static const BSF_NOTIMEOUTIFNOTHUNG =
      BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000040);
  static const BSF_POSTMESSAGE = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000010);
  static const BSF_QUERY = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000001);
  static const BSF_SENDNOTIFYMESSAGE =
      BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000100);
  static const BSF_LUID = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000400);
  static const BSF_RETURNHDESK = BROADCAST_SYSTEM_MESSAGE_FLAGS(0x00000200);
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_INFO(int _) implements int {
  static const BSM_ALLCOMPONENTS = BROADCAST_SYSTEM_MESSAGE_INFO(0x00000000);
  static const BSM_ALLDESKTOPS = BROADCAST_SYSTEM_MESSAGE_INFO(0x00000010);
  static const BSM_APPLICATIONS = BROADCAST_SYSTEM_MESSAGE_INFO(0x00000008);
}

/// {@category enum}
extension type const BRUSH_STYLE(int _) implements int {
  static const BS_SOLID = BRUSH_STYLE(0x00000000);
  static const BS_NULL = BRUSH_STYLE(0x00000001);
  static const BS_HOLLOW = BRUSH_STYLE(0x00000001);
  static const BS_HATCHED = BRUSH_STYLE(0x00000002);
  static const BS_PATTERN = BRUSH_STYLE(0x00000003);
  static const BS_INDEXED = BRUSH_STYLE(0x00000004);
  static const BS_DIBPATTERN = BRUSH_STYLE(0x00000005);
  static const BS_DIBPATTERNPT = BRUSH_STYLE(0x00000006);
  static const BS_PATTERN8X8 = BRUSH_STYLE(0x00000007);
  static const BS_DIBPATTERN8X8 = BRUSH_STYLE(0x00000008);
  static const BS_MONOPATTERN = BRUSH_STYLE(0x00000009);
}

/// {@category enum}
extension type const BTH_LE_GATT_DESCRIPTOR_TYPE(int _) implements int {
  static const CharacteristicExtendedProperties =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000000);
  static const CharacteristicUserDescription =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000001);
  static const ClientCharacteristicConfiguration =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000002);
  static const ServerCharacteristicConfiguration =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000003);
  static const CharacteristicFormat = BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000004);
  static const CharacteristicAggregateFormat =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000005);
  static const CustomDescriptor = BTH_LE_GATT_DESCRIPTOR_TYPE(0x00000006);
}

/// {@category enum}
extension type const BTH_LE_GATT_EVENT_TYPE(int _) implements int {
  static const CharacteristicValueChangedEvent =
      BTH_LE_GATT_EVENT_TYPE(0x00000000);
}

/// {@category enum}
extension type const CALLCONV(int _) implements int {
  static const CC_FASTCALL = CALLCONV(0x00000000);
  static const CC_CDECL = CALLCONV(0x00000001);
  static const CC_MSCPASCAL = CALLCONV(0x00000002);
  static const CC_PASCAL = CALLCONV(0x00000002);
  static const CC_MACPASCAL = CALLCONV(0x00000003);
  static const CC_STDCALL = CALLCONV(0x00000004);
  static const CC_FPFASTCALL = CALLCONV(0x00000005);
  static const CC_SYSCALL = CALLCONV(0x00000006);
  static const CC_MPWCDECL = CALLCONV(0x00000007);
  static const CC_MPWPASCAL = CALLCONV(0x00000008);
  static const CC_MAX = CALLCONV(0x00000009);
}

/// {@category enum}
extension type const CASCADE_WINDOWS_HOW(int _) implements int {
  static const MDITILE_SKIPDISABLED = CASCADE_WINDOWS_HOW(0x00000002);
  static const MDITILE_ZORDER = CASCADE_WINDOWS_HOW(0x00000004);
}

/// {@category enum}
extension type const CDCONTROLSTATEF(int _) implements int {
  static const CDCS_INACTIVE = CDCONTROLSTATEF(0x00000000);
  static const CDCS_ENABLED = CDCONTROLSTATEF(0x00000001);
  static const CDCS_VISIBLE = CDCONTROLSTATEF(0x00000002);
  static const CDCS_ENABLEDVISIBLE = CDCONTROLSTATEF(0x00000003);
}

/// {@category enum}
extension type const CDS_TYPE(int _) implements int {
  static const CDS_FULLSCREEN = CDS_TYPE(0x00000004);
  static const CDS_GLOBAL = CDS_TYPE(0x00000008);
  static const CDS_NORESET = CDS_TYPE(0x10000000);
  static const CDS_RESET = CDS_TYPE(0x40000000);
  static const CDS_SET_PRIMARY = CDS_TYPE(0x00000010);
  static const CDS_TEST = CDS_TYPE(0x00000002);
  static const CDS_UPDATEREGISTRY = CDS_TYPE(0x00000001);
  static const CDS_VIDEOPARAMETERS = CDS_TYPE(0x00000020);
  static const CDS_ENABLE_UNSAFE_MODES = CDS_TYPE(0x00000100);
  static const CDS_DISABLE_UNSAFE_MODES = CDS_TYPE(0x00000200);
  static const CDS_RESET_EX = CDS_TYPE(0x20000000);
}

/// {@category enum}
extension type const CERT_QUERY_ENCODING_TYPE(int _) implements int {
  static const X509_ASN_ENCODING = CERT_QUERY_ENCODING_TYPE(0x00000001);
  static const PKCS_7_ASN_ENCODING = CERT_QUERY_ENCODING_TYPE(0x00010000);
}

/// {@category enum}
extension type const CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(int _) implements int {
  static const MSGFLT_ADD = CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(0x00000001);
  static const MSGFLT_REMOVE = CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(0x00000002);
}

/// {@category enum}
extension type const CHOOSECOLOR_FLAGS(int _) implements int {
  static const CC_RGBINIT = CHOOSECOLOR_FLAGS(0x00000001);
  static const CC_FULLOPEN = CHOOSECOLOR_FLAGS(0x00000002);
  static const CC_PREVENTFULLOPEN = CHOOSECOLOR_FLAGS(0x00000004);
  static const CC_SHOWHELP = CHOOSECOLOR_FLAGS(0x00000008);
  static const CC_ENABLEHOOK = CHOOSECOLOR_FLAGS(0x00000010);
  static const CC_ENABLETEMPLATE = CHOOSECOLOR_FLAGS(0x00000020);
  static const CC_ENABLETEMPLATEHANDLE = CHOOSECOLOR_FLAGS(0x00000040);
  static const CC_SOLIDCOLOR = CHOOSECOLOR_FLAGS(0x00000080);
  static const CC_ANYCOLOR = CHOOSECOLOR_FLAGS(0x00000100);
}

/// {@category enum}
extension type const CHOOSEFONT_FLAGS(int _) implements int {
  static const CF_APPLY = CHOOSEFONT_FLAGS(0x00000200);
  static const CF_ANSIONLY = CHOOSEFONT_FLAGS(0x00000400);
  static const CF_BOTH = CHOOSEFONT_FLAGS(0x00000003);
  static const CF_EFFECTS = CHOOSEFONT_FLAGS(0x00000100);
  static const CF_ENABLEHOOK = CHOOSEFONT_FLAGS(0x00000008);
  static const CF_ENABLETEMPLATE = CHOOSEFONT_FLAGS(0x00000010);
  static const CF_ENABLETEMPLATEHANDLE = CHOOSEFONT_FLAGS(0x00000020);
  static const CF_FIXEDPITCHONLY = CHOOSEFONT_FLAGS(0x00004000);
  static const CF_FORCEFONTEXIST = CHOOSEFONT_FLAGS(0x00010000);
  static const CF_INACTIVEFONTS = CHOOSEFONT_FLAGS(0x02000000);
  static const CF_INITTOLOGFONTSTRUCT = CHOOSEFONT_FLAGS(0x00000040);
  static const CF_LIMITSIZE = CHOOSEFONT_FLAGS(0x00002000);
  static const CF_NOOEMFONTS = CHOOSEFONT_FLAGS(0x00000800);
  static const CF_NOFACESEL = CHOOSEFONT_FLAGS(0x00080000);
  static const CF_NOSCRIPTSEL = CHOOSEFONT_FLAGS(0x00800000);
  static const CF_NOSIMULATIONS = CHOOSEFONT_FLAGS(0x00001000);
  static const CF_NOSIZESEL = CHOOSEFONT_FLAGS(0x00200000);
  static const CF_NOSTYLESEL = CHOOSEFONT_FLAGS(0x00100000);
  static const CF_NOVECTORFONTS = CHOOSEFONT_FLAGS(0x00000800);
  static const CF_NOVERTFONTS = CHOOSEFONT_FLAGS(0x01000000);
  static const CF_PRINTERFONTS = CHOOSEFONT_FLAGS(0x00000002);
  static const CF_SCALABLEONLY = CHOOSEFONT_FLAGS(0x00020000);
  static const CF_SCREENFONTS = CHOOSEFONT_FLAGS(0x00000001);
  static const CF_SCRIPTSONLY = CHOOSEFONT_FLAGS(0x00000400);
  static const CF_SELECTSCRIPT = CHOOSEFONT_FLAGS(0x00400000);
  static const CF_SHOWHELP = CHOOSEFONT_FLAGS(0x00000004);
  static const CF_TTONLY = CHOOSEFONT_FLAGS(0x00040000);
  static const CF_USESTYLE = CHOOSEFONT_FLAGS(0x00000080);
  static const CF_WYSIWYG = CHOOSEFONT_FLAGS(0x00008000);
}

/// {@category enum}
extension type const CHOOSEFONT_FONT_TYPE(int _) implements int {
  static const BOLD_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x0100);
  static const ITALIC_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x0200);
  static const PRINTER_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x4000);
  static const REGULAR_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x0400);
  static const SCREEN_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x2000);
  static const SIMULATED_FONTTYPE = CHOOSEFONT_FONT_TYPE(0x8000);
}

/// {@category enum}
extension type const CLEAR_COMM_ERROR_FLAGS(int _) implements int {
  static const CE_BREAK = CLEAR_COMM_ERROR_FLAGS(0x00000010);
  static const CE_FRAME = CLEAR_COMM_ERROR_FLAGS(0x00000008);
  static const CE_OVERRUN = CLEAR_COMM_ERROR_FLAGS(0x00000002);
  static const CE_RXOVER = CLEAR_COMM_ERROR_FLAGS(0x00000001);
  static const CE_RXPARITY = CLEAR_COMM_ERROR_FLAGS(0x00000004);
}

/// {@category enum}
extension type const CLSCTX(int _) implements int {
  static const CLSCTX_INPROC_SERVER = CLSCTX(0x00000001);
  static const CLSCTX_INPROC_HANDLER = CLSCTX(0x00000002);
  static const CLSCTX_LOCAL_SERVER = CLSCTX(0x00000004);
  static const CLSCTX_INPROC_SERVER16 = CLSCTX(0x00000008);
  static const CLSCTX_REMOTE_SERVER = CLSCTX(0x00000010);
  static const CLSCTX_INPROC_HANDLER16 = CLSCTX(0x00000020);
  static const CLSCTX_RESERVED1 = CLSCTX(0x00000040);
  static const CLSCTX_RESERVED2 = CLSCTX(0x00000080);
  static const CLSCTX_RESERVED3 = CLSCTX(0x00000100);
  static const CLSCTX_RESERVED4 = CLSCTX(0x00000200);
  static const CLSCTX_NO_CODE_DOWNLOAD = CLSCTX(0x00000400);
  static const CLSCTX_RESERVED5 = CLSCTX(0x00000800);
  static const CLSCTX_NO_CUSTOM_MARSHAL = CLSCTX(0x00001000);
  static const CLSCTX_ENABLE_CODE_DOWNLOAD = CLSCTX(0x00002000);
  static const CLSCTX_NO_FAILURE_LOG = CLSCTX(0x00004000);
  static const CLSCTX_DISABLE_AAA = CLSCTX(0x00008000);
  static const CLSCTX_ENABLE_AAA = CLSCTX(0x00010000);
  static const CLSCTX_FROM_DEFAULT_CONTEXT = CLSCTX(0x00020000);
  static const CLSCTX_ACTIVATE_X86_SERVER = CLSCTX(0x00040000);
  static const CLSCTX_ACTIVATE_32_BIT_SERVER = CLSCTX(0x00040000);
  static const CLSCTX_ACTIVATE_64_BIT_SERVER = CLSCTX(0x00080000);
  static const CLSCTX_ENABLE_CLOAKING = CLSCTX(0x00100000);
  static const CLSCTX_APPCONTAINER = CLSCTX(0x00400000);
  static const CLSCTX_ACTIVATE_AAA_AS_IU = CLSCTX(0x00800000);
  static const CLSCTX_RESERVED6 = CLSCTX(0x01000000);
  static const CLSCTX_ACTIVATE_ARM32_SERVER = CLSCTX(0x02000000);
  static const CLSCTX_ALLOW_LOWER_TRUST_REGISTRATION = CLSCTX(0x04000000);
  static const CLSCTX_PS_DLL = CLSCTX(0x80000000);
  static const CLSCTX_ALL = CLSCTX(0x00000017);
  static const CLSCTX_SERVER = CLSCTX(0x00000015);
}

/// {@category enum}
extension type const COMMPROP_STOP_PARITY(int _) implements int {
  static const STOPBITS_10 = COMMPROP_STOP_PARITY(0x0001);
  static const STOPBITS_15 = COMMPROP_STOP_PARITY(0x0002);
  static const STOPBITS_20 = COMMPROP_STOP_PARITY(0x0004);
  static const PARITY_NONE = COMMPROP_STOP_PARITY(0x0100);
  static const PARITY_ODD = COMMPROP_STOP_PARITY(0x0200);
  static const PARITY_EVEN = COMMPROP_STOP_PARITY(0x0400);
  static const PARITY_MARK = COMMPROP_STOP_PARITY(0x0800);
  static const PARITY_SPACE = COMMPROP_STOP_PARITY(0x1000);
}

/// {@category enum}
extension type const COMM_EVENT_MASK(int _) implements int {
  static const EV_BREAK = COMM_EVENT_MASK(0x00000040);
  static const EV_CTS = COMM_EVENT_MASK(0x00000008);
  static const EV_DSR = COMM_EVENT_MASK(0x00000010);
  static const EV_ERR = COMM_EVENT_MASK(0x00000080);
  static const EV_EVENT1 = COMM_EVENT_MASK(0x00000800);
  static const EV_EVENT2 = COMM_EVENT_MASK(0x00001000);
  static const EV_PERR = COMM_EVENT_MASK(0x00000200);
  static const EV_RING = COMM_EVENT_MASK(0x00000100);
  static const EV_RLSD = COMM_EVENT_MASK(0x00000020);
  static const EV_RX80FULL = COMM_EVENT_MASK(0x00000400);
  static const EV_RXCHAR = COMM_EVENT_MASK(0x00000001);
  static const EV_RXFLAG = COMM_EVENT_MASK(0x00000002);
  static const EV_TXEMPTY = COMM_EVENT_MASK(0x00000004);
}

/// {@category enum}
extension type const COMPUTER_NAME_FORMAT(int _) implements int {
  static const ComputerNameNetBIOS = COMPUTER_NAME_FORMAT(0x00000000);
  static const ComputerNameDnsHostname = COMPUTER_NAME_FORMAT(0x00000001);
  static const ComputerNameDnsDomain = COMPUTER_NAME_FORMAT(0x00000002);
  static const ComputerNameDnsFullyQualified = COMPUTER_NAME_FORMAT(0x00000003);
  static const ComputerNamePhysicalNetBIOS = COMPUTER_NAME_FORMAT(0x00000004);
  static const ComputerNamePhysicalDnsHostname =
      COMPUTER_NAME_FORMAT(0x00000005);
  static const ComputerNamePhysicalDnsDomain = COMPUTER_NAME_FORMAT(0x00000006);
  static const ComputerNamePhysicalDnsFullyQualified =
      COMPUTER_NAME_FORMAT(0x00000007);
  static const ComputerNameMax = COMPUTER_NAME_FORMAT(0x00000008);
}

/// {@category enum}
extension type const CONSOLE_CHARACTER_ATTRIBUTES(int _) implements int {
  static const FOREGROUND_BLUE = CONSOLE_CHARACTER_ATTRIBUTES(0x0001);
  static const FOREGROUND_GREEN = CONSOLE_CHARACTER_ATTRIBUTES(0x0002);
  static const FOREGROUND_RED = CONSOLE_CHARACTER_ATTRIBUTES(0x0004);
  static const FOREGROUND_INTENSITY = CONSOLE_CHARACTER_ATTRIBUTES(0x0008);
  static const BACKGROUND_BLUE = CONSOLE_CHARACTER_ATTRIBUTES(0x0010);
  static const BACKGROUND_GREEN = CONSOLE_CHARACTER_ATTRIBUTES(0x0020);
  static const BACKGROUND_RED = CONSOLE_CHARACTER_ATTRIBUTES(0x0040);
  static const BACKGROUND_INTENSITY = CONSOLE_CHARACTER_ATTRIBUTES(0x0080);
  static const COMMON_LVB_LEADING_BYTE = CONSOLE_CHARACTER_ATTRIBUTES(0x0100);
  static const COMMON_LVB_TRAILING_BYTE = CONSOLE_CHARACTER_ATTRIBUTES(0x0200);
  static const COMMON_LVB_GRID_HORIZONTAL =
      CONSOLE_CHARACTER_ATTRIBUTES(0x0400);
  static const COMMON_LVB_GRID_LVERTICAL = CONSOLE_CHARACTER_ATTRIBUTES(0x0800);
  static const COMMON_LVB_GRID_RVERTICAL = CONSOLE_CHARACTER_ATTRIBUTES(0x1000);
  static const COMMON_LVB_REVERSE_VIDEO = CONSOLE_CHARACTER_ATTRIBUTES(0x4000);
  static const COMMON_LVB_UNDERSCORE = CONSOLE_CHARACTER_ATTRIBUTES(0x8000);
  static const COMMON_LVB_SBCSDBCS = CONSOLE_CHARACTER_ATTRIBUTES(0x0300);
}

/// {@category enum}
extension type const CONSOLE_MODE(int _) implements int {
  static const ENABLE_PROCESSED_INPUT = CONSOLE_MODE(0x00000001);
  static const ENABLE_LINE_INPUT = CONSOLE_MODE(0x00000002);
  static const ENABLE_ECHO_INPUT = CONSOLE_MODE(0x00000004);
  static const ENABLE_WINDOW_INPUT = CONSOLE_MODE(0x00000008);
  static const ENABLE_MOUSE_INPUT = CONSOLE_MODE(0x00000010);
  static const ENABLE_INSERT_MODE = CONSOLE_MODE(0x00000020);
  static const ENABLE_QUICK_EDIT_MODE = CONSOLE_MODE(0x00000040);
  static const ENABLE_EXTENDED_FLAGS = CONSOLE_MODE(0x00000080);
  static const ENABLE_AUTO_POSITION = CONSOLE_MODE(0x00000100);
  static const ENABLE_VIRTUAL_TERMINAL_INPUT = CONSOLE_MODE(0x00000200);
  static const ENABLE_PROCESSED_OUTPUT = CONSOLE_MODE(0x00000001);
  static const ENABLE_WRAP_AT_EOL_OUTPUT = CONSOLE_MODE(0x00000002);
  static const ENABLE_VIRTUAL_TERMINAL_PROCESSING = CONSOLE_MODE(0x00000004);
  static const DISABLE_NEWLINE_AUTO_RETURN = CONSOLE_MODE(0x00000008);
  static const ENABLE_LVB_GRID_WORLDWIDE = CONSOLE_MODE(0x00000010);
}

/// {@category enum}
extension type const CORRECTIVE_ACTION(int _) implements int {
  static const CORRECTIVE_ACTION_NONE = CORRECTIVE_ACTION(0x00000000);
  static const CORRECTIVE_ACTION_GET_SUGGESTIONS =
      CORRECTIVE_ACTION(0x00000001);
  static const CORRECTIVE_ACTION_REPLACE = CORRECTIVE_ACTION(0x00000002);
  static const CORRECTIVE_ACTION_DELETE = CORRECTIVE_ACTION(0x00000003);
}

/// {@category enum}
extension type const CREATE_EVENT(int _) implements int {
  static const CREATE_EVENT_INITIAL_SET = CREATE_EVENT(0x00000002);
  static const CREATE_EVENT_MANUAL_RESET = CREATE_EVENT(0x00000001);
}

/// {@category enum}
extension type const CRED_FLAGS(int _) implements int {
  static const CRED_FLAGS_PASSWORD_FOR_CERT = CRED_FLAGS(0x00000001);
  static const CRED_FLAGS_PROMPT_NOW = CRED_FLAGS(0x00000002);
  static const CRED_FLAGS_USERNAME_TARGET = CRED_FLAGS(0x00000004);
  static const CRED_FLAGS_OWF_CRED_BLOB = CRED_FLAGS(0x00000008);
  static const CRED_FLAGS_REQUIRE_CONFIRMATION = CRED_FLAGS(0x00000010);
  static const CRED_FLAGS_WILDCARD_MATCH = CRED_FLAGS(0x00000020);
  static const CRED_FLAGS_VSM_PROTECTED = CRED_FLAGS(0x00000040);
  static const CRED_FLAGS_NGC_CERT = CRED_FLAGS(0x00000080);
  static const CRED_FLAGS_VALID_FLAGS = CRED_FLAGS(0x0000f0ff);
  static const CRED_FLAGS_VALID_INPUT_FLAGS = CRED_FLAGS(0x0000f09f);
}

/// {@category enum}
extension type const CRED_PERSIST(int _) implements int {
  static const CRED_PERSIST_NONE = CRED_PERSIST(0x00000000);
  static const CRED_PERSIST_SESSION = CRED_PERSIST(0x00000001);
  static const CRED_PERSIST_LOCAL_MACHINE = CRED_PERSIST(0x00000002);
  static const CRED_PERSIST_ENTERPRISE = CRED_PERSIST(0x00000003);
}

/// {@category enum}
extension type const CRED_TYPE(int _) implements int {
  static const CRED_TYPE_GENERIC = CRED_TYPE(0x00000001);
  static const CRED_TYPE_DOMAIN_PASSWORD = CRED_TYPE(0x00000002);
  static const CRED_TYPE_DOMAIN_CERTIFICATE = CRED_TYPE(0x00000003);
  static const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = CRED_TYPE(0x00000004);
  static const CRED_TYPE_GENERIC_CERTIFICATE = CRED_TYPE(0x00000005);
  static const CRED_TYPE_DOMAIN_EXTENDED = CRED_TYPE(0x00000006);
  static const CRED_TYPE_MAXIMUM = CRED_TYPE(0x00000007);
  static const CRED_TYPE_MAXIMUM_EX = CRED_TYPE(0x000003ef);
}

/// {@category enum}
extension type const CURSORINFO_FLAGS(int _) implements int {
  static const CURSOR_SHOWING = CURSORINFO_FLAGS(0x00000001);
  static const CURSOR_SUPPRESSED = CURSORINFO_FLAGS(0x00000002);
}

/// {@category enum}
extension type const CWP_FLAGS(int _) implements int {
  static const CWP_ALL = CWP_FLAGS(0x00000000);
  static const CWP_SKIPINVISIBLE = CWP_FLAGS(0x00000001);
  static const CWP_SKIPDISABLED = CWP_FLAGS(0x00000002);
  static const CWP_SKIPTRANSPARENT = CWP_FLAGS(0x00000004);
}

/// {@category enum}
extension type const CoalesceEventsOptions(int _) implements int {
  static const CoalesceEventsOptions_Disabled =
      CoalesceEventsOptions(0x00000000);
  static const CoalesceEventsOptions_Enabled =
      CoalesceEventsOptions(0x00000001);
}

/// {@category enum}
extension type const ConnectionRecoveryBehaviorOptions(int _) implements int {
  static const ConnectionRecoveryBehaviorOptions_Disabled =
      ConnectionRecoveryBehaviorOptions(0x00000000);
  static const ConnectionRecoveryBehaviorOptions_Enabled =
      ConnectionRecoveryBehaviorOptions(0x00000001);
}

/// {@category enum}
extension type const DCB_PARITY(int _) implements int {
  static const EVENPARITY = DCB_PARITY(0x02);
  static const MARKPARITY = DCB_PARITY(0x03);
  static const NOPARITY = DCB_PARITY(0x00);
  static const ODDPARITY = DCB_PARITY(0x01);
  static const SPACEPARITY = DCB_PARITY(0x04);
}

/// {@category enum}
extension type const DCB_STOP_BITS(int _) implements int {
  static const ONESTOPBIT = DCB_STOP_BITS(0x00);
  static const ONE5STOPBITS = DCB_STOP_BITS(0x01);
  static const TWOSTOPBITS = DCB_STOP_BITS(0x02);
}

/// {@category enum}
extension type const DEFINE_DOS_DEVICE_FLAGS(int _) implements int {
  static const DDD_RAW_TARGET_PATH = DEFINE_DOS_DEVICE_FLAGS(0x00000001);
  static const DDD_REMOVE_DEFINITION = DEFINE_DOS_DEVICE_FLAGS(0x00000002);
  static const DDD_EXACT_MATCH_ON_REMOVE = DEFINE_DOS_DEVICE_FLAGS(0x00000004);
  static const DDD_NO_BROADCAST_SYSTEM = DEFINE_DOS_DEVICE_FLAGS(0x00000008);
  static const DDD_LUID_BROADCAST_DRIVE = DEFINE_DOS_DEVICE_FLAGS(0x00000010);
}

/// {@category enum}
extension type const DESKTOP_ACCESS_FLAGS(int _) implements int {
  static const DESKTOP_DELETE = DESKTOP_ACCESS_FLAGS(0x00010000);
  static const DESKTOP_READ_CONTROL = DESKTOP_ACCESS_FLAGS(0x00020000);
  static const DESKTOP_WRITE_DAC = DESKTOP_ACCESS_FLAGS(0x00040000);
  static const DESKTOP_WRITE_OWNER = DESKTOP_ACCESS_FLAGS(0x00080000);
  static const DESKTOP_SYNCHRONIZE = DESKTOP_ACCESS_FLAGS(0x00100000);
  static const DESKTOP_READOBJECTS = DESKTOP_ACCESS_FLAGS(0x00000001);
  static const DESKTOP_CREATEWINDOW = DESKTOP_ACCESS_FLAGS(0x00000002);
  static const DESKTOP_CREATEMENU = DESKTOP_ACCESS_FLAGS(0x00000004);
  static const DESKTOP_HOOKCONTROL = DESKTOP_ACCESS_FLAGS(0x00000008);
  static const DESKTOP_JOURNALRECORD = DESKTOP_ACCESS_FLAGS(0x00000010);
  static const DESKTOP_JOURNALPLAYBACK = DESKTOP_ACCESS_FLAGS(0x00000020);
  static const DESKTOP_ENUMERATE = DESKTOP_ACCESS_FLAGS(0x00000040);
  static const DESKTOP_WRITEOBJECTS = DESKTOP_ACCESS_FLAGS(0x00000080);
  static const DESKTOP_SWITCHDESKTOP = DESKTOP_ACCESS_FLAGS(0x00000100);
}

/// {@category enum}
extension type const DESKTOP_CONTROL_FLAGS(int _) implements int {
  static const DF_ALLOWOTHERACCOUNTHOOK = DESKTOP_CONTROL_FLAGS(0x00000001);
}

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_DIRECTION(int _) implements int {
  static const DSD_FORWARD = DESKTOP_SLIDESHOW_DIRECTION(0x00000000);
  static const DSD_BACKWARD = DESKTOP_SLIDESHOW_DIRECTION(0x00000001);
}

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_OPTIONS(int _) implements int {
  static const DSO_SHUFFLEIMAGES = DESKTOP_SLIDESHOW_OPTIONS(0x00000001);
}

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_STATE(int _) implements int {
  static const DSS_ENABLED = DESKTOP_SLIDESHOW_STATE(0x00000001);
  static const DSS_SLIDESHOW = DESKTOP_SLIDESHOW_STATE(0x00000002);
  static const DSS_DISABLED_BY_REMOTE_SESSION =
      DESKTOP_SLIDESHOW_STATE(0x00000004);
}

/// {@category enum}
extension type const DESKTOP_WALLPAPER_POSITION(int _) implements int {
  static const DWPOS_CENTER = DESKTOP_WALLPAPER_POSITION(0x00000000);
  static const DWPOS_TILE = DESKTOP_WALLPAPER_POSITION(0x00000001);
  static const DWPOS_STRETCH = DESKTOP_WALLPAPER_POSITION(0x00000002);
  static const DWPOS_FIT = DESKTOP_WALLPAPER_POSITION(0x00000003);
  static const DWPOS_FILL = DESKTOP_WALLPAPER_POSITION(0x00000004);
  static const DWPOS_SPAN = DESKTOP_WALLPAPER_POSITION(0x00000005);
}

/// {@category enum}
extension type const DEVICE_SCALE_FACTOR(int _) implements int {
  static const DEVICE_SCALE_FACTOR_INVALID = DEVICE_SCALE_FACTOR(0x00000000);
  static const SCALE_100_PERCENT = DEVICE_SCALE_FACTOR(0x00000064);
  static const SCALE_120_PERCENT = DEVICE_SCALE_FACTOR(0x00000078);
  static const SCALE_125_PERCENT = DEVICE_SCALE_FACTOR(0x0000007d);
  static const SCALE_140_PERCENT = DEVICE_SCALE_FACTOR(0x0000008c);
  static const SCALE_150_PERCENT = DEVICE_SCALE_FACTOR(0x00000096);
  static const SCALE_160_PERCENT = DEVICE_SCALE_FACTOR(0x000000a0);
  static const SCALE_175_PERCENT = DEVICE_SCALE_FACTOR(0x000000af);
  static const SCALE_180_PERCENT = DEVICE_SCALE_FACTOR(0x000000b4);
  static const SCALE_200_PERCENT = DEVICE_SCALE_FACTOR(0x000000c8);
  static const SCALE_225_PERCENT = DEVICE_SCALE_FACTOR(0x000000e1);
  static const SCALE_250_PERCENT = DEVICE_SCALE_FACTOR(0x000000fa);
  static const SCALE_300_PERCENT = DEVICE_SCALE_FACTOR(0x0000012c);
  static const SCALE_350_PERCENT = DEVICE_SCALE_FACTOR(0x0000015e);
  static const SCALE_400_PERCENT = DEVICE_SCALE_FACTOR(0x00000190);
  static const SCALE_450_PERCENT = DEVICE_SCALE_FACTOR(0x000001c2);
  static const SCALE_500_PERCENT = DEVICE_SCALE_FACTOR(0x000001f4);
}

/// {@category enum}
extension type const DEVICE_STATE(int _) implements int {
  static const DEVICE_STATE_ACTIVE = DEVICE_STATE(0x00000001);
  static const DEVICE_STATE_DISABLED = DEVICE_STATE(0x00000002);
  static const DEVICE_STATE_NOTPRESENT = DEVICE_STATE(0x00000004);
  static const DEVICE_STATE_UNPLUGGED = DEVICE_STATE(0x00000008);
}

/// {@category enum}
extension type const DEVMODE_COLLATE(int _) implements int {
  static const DMCOLLATE_FALSE = DEVMODE_COLLATE(0x0000);
  static const DMCOLLATE_TRUE = DEVMODE_COLLATE(0x0001);
}

/// {@category enum}
extension type const DEVMODE_COLOR(int _) implements int {
  static const DMCOLOR_MONOCHROME = DEVMODE_COLOR(0x0001);
  static const DMCOLOR_COLOR = DEVMODE_COLOR(0x0002);
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_FIXED_OUTPUT(int _) implements int {
  static const DMDFO_DEFAULT = DEVMODE_DISPLAY_FIXED_OUTPUT(0x00000000);
  static const DMDFO_STRETCH = DEVMODE_DISPLAY_FIXED_OUTPUT(0x00000001);
  static const DMDFO_CENTER = DEVMODE_DISPLAY_FIXED_OUTPUT(0x00000002);
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_ORIENTATION(int _) implements int {
  static const DMDO_DEFAULT = DEVMODE_DISPLAY_ORIENTATION(0x00000000);
  static const DMDO_90 = DEVMODE_DISPLAY_ORIENTATION(0x00000001);
  static const DMDO_180 = DEVMODE_DISPLAY_ORIENTATION(0x00000002);
  static const DMDO_270 = DEVMODE_DISPLAY_ORIENTATION(0x00000003);
}

/// {@category enum}
extension type const DEVMODE_DUPLEX(int _) implements int {
  static const DMDUP_SIMPLEX = DEVMODE_DUPLEX(0x0001);
  static const DMDUP_VERTICAL = DEVMODE_DUPLEX(0x0002);
  static const DMDUP_HORIZONTAL = DEVMODE_DUPLEX(0x0003);
}

/// {@category enum}
extension type const DEVMODE_FIELD_FLAGS(int _) implements int {
  static const DM_SPECVERSION = DEVMODE_FIELD_FLAGS(0x00000401);
  static const DM_ORIENTATION = DEVMODE_FIELD_FLAGS(0x00000001);
  static const DM_PAPERSIZE = DEVMODE_FIELD_FLAGS(0x00000002);
  static const DM_PAPERLENGTH = DEVMODE_FIELD_FLAGS(0x00000004);
  static const DM_PAPERWIDTH = DEVMODE_FIELD_FLAGS(0x00000008);
  static const DM_SCALE = DEVMODE_FIELD_FLAGS(0x00000010);
  static const DM_POSITION = DEVMODE_FIELD_FLAGS(0x00000020);
  static const DM_NUP = DEVMODE_FIELD_FLAGS(0x00000040);
  static const DM_DISPLAYORIENTATION = DEVMODE_FIELD_FLAGS(0x00000080);
  static const DM_COPIES = DEVMODE_FIELD_FLAGS(0x00000100);
  static const DM_DEFAULTSOURCE = DEVMODE_FIELD_FLAGS(0x00000200);
  static const DM_PRINTQUALITY = DEVMODE_FIELD_FLAGS(0x00000400);
  static const DM_COLOR = DEVMODE_FIELD_FLAGS(0x00000800);
  static const DM_DUPLEX = DEVMODE_FIELD_FLAGS(0x00001000);
  static const DM_YRESOLUTION = DEVMODE_FIELD_FLAGS(0x00002000);
  static const DM_TTOPTION = DEVMODE_FIELD_FLAGS(0x00004000);
  static const DM_COLLATE = DEVMODE_FIELD_FLAGS(0x00008000);
  static const DM_FORMNAME = DEVMODE_FIELD_FLAGS(0x00010000);
  static const DM_LOGPIXELS = DEVMODE_FIELD_FLAGS(0x00020000);
  static const DM_BITSPERPEL = DEVMODE_FIELD_FLAGS(0x00040000);
  static const DM_PELSWIDTH = DEVMODE_FIELD_FLAGS(0x00080000);
  static const DM_PELSHEIGHT = DEVMODE_FIELD_FLAGS(0x00100000);
  static const DM_DISPLAYFLAGS = DEVMODE_FIELD_FLAGS(0x00200000);
  static const DM_DISPLAYFREQUENCY = DEVMODE_FIELD_FLAGS(0x00400000);
  static const DM_ICMMETHOD = DEVMODE_FIELD_FLAGS(0x00800000);
  static const DM_ICMINTENT = DEVMODE_FIELD_FLAGS(0x01000000);
  static const DM_MEDIATYPE = DEVMODE_FIELD_FLAGS(0x02000000);
  static const DM_DITHERTYPE = DEVMODE_FIELD_FLAGS(0x04000000);
  static const DM_PANNINGWIDTH = DEVMODE_FIELD_FLAGS(0x08000000);
  static const DM_PANNINGHEIGHT = DEVMODE_FIELD_FLAGS(0x10000000);
  static const DM_DISPLAYFIXEDOUTPUT = DEVMODE_FIELD_FLAGS(0x20000000);
  static const DM_INTERLACED = DEVMODE_FIELD_FLAGS(0x00000002);
  static const DM_UPDATE = DEVMODE_FIELD_FLAGS(0x00000001);
  static const DM_COPY = DEVMODE_FIELD_FLAGS(0x00000002);
  static const DM_PROMPT = DEVMODE_FIELD_FLAGS(0x00000004);
  static const DM_MODIFY = DEVMODE_FIELD_FLAGS(0x00000008);
  static const DM_IN_BUFFER = DEVMODE_FIELD_FLAGS(0x00000008);
  static const DM_IN_PROMPT = DEVMODE_FIELD_FLAGS(0x00000004);
  static const DM_OUT_BUFFER = DEVMODE_FIELD_FLAGS(0x00000002);
  static const DM_OUT_DEFAULT = DEVMODE_FIELD_FLAGS(0x00000001);
}

/// {@category enum}
extension type const DEVMODE_TRUETYPE_OPTION(int _) implements int {
  static const DMTT_BITMAP = DEVMODE_TRUETYPE_OPTION(0x0001);
  static const DMTT_DOWNLOAD = DEVMODE_TRUETYPE_OPTION(0x0002);
  static const DMTT_SUBDEV = DEVMODE_TRUETYPE_OPTION(0x0003);
  static const DMTT_DOWNLOAD_OUTLINE = DEVMODE_TRUETYPE_OPTION(0x0004);
}

/// {@category enum}
extension type const DFCS_STATE(int _) implements int {
  static const DFCS_CAPTIONCLOSE = DFCS_STATE(0x00000000);
  static const DFCS_CAPTIONMIN = DFCS_STATE(0x00000001);
  static const DFCS_CAPTIONMAX = DFCS_STATE(0x00000002);
  static const DFCS_CAPTIONRESTORE = DFCS_STATE(0x00000003);
  static const DFCS_CAPTIONHELP = DFCS_STATE(0x00000004);
  static const DFCS_MENUARROW = DFCS_STATE(0x00000000);
  static const DFCS_MENUCHECK = DFCS_STATE(0x00000001);
  static const DFCS_MENUBULLET = DFCS_STATE(0x00000002);
  static const DFCS_MENUARROWRIGHT = DFCS_STATE(0x00000004);
  static const DFCS_SCROLLUP = DFCS_STATE(0x00000000);
  static const DFCS_SCROLLDOWN = DFCS_STATE(0x00000001);
  static const DFCS_SCROLLLEFT = DFCS_STATE(0x00000002);
  static const DFCS_SCROLLRIGHT = DFCS_STATE(0x00000003);
  static const DFCS_SCROLLCOMBOBOX = DFCS_STATE(0x00000005);
  static const DFCS_SCROLLSIZEGRIP = DFCS_STATE(0x00000008);
  static const DFCS_SCROLLSIZEGRIPRIGHT = DFCS_STATE(0x00000010);
  static const DFCS_BUTTONCHECK = DFCS_STATE(0x00000000);
  static const DFCS_BUTTONRADIOIMAGE = DFCS_STATE(0x00000001);
  static const DFCS_BUTTONRADIOMASK = DFCS_STATE(0x00000002);
  static const DFCS_BUTTONRADIO = DFCS_STATE(0x00000004);
  static const DFCS_BUTTON3STATE = DFCS_STATE(0x00000008);
  static const DFCS_BUTTONPUSH = DFCS_STATE(0x00000010);
  static const DFCS_INACTIVE = DFCS_STATE(0x00000100);
  static const DFCS_PUSHED = DFCS_STATE(0x00000200);
  static const DFCS_CHECKED = DFCS_STATE(0x00000400);
  static const DFCS_TRANSPARENT = DFCS_STATE(0x00000800);
  static const DFCS_HOT = DFCS_STATE(0x00001000);
  static const DFCS_ADJUSTRECT = DFCS_STATE(0x00002000);
  static const DFCS_FLAT = DFCS_STATE(0x00004000);
  static const DFCS_MONO = DFCS_STATE(0x00008000);
}

/// {@category enum}
extension type const DFC_TYPE(int _) implements int {
  static const DFC_CAPTION = DFC_TYPE(0x00000001);
  static const DFC_MENU = DFC_TYPE(0x00000002);
  static const DFC_SCROLL = DFC_TYPE(0x00000003);
  static const DFC_BUTTON = DFC_TYPE(0x00000004);
  static const DFC_POPUPMENU = DFC_TYPE(0x00000005);
}

/// {@category enum}
extension type const DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(int _) implements int {
  static const DCDC_DEFAULT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(0x00000000);
  static const DCDC_DISABLE_FONT_UPDATE =
      DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(0x00000001);
  static const DCDC_DISABLE_RELAYOUT =
      DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(0x00000002);
}

/// {@category enum}
extension type const DIALOG_DPI_CHANGE_BEHAVIORS(int _) implements int {
  static const DDC_DEFAULT = DIALOG_DPI_CHANGE_BEHAVIORS(0x00000000);
  static const DDC_DISABLE_ALL = DIALOG_DPI_CHANGE_BEHAVIORS(0x00000001);
  static const DDC_DISABLE_RESIZE = DIALOG_DPI_CHANGE_BEHAVIORS(0x00000002);
  static const DDC_DISABLE_CONTROL_RELAYOUT =
      DIALOG_DPI_CHANGE_BEHAVIORS(0x00000004);
}

/// {@category enum}
extension type const DIB_USAGE(int _) implements int {
  static const DIB_RGB_COLORS = DIB_USAGE(0x00000000);
  static const DIB_PAL_COLORS = DIB_USAGE(0x00000001);
}

/// {@category enum}
extension type const DISPATCH_FLAGS(int _) implements int {
  static const DISPATCH_METHOD = DISPATCH_FLAGS(0x0001);
  static const DISPATCH_PROPERTYGET = DISPATCH_FLAGS(0x0002);
  static const DISPATCH_PROPERTYPUT = DISPATCH_FLAGS(0x0004);
  static const DISPATCH_PROPERTYPUTREF = DISPATCH_FLAGS(0x0008);
}

/// {@category enum}
extension type const DISPLAYCONFIG_DEVICE_INFO_TYPE(int _) implements int {
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000001);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000002);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000003);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000004);
  static const DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000005);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000006);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000007);
  static const DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000008);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x00000009);
  static const DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x0000000a);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SDR_WHITE_LEVEL =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x0000000b);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_MONITOR_SPECIALIZATION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x0000000c);
  static const DISPLAYCONFIG_DEVICE_INFO_SET_MONITOR_SPECIALIZATION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(0x0000000d);
}

/// {@category enum}
extension type const DISPLAYCONFIG_MODE_INFO_TYPE(int _) implements int {
  static const DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE =
      DISPLAYCONFIG_MODE_INFO_TYPE(0x00000001);
  static const DISPLAYCONFIG_MODE_INFO_TYPE_TARGET =
      DISPLAYCONFIG_MODE_INFO_TYPE(0x00000002);
  static const DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE =
      DISPLAYCONFIG_MODE_INFO_TYPE(0x00000003);
}

/// {@category enum}
extension type const DISPLAYCONFIG_PIXELFORMAT(int _) implements int {
  static const DISPLAYCONFIG_PIXELFORMAT_8BPP =
      DISPLAYCONFIG_PIXELFORMAT(0x00000001);
  static const DISPLAYCONFIG_PIXELFORMAT_16BPP =
      DISPLAYCONFIG_PIXELFORMAT(0x00000002);
  static const DISPLAYCONFIG_PIXELFORMAT_24BPP =
      DISPLAYCONFIG_PIXELFORMAT(0x00000003);
  static const DISPLAYCONFIG_PIXELFORMAT_32BPP =
      DISPLAYCONFIG_PIXELFORMAT(0x00000004);
  static const DISPLAYCONFIG_PIXELFORMAT_NONGDI =
      DISPLAYCONFIG_PIXELFORMAT(0x00000005);
}

/// {@category enum}
extension type const DISPLAYCONFIG_ROTATION(int _) implements int {
  static const DISPLAYCONFIG_ROTATION_IDENTITY =
      DISPLAYCONFIG_ROTATION(0x00000001);
  static const DISPLAYCONFIG_ROTATION_ROTATE90 =
      DISPLAYCONFIG_ROTATION(0x00000002);
  static const DISPLAYCONFIG_ROTATION_ROTATE180 =
      DISPLAYCONFIG_ROTATION(0x00000003);
  static const DISPLAYCONFIG_ROTATION_ROTATE270 =
      DISPLAYCONFIG_ROTATION(0x00000004);
}

/// {@category enum}
extension type const DISPLAYCONFIG_SCALING(int _) implements int {
  static const DISPLAYCONFIG_SCALING_IDENTITY =
      DISPLAYCONFIG_SCALING(0x00000001);
  static const DISPLAYCONFIG_SCALING_CENTERED =
      DISPLAYCONFIG_SCALING(0x00000002);
  static const DISPLAYCONFIG_SCALING_STRETCHED =
      DISPLAYCONFIG_SCALING(0x00000003);
  static const DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX =
      DISPLAYCONFIG_SCALING(0x00000004);
  static const DISPLAYCONFIG_SCALING_CUSTOM = DISPLAYCONFIG_SCALING(0x00000005);
  static const DISPLAYCONFIG_SCALING_PREFERRED =
      DISPLAYCONFIG_SCALING(0x00000080);
}

/// {@category enum}
extension type const DISPLAYCONFIG_SCANLINE_ORDERING(int _) implements int {
  static const DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED =
      DISPLAYCONFIG_SCANLINE_ORDERING(0x00000000);
  static const DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE =
      DISPLAYCONFIG_SCANLINE_ORDERING(0x00000001);
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED =
      DISPLAYCONFIG_SCANLINE_ORDERING(0x00000002);
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_UPPERFIELDFIRST =
      DISPLAYCONFIG_SCANLINE_ORDERING(0x00000002);
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST =
      DISPLAYCONFIG_SCANLINE_ORDERING(0x00000003);
}

/// {@category enum}
extension type const DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(int _)
    implements int {
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0xffffffff);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000000);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000001);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000002);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000003);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000004);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000005);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000006);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000008);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000009);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000a);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000b);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000c);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000d);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000e);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x0000000f);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000010);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_VIRTUAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000011);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_USB_TUNNEL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x00000012);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0x80000000);
}

/// {@category enum}
extension type const DISP_CHANGE(int _) implements int {
  static const DISP_CHANGE_SUCCESSFUL = DISP_CHANGE(0x00000000);
  static const DISP_CHANGE_RESTART = DISP_CHANGE(0x00000001);
  static const DISP_CHANGE_FAILED = DISP_CHANGE(0xffffffff);
  static const DISP_CHANGE_BADMODE = DISP_CHANGE(0xfffffffe);
  static const DISP_CHANGE_NOTUPDATED = DISP_CHANGE(0xfffffffd);
  static const DISP_CHANGE_BADFLAGS = DISP_CHANGE(0xfffffffc);
  static const DISP_CHANGE_BADPARAM = DISP_CHANGE(0xfffffffb);
  static const DISP_CHANGE_BADDUALVIEW = DISP_CHANGE(0xfffffffa);
}

/// {@category enum}
extension type const DLG_BUTTON_CHECK_STATE(int _) implements int {
  static const BST_CHECKED = DLG_BUTTON_CHECK_STATE(0x00000001);
  static const BST_INDETERMINATE = DLG_BUTTON_CHECK_STATE(0x00000002);
  static const BST_UNCHECKED = DLG_BUTTON_CHECK_STATE(0x00000000);
}

/// {@category enum}
extension type const DOT11_AUTH_ALGORITHM(int _) implements int {
  static const DOT11_AUTH_ALGO_80211_OPEN = DOT11_AUTH_ALGORITHM(0x00000001);
  static const DOT11_AUTH_ALGO_80211_SHARED_KEY =
      DOT11_AUTH_ALGORITHM(0x00000002);
  static const DOT11_AUTH_ALGO_WPA = DOT11_AUTH_ALGORITHM(0x00000003);
  static const DOT11_AUTH_ALGO_WPA_PSK = DOT11_AUTH_ALGORITHM(0x00000004);
  static const DOT11_AUTH_ALGO_WPA_NONE = DOT11_AUTH_ALGORITHM(0x00000005);
  static const DOT11_AUTH_ALGO_RSNA = DOT11_AUTH_ALGORITHM(0x00000006);
  static const DOT11_AUTH_ALGO_RSNA_PSK = DOT11_AUTH_ALGORITHM(0x00000007);
  static const DOT11_AUTH_ALGO_WPA3 = DOT11_AUTH_ALGORITHM(0x00000008);
  static const DOT11_AUTH_ALGO_WPA3_ENT_192 = DOT11_AUTH_ALGORITHM(0x00000008);
  static const DOT11_AUTH_ALGO_WPA3_SAE = DOT11_AUTH_ALGORITHM(0x00000009);
  static const DOT11_AUTH_ALGO_OWE = DOT11_AUTH_ALGORITHM(0x0000000a);
  static const DOT11_AUTH_ALGO_WPA3_ENT = DOT11_AUTH_ALGORITHM(0x0000000b);
  static const DOT11_AUTH_ALGO_IHV_START = DOT11_AUTH_ALGORITHM(0x80000000);
  static const DOT11_AUTH_ALGO_IHV_END = DOT11_AUTH_ALGORITHM(0xffffffff);
}

/// {@category enum}
extension type const DOT11_BSS_TYPE(int _) implements int {
  static const dot11_BSS_type_infrastructure = DOT11_BSS_TYPE(0x00000001);
  static const dot11_BSS_type_independent = DOT11_BSS_TYPE(0x00000002);
  static const dot11_BSS_type_any = DOT11_BSS_TYPE(0x00000003);
}

/// {@category enum}
extension type const DOT11_CIPHER_ALGORITHM(int _) implements int {
  static const DOT11_CIPHER_ALGO_NONE = DOT11_CIPHER_ALGORITHM(0x00000000);
  static const DOT11_CIPHER_ALGO_WEP40 = DOT11_CIPHER_ALGORITHM(0x00000001);
  static const DOT11_CIPHER_ALGO_TKIP = DOT11_CIPHER_ALGORITHM(0x00000002);
  static const DOT11_CIPHER_ALGO_CCMP = DOT11_CIPHER_ALGORITHM(0x00000004);
  static const DOT11_CIPHER_ALGO_WEP104 = DOT11_CIPHER_ALGORITHM(0x00000005);
  static const DOT11_CIPHER_ALGO_BIP = DOT11_CIPHER_ALGORITHM(0x00000006);
  static const DOT11_CIPHER_ALGO_GCMP = DOT11_CIPHER_ALGORITHM(0x00000008);
  static const DOT11_CIPHER_ALGO_GCMP_256 = DOT11_CIPHER_ALGORITHM(0x00000009);
  static const DOT11_CIPHER_ALGO_CCMP_256 = DOT11_CIPHER_ALGORITHM(0x0000000a);
  static const DOT11_CIPHER_ALGO_BIP_GMAC_128 =
      DOT11_CIPHER_ALGORITHM(0x0000000b);
  static const DOT11_CIPHER_ALGO_BIP_GMAC_256 =
      DOT11_CIPHER_ALGORITHM(0x0000000c);
  static const DOT11_CIPHER_ALGO_BIP_CMAC_256 =
      DOT11_CIPHER_ALGORITHM(0x0000000d);
  static const DOT11_CIPHER_ALGO_WPA_USE_GROUP =
      DOT11_CIPHER_ALGORITHM(0x00000100);
  static const DOT11_CIPHER_ALGO_RSN_USE_GROUP =
      DOT11_CIPHER_ALGORITHM(0x00000100);
  static const DOT11_CIPHER_ALGO_WEP = DOT11_CIPHER_ALGORITHM(0x00000101);
  static const DOT11_CIPHER_ALGO_IHV_START = DOT11_CIPHER_ALGORITHM(0x80000000);
  static const DOT11_CIPHER_ALGO_IHV_END = DOT11_CIPHER_ALGORITHM(0xffffffff);
}

/// {@category enum}
extension type const DOT11_PHY_TYPE(int _) implements int {
  static const dot11_phy_type_unknown = DOT11_PHY_TYPE(0x00000000);
  static const dot11_phy_type_any = DOT11_PHY_TYPE(0x00000000);
  static const dot11_phy_type_fhss = DOT11_PHY_TYPE(0x00000001);
  static const dot11_phy_type_dsss = DOT11_PHY_TYPE(0x00000002);
  static const dot11_phy_type_irbaseband = DOT11_PHY_TYPE(0x00000003);
  static const dot11_phy_type_ofdm = DOT11_PHY_TYPE(0x00000004);
  static const dot11_phy_type_hrdsss = DOT11_PHY_TYPE(0x00000005);
  static const dot11_phy_type_erp = DOT11_PHY_TYPE(0x00000006);
  static const dot11_phy_type_ht = DOT11_PHY_TYPE(0x00000007);
  static const dot11_phy_type_vht = DOT11_PHY_TYPE(0x00000008);
  static const dot11_phy_type_dmg = DOT11_PHY_TYPE(0x00000009);
  static const dot11_phy_type_he = DOT11_PHY_TYPE(0x0000000a);
  static const dot11_phy_type_eht = DOT11_PHY_TYPE(0x0000000b);
  static const dot11_phy_type_IHV_start = DOT11_PHY_TYPE(0x80000000);
  static const dot11_phy_type_IHV_end = DOT11_PHY_TYPE(0xffffffff);
}

/// {@category enum}
extension type const DOT11_RADIO_STATE(int _) implements int {
  static const dot11_radio_state_unknown = DOT11_RADIO_STATE(0x00000000);
  static const dot11_radio_state_on = DOT11_RADIO_STATE(0x00000001);
  static const dot11_radio_state_off = DOT11_RADIO_STATE(0x00000002);
}

/// {@category enum}
extension type const DPI_AWARENESS(int _) implements int {
  static const DPI_AWARENESS_INVALID = DPI_AWARENESS(0xffffffff);
  static const DPI_AWARENESS_UNAWARE = DPI_AWARENESS(0x00000000);
  static const DPI_AWARENESS_SYSTEM_AWARE = DPI_AWARENESS(0x00000001);
  static const DPI_AWARENESS_PER_MONITOR_AWARE = DPI_AWARENESS(0x00000002);
}

/// {@category enum}
extension type const DPI_HOSTING_BEHAVIOR(int _) implements int {
  static const DPI_HOSTING_BEHAVIOR_INVALID = DPI_HOSTING_BEHAVIOR(0xffffffff);
  static const DPI_HOSTING_BEHAVIOR_DEFAULT = DPI_HOSTING_BEHAVIOR(0x00000000);
  static const DPI_HOSTING_BEHAVIOR_MIXED = DPI_HOSTING_BEHAVIOR(0x00000001);
}

/// {@category enum}
extension type const DRAWEDGE_FLAGS(int _) implements int {
  static const BDR_RAISEDOUTER = DRAWEDGE_FLAGS(0x00000001);
  static const BDR_SUNKENOUTER = DRAWEDGE_FLAGS(0x00000002);
  static const BDR_RAISEDINNER = DRAWEDGE_FLAGS(0x00000004);
  static const BDR_SUNKENINNER = DRAWEDGE_FLAGS(0x00000008);
  static const BDR_OUTER = DRAWEDGE_FLAGS(0x00000003);
  static const BDR_INNER = DRAWEDGE_FLAGS(0x0000000c);
  static const BDR_RAISED = DRAWEDGE_FLAGS(0x00000005);
  static const BDR_SUNKEN = DRAWEDGE_FLAGS(0x0000000a);
  static const EDGE_RAISED = DRAWEDGE_FLAGS(0x00000005);
  static const EDGE_SUNKEN = DRAWEDGE_FLAGS(0x0000000a);
  static const EDGE_ETCHED = DRAWEDGE_FLAGS(0x00000006);
  static const EDGE_BUMP = DRAWEDGE_FLAGS(0x00000009);
}

/// {@category enum}
extension type const DRAWSTATE_FLAGS(int _) implements int {
  static const DST_COMPLEX = DRAWSTATE_FLAGS(0x00000000);
  static const DST_TEXT = DRAWSTATE_FLAGS(0x00000001);
  static const DST_PREFIXTEXT = DRAWSTATE_FLAGS(0x00000002);
  static const DST_ICON = DRAWSTATE_FLAGS(0x00000003);
  static const DST_BITMAP = DRAWSTATE_FLAGS(0x00000004);
  static const DSS_NORMAL = DRAWSTATE_FLAGS(0x00000000);
  static const DSS_UNION = DRAWSTATE_FLAGS(0x00000010);
  static const DSS_DISABLED = DRAWSTATE_FLAGS(0x00000020);
  static const DSS_MONO = DRAWSTATE_FLAGS(0x00000080);
  static const DSS_HIDEPREFIX = DRAWSTATE_FLAGS(0x00000200);
  static const DSS_PREFIXONLY = DRAWSTATE_FLAGS(0x00000400);
  static const DSS_RIGHT = DRAWSTATE_FLAGS(0x00008000);
}

/// {@category enum}
extension type const DRAW_CAPTION_FLAGS(int _) implements int {
  static const DC_ACTIVE = DRAW_CAPTION_FLAGS(0x00000001);
  static const DC_BUTTONS = DRAW_CAPTION_FLAGS(0x00001000);
  static const DC_GRADIENT = DRAW_CAPTION_FLAGS(0x00000020);
  static const DC_ICON = DRAW_CAPTION_FLAGS(0x00000004);
  static const DC_INBUTTON = DRAW_CAPTION_FLAGS(0x00000010);
  static const DC_SMALLCAP = DRAW_CAPTION_FLAGS(0x00000002);
  static const DC_TEXT = DRAW_CAPTION_FLAGS(0x00000008);
}

/// {@category enum}
extension type const DRAW_EDGE_FLAGS(int _) implements int {
  static const BF_ADJUST = DRAW_EDGE_FLAGS(0x00002000);
  static const BF_BOTTOM = DRAW_EDGE_FLAGS(0x00000008);
  static const BF_BOTTOMLEFT = DRAW_EDGE_FLAGS(0x00000009);
  static const BF_BOTTOMRIGHT = DRAW_EDGE_FLAGS(0x0000000c);
  static const BF_DIAGONAL = DRAW_EDGE_FLAGS(0x00000010);
  static const BF_DIAGONAL_ENDBOTTOMLEFT = DRAW_EDGE_FLAGS(0x00000019);
  static const BF_DIAGONAL_ENDBOTTOMRIGHT = DRAW_EDGE_FLAGS(0x0000001c);
  static const BF_DIAGONAL_ENDTOPLEFT = DRAW_EDGE_FLAGS(0x00000013);
  static const BF_DIAGONAL_ENDTOPRIGHT = DRAW_EDGE_FLAGS(0x00000016);
  static const BF_FLAT = DRAW_EDGE_FLAGS(0x00004000);
  static const BF_LEFT = DRAW_EDGE_FLAGS(0x00000001);
  static const BF_MIDDLE = DRAW_EDGE_FLAGS(0x00000800);
  static const BF_MONO = DRAW_EDGE_FLAGS(0x00008000);
  static const BF_RECT = DRAW_EDGE_FLAGS(0x0000000f);
  static const BF_RIGHT = DRAW_EDGE_FLAGS(0x00000004);
  static const BF_SOFT = DRAW_EDGE_FLAGS(0x00001000);
  static const BF_TOP = DRAW_EDGE_FLAGS(0x00000002);
  static const BF_TOPLEFT = DRAW_EDGE_FLAGS(0x00000003);
  static const BF_TOPRIGHT = DRAW_EDGE_FLAGS(0x00000006);
}

/// {@category enum}
extension type const DRAW_TEXT_FORMAT(int _) implements int {
  static const DT_BOTTOM = DRAW_TEXT_FORMAT(0x00000008);
  static const DT_CALCRECT = DRAW_TEXT_FORMAT(0x00000400);
  static const DT_CENTER = DRAW_TEXT_FORMAT(0x00000001);
  static const DT_EDITCONTROL = DRAW_TEXT_FORMAT(0x00002000);
  static const DT_END_ELLIPSIS = DRAW_TEXT_FORMAT(0x00008000);
  static const DT_EXPANDTABS = DRAW_TEXT_FORMAT(0x00000040);
  static const DT_EXTERNALLEADING = DRAW_TEXT_FORMAT(0x00000200);
  static const DT_HIDEPREFIX = DRAW_TEXT_FORMAT(0x00100000);
  static const DT_INTERNAL = DRAW_TEXT_FORMAT(0x00001000);
  static const DT_LEFT = DRAW_TEXT_FORMAT(0x00000000);
  static const DT_MODIFYSTRING = DRAW_TEXT_FORMAT(0x00010000);
  static const DT_NOCLIP = DRAW_TEXT_FORMAT(0x00000100);
  static const DT_NOFULLWIDTHCHARBREAK = DRAW_TEXT_FORMAT(0x00080000);
  static const DT_NOPREFIX = DRAW_TEXT_FORMAT(0x00000800);
  static const DT_PATH_ELLIPSIS = DRAW_TEXT_FORMAT(0x00004000);
  static const DT_PREFIXONLY = DRAW_TEXT_FORMAT(0x00200000);
  static const DT_RIGHT = DRAW_TEXT_FORMAT(0x00000002);
  static const DT_RTLREADING = DRAW_TEXT_FORMAT(0x00020000);
  static const DT_SINGLELINE = DRAW_TEXT_FORMAT(0x00000020);
  static const DT_TABSTOP = DRAW_TEXT_FORMAT(0x00000080);
  static const DT_TOP = DRAW_TEXT_FORMAT(0x00000000);
  static const DT_VCENTER = DRAW_TEXT_FORMAT(0x00000004);
  static const DT_WORDBREAK = DRAW_TEXT_FORMAT(0x00000010);
  static const DT_WORD_ELLIPSIS = DRAW_TEXT_FORMAT(0x00040000);
}

/// {@category enum}
extension type const DRAW_THEME_PARENT_BACKGROUND_FLAGS(int _) implements int {
  static const DTPB_WINDOWDC = DRAW_THEME_PARENT_BACKGROUND_FLAGS(0x00000001);
  static const DTPB_USECTLCOLORSTATIC =
      DRAW_THEME_PARENT_BACKGROUND_FLAGS(0x00000002);
  static const DTPB_USEERASEBKGND =
      DRAW_THEME_PARENT_BACKGROUND_FLAGS(0x00000004);
}

/// {@category enum}
extension type const DSREG_JOIN_TYPE(int _) implements int {
  static const DSREG_UNKNOWN_JOIN = DSREG_JOIN_TYPE(0x00000000);
  static const DSREG_DEVICE_JOIN = DSREG_JOIN_TYPE(0x00000001);
  static const DSREG_WORKPLACE_JOIN = DSREG_JOIN_TYPE(0x00000002);
}

/// {@category enum}
extension type const DTTOPTS_FLAGS(int _) implements int {
  static const DTT_TEXTCOLOR = DTTOPTS_FLAGS(0x00000001);
  static const DTT_BORDERCOLOR = DTTOPTS_FLAGS(0x00000002);
  static const DTT_SHADOWCOLOR = DTTOPTS_FLAGS(0x00000004);
  static const DTT_SHADOWTYPE = DTTOPTS_FLAGS(0x00000008);
  static const DTT_SHADOWOFFSET = DTTOPTS_FLAGS(0x00000010);
  static const DTT_BORDERSIZE = DTTOPTS_FLAGS(0x00000020);
  static const DTT_FONTPROP = DTTOPTS_FLAGS(0x00000040);
  static const DTT_COLORPROP = DTTOPTS_FLAGS(0x00000080);
  static const DTT_STATEID = DTTOPTS_FLAGS(0x00000100);
  static const DTT_CALCRECT = DTTOPTS_FLAGS(0x00000200);
  static const DTT_APPLYOVERLAY = DTTOPTS_FLAGS(0x00000400);
  static const DTT_GLOWSIZE = DTTOPTS_FLAGS(0x00000800);
  static const DTT_CALLBACK = DTTOPTS_FLAGS(0x00001000);
  static const DTT_COMPOSITED = DTTOPTS_FLAGS(0x00002000);
  static const DTT_VALIDBITS = DTTOPTS_FLAGS(0x00002fff);
}

/// {@category enum}
extension type const DUPLICATE_HANDLE_OPTIONS(int _) implements int {
  static const DUPLICATE_CLOSE_SOURCE = DUPLICATE_HANDLE_OPTIONS(0x00000001);
  static const DUPLICATE_SAME_ACCESS = DUPLICATE_HANDLE_OPTIONS(0x00000002);
}

/// {@category enum}
extension type const DWM_SHOWCONTACT(int _) implements int {
  static const DWMSC_DOWN = DWM_SHOWCONTACT(0x00000001);
  static const DWMSC_UP = DWM_SHOWCONTACT(0x00000002);
  static const DWMSC_DRAG = DWM_SHOWCONTACT(0x00000004);
  static const DWMSC_HOLD = DWM_SHOWCONTACT(0x00000008);
  static const DWMSC_PENBARREL = DWM_SHOWCONTACT(0x00000010);
  static const DWMSC_NONE = DWM_SHOWCONTACT(0x00000000);
  static const DWMSC_ALL = DWM_SHOWCONTACT(0xffffffff);
}

/// {@category enum}
extension type const DockPosition(int _) implements int {
  static const DockPosition_Top = DockPosition(0x00000000);
  static const DockPosition_Left = DockPosition(0x00000001);
  static const DockPosition_Bottom = DockPosition(0x00000002);
  static const DockPosition_Right = DockPosition(0x00000003);
  static const DockPosition_Fill = DockPosition(0x00000004);
  static const DockPosition_None = DockPosition(0x00000005);
}

/// {@category enum}
extension type const EDataFlow(int _) implements int {
  static const eRender = EDataFlow(0x00000000);
  static const eCapture = EDataFlow(0x00000001);
  static const eAll = EDataFlow(0x00000002);
  static const EDataFlow_enum_count = EDataFlow(0x00000003);
}

/// {@category enum}
extension type const ENABLE_SCROLL_BAR_ARROWS(int _) implements int {
  static const ESB_DISABLE_BOTH = ENABLE_SCROLL_BAR_ARROWS(0x00000003);
  static const ESB_DISABLE_DOWN = ENABLE_SCROLL_BAR_ARROWS(0x00000002);
  static const ESB_DISABLE_LEFT = ENABLE_SCROLL_BAR_ARROWS(0x00000001);
  static const ESB_DISABLE_LTUP = ENABLE_SCROLL_BAR_ARROWS(0x00000001);
  static const ESB_DISABLE_RIGHT = ENABLE_SCROLL_BAR_ARROWS(0x00000002);
  static const ESB_DISABLE_RTDN = ENABLE_SCROLL_BAR_ARROWS(0x00000002);
  static const ESB_DISABLE_UP = ENABLE_SCROLL_BAR_ARROWS(0x00000001);
  static const ESB_ENABLE_BOTH = ENABLE_SCROLL_BAR_ARROWS(0x00000000);
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_FLAGS(int _) implements int {
  static const EDS_RAWMODE = ENUM_DISPLAY_SETTINGS_FLAGS(0x00000002);
  static const EDS_ROTATEDMODE = ENUM_DISPLAY_SETTINGS_FLAGS(0x00000004);
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_MODE(int _) implements int {
  static const ENUM_CURRENT_SETTINGS = ENUM_DISPLAY_SETTINGS_MODE(0xffffffff);
  static const ENUM_REGISTRY_SETTINGS = ENUM_DISPLAY_SETTINGS_MODE(0xfffffffe);
}

/// {@category enum}
extension type const ENUM_PROCESS_MODULES_EX_FLAGS(int _) implements int {
  static const LIST_MODULES_ALL = ENUM_PROCESS_MODULES_EX_FLAGS(0x00000003);
  static const LIST_MODULES_DEFAULT = ENUM_PROCESS_MODULES_EX_FLAGS(0x00000000);
  static const LIST_MODULES_32BIT = ENUM_PROCESS_MODULES_EX_FLAGS(0x00000001);
  static const LIST_MODULES_64BIT = ENUM_PROCESS_MODULES_EX_FLAGS(0x00000002);
}

/// {@category enum}
extension type const ENUM_SERVICE_STATE(int _) implements int {
  static const SERVICE_ACTIVE = ENUM_SERVICE_STATE(0x00000001);
  static const SERVICE_INACTIVE = ENUM_SERVICE_STATE(0x00000002);
  static const SERVICE_STATE_ALL = ENUM_SERVICE_STATE(0x00000003);
}

/// {@category enum}
extension type const ENUM_SERVICE_TYPE(int _) implements int {
  static const SERVICE_DRIVER = ENUM_SERVICE_TYPE(0x0000000b);
  static const SERVICE_KERNEL_DRIVER = ENUM_SERVICE_TYPE(0x00000001);
  static const SERVICE_WIN32 = ENUM_SERVICE_TYPE(0x00000030);
  static const SERVICE_WIN32_SHARE_PROCESS = ENUM_SERVICE_TYPE(0x00000020);
  static const SERVICE_ADAPTER = ENUM_SERVICE_TYPE(0x00000004);
  static const SERVICE_FILE_SYSTEM_DRIVER = ENUM_SERVICE_TYPE(0x00000002);
  static const SERVICE_RECOGNIZER_DRIVER = ENUM_SERVICE_TYPE(0x00000008);
  static const SERVICE_WIN32_OWN_PROCESS = ENUM_SERVICE_TYPE(0x00000010);
  static const SERVICE_USER_OWN_PROCESS = ENUM_SERVICE_TYPE(0x00000050);
  static const SERVICE_USER_SHARE_PROCESS = ENUM_SERVICE_TYPE(0x00000060);
}

/// {@category enum}
extension type const EPrintXPSJobOperation(int _) implements int {
  static const kJobProduction = EPrintXPSJobOperation(0x00000001);
  static const kJobConsumption = EPrintXPSJobOperation(0x00000002);
}

/// {@category enum}
extension type const EPrintXPSJobProgress(int _) implements int {
  static const kAddingDocumentSequence = EPrintXPSJobProgress(0x00000000);
  static const kDocumentSequenceAdded = EPrintXPSJobProgress(0x00000001);
  static const kAddingFixedDocument = EPrintXPSJobProgress(0x00000002);
  static const kFixedDocumentAdded = EPrintXPSJobProgress(0x00000003);
  static const kAddingFixedPage = EPrintXPSJobProgress(0x00000004);
  static const kFixedPageAdded = EPrintXPSJobProgress(0x00000005);
  static const kResourceAdded = EPrintXPSJobProgress(0x00000006);
  static const kFontAdded = EPrintXPSJobProgress(0x00000007);
  static const kImageAdded = EPrintXPSJobProgress(0x00000008);
  static const kXpsDocumentCommitted = EPrintXPSJobProgress(0x00000009);
}

/// {@category enum}
extension type const ERole(int _) implements int {
  static const eConsole = ERole(0x00000000);
  static const eMultimedia = ERole(0x00000001);
  static const eCommunications = ERole(0x00000002);
  static const ERole_enum_count = ERole(0x00000003);
}

/// {@category enum}
extension type const ESCAPE_COMM_FUNCTION(int _) implements int {
  static const CLRBREAK = ESCAPE_COMM_FUNCTION(0x00000009);
  static const CLRDTR = ESCAPE_COMM_FUNCTION(0x00000006);
  static const CLRRTS = ESCAPE_COMM_FUNCTION(0x00000004);
  static const SETBREAK = ESCAPE_COMM_FUNCTION(0x00000008);
  static const SETDTR = ESCAPE_COMM_FUNCTION(0x00000005);
  static const SETRTS = ESCAPE_COMM_FUNCTION(0x00000003);
  static const SETXOFF = ESCAPE_COMM_FUNCTION(0x00000001);
  static const SETXON = ESCAPE_COMM_FUNCTION(0x00000002);
}

/// {@category enum}
extension type const ETO_OPTIONS(int _) implements int {
  static const ETO_OPAQUE = ETO_OPTIONS(0x00000002);
  static const ETO_CLIPPED = ETO_OPTIONS(0x00000004);
  static const ETO_GLYPH_INDEX = ETO_OPTIONS(0x00000010);
  static const ETO_RTLREADING = ETO_OPTIONS(0x00000080);
  static const ETO_NUMERICSLOCAL = ETO_OPTIONS(0x00000400);
  static const ETO_NUMERICSLATIN = ETO_OPTIONS(0x00000800);
  static const ETO_IGNORELANGUAGE = ETO_OPTIONS(0x00001000);
  static const ETO_PDY = ETO_OPTIONS(0x00002000);
  static const ETO_REVERSE_INDEX_MAP = ETO_OPTIONS(0x00010000);
}

/// {@category enum}
extension type const EXECUTION_STATE(int _) implements int {
  static const ES_AWAYMODE_REQUIRED = EXECUTION_STATE(0x00000040);
  static const ES_CONTINUOUS = EXECUTION_STATE(0x80000000);
  static const ES_DISPLAY_REQUIRED = EXECUTION_STATE(0x00000002);
  static const ES_SYSTEM_REQUIRED = EXECUTION_STATE(0x00000001);
  static const ES_USER_PRESENT = EXECUTION_STATE(0x00000004);
}

/// {@category enum}
extension type const ExpandCollapseState(int _) implements int {
  static const ExpandCollapseState_Collapsed = ExpandCollapseState(0x00000000);
  static const ExpandCollapseState_Expanded = ExpandCollapseState(0x00000001);
  static const ExpandCollapseState_PartiallyExpanded =
      ExpandCollapseState(0x00000002);
  static const ExpandCollapseState_LeafNode = ExpandCollapseState(0x00000003);
}

/// {@category enum}
extension type const FDAP(int _) implements int {
  static const FDAP_BOTTOM = FDAP(0x00000000);
  static const FDAP_TOP = FDAP(0x00000001);
}

/// {@category enum}
extension type const FFFP_MODE(int _) implements int {
  static const FFFP_EXACTMATCH = FFFP_MODE(0x00000000);
  static const FFFP_NEARESTPARENTMATCH = FFFP_MODE(0x00000001);
}

/// {@category enum}
extension type const FILEOPENDIALOGOPTIONS(int _) implements int {
  static const FOS_OVERWRITEPROMPT = FILEOPENDIALOGOPTIONS(0x00000002);
  static const FOS_STRICTFILETYPES = FILEOPENDIALOGOPTIONS(0x00000004);
  static const FOS_NOCHANGEDIR = FILEOPENDIALOGOPTIONS(0x00000008);
  static const FOS_PICKFOLDERS = FILEOPENDIALOGOPTIONS(0x00000020);
  static const FOS_FORCEFILESYSTEM = FILEOPENDIALOGOPTIONS(0x00000040);
  static const FOS_ALLNONSTORAGEITEMS = FILEOPENDIALOGOPTIONS(0x00000080);
  static const FOS_NOVALIDATE = FILEOPENDIALOGOPTIONS(0x00000100);
  static const FOS_ALLOWMULTISELECT = FILEOPENDIALOGOPTIONS(0x00000200);
  static const FOS_PATHMUSTEXIST = FILEOPENDIALOGOPTIONS(0x00000800);
  static const FOS_FILEMUSTEXIST = FILEOPENDIALOGOPTIONS(0x00001000);
  static const FOS_CREATEPROMPT = FILEOPENDIALOGOPTIONS(0x00002000);
  static const FOS_SHAREAWARE = FILEOPENDIALOGOPTIONS(0x00004000);
  static const FOS_NOREADONLYRETURN = FILEOPENDIALOGOPTIONS(0x00008000);
  static const FOS_NOTESTFILECREATE = FILEOPENDIALOGOPTIONS(0x00010000);
  static const FOS_HIDEMRUPLACES = FILEOPENDIALOGOPTIONS(0x00020000);
  static const FOS_HIDEPINNEDPLACES = FILEOPENDIALOGOPTIONS(0x00040000);
  static const FOS_NODEREFERENCELINKS = FILEOPENDIALOGOPTIONS(0x00100000);
  static const FOS_OKBUTTONNEEDSINTERACTION = FILEOPENDIALOGOPTIONS(0x00200000);
  static const FOS_DONTADDTORECENT = FILEOPENDIALOGOPTIONS(0x02000000);
  static const FOS_FORCESHOWHIDDEN = FILEOPENDIALOGOPTIONS(0x10000000);
  static const FOS_DEFAULTNOMINIMODE = FILEOPENDIALOGOPTIONS(0x20000000);
  static const FOS_FORCEPREVIEWPANEON = FILEOPENDIALOGOPTIONS(0x40000000);
  static const FOS_SUPPORTSTREAMABLEITEMS = FILEOPENDIALOGOPTIONS(0x80000000);
}

/// {@category enum}
extension type const FILE_CREATION_DISPOSITION(int _) implements int {
  static const CREATE_NEW = FILE_CREATION_DISPOSITION(0x00000001);
  static const CREATE_ALWAYS = FILE_CREATION_DISPOSITION(0x00000002);
  static const OPEN_EXISTING = FILE_CREATION_DISPOSITION(0x00000003);
  static const OPEN_ALWAYS = FILE_CREATION_DISPOSITION(0x00000004);
  static const TRUNCATE_EXISTING = FILE_CREATION_DISPOSITION(0x00000005);
}

/// {@category enum}
extension type const FILE_FLAGS_AND_ATTRIBUTES(int _) implements int {
  static const FILE_ATTRIBUTE_READONLY = FILE_FLAGS_AND_ATTRIBUTES(0x00000001);
  static const FILE_ATTRIBUTE_HIDDEN = FILE_FLAGS_AND_ATTRIBUTES(0x00000002);
  static const FILE_ATTRIBUTE_SYSTEM = FILE_FLAGS_AND_ATTRIBUTES(0x00000004);
  static const FILE_ATTRIBUTE_DIRECTORY = FILE_FLAGS_AND_ATTRIBUTES(0x00000010);
  static const FILE_ATTRIBUTE_ARCHIVE = FILE_FLAGS_AND_ATTRIBUTES(0x00000020);
  static const FILE_ATTRIBUTE_DEVICE = FILE_FLAGS_AND_ATTRIBUTES(0x00000040);
  static const FILE_ATTRIBUTE_NORMAL = FILE_FLAGS_AND_ATTRIBUTES(0x00000080);
  static const FILE_ATTRIBUTE_TEMPORARY = FILE_FLAGS_AND_ATTRIBUTES(0x00000100);
  static const FILE_ATTRIBUTE_SPARSE_FILE =
      FILE_FLAGS_AND_ATTRIBUTES(0x00000200);
  static const FILE_ATTRIBUTE_REPARSE_POINT =
      FILE_FLAGS_AND_ATTRIBUTES(0x00000400);
  static const FILE_ATTRIBUTE_COMPRESSED =
      FILE_FLAGS_AND_ATTRIBUTES(0x00000800);
  static const FILE_ATTRIBUTE_OFFLINE = FILE_FLAGS_AND_ATTRIBUTES(0x00001000);
  static const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED =
      FILE_FLAGS_AND_ATTRIBUTES(0x00002000);
  static const FILE_ATTRIBUTE_ENCRYPTED = FILE_FLAGS_AND_ATTRIBUTES(0x00004000);
  static const FILE_ATTRIBUTE_INTEGRITY_STREAM =
      FILE_FLAGS_AND_ATTRIBUTES(0x00008000);
  static const FILE_ATTRIBUTE_VIRTUAL = FILE_FLAGS_AND_ATTRIBUTES(0x00010000);
  static const FILE_ATTRIBUTE_NO_SCRUB_DATA =
      FILE_FLAGS_AND_ATTRIBUTES(0x00020000);
  static const FILE_ATTRIBUTE_EA = FILE_FLAGS_AND_ATTRIBUTES(0x00040000);
  static const FILE_ATTRIBUTE_PINNED = FILE_FLAGS_AND_ATTRIBUTES(0x00080000);
  static const FILE_ATTRIBUTE_UNPINNED = FILE_FLAGS_AND_ATTRIBUTES(0x00100000);
  static const FILE_ATTRIBUTE_RECALL_ON_OPEN =
      FILE_FLAGS_AND_ATTRIBUTES(0x00040000);
  static const FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS =
      FILE_FLAGS_AND_ATTRIBUTES(0x00400000);
  static const FILE_FLAG_WRITE_THROUGH = FILE_FLAGS_AND_ATTRIBUTES(0x80000000);
  static const FILE_FLAG_OVERLAPPED = FILE_FLAGS_AND_ATTRIBUTES(0x40000000);
  static const FILE_FLAG_NO_BUFFERING = FILE_FLAGS_AND_ATTRIBUTES(0x20000000);
  static const FILE_FLAG_RANDOM_ACCESS = FILE_FLAGS_AND_ATTRIBUTES(0x10000000);
  static const FILE_FLAG_SEQUENTIAL_SCAN =
      FILE_FLAGS_AND_ATTRIBUTES(0x08000000);
  static const FILE_FLAG_DELETE_ON_CLOSE =
      FILE_FLAGS_AND_ATTRIBUTES(0x04000000);
  static const FILE_FLAG_BACKUP_SEMANTICS =
      FILE_FLAGS_AND_ATTRIBUTES(0x02000000);
  static const FILE_FLAG_POSIX_SEMANTICS =
      FILE_FLAGS_AND_ATTRIBUTES(0x01000000);
  static const FILE_FLAG_SESSION_AWARE = FILE_FLAGS_AND_ATTRIBUTES(0x00800000);
  static const FILE_FLAG_OPEN_REPARSE_POINT =
      FILE_FLAGS_AND_ATTRIBUTES(0x00200000);
  static const FILE_FLAG_OPEN_NO_RECALL = FILE_FLAGS_AND_ATTRIBUTES(0x00100000);
  static const FILE_FLAG_FIRST_PIPE_INSTANCE =
      FILE_FLAGS_AND_ATTRIBUTES(0x00080000);
  static const PIPE_ACCESS_DUPLEX = FILE_FLAGS_AND_ATTRIBUTES(0x00000003);
  static const PIPE_ACCESS_INBOUND = FILE_FLAGS_AND_ATTRIBUTES(0x00000001);
  static const PIPE_ACCESS_OUTBOUND = FILE_FLAGS_AND_ATTRIBUTES(0x00000002);
  static const SECURITY_ANONYMOUS = FILE_FLAGS_AND_ATTRIBUTES(0x00000000);
  static const SECURITY_IDENTIFICATION = FILE_FLAGS_AND_ATTRIBUTES(0x00010000);
  static const SECURITY_IMPERSONATION = FILE_FLAGS_AND_ATTRIBUTES(0x00020000);
  static const SECURITY_DELEGATION = FILE_FLAGS_AND_ATTRIBUTES(0x00030000);
  static const SECURITY_CONTEXT_TRACKING =
      FILE_FLAGS_AND_ATTRIBUTES(0x00040000);
  static const SECURITY_EFFECTIVE_ONLY = FILE_FLAGS_AND_ATTRIBUTES(0x00080000);
  static const SECURITY_SQOS_PRESENT = FILE_FLAGS_AND_ATTRIBUTES(0x00100000);
  static const SECURITY_VALID_SQOS_FLAGS =
      FILE_FLAGS_AND_ATTRIBUTES(0x001f0000);
}

/// {@category enum}
extension type const FILE_INFO_BY_HANDLE_CLASS(int _) implements int {
  static const FileBasicInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000000);
  static const FileStandardInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000001);
  static const FileNameInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000002);
  static const FileRenameInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000003);
  static const FileDispositionInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000004);
  static const FileAllocationInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000005);
  static const FileEndOfFileInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000006);
  static const FileStreamInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000007);
  static const FileCompressionInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000008);
  static const FileAttributeTagInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000009);
  static const FileIdBothDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(0x0000000a);
  static const FileIdBothDirectoryRestartInfo =
      FILE_INFO_BY_HANDLE_CLASS(0x0000000b);
  static const FileIoPriorityHintInfo = FILE_INFO_BY_HANDLE_CLASS(0x0000000c);
  static const FileRemoteProtocolInfo = FILE_INFO_BY_HANDLE_CLASS(0x0000000d);
  static const FileFullDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(0x0000000e);
  static const FileFullDirectoryRestartInfo =
      FILE_INFO_BY_HANDLE_CLASS(0x0000000f);
  static const FileStorageInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000010);
  static const FileAlignmentInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000011);
  static const FileIdInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000012);
  static const FileIdExtdDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000013);
  static const FileIdExtdDirectoryRestartInfo =
      FILE_INFO_BY_HANDLE_CLASS(0x00000014);
  static const FileDispositionInfoEx = FILE_INFO_BY_HANDLE_CLASS(0x00000015);
  static const FileRenameInfoEx = FILE_INFO_BY_HANDLE_CLASS(0x00000016);
  static const FileCaseSensitiveInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000017);
  static const FileNormalizedNameInfo = FILE_INFO_BY_HANDLE_CLASS(0x00000018);
  static const MaximumFileInfoByHandleClass =
      FILE_INFO_BY_HANDLE_CLASS(0x00000019);
}

/// {@category enum}
extension type const FILE_NOTIFY_CHANGE(int _) implements int {
  static const FILE_NOTIFY_CHANGE_FILE_NAME = FILE_NOTIFY_CHANGE(0x00000001);
  static const FILE_NOTIFY_CHANGE_DIR_NAME = FILE_NOTIFY_CHANGE(0x00000002);
  static const FILE_NOTIFY_CHANGE_ATTRIBUTES = FILE_NOTIFY_CHANGE(0x00000004);
  static const FILE_NOTIFY_CHANGE_SIZE = FILE_NOTIFY_CHANGE(0x00000008);
  static const FILE_NOTIFY_CHANGE_LAST_WRITE = FILE_NOTIFY_CHANGE(0x00000010);
  static const FILE_NOTIFY_CHANGE_LAST_ACCESS = FILE_NOTIFY_CHANGE(0x00000020);
  static const FILE_NOTIFY_CHANGE_CREATION = FILE_NOTIFY_CHANGE(0x00000040);
  static const FILE_NOTIFY_CHANGE_SECURITY = FILE_NOTIFY_CHANGE(0x00000100);
}

/// {@category enum}
extension type const FILE_SHARE_MODE(int _) implements int {
  static const FILE_SHARE_NONE = FILE_SHARE_MODE(0x00000000);
  static const FILE_SHARE_DELETE = FILE_SHARE_MODE(0x00000004);
  static const FILE_SHARE_READ = FILE_SHARE_MODE(0x00000001);
  static const FILE_SHARE_WRITE = FILE_SHARE_MODE(0x00000002);
}

/// {@category enum}
extension type const FILE_TYPE(int _) implements int {
  static const FILE_TYPE_UNKNOWN = FILE_TYPE(0x00000000);
  static const FILE_TYPE_DISK = FILE_TYPE(0x00000001);
  static const FILE_TYPE_CHAR = FILE_TYPE(0x00000002);
  static const FILE_TYPE_PIPE = FILE_TYPE(0x00000003);
  static const FILE_TYPE_REMOTE = FILE_TYPE(0x00008000);
}

/// {@category enum}
extension type const FILE_USAGE_TYPE(int _) implements int {
  static const FUT_PLAYING = FILE_USAGE_TYPE(0x00000000);
  static const FUT_EDITING = FILE_USAGE_TYPE(0x00000001);
  static const FUT_GENERIC = FILE_USAGE_TYPE(0x00000002);
}

/// {@category enum}
extension type const FINDEX_INFO_LEVELS(int _) implements int {
  static const FindExInfoStandard = FINDEX_INFO_LEVELS(0x00000000);
  static const FindExInfoBasic = FINDEX_INFO_LEVELS(0x00000001);
  static const FindExInfoMaxInfoLevel = FINDEX_INFO_LEVELS(0x00000002);
}

/// {@category enum}
extension type const FINDEX_SEARCH_OPS(int _) implements int {
  static const FindExSearchNameMatch = FINDEX_SEARCH_OPS(0x00000000);
  static const FindExSearchLimitToDirectories = FINDEX_SEARCH_OPS(0x00000001);
  static const FindExSearchLimitToDevices = FINDEX_SEARCH_OPS(0x00000002);
  static const FindExSearchMaxSearchOp = FINDEX_SEARCH_OPS(0x00000003);
}

/// {@category enum}
extension type const FINDREPLACE_FLAGS(int _) implements int {
  static const FR_DOWN = FINDREPLACE_FLAGS(0x00000001);
  static const FR_WHOLEWORD = FINDREPLACE_FLAGS(0x00000002);
  static const FR_MATCHCASE = FINDREPLACE_FLAGS(0x00000004);
  static const FR_FINDNEXT = FINDREPLACE_FLAGS(0x00000008);
  static const FR_REPLACE = FINDREPLACE_FLAGS(0x00000010);
  static const FR_REPLACEALL = FINDREPLACE_FLAGS(0x00000020);
  static const FR_DIALOGTERM = FINDREPLACE_FLAGS(0x00000040);
  static const FR_SHOWHELP = FINDREPLACE_FLAGS(0x00000080);
  static const FR_ENABLEHOOK = FINDREPLACE_FLAGS(0x00000100);
  static const FR_ENABLETEMPLATE = FINDREPLACE_FLAGS(0x00000200);
  static const FR_NOUPDOWN = FINDREPLACE_FLAGS(0x00000400);
  static const FR_NOMATCHCASE = FINDREPLACE_FLAGS(0x00000800);
  static const FR_NOWHOLEWORD = FINDREPLACE_FLAGS(0x00001000);
  static const FR_ENABLETEMPLATEHANDLE = FINDREPLACE_FLAGS(0x00002000);
  static const FR_HIDEUPDOWN = FINDREPLACE_FLAGS(0x00004000);
  static const FR_HIDEMATCHCASE = FINDREPLACE_FLAGS(0x00008000);
  static const FR_HIDEWHOLEWORD = FINDREPLACE_FLAGS(0x00010000);
  static const FR_RAW = FINDREPLACE_FLAGS(0x00020000);
  static const FR_SHOWWRAPAROUND = FINDREPLACE_FLAGS(0x00040000);
  static const FR_NOWRAPAROUND = FINDREPLACE_FLAGS(0x00080000);
  static const FR_WRAPAROUND = FINDREPLACE_FLAGS(0x00100000);
  static const FR_MATCHDIAC = FINDREPLACE_FLAGS(0x20000000);
  static const FR_MATCHKASHIDA = FINDREPLACE_FLAGS(0x40000000);
  static const FR_MATCHALEFHAMZA = FINDREPLACE_FLAGS(0x80000000);
}

/// {@category enum}
extension type const FIND_FIRST_EX_FLAGS(int _) implements int {
  static const FIND_FIRST_EX_CASE_SENSITIVE = FIND_FIRST_EX_FLAGS(0x00000001);
  static const FIND_FIRST_EX_LARGE_FETCH = FIND_FIRST_EX_FLAGS(0x00000002);
  static const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY =
      FIND_FIRST_EX_FLAGS(0x00000004);
}

/// {@category enum}
extension type const FIRMWARE_TABLE_PROVIDER(int _) implements int {
  static const ACPI = FIRMWARE_TABLE_PROVIDER(0x41435049);
  static const FIRM = FIRMWARE_TABLE_PROVIDER(0x4649524d);
  static const RSMB = FIRMWARE_TABLE_PROVIDER(0x52534d42);
}

/// {@category enum}
extension type const FONT_CHARSET(int _) implements int {
  static const ANSI_CHARSET = FONT_CHARSET(0x00);
  static const DEFAULT_CHARSET = FONT_CHARSET(0x01);
  static const SYMBOL_CHARSET = FONT_CHARSET(0x02);
  static const SHIFTJIS_CHARSET = FONT_CHARSET(0x80);
  static const HANGEUL_CHARSET = FONT_CHARSET(0x81);
  static const HANGUL_CHARSET = FONT_CHARSET(0x81);
  static const GB2312_CHARSET = FONT_CHARSET(0x86);
  static const CHINESEBIG5_CHARSET = FONT_CHARSET(0x88);
  static const OEM_CHARSET = FONT_CHARSET(0xff);
  static const JOHAB_CHARSET = FONT_CHARSET(0x82);
  static const HEBREW_CHARSET = FONT_CHARSET(0xb1);
  static const ARABIC_CHARSET = FONT_CHARSET(0xb2);
  static const GREEK_CHARSET = FONT_CHARSET(0xa1);
  static const TURKISH_CHARSET = FONT_CHARSET(0xa2);
  static const VIETNAMESE_CHARSET = FONT_CHARSET(0xa3);
  static const THAI_CHARSET = FONT_CHARSET(0xde);
  static const EASTEUROPE_CHARSET = FONT_CHARSET(0xee);
  static const RUSSIAN_CHARSET = FONT_CHARSET(0xcc);
  static const MAC_CHARSET = FONT_CHARSET(0x4d);
  static const BALTIC_CHARSET = FONT_CHARSET(0xba);
}

/// {@category enum}
extension type const FONT_CLIP_PRECISION(int _) implements int {
  static const CLIP_DEFAULT_PRECIS = FONT_CLIP_PRECISION(0x00);
  static const CLIP_CHARACTER_PRECIS = FONT_CLIP_PRECISION(0x01);
  static const CLIP_STROKE_PRECIS = FONT_CLIP_PRECISION(0x02);
  static const CLIP_MASK = FONT_CLIP_PRECISION(0x0f);
  static const CLIP_LH_ANGLES = FONT_CLIP_PRECISION(0x10);
  static const CLIP_TT_ALWAYS = FONT_CLIP_PRECISION(0x20);
  static const CLIP_DFA_DISABLE = FONT_CLIP_PRECISION(0x40);
  static const CLIP_EMBEDDED = FONT_CLIP_PRECISION(0x80);
  static const CLIP_DFA_OVERRIDE = FONT_CLIP_PRECISION(0x40);
}

/// {@category enum}
extension type const FONT_OUTPUT_PRECISION(int _) implements int {
  static const OUT_DEFAULT_PRECIS = FONT_OUTPUT_PRECISION(0x00);
  static const OUT_STRING_PRECIS = FONT_OUTPUT_PRECISION(0x01);
  static const OUT_CHARACTER_PRECIS = FONT_OUTPUT_PRECISION(0x02);
  static const OUT_STROKE_PRECIS = FONT_OUTPUT_PRECISION(0x03);
  static const OUT_TT_PRECIS = FONT_OUTPUT_PRECISION(0x04);
  static const OUT_DEVICE_PRECIS = FONT_OUTPUT_PRECISION(0x05);
  static const OUT_RASTER_PRECIS = FONT_OUTPUT_PRECISION(0x06);
  static const OUT_TT_ONLY_PRECIS = FONT_OUTPUT_PRECISION(0x07);
  static const OUT_OUTLINE_PRECIS = FONT_OUTPUT_PRECISION(0x08);
  static const OUT_SCREEN_OUTLINE_PRECIS = FONT_OUTPUT_PRECISION(0x09);
  static const OUT_PS_ONLY_PRECIS = FONT_OUTPUT_PRECISION(0x0a);
}

/// {@category enum}
extension type const FONT_QUALITY(int _) implements int {
  static const DEFAULT_QUALITY = FONT_QUALITY(0x00);
  static const DRAFT_QUALITY = FONT_QUALITY(0x01);
  static const PROOF_QUALITY = FONT_QUALITY(0x02);
  static const NONANTIALIASED_QUALITY = FONT_QUALITY(0x03);
  static const ANTIALIASED_QUALITY = FONT_QUALITY(0x04);
  static const CLEARTYPE_QUALITY = FONT_QUALITY(0x05);
}

/// {@category enum}
extension type const FONT_RESOURCE_CHARACTERISTICS(int _) implements int {
  static const FR_PRIVATE = FONT_RESOURCE_CHARACTERISTICS(0x00000010);
  static const FR_NOT_ENUM = FONT_RESOURCE_CHARACTERISTICS(0x00000020);
}

/// {@category enum}
extension type const FOREGROUND_WINDOW_LOCK_CODE(int _) implements int {
  static const LSFW_LOCK = FOREGROUND_WINDOW_LOCK_CODE(0x00000001);
  static const LSFW_UNLOCK = FOREGROUND_WINDOW_LOCK_CODE(0x00000002);
}

/// {@category enum}
extension type const FORMAT_MESSAGE_OPTIONS(int _) implements int {
  static const FORMAT_MESSAGE_ALLOCATE_BUFFER =
      FORMAT_MESSAGE_OPTIONS(0x00000100);
  static const FORMAT_MESSAGE_ARGUMENT_ARRAY =
      FORMAT_MESSAGE_OPTIONS(0x00002000);
  static const FORMAT_MESSAGE_FROM_HMODULE = FORMAT_MESSAGE_OPTIONS(0x00000800);
  static const FORMAT_MESSAGE_FROM_STRING = FORMAT_MESSAGE_OPTIONS(0x00000400);
  static const FORMAT_MESSAGE_FROM_SYSTEM = FORMAT_MESSAGE_OPTIONS(0x00001000);
  static const FORMAT_MESSAGE_IGNORE_INSERTS =
      FORMAT_MESSAGE_OPTIONS(0x00000200);
}

/// {@category enum}
extension type const FUNCFLAGS(int _) implements int {
  static const FUNCFLAG_FRESTRICTED = FUNCFLAGS(0x0001);
  static const FUNCFLAG_FSOURCE = FUNCFLAGS(0x0002);
  static const FUNCFLAG_FBINDABLE = FUNCFLAGS(0x0004);
  static const FUNCFLAG_FREQUESTEDIT = FUNCFLAGS(0x0008);
  static const FUNCFLAG_FDISPLAYBIND = FUNCFLAGS(0x0010);
  static const FUNCFLAG_FDEFAULTBIND = FUNCFLAGS(0x0020);
  static const FUNCFLAG_FHIDDEN = FUNCFLAGS(0x0040);
  static const FUNCFLAG_FUSESGETLASTERROR = FUNCFLAGS(0x0080);
  static const FUNCFLAG_FDEFAULTCOLLELEM = FUNCFLAGS(0x0100);
  static const FUNCFLAG_FUIDEFAULT = FUNCFLAGS(0x0200);
  static const FUNCFLAG_FNONBROWSABLE = FUNCFLAGS(0x0400);
  static const FUNCFLAG_FREPLACEABLE = FUNCFLAGS(0x0800);
  static const FUNCFLAG_FIMMEDIATEBIND = FUNCFLAGS(0x1000);
}

/// {@category enum}
extension type const FUNCKIND(int _) implements int {
  static const FUNC_VIRTUAL = FUNCKIND(0x00000000);
  static const FUNC_PUREVIRTUAL = FUNCKIND(0x00000001);
  static const FUNC_NONVIRTUAL = FUNCKIND(0x00000002);
  static const FUNC_STATIC = FUNCKIND(0x00000003);
  static const FUNC_DISPATCH = FUNCKIND(0x00000004);
}

/// {@category enum}
extension type const GDI_IMAGE_TYPE(int _) implements int {
  static const IMAGE_BITMAP = GDI_IMAGE_TYPE(0x00000000);
  static const IMAGE_CURSOR = GDI_IMAGE_TYPE(0x00000002);
  static const IMAGE_ICON = GDI_IMAGE_TYPE(0x00000001);
}

/// {@category enum}
extension type const GDI_REGION_TYPE(int _) implements int {
  static const RGN_ERROR = GDI_REGION_TYPE(0x00000000);
  static const NULLREGION = GDI_REGION_TYPE(0x00000001);
  static const SIMPLEREGION = GDI_REGION_TYPE(0x00000002);
  static const COMPLEXREGION = GDI_REGION_TYPE(0x00000003);
}

/// {@category enum}
extension type const GESTURECONFIG_ID(int _) implements int {
  static const GID_BEGIN = GESTURECONFIG_ID(0x00000001);
  static const GID_END = GESTURECONFIG_ID(0x00000002);
  static const GID_ZOOM = GESTURECONFIG_ID(0x00000003);
  static const GID_PAN = GESTURECONFIG_ID(0x00000004);
  static const GID_ROTATE = GESTURECONFIG_ID(0x00000005);
  static const GID_TWOFINGERTAP = GESTURECONFIG_ID(0x00000006);
  static const GID_PRESSANDTAP = GESTURECONFIG_ID(0x00000007);
  static const GID_ROLLOVER = GESTURECONFIG_ID(0x00000007);
}

/// {@category enum}
extension type const GESTURE_TYPE(int _) implements int {
  static const GT_PEN_TAP = GESTURE_TYPE(0x00000000);
  static const GT_PEN_DOUBLETAP = GESTURE_TYPE(0x00000001);
  static const GT_PEN_RIGHTTAP = GESTURE_TYPE(0x00000002);
  static const GT_PEN_PRESSANDHOLD = GESTURE_TYPE(0x00000003);
  static const GT_PEN_PRESSANDHOLDABORT = GESTURE_TYPE(0x00000004);
  static const GT_TOUCH_TAP = GESTURE_TYPE(0x00000005);
  static const GT_TOUCH_DOUBLETAP = GESTURE_TYPE(0x00000006);
  static const GT_TOUCH_RIGHTTAP = GESTURE_TYPE(0x00000007);
  static const GT_TOUCH_PRESSANDHOLD = GESTURE_TYPE(0x00000008);
  static const GT_TOUCH_PRESSANDHOLDABORT = GESTURE_TYPE(0x00000009);
  static const GT_TOUCH_PRESSANDTAP = GESTURE_TYPE(0x0000000a);
}

/// {@category enum}
extension type const GETFINALPATHNAMEBYHANDLE_FLAGS(int _) implements int {
  static const VOLUME_NAME_DOS = GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000000);
  static const VOLUME_NAME_GUID = GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000001);
  static const VOLUME_NAME_NT = GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000002);
  static const VOLUME_NAME_NONE = GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000004);
  static const FILE_NAME_NORMALIZED =
      GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000000);
  static const FILE_NAME_OPENED = GETFINALPATHNAMEBYHANDLE_FLAGS(0x00000008);
}

/// {@category enum}
extension type const GETPROPERTYSTOREFLAGS(int _) implements int {
  static const GPS_DEFAULT = GETPROPERTYSTOREFLAGS(0x00000000);
  static const GPS_HANDLERPROPERTIESONLY = GETPROPERTYSTOREFLAGS(0x00000001);
  static const GPS_READWRITE = GETPROPERTYSTOREFLAGS(0x00000002);
  static const GPS_TEMPORARY = GETPROPERTYSTOREFLAGS(0x00000004);
  static const GPS_FASTPROPERTIESONLY = GETPROPERTYSTOREFLAGS(0x00000008);
  static const GPS_OPENSLOWITEM = GETPROPERTYSTOREFLAGS(0x00000010);
  static const GPS_DELAYCREATION = GETPROPERTYSTOREFLAGS(0x00000020);
  static const GPS_BESTEFFORT = GETPROPERTYSTOREFLAGS(0x00000040);
  static const GPS_NO_OPLOCK = GETPROPERTYSTOREFLAGS(0x00000080);
  static const GPS_PREFERQUERYPROPERTIES = GETPROPERTYSTOREFLAGS(0x00000100);
  static const GPS_EXTRINSICPROPERTIES = GETPROPERTYSTOREFLAGS(0x00000200);
  static const GPS_EXTRINSICPROPERTIESONLY = GETPROPERTYSTOREFLAGS(0x00000400);
  static const GPS_VOLATILEPROPERTIES = GETPROPERTYSTOREFLAGS(0x00000800);
  static const GPS_VOLATILEPROPERTIESONLY = GETPROPERTYSTOREFLAGS(0x00001000);
  static const GPS_MASK_VALID = GETPROPERTYSTOREFLAGS(0x00001fff);
}

/// {@category enum}
extension type const GET_ADAPTERS_ADDRESSES_FLAGS(int _) implements int {
  static const GAA_FLAG_SKIP_UNICAST = GET_ADAPTERS_ADDRESSES_FLAGS(0x00000001);
  static const GAA_FLAG_SKIP_ANYCAST = GET_ADAPTERS_ADDRESSES_FLAGS(0x00000002);
  static const GAA_FLAG_SKIP_MULTICAST =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000004);
  static const GAA_FLAG_SKIP_DNS_SERVER =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000008);
  static const GAA_FLAG_INCLUDE_PREFIX =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000010);
  static const GAA_FLAG_SKIP_FRIENDLY_NAME =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000020);
  static const GAA_FLAG_INCLUDE_WINS_INFO =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000040);
  static const GAA_FLAG_INCLUDE_GATEWAYS =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000080);
  static const GAA_FLAG_INCLUDE_ALL_INTERFACES =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000100);
  static const GAA_FLAG_INCLUDE_ALL_COMPARTMENTS =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000200);
  static const GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER =
      GET_ADAPTERS_ADDRESSES_FLAGS(0x00000400);
}

/// {@category enum}
extension type const GET_ANCESTOR_FLAGS(int _) implements int {
  static const GA_PARENT = GET_ANCESTOR_FLAGS(0x00000001);
  static const GA_ROOT = GET_ANCESTOR_FLAGS(0x00000002);
  static const GA_ROOTOWNER = GET_ANCESTOR_FLAGS(0x00000003);
}

/// {@category enum}
extension type const GET_CLASS_LONG_INDEX(int _) implements int {
  static const GCW_ATOM = GET_CLASS_LONG_INDEX(0xffffffe0);
  static const GCL_CBCLSEXTRA = GET_CLASS_LONG_INDEX(0xffffffec);
  static const GCL_CBWNDEXTRA = GET_CLASS_LONG_INDEX(0xffffffee);
  static const GCL_HBRBACKGROUND = GET_CLASS_LONG_INDEX(0xfffffff6);
  static const GCL_HCURSOR = GET_CLASS_LONG_INDEX(0xfffffff4);
  static const GCL_HICON = GET_CLASS_LONG_INDEX(0xfffffff2);
  static const GCL_HICONSM = GET_CLASS_LONG_INDEX(0xffffffde);
  static const GCL_HMODULE = GET_CLASS_LONG_INDEX(0xfffffff0);
  static const GCL_MENUNAME = GET_CLASS_LONG_INDEX(0xfffffff8);
  static const GCL_STYLE = GET_CLASS_LONG_INDEX(0xffffffe6);
  static const GCL_WNDPROC = GET_CLASS_LONG_INDEX(0xffffffe8);
  static const GCLP_HBRBACKGROUND = GET_CLASS_LONG_INDEX(0xfffffff6);
  static const GCLP_HCURSOR = GET_CLASS_LONG_INDEX(0xfffffff4);
  static const GCLP_HICON = GET_CLASS_LONG_INDEX(0xfffffff2);
  static const GCLP_HICONSM = GET_CLASS_LONG_INDEX(0xffffffde);
  static const GCLP_HMODULE = GET_CLASS_LONG_INDEX(0xfffffff0);
  static const GCLP_MENUNAME = GET_CLASS_LONG_INDEX(0xfffffff8);
  static const GCLP_WNDPROC = GET_CLASS_LONG_INDEX(0xffffffe8);
}

/// {@category enum}
extension type const GET_DCX_FLAGS(int _) implements int {
  static const DCX_WINDOW = GET_DCX_FLAGS(0x00000001);
  static const DCX_CACHE = GET_DCX_FLAGS(0x00000002);
  static const DCX_PARENTCLIP = GET_DCX_FLAGS(0x00000020);
  static const DCX_CLIPSIBLINGS = GET_DCX_FLAGS(0x00000010);
  static const DCX_CLIPCHILDREN = GET_DCX_FLAGS(0x00000008);
  static const DCX_NORESETATTRS = GET_DCX_FLAGS(0x00000004);
  static const DCX_LOCKWINDOWUPDATE = GET_DCX_FLAGS(0x00000400);
  static const DCX_EXCLUDERGN = GET_DCX_FLAGS(0x00000040);
  static const DCX_INTERSECTRGN = GET_DCX_FLAGS(0x00000080);
  static const DCX_INTERSECTUPDATE = GET_DCX_FLAGS(0x00000200);
  static const DCX_VALIDATE = GET_DCX_FLAGS(0x00200000);
}

/// {@category enum}
extension type const GET_FILEEX_INFO_LEVELS(int _) implements int {
  static const GetFileExInfoStandard = GET_FILEEX_INFO_LEVELS(0x00000000);
  static const GetFileExMaxInfoLevel = GET_FILEEX_INFO_LEVELS(0x00000001);
}

/// {@category enum}
extension type const GET_FILE_VERSION_INFO_FLAGS(int _) implements int {
  static const FILE_VER_GET_LOCALISED = GET_FILE_VERSION_INFO_FLAGS(0x00000001);
  static const FILE_VER_GET_NEUTRAL = GET_FILE_VERSION_INFO_FLAGS(0x00000002);
  static const FILE_VER_GET_PREFETCHED =
      GET_FILE_VERSION_INFO_FLAGS(0x00000004);
}

/// {@category enum}
extension type const GET_MENU_DEFAULT_ITEM_FLAGS(int _) implements int {
  static const GMDI_GOINTOPOPUPS = GET_MENU_DEFAULT_ITEM_FLAGS(0x00000002);
  static const GMDI_USEDISABLED = GET_MENU_DEFAULT_ITEM_FLAGS(0x00000001);
}

/// {@category enum}
extension type const GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(int _) implements int {
  static const GMMP_USE_DISPLAY_POINTS =
      GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(0x00000001);
  static const GMMP_USE_HIGH_RESOLUTION_POINTS =
      GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(0x00000002);
}

/// {@category enum}
extension type const GET_STOCK_OBJECT_FLAGS(int _) implements int {
  static const BLACK_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000004);
  static const DKGRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000003);
  static const DC_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000012);
  static const GRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000002);
  static const HOLLOW_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000005);
  static const LTGRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000001);
  static const NULL_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000005);
  static const WHITE_BRUSH = GET_STOCK_OBJECT_FLAGS(0x00000000);
  static const BLACK_PEN = GET_STOCK_OBJECT_FLAGS(0x00000007);
  static const DC_PEN = GET_STOCK_OBJECT_FLAGS(0x00000013);
  static const NULL_PEN = GET_STOCK_OBJECT_FLAGS(0x00000008);
  static const WHITE_PEN = GET_STOCK_OBJECT_FLAGS(0x00000006);
  static const ANSI_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(0x0000000b);
  static const ANSI_VAR_FONT = GET_STOCK_OBJECT_FLAGS(0x0000000c);
  static const DEVICE_DEFAULT_FONT = GET_STOCK_OBJECT_FLAGS(0x0000000e);
  static const DEFAULT_GUI_FONT = GET_STOCK_OBJECT_FLAGS(0x00000011);
  static const OEM_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(0x0000000a);
  static const SYSTEM_FONT = GET_STOCK_OBJECT_FLAGS(0x0000000d);
  static const SYSTEM_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(0x00000010);
  static const DEFAULT_PALETTE = GET_STOCK_OBJECT_FLAGS(0x0000000f);
}

/// {@category enum}
extension type const GET_WINDOW_CMD(int _) implements int {
  static const GW_CHILD = GET_WINDOW_CMD(0x00000005);
  static const GW_ENABLEDPOPUP = GET_WINDOW_CMD(0x00000006);
  static const GW_HWNDFIRST = GET_WINDOW_CMD(0x00000000);
  static const GW_HWNDLAST = GET_WINDOW_CMD(0x00000001);
  static const GW_HWNDNEXT = GET_WINDOW_CMD(0x00000002);
  static const GW_HWNDPREV = GET_WINDOW_CMD(0x00000003);
  static const GW_OWNER = GET_WINDOW_CMD(0x00000004);
}

/// {@category enum}
extension type const GLOBAL_ALLOC_FLAGS(int _) implements int {
  static const GHND = GLOBAL_ALLOC_FLAGS(0x00000042);
  static const GMEM_FIXED = GLOBAL_ALLOC_FLAGS(0x00000000);
  static const GMEM_MOVEABLE = GLOBAL_ALLOC_FLAGS(0x00000002);
  static const GMEM_ZEROINIT = GLOBAL_ALLOC_FLAGS(0x00000040);
  static const GPTR = GLOBAL_ALLOC_FLAGS(0x00000040);
}

/// {@category enum}
extension type const GUITHREADINFO_FLAGS(int _) implements int {
  static const GUI_CARETBLINKING = GUITHREADINFO_FLAGS(0x00000001);
  static const GUI_INMENUMODE = GUITHREADINFO_FLAGS(0x00000004);
  static const GUI_INMOVESIZE = GUITHREADINFO_FLAGS(0x00000002);
  static const GUI_POPUPMENUMODE = GUITHREADINFO_FLAGS(0x00000010);
  static const GUI_SYSTEMMENUMODE = GUITHREADINFO_FLAGS(0x00000008);
}

/// {@category enum}
extension type const HANDLE_FLAGS(int _) implements int {
  static const HANDLE_FLAG_INHERIT = HANDLE_FLAGS(0x00000001);
  static const HANDLE_FLAG_PROTECT_FROM_CLOSE = HANDLE_FLAGS(0x00000002);
}

/// {@category enum}
extension type const HATCH_BRUSH_STYLE(int _) implements int {
  static const HS_BDIAGONAL = HATCH_BRUSH_STYLE(0x00000003);
  static const HS_CROSS = HATCH_BRUSH_STYLE(0x00000004);
  static const HS_DIAGCROSS = HATCH_BRUSH_STYLE(0x00000005);
  static const HS_FDIAGONAL = HATCH_BRUSH_STYLE(0x00000002);
  static const HS_HORIZONTAL = HATCH_BRUSH_STYLE(0x00000000);
  static const HS_VERTICAL = HATCH_BRUSH_STYLE(0x00000001);
}

/// {@category enum}
extension type const HDC_MAP_MODE(int _) implements int {
  static const MM_ANISOTROPIC = HDC_MAP_MODE(0x00000008);
  static const MM_HIENGLISH = HDC_MAP_MODE(0x00000005);
  static const MM_HIMETRIC = HDC_MAP_MODE(0x00000003);
  static const MM_ISOTROPIC = HDC_MAP_MODE(0x00000007);
  static const MM_LOENGLISH = HDC_MAP_MODE(0x00000004);
  static const MM_LOMETRIC = HDC_MAP_MODE(0x00000002);
  static const MM_TEXT = HDC_MAP_MODE(0x00000001);
  static const MM_TWIPS = HDC_MAP_MODE(0x00000006);
}

/// {@category enum}
extension type const HEAP_FLAGS(int _) implements int {
  static const HEAP_NONE = HEAP_FLAGS(0x00000000);
  static const HEAP_NO_SERIALIZE = HEAP_FLAGS(0x00000001);
  static const HEAP_GROWABLE = HEAP_FLAGS(0x00000002);
  static const HEAP_GENERATE_EXCEPTIONS = HEAP_FLAGS(0x00000004);
  static const HEAP_ZERO_MEMORY = HEAP_FLAGS(0x00000008);
  static const HEAP_REALLOC_IN_PLACE_ONLY = HEAP_FLAGS(0x00000010);
  static const HEAP_TAIL_CHECKING_ENABLED = HEAP_FLAGS(0x00000020);
  static const HEAP_FREE_CHECKING_ENABLED = HEAP_FLAGS(0x00000040);
  static const HEAP_DISABLE_COALESCE_ON_FREE = HEAP_FLAGS(0x00000080);
  static const HEAP_CREATE_ALIGN_16 = HEAP_FLAGS(0x00010000);
  static const HEAP_CREATE_ENABLE_TRACING = HEAP_FLAGS(0x00020000);
  static const HEAP_CREATE_ENABLE_EXECUTE = HEAP_FLAGS(0x00040000);
  static const HEAP_MAXIMUM_TAG = HEAP_FLAGS(0x00000fff);
  static const HEAP_PSEUDO_TAG_FLAG = HEAP_FLAGS(0x00008000);
  static const HEAP_TAG_SHIFT = HEAP_FLAGS(0x00000012);
  static const HEAP_CREATE_SEGMENT_HEAP = HEAP_FLAGS(0x00000100);
  static const HEAP_CREATE_HARDENED = HEAP_FLAGS(0x00000200);
}

/// {@category enum}
extension type const HEAP_INFORMATION_CLASS(int _) implements int {
  static const HeapCompatibilityInformation =
      HEAP_INFORMATION_CLASS(0x00000000);
  static const HeapEnableTerminationOnCorruption =
      HEAP_INFORMATION_CLASS(0x00000001);
  static const HeapOptimizeResources = HEAP_INFORMATION_CLASS(0x00000003);
  static const HeapTag = HEAP_INFORMATION_CLASS(0x00000007);
}

/// {@category enum}
extension type const HOT_KEY_MODIFIERS(int _) implements int {
  static const MOD_ALT = HOT_KEY_MODIFIERS(0x00000001);
  static const MOD_CONTROL = HOT_KEY_MODIFIERS(0x00000002);
  static const MOD_NOREPEAT = HOT_KEY_MODIFIERS(0x00004000);
  static const MOD_SHIFT = HOT_KEY_MODIFIERS(0x00000004);
  static const MOD_WIN = HOT_KEY_MODIFIERS(0x00000008);
}

/// {@category enum}
extension type const IDLFLAGS(int _) implements int {
  static const IDLFLAG_NONE = IDLFLAGS(0x0000);
  static const IDLFLAG_FIN = IDLFLAGS(0x0001);
  static const IDLFLAG_FOUT = IDLFLAGS(0x0002);
  static const IDLFLAG_FLCID = IDLFLAGS(0x0004);
  static const IDLFLAG_FRETVAL = IDLFLAGS(0x0008);
}

/// {@category enum}
extension type const IF_OPER_STATUS(int _) implements int {
  static const IfOperStatusUp = IF_OPER_STATUS(0x00000001);
  static const IfOperStatusDown = IF_OPER_STATUS(0x00000002);
  static const IfOperStatusTesting = IF_OPER_STATUS(0x00000003);
  static const IfOperStatusUnknown = IF_OPER_STATUS(0x00000004);
  static const IfOperStatusDormant = IF_OPER_STATUS(0x00000005);
  static const IfOperStatusNotPresent = IF_OPER_STATUS(0x00000006);
  static const IfOperStatusLowerLayerDown = IF_OPER_STATUS(0x00000007);
}

/// {@category enum}
extension type const IMAGEHLP_EXTENDED_OPTIONS(int _) implements int {
  static const SYMOPT_EX_DISABLEACCESSTIMEUPDATE =
      IMAGEHLP_EXTENDED_OPTIONS(0x00000000);
  static const SYMOPT_EX_LASTVALIDDEBUGDIRECTORY =
      IMAGEHLP_EXTENDED_OPTIONS(0x00000001);
  static const SYMOPT_EX_NOIMPLICITPATTERNSEARCH =
      IMAGEHLP_EXTENDED_OPTIONS(0x00000002);
  static const SYMOPT_EX_NEVERLOADSYMBOLS =
      IMAGEHLP_EXTENDED_OPTIONS(0x00000003);
  static const SYMOPT_EX_MAX = IMAGEHLP_EXTENDED_OPTIONS(0x00000004);
}

/// {@category enum}
extension type const IMAGE_FILE_MACHINE(int _) implements int {
  static const IMAGE_FILE_MACHINE_AXP64 = IMAGE_FILE_MACHINE(0x0284);
  static const IMAGE_FILE_MACHINE_I386 = IMAGE_FILE_MACHINE(0x014c);
  static const IMAGE_FILE_MACHINE_IA64 = IMAGE_FILE_MACHINE(0x0200);
  static const IMAGE_FILE_MACHINE_AMD64 = IMAGE_FILE_MACHINE(0x8664);
  static const IMAGE_FILE_MACHINE_UNKNOWN = IMAGE_FILE_MACHINE(0x0000);
  static const IMAGE_FILE_MACHINE_TARGET_HOST = IMAGE_FILE_MACHINE(0x0001);
  static const IMAGE_FILE_MACHINE_R3000 = IMAGE_FILE_MACHINE(0x0162);
  static const IMAGE_FILE_MACHINE_R4000 = IMAGE_FILE_MACHINE(0x0166);
  static const IMAGE_FILE_MACHINE_R10000 = IMAGE_FILE_MACHINE(0x0168);
  static const IMAGE_FILE_MACHINE_WCEMIPSV2 = IMAGE_FILE_MACHINE(0x0169);
  static const IMAGE_FILE_MACHINE_ALPHA = IMAGE_FILE_MACHINE(0x0184);
  static const IMAGE_FILE_MACHINE_SH3 = IMAGE_FILE_MACHINE(0x01a2);
  static const IMAGE_FILE_MACHINE_SH3DSP = IMAGE_FILE_MACHINE(0x01a3);
  static const IMAGE_FILE_MACHINE_SH3E = IMAGE_FILE_MACHINE(0x01a4);
  static const IMAGE_FILE_MACHINE_SH4 = IMAGE_FILE_MACHINE(0x01a6);
  static const IMAGE_FILE_MACHINE_SH5 = IMAGE_FILE_MACHINE(0x01a8);
  static const IMAGE_FILE_MACHINE_ARM = IMAGE_FILE_MACHINE(0x01c0);
  static const IMAGE_FILE_MACHINE_THUMB = IMAGE_FILE_MACHINE(0x01c2);
  static const IMAGE_FILE_MACHINE_ARMNT = IMAGE_FILE_MACHINE(0x01c4);
  static const IMAGE_FILE_MACHINE_AM33 = IMAGE_FILE_MACHINE(0x01d3);
  static const IMAGE_FILE_MACHINE_POWERPC = IMAGE_FILE_MACHINE(0x01f0);
  static const IMAGE_FILE_MACHINE_POWERPCFP = IMAGE_FILE_MACHINE(0x01f1);
  static const IMAGE_FILE_MACHINE_MIPS16 = IMAGE_FILE_MACHINE(0x0266);
  static const IMAGE_FILE_MACHINE_ALPHA64 = IMAGE_FILE_MACHINE(0x0284);
  static const IMAGE_FILE_MACHINE_MIPSFPU = IMAGE_FILE_MACHINE(0x0366);
  static const IMAGE_FILE_MACHINE_MIPSFPU16 = IMAGE_FILE_MACHINE(0x0466);
  static const IMAGE_FILE_MACHINE_TRICORE = IMAGE_FILE_MACHINE(0x0520);
  static const IMAGE_FILE_MACHINE_CEF = IMAGE_FILE_MACHINE(0x0cef);
  static const IMAGE_FILE_MACHINE_EBC = IMAGE_FILE_MACHINE(0x0ebc);
  static const IMAGE_FILE_MACHINE_M32R = IMAGE_FILE_MACHINE(0x9041);
  static const IMAGE_FILE_MACHINE_ARM64 = IMAGE_FILE_MACHINE(0xaa64);
  static const IMAGE_FILE_MACHINE_CEE = IMAGE_FILE_MACHINE(0xc0ee);
}

/// {@category enum}
extension type const IMAGE_FLAGS(int _) implements int {
  static const LR_CREATEDIBSECTION = IMAGE_FLAGS(0x00002000);
  static const LR_DEFAULTCOLOR = IMAGE_FLAGS(0x00000000);
  static const LR_DEFAULTSIZE = IMAGE_FLAGS(0x00000040);
  static const LR_LOADFROMFILE = IMAGE_FLAGS(0x00000010);
  static const LR_LOADMAP3DCOLORS = IMAGE_FLAGS(0x00001000);
  static const LR_LOADTRANSPARENT = IMAGE_FLAGS(0x00000020);
  static const LR_MONOCHROME = IMAGE_FLAGS(0x00000001);
  static const LR_SHARED = IMAGE_FLAGS(0x00008000);
  static const LR_VGACOLOR = IMAGE_FLAGS(0x00000080);
  static const LR_COPYDELETEORG = IMAGE_FLAGS(0x00000008);
  static const LR_COPYFROMRESOURCE = IMAGE_FLAGS(0x00004000);
  static const LR_COPYRETURNORG = IMAGE_FLAGS(0x00000004);
}

/// {@category enum}
extension type const IMPLTYPEFLAGS(int _) implements int {
  static const IMPLTYPEFLAG_FDEFAULT = IMPLTYPEFLAGS(0x00000001);
  static const IMPLTYPEFLAG_FSOURCE = IMPLTYPEFLAGS(0x00000002);
  static const IMPLTYPEFLAG_FRESTRICTED = IMPLTYPEFLAGS(0x00000004);
  static const IMPLTYPEFLAG_FDEFAULTVTABLE = IMPLTYPEFLAGS(0x00000008);
}

/// {@category enum}
extension type const INITCOMMONCONTROLSEX_ICC(int _) implements int {
  static const ICC_ANIMATE_CLASS = INITCOMMONCONTROLSEX_ICC(0x00000080);
  static const ICC_BAR_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000004);
  static const ICC_COOL_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000400);
  static const ICC_DATE_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000100);
  static const ICC_HOTKEY_CLASS = INITCOMMONCONTROLSEX_ICC(0x00000040);
  static const ICC_INTERNET_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000800);
  static const ICC_LINK_CLASS = INITCOMMONCONTROLSEX_ICC(0x00008000);
  static const ICC_LISTVIEW_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000001);
  static const ICC_NATIVEFNTCTL_CLASS = INITCOMMONCONTROLSEX_ICC(0x00002000);
  static const ICC_PAGESCROLLER_CLASS = INITCOMMONCONTROLSEX_ICC(0x00001000);
  static const ICC_PROGRESS_CLASS = INITCOMMONCONTROLSEX_ICC(0x00000020);
  static const ICC_STANDARD_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00004000);
  static const ICC_TAB_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000008);
  static const ICC_TREEVIEW_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000002);
  static const ICC_UPDOWN_CLASS = INITCOMMONCONTROLSEX_ICC(0x00000010);
  static const ICC_USEREX_CLASSES = INITCOMMONCONTROLSEX_ICC(0x00000200);
  static const ICC_WIN95_CLASSES = INITCOMMONCONTROLSEX_ICC(0x000000ff);
}

/// {@category enum}
extension type const INPUT_TYPE(int _) implements int {
  static const INPUT_MOUSE = INPUT_TYPE(0x00000000);
  static const INPUT_KEYBOARD = INPUT_TYPE(0x00000001);
  static const INPUT_HARDWARE = INPUT_TYPE(0x00000002);
}

/// {@category enum}
extension type const INVOKEKIND(int _) implements int {
  static const INVOKE_FUNC = INVOKEKIND(0x00000001);
  static const INVOKE_PROPERTYGET = INVOKEKIND(0x00000002);
  static const INVOKE_PROPERTYPUT = INVOKEKIND(0x00000004);
  static const INVOKE_PROPERTYPUTREF = INVOKEKIND(0x00000008);
}

/// {@category enum}
extension type const JOBOBJECTINFOCLASS(int _) implements int {
  static const JobObjectBasicAccountingInformation =
      JOBOBJECTINFOCLASS(0x00000001);
  static const JobObjectBasicLimitInformation = JOBOBJECTINFOCLASS(0x00000002);
  static const JobObjectBasicProcessIdList = JOBOBJECTINFOCLASS(0x00000003);
  static const JobObjectBasicUIRestrictions = JOBOBJECTINFOCLASS(0x00000004);
  static const JobObjectSecurityLimitInformation =
      JOBOBJECTINFOCLASS(0x00000005);
  static const JobObjectEndOfJobTimeInformation =
      JOBOBJECTINFOCLASS(0x00000006);
  static const JobObjectAssociateCompletionPortInformation =
      JOBOBJECTINFOCLASS(0x00000007);
  static const JobObjectBasicAndIoAccountingInformation =
      JOBOBJECTINFOCLASS(0x00000008);
  static const JobObjectExtendedLimitInformation =
      JOBOBJECTINFOCLASS(0x00000009);
  static const JobObjectJobSetInformation = JOBOBJECTINFOCLASS(0x0000000a);
  static const JobObjectGroupInformation = JOBOBJECTINFOCLASS(0x0000000b);
  static const JobObjectNotificationLimitInformation =
      JOBOBJECTINFOCLASS(0x0000000c);
  static const JobObjectLimitViolationInformation =
      JOBOBJECTINFOCLASS(0x0000000d);
  static const JobObjectGroupInformationEx = JOBOBJECTINFOCLASS(0x0000000e);
  static const JobObjectCpuRateControlInformation =
      JOBOBJECTINFOCLASS(0x0000000f);
  static const JobObjectCompletionFilter = JOBOBJECTINFOCLASS(0x00000010);
  static const JobObjectCompletionCounter = JOBOBJECTINFOCLASS(0x00000011);
  static const JobObjectReserved1Information = JOBOBJECTINFOCLASS(0x00000012);
  static const JobObjectReserved2Information = JOBOBJECTINFOCLASS(0x00000013);
  static const JobObjectReserved3Information = JOBOBJECTINFOCLASS(0x00000014);
  static const JobObjectReserved4Information = JOBOBJECTINFOCLASS(0x00000015);
  static const JobObjectReserved5Information = JOBOBJECTINFOCLASS(0x00000016);
  static const JobObjectReserved6Information = JOBOBJECTINFOCLASS(0x00000017);
  static const JobObjectReserved7Information = JOBOBJECTINFOCLASS(0x00000018);
  static const JobObjectReserved8Information = JOBOBJECTINFOCLASS(0x00000019);
  static const JobObjectReserved9Information = JOBOBJECTINFOCLASS(0x0000001a);
  static const JobObjectReserved10Information = JOBOBJECTINFOCLASS(0x0000001b);
  static const JobObjectReserved11Information = JOBOBJECTINFOCLASS(0x0000001c);
  static const JobObjectReserved12Information = JOBOBJECTINFOCLASS(0x0000001d);
  static const JobObjectReserved13Information = JOBOBJECTINFOCLASS(0x0000001e);
  static const JobObjectReserved14Information = JOBOBJECTINFOCLASS(0x0000001f);
  static const JobObjectNetRateControlInformation =
      JOBOBJECTINFOCLASS(0x00000020);
  static const JobObjectNotificationLimitInformation2 =
      JOBOBJECTINFOCLASS(0x00000021);
  static const JobObjectLimitViolationInformation2 =
      JOBOBJECTINFOCLASS(0x00000022);
  static const JobObjectCreateSilo = JOBOBJECTINFOCLASS(0x00000023);
  static const JobObjectSiloBasicInformation = JOBOBJECTINFOCLASS(0x00000024);
  static const JobObjectReserved15Information = JOBOBJECTINFOCLASS(0x00000025);
  static const JobObjectReserved16Information = JOBOBJECTINFOCLASS(0x00000026);
  static const JobObjectReserved17Information = JOBOBJECTINFOCLASS(0x00000027);
  static const JobObjectReserved18Information = JOBOBJECTINFOCLASS(0x00000028);
  static const JobObjectReserved19Information = JOBOBJECTINFOCLASS(0x00000029);
  static const JobObjectReserved20Information = JOBOBJECTINFOCLASS(0x0000002a);
  static const JobObjectReserved21Information = JOBOBJECTINFOCLASS(0x0000002b);
  static const JobObjectReserved22Information = JOBOBJECTINFOCLASS(0x0000002c);
  static const JobObjectReserved23Information = JOBOBJECTINFOCLASS(0x0000002d);
  static const JobObjectReserved24Information = JOBOBJECTINFOCLASS(0x0000002e);
  static const JobObjectReserved25Information = JOBOBJECTINFOCLASS(0x0000002f);
  static const JobObjectReserved26Information = JOBOBJECTINFOCLASS(0x00000030);
  static const JobObjectReserved27Information = JOBOBJECTINFOCLASS(0x00000031);
  static const MaxJobObjectInfoClass = JOBOBJECTINFOCLASS(0x00000032);
}

/// {@category enum}
extension type const KBDLLHOOKSTRUCT_FLAGS(int _) implements int {
  static const LLKHF_EXTENDED = KBDLLHOOKSTRUCT_FLAGS(0x00000001);
  static const LLKHF_ALTDOWN = KBDLLHOOKSTRUCT_FLAGS(0x00000020);
  static const LLKHF_UP = KBDLLHOOKSTRUCT_FLAGS(0x00000080);
  static const LLKHF_INJECTED = KBDLLHOOKSTRUCT_FLAGS(0x00000010);
  static const LLKHF_LOWER_IL_INJECTED = KBDLLHOOKSTRUCT_FLAGS(0x00000002);
}

/// {@category enum}
extension type const KEYBD_EVENT_FLAGS(int _) implements int {
  static const KEYEVENTF_EXTENDEDKEY = KEYBD_EVENT_FLAGS(0x00000001);
  static const KEYEVENTF_KEYUP = KEYBD_EVENT_FLAGS(0x00000002);
  static const KEYEVENTF_SCANCODE = KEYBD_EVENT_FLAGS(0x00000008);
  static const KEYEVENTF_UNICODE = KEYBD_EVENT_FLAGS(0x00000004);
}

/// {@category enum}
extension type const KF_CATEGORY(int _) implements int {
  static const KF_CATEGORY_VIRTUAL = KF_CATEGORY(0x00000001);
  static const KF_CATEGORY_FIXED = KF_CATEGORY(0x00000002);
  static const KF_CATEGORY_COMMON = KF_CATEGORY(0x00000003);
  static const KF_CATEGORY_PERUSER = KF_CATEGORY(0x00000004);
}

/// {@category enum}
extension type const LAYERED_WINDOW_ATTRIBUTES_FLAGS(int _) implements int {
  static const LWA_ALPHA = LAYERED_WINDOW_ATTRIBUTES_FLAGS(0x00000002);
  static const LWA_COLORKEY = LAYERED_WINDOW_ATTRIBUTES_FLAGS(0x00000001);
}

/// {@category enum}
extension type const LOAD_LIBRARY_FLAGS(int _) implements int {
  static const DONT_RESOLVE_DLL_REFERENCES = LOAD_LIBRARY_FLAGS(0x00000001);
  static const LOAD_LIBRARY_AS_DATAFILE = LOAD_LIBRARY_FLAGS(0x00000002);
  static const LOAD_WITH_ALTERED_SEARCH_PATH = LOAD_LIBRARY_FLAGS(0x00000008);
  static const LOAD_IGNORE_CODE_AUTHZ_LEVEL = LOAD_LIBRARY_FLAGS(0x00000010);
  static const LOAD_LIBRARY_AS_IMAGE_RESOURCE = LOAD_LIBRARY_FLAGS(0x00000020);
  static const LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE =
      LOAD_LIBRARY_FLAGS(0x00000040);
  static const LOAD_LIBRARY_REQUIRE_SIGNED_TARGET =
      LOAD_LIBRARY_FLAGS(0x00000080);
  static const LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR =
      LOAD_LIBRARY_FLAGS(0x00000100);
  static const LOAD_LIBRARY_SEARCH_APPLICATION_DIR =
      LOAD_LIBRARY_FLAGS(0x00000200);
  static const LOAD_LIBRARY_SEARCH_USER_DIRS = LOAD_LIBRARY_FLAGS(0x00000400);
  static const LOAD_LIBRARY_SEARCH_SYSTEM32 = LOAD_LIBRARY_FLAGS(0x00000800);
  static const LOAD_LIBRARY_SEARCH_DEFAULT_DIRS =
      LOAD_LIBRARY_FLAGS(0x00001000);
  static const LOAD_LIBRARY_SAFE_CURRENT_DIRS = LOAD_LIBRARY_FLAGS(0x00002000);
  static const LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER =
      LOAD_LIBRARY_FLAGS(0x00004000);
}

/// {@category enum}
extension type const LOCK_FILE_FLAGS(int _) implements int {
  static const LOCKFILE_EXCLUSIVE_LOCK = LOCK_FILE_FLAGS(0x00000002);
  static const LOCKFILE_FAIL_IMMEDIATELY = LOCK_FILE_FLAGS(0x00000001);
}

/// {@category enum}
extension type const LOGICAL_PROCESSOR_RELATIONSHIP(int _) implements int {
  static const RelationProcessorCore =
      LOGICAL_PROCESSOR_RELATIONSHIP(0x00000000);
  static const RelationNumaNode = LOGICAL_PROCESSOR_RELATIONSHIP(0x00000001);
  static const RelationCache = LOGICAL_PROCESSOR_RELATIONSHIP(0x00000002);
  static const RelationProcessorPackage =
      LOGICAL_PROCESSOR_RELATIONSHIP(0x00000003);
  static const RelationGroup = LOGICAL_PROCESSOR_RELATIONSHIP(0x00000004);
  static const RelationProcessorDie =
      LOGICAL_PROCESSOR_RELATIONSHIP(0x00000005);
  static const RelationNumaNodeEx = LOGICAL_PROCESSOR_RELATIONSHIP(0x00000006);
  static const RelationProcessorModule =
      LOGICAL_PROCESSOR_RELATIONSHIP(0x00000007);
  static const RelationAll = LOGICAL_PROCESSOR_RELATIONSHIP(0x0000ffff);
}

/// {@category enum}
extension type const LiveSetting(int _) implements int {
  static const Off = LiveSetting(0x00000000);
  static const Polite = LiveSetting(0x00000001);
  static const Assertive = LiveSetting(0x00000002);
}

/// {@category enum}
extension type const MACHINE_ATTRIBUTES(int _) implements int {
  static const UserEnabled = MACHINE_ATTRIBUTES(0x00000001);
  static const KernelEnabled = MACHINE_ATTRIBUTES(0x00000002);
  static const Wow64Container = MACHINE_ATTRIBUTES(0x00000004);
}

/// {@category enum}
extension type const MAP_VIRTUAL_KEY_TYPE(int _) implements int {
  static const MAPVK_VK_TO_VSC = MAP_VIRTUAL_KEY_TYPE(0x00000000);
  static const MAPVK_VSC_TO_VK = MAP_VIRTUAL_KEY_TYPE(0x00000001);
  static const MAPVK_VK_TO_CHAR = MAP_VIRTUAL_KEY_TYPE(0x00000002);
  static const MAPVK_VSC_TO_VK_EX = MAP_VIRTUAL_KEY_TYPE(0x00000003);
  static const MAPVK_VK_TO_VSC_EX = MAP_VIRTUAL_KEY_TYPE(0x00000004);
}

/// {@category enum}
extension type const MC_COLOR_TEMPERATURE(int _) implements int {
  static const MC_COLOR_TEMPERATURE_UNKNOWN = MC_COLOR_TEMPERATURE(0x00000000);
  static const MC_COLOR_TEMPERATURE_4000K = MC_COLOR_TEMPERATURE(0x00000001);
  static const MC_COLOR_TEMPERATURE_5000K = MC_COLOR_TEMPERATURE(0x00000002);
  static const MC_COLOR_TEMPERATURE_6500K = MC_COLOR_TEMPERATURE(0x00000003);
  static const MC_COLOR_TEMPERATURE_7500K = MC_COLOR_TEMPERATURE(0x00000004);
  static const MC_COLOR_TEMPERATURE_8200K = MC_COLOR_TEMPERATURE(0x00000005);
  static const MC_COLOR_TEMPERATURE_9300K = MC_COLOR_TEMPERATURE(0x00000006);
  static const MC_COLOR_TEMPERATURE_10000K = MC_COLOR_TEMPERATURE(0x00000007);
  static const MC_COLOR_TEMPERATURE_11500K = MC_COLOR_TEMPERATURE(0x00000008);
}

/// {@category enum}
extension type const MC_DISPLAY_TECHNOLOGY_TYPE(int _) implements int {
  static const MC_SHADOW_MASK_CATHODE_RAY_TUBE =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000000);
  static const MC_APERTURE_GRILL_CATHODE_RAY_TUBE =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000001);
  static const MC_THIN_FILM_TRANSISTOR = MC_DISPLAY_TECHNOLOGY_TYPE(0x00000002);
  static const MC_LIQUID_CRYSTAL_ON_SILICON =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000003);
  static const MC_PLASMA = MC_DISPLAY_TECHNOLOGY_TYPE(0x00000004);
  static const MC_ORGANIC_LIGHT_EMITTING_DIODE =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000005);
  static const MC_ELECTROLUMINESCENT = MC_DISPLAY_TECHNOLOGY_TYPE(0x00000006);
  static const MC_MICROELECTROMECHANICAL =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000007);
  static const MC_FIELD_EMISSION_DEVICE =
      MC_DISPLAY_TECHNOLOGY_TYPE(0x00000008);
}

/// {@category enum}
extension type const MC_DRIVE_TYPE(int _) implements int {
  static const MC_RED_DRIVE = MC_DRIVE_TYPE(0x00000000);
  static const MC_GREEN_DRIVE = MC_DRIVE_TYPE(0x00000001);
  static const MC_BLUE_DRIVE = MC_DRIVE_TYPE(0x00000002);
}

/// {@category enum}
extension type const MC_GAIN_TYPE(int _) implements int {
  static const MC_RED_GAIN = MC_GAIN_TYPE(0x00000000);
  static const MC_GREEN_GAIN = MC_GAIN_TYPE(0x00000001);
  static const MC_BLUE_GAIN = MC_GAIN_TYPE(0x00000002);
}

/// {@category enum}
extension type const MC_POSITION_TYPE(int _) implements int {
  static const MC_HORIZONTAL_POSITION = MC_POSITION_TYPE(0x00000000);
  static const MC_VERTICAL_POSITION = MC_POSITION_TYPE(0x00000001);
}

/// {@category enum}
extension type const MC_SIZE_TYPE(int _) implements int {
  static const MC_WIDTH = MC_SIZE_TYPE(0x00000000);
  static const MC_HEIGHT = MC_SIZE_TYPE(0x00000001);
}

/// {@category enum}
extension type const MEDIA_TYPE(int _) implements int {
  static const Unknown = MEDIA_TYPE(0x00000000);
  static const F5_1Pt2_512 = MEDIA_TYPE(0x00000001);
  static const F3_1Pt44_512 = MEDIA_TYPE(0x00000002);
  static const F3_2Pt88_512 = MEDIA_TYPE(0x00000003);
  static const F3_20Pt8_512 = MEDIA_TYPE(0x00000004);
  static const F3_720_512 = MEDIA_TYPE(0x00000005);
  static const F5_360_512 = MEDIA_TYPE(0x00000006);
  static const F5_320_512 = MEDIA_TYPE(0x00000007);
  static const F5_320_1024 = MEDIA_TYPE(0x00000008);
  static const F5_180_512 = MEDIA_TYPE(0x00000009);
  static const F5_160_512 = MEDIA_TYPE(0x0000000a);
  static const RemovableMedia = MEDIA_TYPE(0x0000000b);
  static const FixedMedia = MEDIA_TYPE(0x0000000c);
  static const F3_120M_512 = MEDIA_TYPE(0x0000000d);
  static const F3_640_512 = MEDIA_TYPE(0x0000000e);
  static const F5_640_512 = MEDIA_TYPE(0x0000000f);
  static const F5_720_512 = MEDIA_TYPE(0x00000010);
  static const F3_1Pt2_512 = MEDIA_TYPE(0x00000011);
  static const F3_1Pt23_1024 = MEDIA_TYPE(0x00000012);
  static const F5_1Pt23_1024 = MEDIA_TYPE(0x00000013);
  static const F3_128Mb_512 = MEDIA_TYPE(0x00000014);
  static const F3_230Mb_512 = MEDIA_TYPE(0x00000015);
  static const F8_256_128 = MEDIA_TYPE(0x00000016);
  static const F3_200Mb_512 = MEDIA_TYPE(0x00000017);
  static const F3_240M_512 = MEDIA_TYPE(0x00000018);
  static const F3_32M_512 = MEDIA_TYPE(0x00000019);
}

/// {@category enum}
extension type const MENUINFO_MASK(int _) implements int {
  static const MIM_APPLYTOSUBMENUS = MENUINFO_MASK(0x80000000);
  static const MIM_BACKGROUND = MENUINFO_MASK(0x00000002);
  static const MIM_HELPID = MENUINFO_MASK(0x00000004);
  static const MIM_MAXHEIGHT = MENUINFO_MASK(0x00000001);
  static const MIM_MENUDATA = MENUINFO_MASK(0x00000008);
  static const MIM_STYLE = MENUINFO_MASK(0x00000010);
}

/// {@category enum}
extension type const MENUINFO_STYLE(int _) implements int {
  static const MNS_AUTODISMISS = MENUINFO_STYLE(0x10000000);
  static const MNS_CHECKORBMP = MENUINFO_STYLE(0x04000000);
  static const MNS_DRAGDROP = MENUINFO_STYLE(0x20000000);
  static const MNS_MODELESS = MENUINFO_STYLE(0x40000000);
  static const MNS_NOCHECK = MENUINFO_STYLE(0x80000000);
  static const MNS_NOTIFYBYPOS = MENUINFO_STYLE(0x08000000);
}

/// {@category enum}
extension type const MENU_ITEM_FLAGS(int _) implements int {
  static const MF_BYCOMMAND = MENU_ITEM_FLAGS(0x00000000);
  static const MF_BYPOSITION = MENU_ITEM_FLAGS(0x00000400);
  static const MF_BITMAP = MENU_ITEM_FLAGS(0x00000004);
  static const MF_CHECKED = MENU_ITEM_FLAGS(0x00000008);
  static const MF_DISABLED = MENU_ITEM_FLAGS(0x00000002);
  static const MF_ENABLED = MENU_ITEM_FLAGS(0x00000000);
  static const MF_GRAYED = MENU_ITEM_FLAGS(0x00000001);
  static const MF_MENUBARBREAK = MENU_ITEM_FLAGS(0x00000020);
  static const MF_MENUBREAK = MENU_ITEM_FLAGS(0x00000040);
  static const MF_OWNERDRAW = MENU_ITEM_FLAGS(0x00000100);
  static const MF_POPUP = MENU_ITEM_FLAGS(0x00000010);
  static const MF_SEPARATOR = MENU_ITEM_FLAGS(0x00000800);
  static const MF_STRING = MENU_ITEM_FLAGS(0x00000000);
  static const MF_UNCHECKED = MENU_ITEM_FLAGS(0x00000000);
  static const MF_INSERT = MENU_ITEM_FLAGS(0x00000000);
  static const MF_CHANGE = MENU_ITEM_FLAGS(0x00000080);
  static const MF_APPEND = MENU_ITEM_FLAGS(0x00000100);
  static const MF_DELETE = MENU_ITEM_FLAGS(0x00000200);
  static const MF_REMOVE = MENU_ITEM_FLAGS(0x00001000);
  static const MF_USECHECKBITMAPS = MENU_ITEM_FLAGS(0x00000200);
  static const MF_UNHILITE = MENU_ITEM_FLAGS(0x00000000);
  static const MF_HILITE = MENU_ITEM_FLAGS(0x00000080);
  static const MF_DEFAULT = MENU_ITEM_FLAGS(0x00001000);
  static const MF_SYSMENU = MENU_ITEM_FLAGS(0x00002000);
  static const MF_HELP = MENU_ITEM_FLAGS(0x00004000);
  static const MF_RIGHTJUSTIFY = MENU_ITEM_FLAGS(0x00004000);
  static const MF_MOUSESELECT = MENU_ITEM_FLAGS(0x00008000);
  static const MF_END = MENU_ITEM_FLAGS(0x00000080);
}

/// {@category enum}
extension type const MENU_ITEM_MASK(int _) implements int {
  static const MIIM_BITMAP = MENU_ITEM_MASK(0x00000080);
  static const MIIM_CHECKMARKS = MENU_ITEM_MASK(0x00000008);
  static const MIIM_DATA = MENU_ITEM_MASK(0x00000020);
  static const MIIM_FTYPE = MENU_ITEM_MASK(0x00000100);
  static const MIIM_ID = MENU_ITEM_MASK(0x00000002);
  static const MIIM_STATE = MENU_ITEM_MASK(0x00000001);
  static const MIIM_STRING = MENU_ITEM_MASK(0x00000040);
  static const MIIM_SUBMENU = MENU_ITEM_MASK(0x00000004);
  static const MIIM_TYPE = MENU_ITEM_MASK(0x00000010);
}

/// {@category enum}
extension type const MENU_ITEM_STATE(int _) implements int {
  static const MFS_GRAYED = MENU_ITEM_STATE(0x00000003);
  static const MFS_DISABLED = MENU_ITEM_STATE(0x00000003);
  static const MFS_CHECKED = MENU_ITEM_STATE(0x00000008);
  static const MFS_HILITE = MENU_ITEM_STATE(0x00000080);
  static const MFS_ENABLED = MENU_ITEM_STATE(0x00000000);
  static const MFS_UNCHECKED = MENU_ITEM_STATE(0x00000000);
  static const MFS_UNHILITE = MENU_ITEM_STATE(0x00000000);
  static const MFS_DEFAULT = MENU_ITEM_STATE(0x00001000);
}

/// {@category enum}
extension type const MENU_ITEM_TYPE(int _) implements int {
  static const MFT_BITMAP = MENU_ITEM_TYPE(0x00000004);
  static const MFT_MENUBARBREAK = MENU_ITEM_TYPE(0x00000020);
  static const MFT_MENUBREAK = MENU_ITEM_TYPE(0x00000040);
  static const MFT_OWNERDRAW = MENU_ITEM_TYPE(0x00000100);
  static const MFT_RADIOCHECK = MENU_ITEM_TYPE(0x00000200);
  static const MFT_RIGHTJUSTIFY = MENU_ITEM_TYPE(0x00004000);
  static const MFT_RIGHTORDER = MENU_ITEM_TYPE(0x00002000);
  static const MFT_SEPARATOR = MENU_ITEM_TYPE(0x00000800);
  static const MFT_STRING = MENU_ITEM_TYPE(0x00000000);
}

/// {@category enum}
extension type const MESSAGEBOX_RESULT(int _) implements int {
  static const IDOK = MESSAGEBOX_RESULT(0x00000001);
  static const IDCANCEL = MESSAGEBOX_RESULT(0x00000002);
  static const IDABORT = MESSAGEBOX_RESULT(0x00000003);
  static const IDRETRY = MESSAGEBOX_RESULT(0x00000004);
  static const IDIGNORE = MESSAGEBOX_RESULT(0x00000005);
  static const IDYES = MESSAGEBOX_RESULT(0x00000006);
  static const IDNO = MESSAGEBOX_RESULT(0x00000007);
  static const IDCLOSE = MESSAGEBOX_RESULT(0x00000008);
  static const IDHELP = MESSAGEBOX_RESULT(0x00000009);
  static const IDTRYAGAIN = MESSAGEBOX_RESULT(0x0000000a);
  static const IDCONTINUE = MESSAGEBOX_RESULT(0x0000000b);
  static const IDASYNC = MESSAGEBOX_RESULT(0x00007d01);
  static const IDTIMEOUT = MESSAGEBOX_RESULT(0x00007d00);
}

/// {@category enum}
extension type const MESSAGEBOX_STYLE(int _) implements int {
  static const MB_ABORTRETRYIGNORE = MESSAGEBOX_STYLE(0x00000002);
  static const MB_CANCELTRYCONTINUE = MESSAGEBOX_STYLE(0x00000006);
  static const MB_HELP = MESSAGEBOX_STYLE(0x00004000);
  static const MB_OK = MESSAGEBOX_STYLE(0x00000000);
  static const MB_OKCANCEL = MESSAGEBOX_STYLE(0x00000001);
  static const MB_RETRYCANCEL = MESSAGEBOX_STYLE(0x00000005);
  static const MB_YESNO = MESSAGEBOX_STYLE(0x00000004);
  static const MB_YESNOCANCEL = MESSAGEBOX_STYLE(0x00000003);
  static const MB_ICONHAND = MESSAGEBOX_STYLE(0x00000010);
  static const MB_ICONQUESTION = MESSAGEBOX_STYLE(0x00000020);
  static const MB_ICONEXCLAMATION = MESSAGEBOX_STYLE(0x00000030);
  static const MB_ICONASTERISK = MESSAGEBOX_STYLE(0x00000040);
  static const MB_USERICON = MESSAGEBOX_STYLE(0x00000080);
  static const MB_ICONWARNING = MESSAGEBOX_STYLE(0x00000030);
  static const MB_ICONERROR = MESSAGEBOX_STYLE(0x00000010);
  static const MB_ICONINFORMATION = MESSAGEBOX_STYLE(0x00000040);
  static const MB_ICONSTOP = MESSAGEBOX_STYLE(0x00000010);
  static const MB_DEFBUTTON1 = MESSAGEBOX_STYLE(0x00000000);
  static const MB_DEFBUTTON2 = MESSAGEBOX_STYLE(0x00000100);
  static const MB_DEFBUTTON3 = MESSAGEBOX_STYLE(0x00000200);
  static const MB_DEFBUTTON4 = MESSAGEBOX_STYLE(0x00000300);
  static const MB_APPLMODAL = MESSAGEBOX_STYLE(0x00000000);
  static const MB_SYSTEMMODAL = MESSAGEBOX_STYLE(0x00001000);
  static const MB_TASKMODAL = MESSAGEBOX_STYLE(0x00002000);
  static const MB_NOFOCUS = MESSAGEBOX_STYLE(0x00008000);
  static const MB_SETFOREGROUND = MESSAGEBOX_STYLE(0x00010000);
  static const MB_DEFAULT_DESKTOP_ONLY = MESSAGEBOX_STYLE(0x00020000);
  static const MB_TOPMOST = MESSAGEBOX_STYLE(0x00040000);
  static const MB_RIGHT = MESSAGEBOX_STYLE(0x00080000);
  static const MB_RTLREADING = MESSAGEBOX_STYLE(0x00100000);
  static const MB_SERVICE_NOTIFICATION = MESSAGEBOX_STYLE(0x00200000);
  static const MB_SERVICE_NOTIFICATION_NT3X = MESSAGEBOX_STYLE(0x00040000);
  static const MB_TYPEMASK = MESSAGEBOX_STYLE(0x0000000f);
  static const MB_ICONMASK = MESSAGEBOX_STYLE(0x000000f0);
  static const MB_DEFMASK = MESSAGEBOX_STYLE(0x00000f00);
  static const MB_MODEMASK = MESSAGEBOX_STYLE(0x00003000);
  static const MB_MISCMASK = MESSAGEBOX_STYLE(0x0000c000);
}

/// {@category enum}
extension type const MIDI_WAVE_OPEN_TYPE(int _) implements int {
  static const CALLBACK_TYPEMASK = MIDI_WAVE_OPEN_TYPE(0x00070000);
  static const CALLBACK_NULL = MIDI_WAVE_OPEN_TYPE(0x00000000);
  static const CALLBACK_WINDOW = MIDI_WAVE_OPEN_TYPE(0x00010000);
  static const CALLBACK_TASK = MIDI_WAVE_OPEN_TYPE(0x00020000);
  static const CALLBACK_FUNCTION = MIDI_WAVE_OPEN_TYPE(0x00030000);
  static const CALLBACK_THREAD = MIDI_WAVE_OPEN_TYPE(0x00020000);
  static const CALLBACK_EVENT = MIDI_WAVE_OPEN_TYPE(0x00050000);
  static const WAVE_FORMAT_QUERY = MIDI_WAVE_OPEN_TYPE(0x00000001);
  static const WAVE_ALLOWSYNC = MIDI_WAVE_OPEN_TYPE(0x00000002);
  static const WAVE_MAPPED = MIDI_WAVE_OPEN_TYPE(0x00000004);
  static const WAVE_FORMAT_DIRECT = MIDI_WAVE_OPEN_TYPE(0x00000008);
  static const WAVE_FORMAT_DIRECT_QUERY = MIDI_WAVE_OPEN_TYPE(0x00000009);
  static const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE =
      MIDI_WAVE_OPEN_TYPE(0x00000010);
  static const MIDI_IO_STATUS = MIDI_WAVE_OPEN_TYPE(0x00000020);
}

/// {@category enum}
extension type const MODEMDEVCAPS_DIAL_OPTIONS(int _) implements int {
  static const DIALOPTION_BILLING = MODEMDEVCAPS_DIAL_OPTIONS(0x00000040);
  static const DIALOPTION_DIALTONE = MODEMDEVCAPS_DIAL_OPTIONS(0x00000100);
  static const DIALOPTION_QUIET = MODEMDEVCAPS_DIAL_OPTIONS(0x00000080);
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_MODE(int _) implements int {
  static const MDMSPKRFLAG_CALLSETUP = MODEMDEVCAPS_SPEAKER_MODE(0x00000008);
  static const MDMSPKRFLAG_DIAL = MODEMDEVCAPS_SPEAKER_MODE(0x00000002);
  static const MDMSPKRFLAG_OFF = MODEMDEVCAPS_SPEAKER_MODE(0x00000001);
  static const MDMSPKRFLAG_ON = MODEMDEVCAPS_SPEAKER_MODE(0x00000004);
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_VOLUME(int _) implements int {
  static const MDMVOLFLAG_HIGH = MODEMDEVCAPS_SPEAKER_VOLUME(0x00000004);
  static const MDMVOLFLAG_LOW = MODEMDEVCAPS_SPEAKER_VOLUME(0x00000001);
  static const MDMVOLFLAG_MEDIUM = MODEMDEVCAPS_SPEAKER_VOLUME(0x00000002);
}

/// {@category enum}
extension type const MODEMSETTINGS_SPEAKER_MODE(int _) implements int {
  static const MDMSPKR_CALLSETUP = MODEMSETTINGS_SPEAKER_MODE(0x00000008);
  static const MDMSPKR_DIAL = MODEMSETTINGS_SPEAKER_MODE(0x00000002);
  static const MDMSPKR_OFF = MODEMSETTINGS_SPEAKER_MODE(0x00000001);
  static const MDMSPKR_ON = MODEMSETTINGS_SPEAKER_MODE(0x00000004);
}

/// {@category enum}
extension type const MODEM_SPEAKER_VOLUME(int _) implements int {
  static const MDMVOL_HIGH = MODEM_SPEAKER_VOLUME(0x00000002);
  static const MDMVOL_LOW = MODEM_SPEAKER_VOLUME(0x00000000);
  static const MDMVOL_MEDIUM = MODEM_SPEAKER_VOLUME(0x00000001);
}

/// {@category enum}
extension type const MODEM_STATUS_FLAGS(int _) implements int {
  static const MS_CTS_ON = MODEM_STATUS_FLAGS(0x00000010);
  static const MS_DSR_ON = MODEM_STATUS_FLAGS(0x00000020);
  static const MS_RING_ON = MODEM_STATUS_FLAGS(0x00000040);
  static const MS_RLSD_ON = MODEM_STATUS_FLAGS(0x00000080);
}

/// {@category enum}
extension type const MODLOAD_DATA_TYPE(int _) implements int {
  static const DBHHEADER_DEBUGDIRS = MODLOAD_DATA_TYPE(0x00000001);
  static const DBHHEADER_CVMISC = MODLOAD_DATA_TYPE(0x00000002);
}

/// {@category enum}
extension type const MONITOR_DPI_TYPE(int _) implements int {
  static const MDT_EFFECTIVE_DPI = MONITOR_DPI_TYPE(0x00000000);
  static const MDT_ANGULAR_DPI = MONITOR_DPI_TYPE(0x00000001);
  static const MDT_RAW_DPI = MONITOR_DPI_TYPE(0x00000002);
  static const MDT_DEFAULT = MONITOR_DPI_TYPE(0x00000000);
}

/// {@category enum}
extension type const MONITOR_FROM_FLAGS(int _) implements int {
  static const MONITOR_DEFAULTTONEAREST = MONITOR_FROM_FLAGS(0x00000002);
  static const MONITOR_DEFAULTTONULL = MONITOR_FROM_FLAGS(0x00000000);
  static const MONITOR_DEFAULTTOPRIMARY = MONITOR_FROM_FLAGS(0x00000001);
}

/// {@category enum}
extension type const MOUSE_EVENT_FLAGS(int _) implements int {
  static const MOUSEEVENTF_ABSOLUTE = MOUSE_EVENT_FLAGS(0x00008000);
  static const MOUSEEVENTF_LEFTDOWN = MOUSE_EVENT_FLAGS(0x00000002);
  static const MOUSEEVENTF_LEFTUP = MOUSE_EVENT_FLAGS(0x00000004);
  static const MOUSEEVENTF_MIDDLEDOWN = MOUSE_EVENT_FLAGS(0x00000020);
  static const MOUSEEVENTF_MIDDLEUP = MOUSE_EVENT_FLAGS(0x00000040);
  static const MOUSEEVENTF_MOVE = MOUSE_EVENT_FLAGS(0x00000001);
  static const MOUSEEVENTF_RIGHTDOWN = MOUSE_EVENT_FLAGS(0x00000008);
  static const MOUSEEVENTF_RIGHTUP = MOUSE_EVENT_FLAGS(0x00000010);
  static const MOUSEEVENTF_WHEEL = MOUSE_EVENT_FLAGS(0x00000800);
  static const MOUSEEVENTF_XDOWN = MOUSE_EVENT_FLAGS(0x00000080);
  static const MOUSEEVENTF_XUP = MOUSE_EVENT_FLAGS(0x00000100);
  static const MOUSEEVENTF_HWHEEL = MOUSE_EVENT_FLAGS(0x00001000);
  static const MOUSEEVENTF_MOVE_NOCOALESCE = MOUSE_EVENT_FLAGS(0x00002000);
  static const MOUSEEVENTF_VIRTUALDESK = MOUSE_EVENT_FLAGS(0x00004000);
}

/// {@category enum}
extension type const MOUSE_STATE(int _) implements int {
  static const MOUSE_MOVE_RELATIVE = MOUSE_STATE(0x0000);
  static const MOUSE_MOVE_ABSOLUTE = MOUSE_STATE(0x0001);
  static const MOUSE_VIRTUAL_DESKTOP = MOUSE_STATE(0x0002);
  static const MOUSE_ATTRIBUTES_CHANGED = MOUSE_STATE(0x0004);
  static const MOUSE_MOVE_NOCOALESCE = MOUSE_STATE(0x0008);
}

/// {@category enum}
extension type const MSGFLTINFO_STATUS(int _) implements int {
  static const MSGFLTINFO_NONE = MSGFLTINFO_STATUS(0x00000000);
  static const MSGFLTINFO_ALLOWED_HIGHER = MSGFLTINFO_STATUS(0x00000003);
  static const MSGFLTINFO_ALREADYALLOWED_FORWND = MSGFLTINFO_STATUS(0x00000001);
  static const MSGFLTINFO_ALREADYDISALLOWED_FORWND =
      MSGFLTINFO_STATUS(0x00000002);
}

/// {@category enum}
extension type const MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(int _)
    implements int {
  static const MWMO_NONE = MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(0x00000000);
  static const MWMO_ALERTABLE =
      MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(0x00000002);
  static const MWMO_INPUTAVAILABLE =
      MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(0x00000004);
  static const MWMO_WAITALL =
      MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(0x00000001);
}

/// {@category enum}
extension type const MW_FILTERMODE(int _) implements int {
  static const MW_FILTERMODE_EXCLUDE = MW_FILTERMODE(0x00000000);
  static const MW_FILTERMODE_INCLUDE = MW_FILTERMODE(0x00000001);
}

/// {@category enum}
extension type const NAMED_PIPE_MODE(int _) implements int {
  static const PIPE_WAIT = NAMED_PIPE_MODE(0x00000000);
  static const PIPE_NOWAIT = NAMED_PIPE_MODE(0x00000001);
  static const PIPE_READMODE_BYTE = NAMED_PIPE_MODE(0x00000000);
  static const PIPE_READMODE_MESSAGE = NAMED_PIPE_MODE(0x00000002);
  static const PIPE_CLIENT_END = NAMED_PIPE_MODE(0x00000000);
  static const PIPE_SERVER_END = NAMED_PIPE_MODE(0x00000001);
  static const PIPE_TYPE_BYTE = NAMED_PIPE_MODE(0x00000000);
  static const PIPE_TYPE_MESSAGE = NAMED_PIPE_MODE(0x00000004);
  static const PIPE_ACCEPT_REMOTE_CLIENTS = NAMED_PIPE_MODE(0x00000000);
  static const PIPE_REJECT_REMOTE_CLIENTS = NAMED_PIPE_MODE(0x00000008);
}

/// {@category enum}
extension type const NET_IF_CONNECTION_TYPE(int _) implements int {
  static const NET_IF_CONNECTION_DEDICATED = NET_IF_CONNECTION_TYPE(0x00000001);
  static const NET_IF_CONNECTION_PASSIVE = NET_IF_CONNECTION_TYPE(0x00000002);
  static const NET_IF_CONNECTION_DEMAND = NET_IF_CONNECTION_TYPE(0x00000003);
  static const NET_IF_CONNECTION_MAXIMUM = NET_IF_CONNECTION_TYPE(0x00000004);
}

/// {@category enum}
extension type const NLM_CONNECTION_COST(int _) implements int {
  static const NLM_CONNECTION_COST_UNKNOWN = NLM_CONNECTION_COST(0x00000000);
  static const NLM_CONNECTION_COST_UNRESTRICTED =
      NLM_CONNECTION_COST(0x00000001);
  static const NLM_CONNECTION_COST_FIXED = NLM_CONNECTION_COST(0x00000002);
  static const NLM_CONNECTION_COST_VARIABLE = NLM_CONNECTION_COST(0x00000004);
  static const NLM_CONNECTION_COST_OVERDATALIMIT =
      NLM_CONNECTION_COST(0x00010000);
  static const NLM_CONNECTION_COST_CONGESTED = NLM_CONNECTION_COST(0x00020000);
  static const NLM_CONNECTION_COST_ROAMING = NLM_CONNECTION_COST(0x00040000);
  static const NLM_CONNECTION_COST_APPROACHINGDATALIMIT =
      NLM_CONNECTION_COST(0x00080000);
}

/// {@category enum}
extension type const NLM_CONNECTIVITY(int _) implements int {
  static const NLM_CONNECTIVITY_DISCONNECTED = NLM_CONNECTIVITY(0x00000000);
  static const NLM_CONNECTIVITY_IPV4_NOTRAFFIC = NLM_CONNECTIVITY(0x00000001);
  static const NLM_CONNECTIVITY_IPV6_NOTRAFFIC = NLM_CONNECTIVITY(0x00000002);
  static const NLM_CONNECTIVITY_IPV4_SUBNET = NLM_CONNECTIVITY(0x00000010);
  static const NLM_CONNECTIVITY_IPV4_LOCALNETWORK =
      NLM_CONNECTIVITY(0x00000020);
  static const NLM_CONNECTIVITY_IPV4_INTERNET = NLM_CONNECTIVITY(0x00000040);
  static const NLM_CONNECTIVITY_IPV6_SUBNET = NLM_CONNECTIVITY(0x00000100);
  static const NLM_CONNECTIVITY_IPV6_LOCALNETWORK =
      NLM_CONNECTIVITY(0x00000200);
  static const NLM_CONNECTIVITY_IPV6_INTERNET = NLM_CONNECTIVITY(0x00000400);
}

/// {@category enum}
extension type const NLM_DOMAIN_TYPE(int _) implements int {
  static const NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK = NLM_DOMAIN_TYPE(0x00000000);
  static const NLM_DOMAIN_TYPE_DOMAIN_NETWORK = NLM_DOMAIN_TYPE(0x00000001);
  static const NLM_DOMAIN_TYPE_DOMAIN_AUTHENTICATED =
      NLM_DOMAIN_TYPE(0x00000002);
}

/// {@category enum}
extension type const NLM_ENUM_NETWORK(int _) implements int {
  static const NLM_ENUM_NETWORK_CONNECTED = NLM_ENUM_NETWORK(0x00000001);
  static const NLM_ENUM_NETWORK_DISCONNECTED = NLM_ENUM_NETWORK(0x00000002);
  static const NLM_ENUM_NETWORK_ALL = NLM_ENUM_NETWORK(0x00000003);
}

/// {@category enum}
extension type const NLM_NETWORK_CATEGORY(int _) implements int {
  static const NLM_NETWORK_CATEGORY_PUBLIC = NLM_NETWORK_CATEGORY(0x00000000);
  static const NLM_NETWORK_CATEGORY_PRIVATE = NLM_NETWORK_CATEGORY(0x00000001);
  static const NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED =
      NLM_NETWORK_CATEGORY(0x00000002);
}

/// {@category enum}
extension type const NL_DAD_STATE(int _) implements int {
  static const NldsInvalid = NL_DAD_STATE(0x00000000);
  static const NldsTentative = NL_DAD_STATE(0x00000001);
  static const NldsDuplicate = NL_DAD_STATE(0x00000002);
  static const NldsDeprecated = NL_DAD_STATE(0x00000003);
  static const NldsPreferred = NL_DAD_STATE(0x00000004);
  static const IpDadStateInvalid = NL_DAD_STATE(0x00000000);
  static const IpDadStateTentative = NL_DAD_STATE(0x00000001);
  static const IpDadStateDuplicate = NL_DAD_STATE(0x00000002);
  static const IpDadStateDeprecated = NL_DAD_STATE(0x00000003);
  static const IpDadStatePreferred = NL_DAD_STATE(0x00000004);
}

/// {@category enum}
extension type const NL_PREFIX_ORIGIN(int _) implements int {
  static const IpPrefixOriginOther = NL_PREFIX_ORIGIN(0x00000000);
  static const IpPrefixOriginManual = NL_PREFIX_ORIGIN(0x00000001);
  static const IpPrefixOriginWellKnown = NL_PREFIX_ORIGIN(0x00000002);
  static const IpPrefixOriginDhcp = NL_PREFIX_ORIGIN(0x00000003);
  static const IpPrefixOriginRouterAdvertisement = NL_PREFIX_ORIGIN(0x00000004);
  static const IpPrefixOriginUnchanged = NL_PREFIX_ORIGIN(0x00000010);
}

/// {@category enum}
extension type const NL_SUFFIX_ORIGIN(int _) implements int {
  static const NlsoOther = NL_SUFFIX_ORIGIN(0x00000000);
  static const NlsoManual = NL_SUFFIX_ORIGIN(0x00000001);
  static const NlsoWellKnown = NL_SUFFIX_ORIGIN(0x00000002);
  static const NlsoDhcp = NL_SUFFIX_ORIGIN(0x00000003);
  static const NlsoLinkLayerAddress = NL_SUFFIX_ORIGIN(0x00000004);
  static const NlsoRandom = NL_SUFFIX_ORIGIN(0x00000005);
  static const IpSuffixOriginOther = NL_SUFFIX_ORIGIN(0x00000000);
  static const IpSuffixOriginManual = NL_SUFFIX_ORIGIN(0x00000001);
  static const IpSuffixOriginWellKnown = NL_SUFFIX_ORIGIN(0x00000002);
  static const IpSuffixOriginDhcp = NL_SUFFIX_ORIGIN(0x00000003);
  static const IpSuffixOriginLinkLayerAddress = NL_SUFFIX_ORIGIN(0x00000004);
  static const IpSuffixOriginRandom = NL_SUFFIX_ORIGIN(0x00000005);
  static const IpSuffixOriginUnchanged = NL_SUFFIX_ORIGIN(0x00000010);
}

/// {@category enum}
extension type const NOTIFY_ICON_DATA_FLAGS(int _) implements int {
  static const NIF_MESSAGE = NOTIFY_ICON_DATA_FLAGS(0x00000001);
  static const NIF_ICON = NOTIFY_ICON_DATA_FLAGS(0x00000002);
  static const NIF_TIP = NOTIFY_ICON_DATA_FLAGS(0x00000004);
  static const NIF_STATE = NOTIFY_ICON_DATA_FLAGS(0x00000008);
  static const NIF_INFO = NOTIFY_ICON_DATA_FLAGS(0x00000010);
  static const NIF_GUID = NOTIFY_ICON_DATA_FLAGS(0x00000020);
  static const NIF_REALTIME = NOTIFY_ICON_DATA_FLAGS(0x00000040);
  static const NIF_SHOWTIP = NOTIFY_ICON_DATA_FLAGS(0x00000080);
}

/// {@category enum}
extension type const NOTIFY_ICON_INFOTIP_FLAGS(int _) implements int {
  static const NIIF_NONE = NOTIFY_ICON_INFOTIP_FLAGS(0x00000000);
  static const NIIF_INFO = NOTIFY_ICON_INFOTIP_FLAGS(0x00000001);
  static const NIIF_WARNING = NOTIFY_ICON_INFOTIP_FLAGS(0x00000002);
  static const NIIF_ERROR = NOTIFY_ICON_INFOTIP_FLAGS(0x00000003);
  static const NIIF_USER = NOTIFY_ICON_INFOTIP_FLAGS(0x00000004);
  static const NIIF_ICON_MASK = NOTIFY_ICON_INFOTIP_FLAGS(0x0000000f);
  static const NIIF_NOSOUND = NOTIFY_ICON_INFOTIP_FLAGS(0x00000010);
  static const NIIF_LARGE_ICON = NOTIFY_ICON_INFOTIP_FLAGS(0x00000020);
  static const NIIF_RESPECT_QUIET_TIME = NOTIFY_ICON_INFOTIP_FLAGS(0x00000080);
}

/// {@category enum}
extension type const NOTIFY_ICON_MESSAGE(int _) implements int {
  static const NIM_ADD = NOTIFY_ICON_MESSAGE(0x00000000);
  static const NIM_MODIFY = NOTIFY_ICON_MESSAGE(0x00000001);
  static const NIM_DELETE = NOTIFY_ICON_MESSAGE(0x00000002);
  static const NIM_SETFOCUS = NOTIFY_ICON_MESSAGE(0x00000003);
  static const NIM_SETVERSION = NOTIFY_ICON_MESSAGE(0x00000004);
}

/// {@category enum}
extension type const NOTIFY_ICON_STATE(int _) implements int {
  static const NIS_HIDDEN = NOTIFY_ICON_STATE(0x00000001);
  static const NIS_SHAREDICON = NOTIFY_ICON_STATE(0x00000002);
}

/// {@category enum}
extension type const NavigateDirection(int _) implements int {
  static const NavigateDirection_Parent = NavigateDirection(0x00000000);
  static const NavigateDirection_NextSibling = NavigateDirection(0x00000001);
  static const NavigateDirection_PreviousSibling =
      NavigateDirection(0x00000002);
  static const NavigateDirection_FirstChild = NavigateDirection(0x00000003);
  static const NavigateDirection_LastChild = NavigateDirection(0x00000004);
}

/// {@category enum}
extension type const OBJECT_IDENTIFIER(int _) implements int {
  static const OBJID_WINDOW = OBJECT_IDENTIFIER(0x00000000);
  static const OBJID_SYSMENU = OBJECT_IDENTIFIER(0xffffffff);
  static const OBJID_TITLEBAR = OBJECT_IDENTIFIER(0xfffffffe);
  static const OBJID_MENU = OBJECT_IDENTIFIER(0xfffffffd);
  static const OBJID_CLIENT = OBJECT_IDENTIFIER(0xfffffffc);
  static const OBJID_VSCROLL = OBJECT_IDENTIFIER(0xfffffffb);
  static const OBJID_HSCROLL = OBJECT_IDENTIFIER(0xfffffffa);
  static const OBJID_SIZEGRIP = OBJECT_IDENTIFIER(0xfffffff9);
  static const OBJID_CARET = OBJECT_IDENTIFIER(0xfffffff8);
  static const OBJID_CURSOR = OBJECT_IDENTIFIER(0xfffffff7);
  static const OBJID_ALERT = OBJECT_IDENTIFIER(0xfffffff6);
  static const OBJID_SOUND = OBJECT_IDENTIFIER(0xfffffff5);
  static const OBJID_QUERYCLASSNAMEIDX = OBJECT_IDENTIFIER(0xfffffff4);
  static const OBJID_NATIVEOM = OBJECT_IDENTIFIER(0xfffffff0);
}

/// {@category enum}
extension type const OBJECT_SECURITY_INFORMATION(int _) implements int {
  static const ATTRIBUTE_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000020);
  static const BACKUP_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00010000);
  static const DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000004);
  static const GROUP_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000002);
  static const LABEL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000010);
  static const OWNER_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000001);
  static const PROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x80000000);
  static const PROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x40000000);
  static const SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000008);
  static const SCOPE_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x00000040);
  static const UNPROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x20000000);
  static const UNPROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(0x10000000);
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS(int _) implements int {
  static const OFN_READONLY = OPEN_FILENAME_FLAGS(0x00000001);
  static const OFN_OVERWRITEPROMPT = OPEN_FILENAME_FLAGS(0x00000002);
  static const OFN_HIDEREADONLY = OPEN_FILENAME_FLAGS(0x00000004);
  static const OFN_NOCHANGEDIR = OPEN_FILENAME_FLAGS(0x00000008);
  static const OFN_SHOWHELP = OPEN_FILENAME_FLAGS(0x00000010);
  static const OFN_ENABLEHOOK = OPEN_FILENAME_FLAGS(0x00000020);
  static const OFN_ENABLETEMPLATE = OPEN_FILENAME_FLAGS(0x00000040);
  static const OFN_ENABLETEMPLATEHANDLE = OPEN_FILENAME_FLAGS(0x00000080);
  static const OFN_NOVALIDATE = OPEN_FILENAME_FLAGS(0x00000100);
  static const OFN_ALLOWMULTISELECT = OPEN_FILENAME_FLAGS(0x00000200);
  static const OFN_EXTENSIONDIFFERENT = OPEN_FILENAME_FLAGS(0x00000400);
  static const OFN_PATHMUSTEXIST = OPEN_FILENAME_FLAGS(0x00000800);
  static const OFN_FILEMUSTEXIST = OPEN_FILENAME_FLAGS(0x00001000);
  static const OFN_CREATEPROMPT = OPEN_FILENAME_FLAGS(0x00002000);
  static const OFN_SHAREAWARE = OPEN_FILENAME_FLAGS(0x00004000);
  static const OFN_NOREADONLYRETURN = OPEN_FILENAME_FLAGS(0x00008000);
  static const OFN_NOTESTFILECREATE = OPEN_FILENAME_FLAGS(0x00010000);
  static const OFN_NONETWORKBUTTON = OPEN_FILENAME_FLAGS(0x00020000);
  static const OFN_NOLONGNAMES = OPEN_FILENAME_FLAGS(0x00040000);
  static const OFN_EXPLORER = OPEN_FILENAME_FLAGS(0x00080000);
  static const OFN_NODEREFERENCELINKS = OPEN_FILENAME_FLAGS(0x00100000);
  static const OFN_LONGNAMES = OPEN_FILENAME_FLAGS(0x00200000);
  static const OFN_ENABLEINCLUDENOTIFY = OPEN_FILENAME_FLAGS(0x00400000);
  static const OFN_ENABLESIZING = OPEN_FILENAME_FLAGS(0x00800000);
  static const OFN_DONTADDTORECENT = OPEN_FILENAME_FLAGS(0x02000000);
  static const OFN_FORCESHOWHIDDEN = OPEN_FILENAME_FLAGS(0x10000000);
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS_EX(int _) implements int {
  static const OFN_EX_NONE = OPEN_FILENAME_FLAGS_EX(0x00000000);
  static const OFN_EX_NOPLACESBAR = OPEN_FILENAME_FLAGS_EX(0x00000001);
}

/// {@category enum}
extension type const OPEN_THEME_DATA_FLAGS(int _) implements int {
  static const OTD_FORCE_RECT_SIZING = OPEN_THEME_DATA_FLAGS(0x00000001);
  static const OTD_NONCLIENT = OPEN_THEME_DATA_FLAGS(0x00000002);
}

/// {@category enum}
extension type const ORIENTATION_PREFERENCE(int _) implements int {
  static const ORIENTATION_PREFERENCE_NONE = ORIENTATION_PREFERENCE(0x00000000);
  static const ORIENTATION_PREFERENCE_LANDSCAPE =
      ORIENTATION_PREFERENCE(0x00000001);
  static const ORIENTATION_PREFERENCE_PORTRAIT =
      ORIENTATION_PREFERENCE(0x00000002);
  static const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED =
      ORIENTATION_PREFERENCE(0x00000004);
  static const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED =
      ORIENTATION_PREFERENCE(0x00000008);
}

/// {@category enum}
extension type const OS_PRODUCT_TYPE(int _) implements int {
  static const PRODUCT_BUSINESS = OS_PRODUCT_TYPE(0x00000006);
  static const PRODUCT_BUSINESS_N = OS_PRODUCT_TYPE(0x00000010);
  static const PRODUCT_CLUSTER_SERVER = OS_PRODUCT_TYPE(0x00000012);
  static const PRODUCT_CLUSTER_SERVER_V = OS_PRODUCT_TYPE(0x00000040);
  static const PRODUCT_CORE = OS_PRODUCT_TYPE(0x00000065);
  static const PRODUCT_CORE_COUNTRYSPECIFIC = OS_PRODUCT_TYPE(0x00000063);
  static const PRODUCT_CORE_N = OS_PRODUCT_TYPE(0x00000062);
  static const PRODUCT_CORE_SINGLELANGUAGE = OS_PRODUCT_TYPE(0x00000064);
  static const PRODUCT_DATACENTER_EVALUATION_SERVER =
      OS_PRODUCT_TYPE(0x00000050);
  static const PRODUCT_DATACENTER_A_SERVER_CORE = OS_PRODUCT_TYPE(0x00000091);
  static const PRODUCT_STANDARD_A_SERVER_CORE = OS_PRODUCT_TYPE(0x00000092);
  static const PRODUCT_DATACENTER_SERVER = OS_PRODUCT_TYPE(0x00000008);
  static const PRODUCT_DATACENTER_SERVER_CORE = OS_PRODUCT_TYPE(0x0000000c);
  static const PRODUCT_DATACENTER_SERVER_CORE_V = OS_PRODUCT_TYPE(0x00000027);
  static const PRODUCT_DATACENTER_SERVER_V = OS_PRODUCT_TYPE(0x00000025);
  static const PRODUCT_EDUCATION = OS_PRODUCT_TYPE(0x00000079);
  static const PRODUCT_EDUCATION_N = OS_PRODUCT_TYPE(0x0000007a);
  static const PRODUCT_ENTERPRISE = OS_PRODUCT_TYPE(0x00000004);
  static const PRODUCT_ENTERPRISE_E = OS_PRODUCT_TYPE(0x00000046);
  static const PRODUCT_ENTERPRISE_EVALUATION = OS_PRODUCT_TYPE(0x00000048);
  static const PRODUCT_ENTERPRISE_N = OS_PRODUCT_TYPE(0x0000001b);
  static const PRODUCT_ENTERPRISE_N_EVALUATION = OS_PRODUCT_TYPE(0x00000054);
  static const PRODUCT_ENTERPRISE_S = OS_PRODUCT_TYPE(0x0000007d);
  static const PRODUCT_ENTERPRISE_S_EVALUATION = OS_PRODUCT_TYPE(0x00000081);
  static const PRODUCT_ENTERPRISE_S_N = OS_PRODUCT_TYPE(0x0000007e);
  static const PRODUCT_ENTERPRISE_S_N_EVALUATION = OS_PRODUCT_TYPE(0x00000082);
  static const PRODUCT_ENTERPRISE_SERVER = OS_PRODUCT_TYPE(0x0000000a);
  static const PRODUCT_ENTERPRISE_SERVER_CORE = OS_PRODUCT_TYPE(0x0000000e);
  static const PRODUCT_ENTERPRISE_SERVER_CORE_V = OS_PRODUCT_TYPE(0x00000029);
  static const PRODUCT_ENTERPRISE_SERVER_IA64 = OS_PRODUCT_TYPE(0x0000000f);
  static const PRODUCT_ENTERPRISE_SERVER_V = OS_PRODUCT_TYPE(0x00000026);
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL =
      OS_PRODUCT_TYPE(0x0000003c);
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC =
      OS_PRODUCT_TYPE(0x0000003e);
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT =
      OS_PRODUCT_TYPE(0x0000003b);
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC =
      OS_PRODUCT_TYPE(0x0000003d);
  static const PRODUCT_HOME_BASIC = OS_PRODUCT_TYPE(0x00000002);
  static const PRODUCT_HOME_BASIC_E = OS_PRODUCT_TYPE(0x00000043);
  static const PRODUCT_HOME_BASIC_N = OS_PRODUCT_TYPE(0x00000005);
  static const PRODUCT_HOME_PREMIUM = OS_PRODUCT_TYPE(0x00000003);
  static const PRODUCT_HOME_PREMIUM_E = OS_PRODUCT_TYPE(0x00000044);
  static const PRODUCT_HOME_PREMIUM_N = OS_PRODUCT_TYPE(0x0000001a);
  static const PRODUCT_HOME_PREMIUM_SERVER = OS_PRODUCT_TYPE(0x00000022);
  static const PRODUCT_HOME_SERVER = OS_PRODUCT_TYPE(0x00000013);
  static const PRODUCT_HYPERV = OS_PRODUCT_TYPE(0x0000002a);
  static const PRODUCT_IOTUAP = OS_PRODUCT_TYPE(0x0000007b);
  static const PRODUCT_IOTUAPCOMMERCIAL = OS_PRODUCT_TYPE(0x00000083);
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT =
      OS_PRODUCT_TYPE(0x0000001e);
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING =
      OS_PRODUCT_TYPE(0x00000020);
  static const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY =
      OS_PRODUCT_TYPE(0x0000001f);
  static const PRODUCT_MOBILE_CORE = OS_PRODUCT_TYPE(0x00000068);
  static const PRODUCT_MOBILE_ENTERPRISE = OS_PRODUCT_TYPE(0x00000085);
  static const PRODUCT_MULTIPOINT_PREMIUM_SERVER = OS_PRODUCT_TYPE(0x0000004d);
  static const PRODUCT_MULTIPOINT_STANDARD_SERVER = OS_PRODUCT_TYPE(0x0000004c);
  static const PRODUCT_PRO_WORKSTATION = OS_PRODUCT_TYPE(0x000000a1);
  static const PRODUCT_PRO_WORKSTATION_N = OS_PRODUCT_TYPE(0x000000a2);
  static const PRODUCT_PROFESSIONAL = OS_PRODUCT_TYPE(0x00000030);
  static const PRODUCT_PROFESSIONAL_E = OS_PRODUCT_TYPE(0x00000045);
  static const PRODUCT_PROFESSIONAL_N = OS_PRODUCT_TYPE(0x00000031);
  static const PRODUCT_PROFESSIONAL_WMC = OS_PRODUCT_TYPE(0x00000067);
  static const PRODUCT_SB_SOLUTION_SERVER = OS_PRODUCT_TYPE(0x00000032);
  static const PRODUCT_SB_SOLUTION_SERVER_EM = OS_PRODUCT_TYPE(0x00000036);
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS = OS_PRODUCT_TYPE(0x00000033);
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = OS_PRODUCT_TYPE(0x00000037);
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS = OS_PRODUCT_TYPE(0x00000018);
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = OS_PRODUCT_TYPE(0x00000023);
  static const PRODUCT_SERVER_FOUNDATION = OS_PRODUCT_TYPE(0x00000021);
  static const PRODUCT_SMALLBUSINESS_SERVER = OS_PRODUCT_TYPE(0x00000009);
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM =
      OS_PRODUCT_TYPE(0x00000019);
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE =
      OS_PRODUCT_TYPE(0x0000003f);
  static const PRODUCT_SOLUTION_EMBEDDEDSERVER = OS_PRODUCT_TYPE(0x00000038);
  static const PRODUCT_STANDARD_EVALUATION_SERVER = OS_PRODUCT_TYPE(0x0000004f);
  static const PRODUCT_STANDARD_SERVER = OS_PRODUCT_TYPE(0x00000007);
  static const PRODUCT_STANDARD_SERVER_CORE_ = OS_PRODUCT_TYPE(0x0000000d);
  static const PRODUCT_STANDARD_SERVER_CORE_V = OS_PRODUCT_TYPE(0x00000028);
  static const PRODUCT_STANDARD_SERVER_V = OS_PRODUCT_TYPE(0x00000024);
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS = OS_PRODUCT_TYPE(0x00000034);
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE =
      OS_PRODUCT_TYPE(0x00000035);
  static const PRODUCT_STARTER = OS_PRODUCT_TYPE(0x0000000b);
  static const PRODUCT_STARTER_E = OS_PRODUCT_TYPE(0x00000042);
  static const PRODUCT_STARTER_N = OS_PRODUCT_TYPE(0x0000002f);
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER = OS_PRODUCT_TYPE(0x00000017);
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE =
      OS_PRODUCT_TYPE(0x0000002e);
  static const PRODUCT_STORAGE_EXPRESS_SERVER = OS_PRODUCT_TYPE(0x00000014);
  static const PRODUCT_STORAGE_EXPRESS_SERVER_CORE =
      OS_PRODUCT_TYPE(0x0000002b);
  static const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER =
      OS_PRODUCT_TYPE(0x00000060);
  static const PRODUCT_STORAGE_STANDARD_SERVER = OS_PRODUCT_TYPE(0x00000015);
  static const PRODUCT_STORAGE_STANDARD_SERVER_CORE =
      OS_PRODUCT_TYPE(0x0000002c);
  static const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER =
      OS_PRODUCT_TYPE(0x0000005f);
  static const PRODUCT_STORAGE_WORKGROUP_SERVER = OS_PRODUCT_TYPE(0x00000016);
  static const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE =
      OS_PRODUCT_TYPE(0x0000002d);
  static const PRODUCT_ULTIMATE = OS_PRODUCT_TYPE(0x00000001);
  static const PRODUCT_ULTIMATE_E = OS_PRODUCT_TYPE(0x00000047);
  static const PRODUCT_ULTIMATE_N = OS_PRODUCT_TYPE(0x0000001c);
  static const PRODUCT_UNDEFINED = OS_PRODUCT_TYPE(0x00000000);
  static const PRODUCT_WEB_SERVER = OS_PRODUCT_TYPE(0x00000011);
  static const PRODUCT_WEB_SERVER_CORE = OS_PRODUCT_TYPE(0x0000001d);
}

/// {@category enum}
extension type const OrientationType(int _) implements int {
  static const OrientationType_None = OrientationType(0x00000000);
  static const OrientationType_Horizontal = OrientationType(0x00000001);
  static const OrientationType_Vertical = OrientationType(0x00000002);
}

/// {@category enum}
extension type const PAGE_PROTECTION_FLAGS(int _) implements int {
  static const PAGE_NOACCESS = PAGE_PROTECTION_FLAGS(0x00000001);
  static const PAGE_READONLY = PAGE_PROTECTION_FLAGS(0x00000002);
  static const PAGE_READWRITE = PAGE_PROTECTION_FLAGS(0x00000004);
  static const PAGE_WRITECOPY = PAGE_PROTECTION_FLAGS(0x00000008);
  static const PAGE_EXECUTE = PAGE_PROTECTION_FLAGS(0x00000010);
  static const PAGE_EXECUTE_READ = PAGE_PROTECTION_FLAGS(0x00000020);
  static const PAGE_EXECUTE_READWRITE = PAGE_PROTECTION_FLAGS(0x00000040);
  static const PAGE_EXECUTE_WRITECOPY = PAGE_PROTECTION_FLAGS(0x00000080);
  static const PAGE_GUARD = PAGE_PROTECTION_FLAGS(0x00000100);
  static const PAGE_NOCACHE = PAGE_PROTECTION_FLAGS(0x00000200);
  static const PAGE_WRITECOMBINE = PAGE_PROTECTION_FLAGS(0x00000400);
  static const PAGE_GRAPHICS_NOACCESS = PAGE_PROTECTION_FLAGS(0x00000800);
  static const PAGE_GRAPHICS_READONLY = PAGE_PROTECTION_FLAGS(0x00001000);
  static const PAGE_GRAPHICS_READWRITE = PAGE_PROTECTION_FLAGS(0x00002000);
  static const PAGE_GRAPHICS_EXECUTE = PAGE_PROTECTION_FLAGS(0x00004000);
  static const PAGE_GRAPHICS_EXECUTE_READ = PAGE_PROTECTION_FLAGS(0x00008000);
  static const PAGE_GRAPHICS_EXECUTE_READWRITE =
      PAGE_PROTECTION_FLAGS(0x00010000);
  static const PAGE_GRAPHICS_COHERENT = PAGE_PROTECTION_FLAGS(0x00020000);
  static const PAGE_GRAPHICS_NOCACHE = PAGE_PROTECTION_FLAGS(0x00040000);
  static const PAGE_ENCLAVE_THREAD_CONTROL = PAGE_PROTECTION_FLAGS(0x80000000);
  static const PAGE_REVERT_TO_FILE_MAP = PAGE_PROTECTION_FLAGS(0x80000000);
  static const PAGE_TARGETS_NO_UPDATE = PAGE_PROTECTION_FLAGS(0x40000000);
  static const PAGE_TARGETS_INVALID = PAGE_PROTECTION_FLAGS(0x40000000);
  static const PAGE_ENCLAVE_UNVALIDATED = PAGE_PROTECTION_FLAGS(0x20000000);
  static const PAGE_ENCLAVE_MASK = PAGE_PROTECTION_FLAGS(0x10000000);
  static const PAGE_ENCLAVE_DECOMMIT = PAGE_PROTECTION_FLAGS(0x10000000);
  static const PAGE_ENCLAVE_SS_FIRST = PAGE_PROTECTION_FLAGS(0x10000001);
  static const PAGE_ENCLAVE_SS_REST = PAGE_PROTECTION_FLAGS(0x10000002);
  static const SEC_PARTITION_OWNER_HANDLE = PAGE_PROTECTION_FLAGS(0x00040000);
  static const SEC_64K_PAGES = PAGE_PROTECTION_FLAGS(0x00080000);
  static const SEC_FILE = PAGE_PROTECTION_FLAGS(0x00800000);
  static const SEC_IMAGE = PAGE_PROTECTION_FLAGS(0x01000000);
  static const SEC_PROTECTED_IMAGE = PAGE_PROTECTION_FLAGS(0x02000000);
  static const SEC_RESERVE = PAGE_PROTECTION_FLAGS(0x04000000);
  static const SEC_COMMIT = PAGE_PROTECTION_FLAGS(0x08000000);
  static const SEC_NOCACHE = PAGE_PROTECTION_FLAGS(0x10000000);
  static const SEC_WRITECOMBINE = PAGE_PROTECTION_FLAGS(0x40000000);
  static const SEC_LARGE_PAGES = PAGE_PROTECTION_FLAGS(0x80000000);
  static const SEC_IMAGE_NO_EXECUTE = PAGE_PROTECTION_FLAGS(0x11000000);
}

/// {@category enum}
extension type const PAGE_TYPE(int _) implements int {
  static const MEM_PRIVATE = PAGE_TYPE(0x00020000);
  static const MEM_MAPPED = PAGE_TYPE(0x00040000);
  static const MEM_IMAGE = PAGE_TYPE(0x01000000);
}

/// {@category enum}
extension type const PARAMFLAGS(int _) implements int {
  static const PARAMFLAG_NONE = PARAMFLAGS(0x0000);
  static const PARAMFLAG_FIN = PARAMFLAGS(0x0001);
  static const PARAMFLAG_FOUT = PARAMFLAGS(0x0002);
  static const PARAMFLAG_FLCID = PARAMFLAGS(0x0004);
  static const PARAMFLAG_FRETVAL = PARAMFLAGS(0x0008);
  static const PARAMFLAG_FOPT = PARAMFLAGS(0x0010);
  static const PARAMFLAG_FHASDEFAULT = PARAMFLAGS(0x0020);
  static const PARAMFLAG_FHASCUSTDATA = PARAMFLAGS(0x0040);
}

/// {@category enum}
extension type const PEEK_MESSAGE_REMOVE_TYPE(int _) implements int {
  static const PM_NOREMOVE = PEEK_MESSAGE_REMOVE_TYPE(0x00000000);
  static const PM_REMOVE = PEEK_MESSAGE_REMOVE_TYPE(0x00000001);
  static const PM_NOYIELD = PEEK_MESSAGE_REMOVE_TYPE(0x00000002);
  static const PM_QS_INPUT = PEEK_MESSAGE_REMOVE_TYPE(0x04070000);
  static const PM_QS_POSTMESSAGE = PEEK_MESSAGE_REMOVE_TYPE(0x00980000);
  static const PM_QS_PAINT = PEEK_MESSAGE_REMOVE_TYPE(0x00200000);
  static const PM_QS_SENDMESSAGE = PEEK_MESSAGE_REMOVE_TYPE(0x00400000);
}

/// {@category enum}
extension type const PEN_STYLE(int _) implements int {
  static const PS_GEOMETRIC = PEN_STYLE(0x00010000);
  static const PS_COSMETIC = PEN_STYLE(0x00000000);
  static const PS_SOLID = PEN_STYLE(0x00000000);
  static const PS_DASH = PEN_STYLE(0x00000001);
  static const PS_DOT = PEN_STYLE(0x00000002);
  static const PS_DASHDOT = PEN_STYLE(0x00000003);
  static const PS_DASHDOTDOT = PEN_STYLE(0x00000004);
  static const PS_NULL = PEN_STYLE(0x00000005);
  static const PS_INSIDEFRAME = PEN_STYLE(0x00000006);
  static const PS_USERSTYLE = PEN_STYLE(0x00000007);
  static const PS_ALTERNATE = PEN_STYLE(0x00000008);
  static const PS_STYLE_MASK = PEN_STYLE(0x0000000f);
  static const PS_ENDCAP_ROUND = PEN_STYLE(0x00000000);
  static const PS_ENDCAP_SQUARE = PEN_STYLE(0x00000100);
  static const PS_ENDCAP_FLAT = PEN_STYLE(0x00000200);
  static const PS_ENDCAP_MASK = PEN_STYLE(0x00000f00);
  static const PS_JOIN_ROUND = PEN_STYLE(0x00000000);
  static const PS_JOIN_BEVEL = PEN_STYLE(0x00001000);
  static const PS_JOIN_MITER = PEN_STYLE(0x00002000);
  static const PS_JOIN_MASK = PEN_STYLE(0x0000f000);
  static const PS_TYPE_MASK = PEN_STYLE(0x000f0000);
}

/// {@category enum}
extension type const POINTER_BUTTON_CHANGE_TYPE(int _) implements int {
  static const POINTER_CHANGE_NONE = POINTER_BUTTON_CHANGE_TYPE(0x00000000);
  static const POINTER_CHANGE_FIRSTBUTTON_DOWN =
      POINTER_BUTTON_CHANGE_TYPE(0x00000001);
  static const POINTER_CHANGE_FIRSTBUTTON_UP =
      POINTER_BUTTON_CHANGE_TYPE(0x00000002);
  static const POINTER_CHANGE_SECONDBUTTON_DOWN =
      POINTER_BUTTON_CHANGE_TYPE(0x00000003);
  static const POINTER_CHANGE_SECONDBUTTON_UP =
      POINTER_BUTTON_CHANGE_TYPE(0x00000004);
  static const POINTER_CHANGE_THIRDBUTTON_DOWN =
      POINTER_BUTTON_CHANGE_TYPE(0x00000005);
  static const POINTER_CHANGE_THIRDBUTTON_UP =
      POINTER_BUTTON_CHANGE_TYPE(0x00000006);
  static const POINTER_CHANGE_FOURTHBUTTON_DOWN =
      POINTER_BUTTON_CHANGE_TYPE(0x00000007);
  static const POINTER_CHANGE_FOURTHBUTTON_UP =
      POINTER_BUTTON_CHANGE_TYPE(0x00000008);
  static const POINTER_CHANGE_FIFTHBUTTON_DOWN =
      POINTER_BUTTON_CHANGE_TYPE(0x00000009);
  static const POINTER_CHANGE_FIFTHBUTTON_UP =
      POINTER_BUTTON_CHANGE_TYPE(0x0000000a);
}

/// {@category enum}
extension type const POINTER_FLAGS(int _) implements int {
  static const POINTER_FLAG_NONE = POINTER_FLAGS(0x00000000);
  static const POINTER_FLAG_NEW = POINTER_FLAGS(0x00000001);
  static const POINTER_FLAG_INRANGE = POINTER_FLAGS(0x00000002);
  static const POINTER_FLAG_INCONTACT = POINTER_FLAGS(0x00000004);
  static const POINTER_FLAG_FIRSTBUTTON = POINTER_FLAGS(0x00000010);
  static const POINTER_FLAG_SECONDBUTTON = POINTER_FLAGS(0x00000020);
  static const POINTER_FLAG_THIRDBUTTON = POINTER_FLAGS(0x00000040);
  static const POINTER_FLAG_FOURTHBUTTON = POINTER_FLAGS(0x00000080);
  static const POINTER_FLAG_FIFTHBUTTON = POINTER_FLAGS(0x00000100);
  static const POINTER_FLAG_PRIMARY = POINTER_FLAGS(0x00002000);
  static const POINTER_FLAG_CONFIDENCE = POINTER_FLAGS(0x00004000);
  static const POINTER_FLAG_CANCELED = POINTER_FLAGS(0x00008000);
  static const POINTER_FLAG_DOWN = POINTER_FLAGS(0x00010000);
  static const POINTER_FLAG_UPDATE = POINTER_FLAGS(0x00020000);
  static const POINTER_FLAG_UP = POINTER_FLAGS(0x00040000);
  static const POINTER_FLAG_WHEEL = POINTER_FLAGS(0x00080000);
  static const POINTER_FLAG_HWHEEL = POINTER_FLAGS(0x00100000);
  static const POINTER_FLAG_CAPTURECHANGED = POINTER_FLAGS(0x00200000);
  static const POINTER_FLAG_HASTRANSFORM = POINTER_FLAGS(0x00400000);
}

/// {@category enum}
extension type const POINTER_INPUT_TYPE(int _) implements int {
  static const PT_POINTER = POINTER_INPUT_TYPE(0x00000001);
  static const PT_TOUCH = POINTER_INPUT_TYPE(0x00000002);
  static const PT_PEN = POINTER_INPUT_TYPE(0x00000003);
  static const PT_MOUSE = POINTER_INPUT_TYPE(0x00000004);
  static const PT_TOUCHPAD = POINTER_INPUT_TYPE(0x00000005);
}

/// {@category enum}
extension type const POWER_INFORMATION_LEVEL(int _) implements int {
  static const SystemPowerPolicyAc = POWER_INFORMATION_LEVEL(0x00000000);
  static const SystemPowerPolicyDc = POWER_INFORMATION_LEVEL(0x00000001);
  static const VerifySystemPolicyAc = POWER_INFORMATION_LEVEL(0x00000002);
  static const VerifySystemPolicyDc = POWER_INFORMATION_LEVEL(0x00000003);
  static const SystemPowerCapabilities = POWER_INFORMATION_LEVEL(0x00000004);
  static const SystemBatteryState = POWER_INFORMATION_LEVEL(0x00000005);
  static const SystemPowerStateHandler = POWER_INFORMATION_LEVEL(0x00000006);
  static const ProcessorStateHandler = POWER_INFORMATION_LEVEL(0x00000007);
  static const SystemPowerPolicyCurrent = POWER_INFORMATION_LEVEL(0x00000008);
  static const AdministratorPowerPolicy = POWER_INFORMATION_LEVEL(0x00000009);
  static const SystemReserveHiberFile = POWER_INFORMATION_LEVEL(0x0000000a);
  static const ProcessorInformation = POWER_INFORMATION_LEVEL(0x0000000b);
  static const SystemPowerInformation = POWER_INFORMATION_LEVEL(0x0000000c);
  static const ProcessorStateHandler2 = POWER_INFORMATION_LEVEL(0x0000000d);
  static const LastWakeTime = POWER_INFORMATION_LEVEL(0x0000000e);
  static const LastSleepTime = POWER_INFORMATION_LEVEL(0x0000000f);
  static const SystemExecutionState = POWER_INFORMATION_LEVEL(0x00000010);
  static const SystemPowerStateNotifyHandler =
      POWER_INFORMATION_LEVEL(0x00000011);
  static const ProcessorPowerPolicyAc = POWER_INFORMATION_LEVEL(0x00000012);
  static const ProcessorPowerPolicyDc = POWER_INFORMATION_LEVEL(0x00000013);
  static const VerifyProcessorPowerPolicyAc =
      POWER_INFORMATION_LEVEL(0x00000014);
  static const VerifyProcessorPowerPolicyDc =
      POWER_INFORMATION_LEVEL(0x00000015);
  static const ProcessorPowerPolicyCurrent =
      POWER_INFORMATION_LEVEL(0x00000016);
  static const SystemPowerStateLogging = POWER_INFORMATION_LEVEL(0x00000017);
  static const SystemPowerLoggingEntry = POWER_INFORMATION_LEVEL(0x00000018);
  static const SetPowerSettingValue = POWER_INFORMATION_LEVEL(0x00000019);
  static const NotifyUserPowerSetting = POWER_INFORMATION_LEVEL(0x0000001a);
  static const PowerInformationLevelUnused0 =
      POWER_INFORMATION_LEVEL(0x0000001b);
  static const SystemMonitorHiberBootPowerOff =
      POWER_INFORMATION_LEVEL(0x0000001c);
  static const SystemVideoState = POWER_INFORMATION_LEVEL(0x0000001d);
  static const TraceApplicationPowerMessage =
      POWER_INFORMATION_LEVEL(0x0000001e);
  static const TraceApplicationPowerMessageEnd =
      POWER_INFORMATION_LEVEL(0x0000001f);
  static const ProcessorPerfStates = POWER_INFORMATION_LEVEL(0x00000020);
  static const ProcessorIdleStates = POWER_INFORMATION_LEVEL(0x00000021);
  static const ProcessorCap = POWER_INFORMATION_LEVEL(0x00000022);
  static const SystemWakeSource = POWER_INFORMATION_LEVEL(0x00000023);
  static const SystemHiberFileInformation = POWER_INFORMATION_LEVEL(0x00000024);
  static const TraceServicePowerMessage = POWER_INFORMATION_LEVEL(0x00000025);
  static const ProcessorLoad = POWER_INFORMATION_LEVEL(0x00000026);
  static const PowerShutdownNotification = POWER_INFORMATION_LEVEL(0x00000027);
  static const MonitorCapabilities = POWER_INFORMATION_LEVEL(0x00000028);
  static const SessionPowerInit = POWER_INFORMATION_LEVEL(0x00000029);
  static const SessionDisplayState = POWER_INFORMATION_LEVEL(0x0000002a);
  static const PowerRequestCreate = POWER_INFORMATION_LEVEL(0x0000002b);
  static const PowerRequestAction = POWER_INFORMATION_LEVEL(0x0000002c);
  static const GetPowerRequestList = POWER_INFORMATION_LEVEL(0x0000002d);
  static const ProcessorInformationEx = POWER_INFORMATION_LEVEL(0x0000002e);
  static const NotifyUserModeLegacyPowerEvent =
      POWER_INFORMATION_LEVEL(0x0000002f);
  static const GroupPark = POWER_INFORMATION_LEVEL(0x00000030);
  static const ProcessorIdleDomains = POWER_INFORMATION_LEVEL(0x00000031);
  static const WakeTimerList = POWER_INFORMATION_LEVEL(0x00000032);
  static const SystemHiberFileSize = POWER_INFORMATION_LEVEL(0x00000033);
  static const ProcessorIdleStatesHv = POWER_INFORMATION_LEVEL(0x00000034);
  static const ProcessorPerfStatesHv = POWER_INFORMATION_LEVEL(0x00000035);
  static const ProcessorPerfCapHv = POWER_INFORMATION_LEVEL(0x00000036);
  static const ProcessorSetIdle = POWER_INFORMATION_LEVEL(0x00000037);
  static const LogicalProcessorIdling = POWER_INFORMATION_LEVEL(0x00000038);
  static const UserPresence = POWER_INFORMATION_LEVEL(0x00000039);
  static const PowerSettingNotificationName =
      POWER_INFORMATION_LEVEL(0x0000003a);
  static const GetPowerSettingValue = POWER_INFORMATION_LEVEL(0x0000003b);
  static const IdleResiliency = POWER_INFORMATION_LEVEL(0x0000003c);
  static const SessionRITState = POWER_INFORMATION_LEVEL(0x0000003d);
  static const SessionConnectNotification = POWER_INFORMATION_LEVEL(0x0000003e);
  static const SessionPowerCleanup = POWER_INFORMATION_LEVEL(0x0000003f);
  static const SessionLockState = POWER_INFORMATION_LEVEL(0x00000040);
  static const SystemHiberbootState = POWER_INFORMATION_LEVEL(0x00000041);
  static const PlatformInformation = POWER_INFORMATION_LEVEL(0x00000042);
  static const PdcInvocation = POWER_INFORMATION_LEVEL(0x00000043);
  static const MonitorInvocation = POWER_INFORMATION_LEVEL(0x00000044);
  static const FirmwareTableInformationRegistered =
      POWER_INFORMATION_LEVEL(0x00000045);
  static const SetShutdownSelectedTime = POWER_INFORMATION_LEVEL(0x00000046);
  static const SuspendResumeInvocation = POWER_INFORMATION_LEVEL(0x00000047);
  static const PlmPowerRequestCreate = POWER_INFORMATION_LEVEL(0x00000048);
  static const ScreenOff = POWER_INFORMATION_LEVEL(0x00000049);
  static const CsDeviceNotification = POWER_INFORMATION_LEVEL(0x0000004a);
  static const PlatformRole = POWER_INFORMATION_LEVEL(0x0000004b);
  static const LastResumePerformance = POWER_INFORMATION_LEVEL(0x0000004c);
  static const DisplayBurst = POWER_INFORMATION_LEVEL(0x0000004d);
  static const ExitLatencySamplingPercentage =
      POWER_INFORMATION_LEVEL(0x0000004e);
  static const RegisterSpmPowerSettings = POWER_INFORMATION_LEVEL(0x0000004f);
  static const PlatformIdleStates = POWER_INFORMATION_LEVEL(0x00000050);
  static const ProcessorIdleVeto = POWER_INFORMATION_LEVEL(0x00000051);
  static const PlatformIdleVeto = POWER_INFORMATION_LEVEL(0x00000052);
  static const SystemBatteryStatePrecise = POWER_INFORMATION_LEVEL(0x00000053);
  static const ThermalEvent = POWER_INFORMATION_LEVEL(0x00000054);
  static const PowerRequestActionInternal = POWER_INFORMATION_LEVEL(0x00000055);
  static const BatteryDeviceState = POWER_INFORMATION_LEVEL(0x00000056);
  static const PowerInformationInternal = POWER_INFORMATION_LEVEL(0x00000057);
  static const ThermalStandby = POWER_INFORMATION_LEVEL(0x00000058);
  static const SystemHiberFileType = POWER_INFORMATION_LEVEL(0x00000059);
  static const PhysicalPowerButtonPress = POWER_INFORMATION_LEVEL(0x0000005a);
  static const QueryPotentialDripsConstraint =
      POWER_INFORMATION_LEVEL(0x0000005b);
  static const EnergyTrackerCreate = POWER_INFORMATION_LEVEL(0x0000005c);
  static const EnergyTrackerQuery = POWER_INFORMATION_LEVEL(0x0000005d);
  static const UpdateBlackBoxRecorder = POWER_INFORMATION_LEVEL(0x0000005e);
  static const SessionAllowExternalDmaDevices =
      POWER_INFORMATION_LEVEL(0x0000005f);
  static const SendSuspendResumeNotification =
      POWER_INFORMATION_LEVEL(0x00000060);
  static const BlackBoxRecorderDirectAccessBuffer =
      POWER_INFORMATION_LEVEL(0x00000061);
  static const PowerInformationLevelMaximum =
      POWER_INFORMATION_LEVEL(0x00000062);
}

/// {@category enum}
extension type const PRINTER_ACCESS_RIGHTS(int _) implements int {
  static const PRINTER_ALL_ACCESS = PRINTER_ACCESS_RIGHTS(0x000f000c);
  static const PRINTER_READ = PRINTER_ACCESS_RIGHTS(0x00020008);
  static const PRINTER_WRITE = PRINTER_ACCESS_RIGHTS(0x00020008);
  static const PRINTER_EXECUTE = PRINTER_ACCESS_RIGHTS(0x00020008);
  static const SERVER_ALL_ACCESS = PRINTER_ACCESS_RIGHTS(0x000f0003);
  static const SERVER_READ = PRINTER_ACCESS_RIGHTS(0x00020002);
  static const SERVER_WRITE = PRINTER_ACCESS_RIGHTS(0x00020003);
  static const SERVER_EXECUTE = PRINTER_ACCESS_RIGHTS(0x00020002);
  static const PRINTER_DELETE = PRINTER_ACCESS_RIGHTS(0x00010000);
  static const PRINTER_READ_CONTROL = PRINTER_ACCESS_RIGHTS(0x00020000);
  static const PRINTER_WRITE_DAC = PRINTER_ACCESS_RIGHTS(0x00040000);
  static const PRINTER_WRITE_OWNER = PRINTER_ACCESS_RIGHTS(0x00080000);
  static const PRINTER_SYNCHRONIZE = PRINTER_ACCESS_RIGHTS(0x00100000);
  static const PRINTER_STANDARD_RIGHTS_REQUIRED =
      PRINTER_ACCESS_RIGHTS(0x000f0000);
  static const PRINTER_STANDARD_RIGHTS_READ = PRINTER_ACCESS_RIGHTS(0x00020000);
  static const PRINTER_STANDARD_RIGHTS_WRITE =
      PRINTER_ACCESS_RIGHTS(0x00020000);
  static const PRINTER_STANDARD_RIGHTS_EXECUTE =
      PRINTER_ACCESS_RIGHTS(0x00020000);
  static const SERVER_ACCESS_ADMINISTER = PRINTER_ACCESS_RIGHTS(0x00000001);
  static const SERVER_ACCESS_ENUMERATE = PRINTER_ACCESS_RIGHTS(0x00000002);
  static const PRINTER_ACCESS_ADMINISTER = PRINTER_ACCESS_RIGHTS(0x00000004);
  static const PRINTER_ACCESS_USE = PRINTER_ACCESS_RIGHTS(0x00000008);
  static const PRINTER_ACCESS_MANAGE_LIMITED =
      PRINTER_ACCESS_RIGHTS(0x00000040);
}

/// {@category enum}
extension type const PRINT_EXECUTION_CONTEXT(int _) implements int {
  static const PRINT_EXECUTION_CONTEXT_APPLICATION =
      PRINT_EXECUTION_CONTEXT(0x00000000);
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE =
      PRINT_EXECUTION_CONTEXT(0x00000001);
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST =
      PRINT_EXECUTION_CONTEXT(0x00000002);
  static const PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE =
      PRINT_EXECUTION_CONTEXT(0x00000003);
  static const PRINT_EXECUTION_CONTEXT_WOW64 =
      PRINT_EXECUTION_CONTEXT(0x00000004);
}

/// {@category enum}
extension type const PRINT_WINDOW_FLAGS(int _) implements int {
  static const PW_CLIENTONLY = PRINT_WINDOW_FLAGS(0x00000001);
}

/// {@category enum}
extension type const PROCESSOR_ARCHITECTURE(int _) implements int {
  static const PROCESSOR_ARCHITECTURE_INTEL = PROCESSOR_ARCHITECTURE(0x0000);
  static const PROCESSOR_ARCHITECTURE_MIPS = PROCESSOR_ARCHITECTURE(0x0001);
  static const PROCESSOR_ARCHITECTURE_ALPHA = PROCESSOR_ARCHITECTURE(0x0002);
  static const PROCESSOR_ARCHITECTURE_PPC = PROCESSOR_ARCHITECTURE(0x0003);
  static const PROCESSOR_ARCHITECTURE_SHX = PROCESSOR_ARCHITECTURE(0x0004);
  static const PROCESSOR_ARCHITECTURE_ARM = PROCESSOR_ARCHITECTURE(0x0005);
  static const PROCESSOR_ARCHITECTURE_IA64 = PROCESSOR_ARCHITECTURE(0x0006);
  static const PROCESSOR_ARCHITECTURE_ALPHA64 = PROCESSOR_ARCHITECTURE(0x0007);
  static const PROCESSOR_ARCHITECTURE_MSIL = PROCESSOR_ARCHITECTURE(0x0008);
  static const PROCESSOR_ARCHITECTURE_AMD64 = PROCESSOR_ARCHITECTURE(0x0009);
  static const PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 =
      PROCESSOR_ARCHITECTURE(0x000a);
  static const PROCESSOR_ARCHITECTURE_NEUTRAL = PROCESSOR_ARCHITECTURE(0x000b);
  static const PROCESSOR_ARCHITECTURE_ARM64 = PROCESSOR_ARCHITECTURE(0x000c);
  static const PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 =
      PROCESSOR_ARCHITECTURE(0x000d);
  static const PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 =
      PROCESSOR_ARCHITECTURE(0x000e);
  static const PROCESSOR_ARCHITECTURE_UNKNOWN = PROCESSOR_ARCHITECTURE(0xffff);
}

/// {@category enum}
extension type const PROCESSOR_CACHE_TYPE(int _) implements int {
  static const CacheUnified = PROCESSOR_CACHE_TYPE(0x00000000);
  static const CacheInstruction = PROCESSOR_CACHE_TYPE(0x00000001);
  static const CacheData = PROCESSOR_CACHE_TYPE(0x00000002);
  static const CacheTrace = PROCESSOR_CACHE_TYPE(0x00000003);
}

/// {@category enum}
extension type const PROCESS_ACCESS_RIGHTS(int _) implements int {
  static const PROCESS_TERMINATE = PROCESS_ACCESS_RIGHTS(0x00000001);
  static const PROCESS_CREATE_THREAD = PROCESS_ACCESS_RIGHTS(0x00000002);
  static const PROCESS_SET_SESSIONID = PROCESS_ACCESS_RIGHTS(0x00000004);
  static const PROCESS_VM_OPERATION = PROCESS_ACCESS_RIGHTS(0x00000008);
  static const PROCESS_VM_READ = PROCESS_ACCESS_RIGHTS(0x00000010);
  static const PROCESS_VM_WRITE = PROCESS_ACCESS_RIGHTS(0x00000020);
  static const PROCESS_DUP_HANDLE = PROCESS_ACCESS_RIGHTS(0x00000040);
  static const PROCESS_CREATE_PROCESS = PROCESS_ACCESS_RIGHTS(0x00000080);
  static const PROCESS_SET_QUOTA = PROCESS_ACCESS_RIGHTS(0x00000100);
  static const PROCESS_SET_INFORMATION = PROCESS_ACCESS_RIGHTS(0x00000200);
  static const PROCESS_QUERY_INFORMATION = PROCESS_ACCESS_RIGHTS(0x00000400);
  static const PROCESS_SUSPEND_RESUME = PROCESS_ACCESS_RIGHTS(0x00000800);
  static const PROCESS_QUERY_LIMITED_INFORMATION =
      PROCESS_ACCESS_RIGHTS(0x00001000);
  static const PROCESS_SET_LIMITED_INFORMATION =
      PROCESS_ACCESS_RIGHTS(0x00002000);
  static const PROCESS_ALL_ACCESS = PROCESS_ACCESS_RIGHTS(0x001fffff);
  static const PROCESS_DELETE = PROCESS_ACCESS_RIGHTS(0x00010000);
  static const PROCESS_READ_CONTROL = PROCESS_ACCESS_RIGHTS(0x00020000);
  static const PROCESS_WRITE_DAC = PROCESS_ACCESS_RIGHTS(0x00040000);
  static const PROCESS_WRITE_OWNER = PROCESS_ACCESS_RIGHTS(0x00080000);
  static const PROCESS_SYNCHRONIZE = PROCESS_ACCESS_RIGHTS(0x00100000);
  static const PROCESS_STANDARD_RIGHTS_REQUIRED =
      PROCESS_ACCESS_RIGHTS(0x000f0000);
}

/// {@category enum}
extension type const PROCESS_CREATION_FLAGS(int _) implements int {
  static const DEBUG_PROCESS = PROCESS_CREATION_FLAGS(0x00000001);
  static const DEBUG_ONLY_THIS_PROCESS = PROCESS_CREATION_FLAGS(0x00000002);
  static const CREATE_SUSPENDED = PROCESS_CREATION_FLAGS(0x00000004);
  static const DETACHED_PROCESS = PROCESS_CREATION_FLAGS(0x00000008);
  static const CREATE_NEW_CONSOLE = PROCESS_CREATION_FLAGS(0x00000010);
  static const NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00000020);
  static const IDLE_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00000040);
  static const HIGH_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00000080);
  static const REALTIME_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00000100);
  static const CREATE_NEW_PROCESS_GROUP = PROCESS_CREATION_FLAGS(0x00000200);
  static const CREATE_UNICODE_ENVIRONMENT = PROCESS_CREATION_FLAGS(0x00000400);
  static const CREATE_SEPARATE_WOW_VDM = PROCESS_CREATION_FLAGS(0x00000800);
  static const CREATE_SHARED_WOW_VDM = PROCESS_CREATION_FLAGS(0x00001000);
  static const CREATE_FORCEDOS = PROCESS_CREATION_FLAGS(0x00002000);
  static const BELOW_NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00004000);
  static const ABOVE_NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(0x00008000);
  static const INHERIT_PARENT_AFFINITY = PROCESS_CREATION_FLAGS(0x00010000);
  static const INHERIT_CALLER_PRIORITY = PROCESS_CREATION_FLAGS(0x00020000);
  static const CREATE_PROTECTED_PROCESS = PROCESS_CREATION_FLAGS(0x00040000);
  static const EXTENDED_STARTUPINFO_PRESENT =
      PROCESS_CREATION_FLAGS(0x00080000);
  static const PROCESS_MODE_BACKGROUND_BEGIN =
      PROCESS_CREATION_FLAGS(0x00100000);
  static const PROCESS_MODE_BACKGROUND_END = PROCESS_CREATION_FLAGS(0x00200000);
  static const CREATE_SECURE_PROCESS = PROCESS_CREATION_FLAGS(0x00400000);
  static const CREATE_BREAKAWAY_FROM_JOB = PROCESS_CREATION_FLAGS(0x01000000);
  static const CREATE_PRESERVE_CODE_AUTHZ_LEVEL =
      PROCESS_CREATION_FLAGS(0x02000000);
  static const CREATE_DEFAULT_ERROR_MODE = PROCESS_CREATION_FLAGS(0x04000000);
  static const CREATE_NO_WINDOW = PROCESS_CREATION_FLAGS(0x08000000);
  static const PROFILE_USER = PROCESS_CREATION_FLAGS(0x10000000);
  static const PROFILE_KERNEL = PROCESS_CREATION_FLAGS(0x20000000);
  static const PROFILE_SERVER = PROCESS_CREATION_FLAGS(0x40000000);
  static const CREATE_IGNORE_SYSTEM_DEFAULT =
      PROCESS_CREATION_FLAGS(0x80000000);
}

/// {@category enum}
extension type const PROCESS_DPI_AWARENESS(int _) implements int {
  static const PROCESS_DPI_UNAWARE = PROCESS_DPI_AWARENESS(0x00000000);
  static const PROCESS_SYSTEM_DPI_AWARE = PROCESS_DPI_AWARENESS(0x00000001);
  static const PROCESS_PER_MONITOR_DPI_AWARE =
      PROCESS_DPI_AWARENESS(0x00000002);
}

/// {@category enum}
extension type const PROCESS_NAME_FORMAT(int _) implements int {
  static const PROCESS_NAME_WIN32 = PROCESS_NAME_FORMAT(0x00000000);
  static const PROCESS_NAME_NATIVE = PROCESS_NAME_FORMAT(0x00000001);
}

/// {@category enum}
extension type const PROPSPEC_KIND(int _) implements int {
  static const PRSPEC_LPWSTR = PROPSPEC_KIND(0x00000000);
  static const PRSPEC_PROPID = PROPSPEC_KIND(0x00000001);
}

/// {@category enum}
extension type const PURGE_COMM_FLAGS(int _) implements int {
  static const PURGE_RXABORT = PURGE_COMM_FLAGS(0x00000002);
  static const PURGE_RXCLEAR = PURGE_COMM_FLAGS(0x00000008);
  static const PURGE_TXABORT = PURGE_COMM_FLAGS(0x00000001);
  static const PURGE_TXCLEAR = PURGE_COMM_FLAGS(0x00000004);
}

/// {@category enum}
extension type const PropertyConditionFlags(int _) implements int {
  static const PropertyConditionFlags_None = PropertyConditionFlags(0x00000000);
  static const PropertyConditionFlags_IgnoreCase =
      PropertyConditionFlags(0x00000001);
  static const PropertyConditionFlags_MatchSubstring =
      PropertyConditionFlags(0x00000002);
}

/// {@category enum}
extension type const QUEUE_STATUS_FLAGS(int _) implements int {
  static const QS_ALLEVENTS = QUEUE_STATUS_FLAGS(0x000004bf);
  static const QS_ALLINPUT = QUEUE_STATUS_FLAGS(0x000004ff);
  static const QS_ALLPOSTMESSAGE = QUEUE_STATUS_FLAGS(0x00000100);
  static const QS_HOTKEY = QUEUE_STATUS_FLAGS(0x00000080);
  static const QS_INPUT = QUEUE_STATUS_FLAGS(0x00000407);
  static const QS_KEY = QUEUE_STATUS_FLAGS(0x00000001);
  static const QS_MOUSE = QUEUE_STATUS_FLAGS(0x00000006);
  static const QS_MOUSEBUTTON = QUEUE_STATUS_FLAGS(0x00000004);
  static const QS_MOUSEMOVE = QUEUE_STATUS_FLAGS(0x00000002);
  static const QS_PAINT = QUEUE_STATUS_FLAGS(0x00000020);
  static const QS_POSTMESSAGE = QUEUE_STATUS_FLAGS(0x00000008);
  static const QS_RAWINPUT = QUEUE_STATUS_FLAGS(0x00000400);
  static const QS_SENDMESSAGE = QUEUE_STATUS_FLAGS(0x00000040);
  static const QS_TIMER = QUEUE_STATUS_FLAGS(0x00000010);
}

/// {@category enum}
extension type const RAWINPUTDEVICE_FLAGS(int _) implements int {
  static const RIDEV_REMOVE = RAWINPUTDEVICE_FLAGS(0x00000001);
  static const RIDEV_EXCLUDE = RAWINPUTDEVICE_FLAGS(0x00000010);
  static const RIDEV_PAGEONLY = RAWINPUTDEVICE_FLAGS(0x00000020);
  static const RIDEV_NOLEGACY = RAWINPUTDEVICE_FLAGS(0x00000030);
  static const RIDEV_INPUTSINK = RAWINPUTDEVICE_FLAGS(0x00000100);
  static const RIDEV_CAPTUREMOUSE = RAWINPUTDEVICE_FLAGS(0x00000200);
  static const RIDEV_NOHOTKEYS = RAWINPUTDEVICE_FLAGS(0x00000200);
  static const RIDEV_APPKEYS = RAWINPUTDEVICE_FLAGS(0x00000400);
  static const RIDEV_EXINPUTSINK = RAWINPUTDEVICE_FLAGS(0x00001000);
  static const RIDEV_DEVNOTIFY = RAWINPUTDEVICE_FLAGS(0x00002000);
}

/// {@category enum}
extension type const RAW_INPUT_DATA_COMMAND_FLAGS(int _) implements int {
  static const RID_HEADER = RAW_INPUT_DATA_COMMAND_FLAGS(0x10000005);
  static const RID_INPUT = RAW_INPUT_DATA_COMMAND_FLAGS(0x10000003);
}

/// {@category enum}
extension type const RAW_INPUT_DEVICE_INFO_COMMAND(int _) implements int {
  static const RIDI_PREPARSEDDATA = RAW_INPUT_DEVICE_INFO_COMMAND(0x20000005);
  static const RIDI_DEVICENAME = RAW_INPUT_DEVICE_INFO_COMMAND(0x20000007);
  static const RIDI_DEVICEINFO = RAW_INPUT_DEVICE_INFO_COMMAND(0x2000000b);
}

/// {@category enum}
extension type const REDRAW_WINDOW_FLAGS(int _) implements int {
  static const RDW_INVALIDATE = REDRAW_WINDOW_FLAGS(0x00000001);
  static const RDW_INTERNALPAINT = REDRAW_WINDOW_FLAGS(0x00000002);
  static const RDW_ERASE = REDRAW_WINDOW_FLAGS(0x00000004);
  static const RDW_VALIDATE = REDRAW_WINDOW_FLAGS(0x00000008);
  static const RDW_NOINTERNALPAINT = REDRAW_WINDOW_FLAGS(0x00000010);
  static const RDW_NOERASE = REDRAW_WINDOW_FLAGS(0x00000020);
  static const RDW_NOCHILDREN = REDRAW_WINDOW_FLAGS(0x00000040);
  static const RDW_ALLCHILDREN = REDRAW_WINDOW_FLAGS(0x00000080);
  static const RDW_UPDATENOW = REDRAW_WINDOW_FLAGS(0x00000100);
  static const RDW_ERASENOW = REDRAW_WINDOW_FLAGS(0x00000200);
  static const RDW_FRAME = REDRAW_WINDOW_FLAGS(0x00000400);
  static const RDW_NOFRAME = REDRAW_WINDOW_FLAGS(0x00000800);
}

/// {@category enum}
extension type const REGISTER_NOTIFICATION_FLAGS(int _) implements int {
  static const DEVICE_NOTIFY_SERVICE_HANDLE =
      REGISTER_NOTIFICATION_FLAGS(0x00000001);
  static const DEVICE_NOTIFY_CALLBACK = REGISTER_NOTIFICATION_FLAGS(0x00000002);
  static const DEVICE_NOTIFY_WINDOW_HANDLE =
      REGISTER_NOTIFICATION_FLAGS(0x00000000);
  static const DEVICE_NOTIFY_ALL_INTERFACE_CLASSES =
      REGISTER_NOTIFICATION_FLAGS(0x00000004);
}

/// {@category enum}
extension type const REGISTER_TOUCH_WINDOW_FLAGS(int _) implements int {
  static const TWF_FINETOUCH = REGISTER_TOUCH_WINDOW_FLAGS(0x00000001);
  static const TWF_WANTPALM = REGISTER_TOUCH_WINDOW_FLAGS(0x00000002);
}

/// {@category enum}
extension type const REG_CREATE_KEY_DISPOSITION(int _) implements int {
  static const REG_CREATED_NEW_KEY = REG_CREATE_KEY_DISPOSITION(0x00000001);
  static const REG_OPENED_EXISTING_KEY = REG_CREATE_KEY_DISPOSITION(0x00000002);
}

/// {@category enum}
extension type const REG_NOTIFY_FILTER(int _) implements int {
  static const REG_NOTIFY_CHANGE_NAME = REG_NOTIFY_FILTER(0x00000001);
  static const REG_NOTIFY_CHANGE_ATTRIBUTES = REG_NOTIFY_FILTER(0x00000002);
  static const REG_NOTIFY_CHANGE_LAST_SET = REG_NOTIFY_FILTER(0x00000004);
  static const REG_NOTIFY_CHANGE_SECURITY = REG_NOTIFY_FILTER(0x00000008);
  static const REG_NOTIFY_THREAD_AGNOSTIC = REG_NOTIFY_FILTER(0x10000000);
}

/// {@category enum}
extension type const REG_OPEN_CREATE_OPTIONS(int _) implements int {
  static const REG_OPTION_RESERVED = REG_OPEN_CREATE_OPTIONS(0x00000000);
  static const REG_OPTION_NON_VOLATILE = REG_OPEN_CREATE_OPTIONS(0x00000000);
  static const REG_OPTION_VOLATILE = REG_OPEN_CREATE_OPTIONS(0x00000001);
  static const REG_OPTION_CREATE_LINK = REG_OPEN_CREATE_OPTIONS(0x00000002);
  static const REG_OPTION_BACKUP_RESTORE = REG_OPEN_CREATE_OPTIONS(0x00000004);
  static const REG_OPTION_OPEN_LINK = REG_OPEN_CREATE_OPTIONS(0x00000008);
  static const REG_OPTION_DONT_VIRTUALIZE = REG_OPEN_CREATE_OPTIONS(0x00000010);
}

/// {@category enum}
extension type const REG_ROUTINE_FLAGS(int _) implements int {
  static const RRF_RT_DWORD = REG_ROUTINE_FLAGS(0x00000018);
  static const RRF_RT_QWORD = REG_ROUTINE_FLAGS(0x00000048);
  static const RRF_RT_REG_NONE = REG_ROUTINE_FLAGS(0x00000001);
  static const RRF_RT_REG_SZ = REG_ROUTINE_FLAGS(0x00000002);
  static const RRF_RT_REG_EXPAND_SZ = REG_ROUTINE_FLAGS(0x00000004);
  static const RRF_RT_REG_BINARY = REG_ROUTINE_FLAGS(0x00000008);
  static const RRF_RT_REG_DWORD = REG_ROUTINE_FLAGS(0x00000010);
  static const RRF_RT_REG_MULTI_SZ = REG_ROUTINE_FLAGS(0x00000020);
  static const RRF_RT_REG_QWORD = REG_ROUTINE_FLAGS(0x00000040);
  static const RRF_RT_ANY = REG_ROUTINE_FLAGS(0x0000ffff);
  static const RRF_SUBKEY_WOW6464KEY = REG_ROUTINE_FLAGS(0x00010000);
  static const RRF_SUBKEY_WOW6432KEY = REG_ROUTINE_FLAGS(0x00020000);
  static const RRF_WOW64_MASK = REG_ROUTINE_FLAGS(0x00030000);
  static const RRF_NOEXPAND = REG_ROUTINE_FLAGS(0x10000000);
  static const RRF_ZEROONFAILURE = REG_ROUTINE_FLAGS(0x20000000);
}

/// {@category enum}
extension type const REG_SAM_FLAGS(int _) implements int {
  static const KEY_QUERY_VALUE = REG_SAM_FLAGS(0x00000001);
  static const KEY_SET_VALUE = REG_SAM_FLAGS(0x00000002);
  static const KEY_CREATE_SUB_KEY = REG_SAM_FLAGS(0x00000004);
  static const KEY_ENUMERATE_SUB_KEYS = REG_SAM_FLAGS(0x00000008);
  static const KEY_NOTIFY = REG_SAM_FLAGS(0x00000010);
  static const KEY_CREATE_LINK = REG_SAM_FLAGS(0x00000020);
  static const KEY_WOW64_32KEY = REG_SAM_FLAGS(0x00000200);
  static const KEY_WOW64_64KEY = REG_SAM_FLAGS(0x00000100);
  static const KEY_WOW64_RES = REG_SAM_FLAGS(0x00000300);
  static const KEY_READ = REG_SAM_FLAGS(0x00020019);
  static const KEY_WRITE = REG_SAM_FLAGS(0x00020006);
  static const KEY_EXECUTE = REG_SAM_FLAGS(0x00020019);
  static const KEY_ALL_ACCESS = REG_SAM_FLAGS(0x000f003f);
}

/// {@category enum}
extension type const REG_SAVE_FORMAT(int _) implements int {
  static const REG_STANDARD_FORMAT = REG_SAVE_FORMAT(0x00000001);
  static const REG_LATEST_FORMAT = REG_SAVE_FORMAT(0x00000002);
  static const REG_NO_COMPRESSION = REG_SAVE_FORMAT(0x00000004);
}

/// {@category enum}
extension type const REG_VALUE_TYPE(int _) implements int {
  static const REG_NONE = REG_VALUE_TYPE(0x00000000);
  static const REG_SZ = REG_VALUE_TYPE(0x00000001);
  static const REG_EXPAND_SZ = REG_VALUE_TYPE(0x00000002);
  static const REG_BINARY = REG_VALUE_TYPE(0x00000003);
  static const REG_DWORD = REG_VALUE_TYPE(0x00000004);
  static const REG_DWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(0x00000004);
  static const REG_DWORD_BIG_ENDIAN = REG_VALUE_TYPE(0x00000005);
  static const REG_LINK = REG_VALUE_TYPE(0x00000006);
  static const REG_MULTI_SZ = REG_VALUE_TYPE(0x00000007);
  static const REG_RESOURCE_LIST = REG_VALUE_TYPE(0x00000008);
  static const REG_FULL_RESOURCE_DESCRIPTOR = REG_VALUE_TYPE(0x00000009);
  static const REG_RESOURCE_REQUIREMENTS_LIST = REG_VALUE_TYPE(0x0000000a);
  static const REG_QWORD = REG_VALUE_TYPE(0x0000000b);
  static const REG_QWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(0x0000000b);
}

/// {@category enum}
extension type const RGN_COMBINE_MODE(int _) implements int {
  static const RGN_AND = RGN_COMBINE_MODE(0x00000001);
  static const RGN_OR = RGN_COMBINE_MODE(0x00000002);
  static const RGN_XOR = RGN_COMBINE_MODE(0x00000003);
  static const RGN_DIFF = RGN_COMBINE_MODE(0x00000004);
  static const RGN_COPY = RGN_COMBINE_MODE(0x00000005);
  static const RGN_MIN = RGN_COMBINE_MODE(0x00000001);
  static const RGN_MAX = RGN_COMBINE_MODE(0x00000005);
}

/// {@category enum}
extension type const RID_DEVICE_INFO_TYPE(int _) implements int {
  static const RIM_TYPEMOUSE = RID_DEVICE_INFO_TYPE(0x00000000);
  static const RIM_TYPEKEYBOARD = RID_DEVICE_INFO_TYPE(0x00000001);
  static const RIM_TYPEHID = RID_DEVICE_INFO_TYPE(0x00000002);
}

/// {@category enum}
extension type const ROP_CODE(int _) implements int {
  static const BLACKNESS = ROP_CODE(0x00000042);
  static const NOTSRCERASE = ROP_CODE(0x001100a6);
  static const NOTSRCCOPY = ROP_CODE(0x00330008);
  static const SRCERASE = ROP_CODE(0x00440328);
  static const DSTINVERT = ROP_CODE(0x00550009);
  static const PATINVERT = ROP_CODE(0x005a0049);
  static const SRCINVERT = ROP_CODE(0x00660046);
  static const SRCAND = ROP_CODE(0x008800c6);
  static const MERGEPAINT = ROP_CODE(0x00bb0226);
  static const MERGECOPY = ROP_CODE(0x00c000ca);
  static const SRCCOPY = ROP_CODE(0x00cc0020);
  static const SRCPAINT = ROP_CODE(0x00ee0086);
  static const PATCOPY = ROP_CODE(0x00f00021);
  static const PATPAINT = ROP_CODE(0x00fb0a09);
  static const WHITENESS = ROP_CODE(0x00ff0062);
  static const CAPTUREBLT = ROP_CODE(0x40000000);
  static const NOMIRRORBITMAP = ROP_CODE(0x80000000);
}

/// {@category enum}
extension type const ROT_FLAGS(int _) implements int {
  static const ROTFLAGS_REGISTRATIONKEEPSALIVE = ROT_FLAGS(0x00000001);
  static const ROTFLAGS_ALLOWANYCLIENT = ROT_FLAGS(0x00000002);
}

/// {@category enum}
extension type const RO_INIT_TYPE(int _) implements int {
  static const RO_INIT_SINGLETHREADED = RO_INIT_TYPE(0x00000000);
  static const RO_INIT_MULTITHREADED = RO_INIT_TYPE(0x00000001);
}

/// {@category enum}
extension type const RPC_C_AUTHN_LEVEL(int _) implements int {
  static const RPC_C_AUTHN_LEVEL_DEFAULT = RPC_C_AUTHN_LEVEL(0x00000000);
  static const RPC_C_AUTHN_LEVEL_NONE = RPC_C_AUTHN_LEVEL(0x00000001);
  static const RPC_C_AUTHN_LEVEL_CONNECT = RPC_C_AUTHN_LEVEL(0x00000002);
  static const RPC_C_AUTHN_LEVEL_CALL = RPC_C_AUTHN_LEVEL(0x00000003);
  static const RPC_C_AUTHN_LEVEL_PKT = RPC_C_AUTHN_LEVEL(0x00000004);
  static const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = RPC_C_AUTHN_LEVEL(0x00000005);
  static const RPC_C_AUTHN_LEVEL_PKT_PRIVACY = RPC_C_AUTHN_LEVEL(0x00000006);
}

/// {@category enum}
extension type const RPC_C_IMP_LEVEL(int _) implements int {
  static const RPC_C_IMP_LEVEL_DEFAULT = RPC_C_IMP_LEVEL(0x00000000);
  static const RPC_C_IMP_LEVEL_ANONYMOUS = RPC_C_IMP_LEVEL(0x00000001);
  static const RPC_C_IMP_LEVEL_IDENTIFY = RPC_C_IMP_LEVEL(0x00000002);
  static const RPC_C_IMP_LEVEL_IMPERSONATE = RPC_C_IMP_LEVEL(0x00000003);
  static const RPC_C_IMP_LEVEL_DELEGATE = RPC_C_IMP_LEVEL(0x00000004);
}

/// {@category enum}
extension type const RowOrColumnMajor(int _) implements int {
  static const RowOrColumnMajor_RowMajor = RowOrColumnMajor(0x00000000);
  static const RowOrColumnMajor_ColumnMajor = RowOrColumnMajor(0x00000001);
  static const RowOrColumnMajor_Indeterminate = RowOrColumnMajor(0x00000002);
}

/// {@category enum}
extension type const SCARD_SCOPE(int _) implements int {
  static const SCARD_SCOPE_USER = SCARD_SCOPE(0x00000000);
  static const SCARD_SCOPE_SYSTEM = SCARD_SCOPE(0x00000002);
}

/// {@category enum}
extension type const SCARD_STATE(int _) implements int {
  static const SCARD_STATE_UNAWARE = SCARD_STATE(0x00000000);
  static const SCARD_STATE_IGNORE = SCARD_STATE(0x00000001);
  static const SCARD_STATE_UNAVAILABLE = SCARD_STATE(0x00000008);
  static const SCARD_STATE_EMPTY = SCARD_STATE(0x00000010);
  static const SCARD_STATE_PRESENT = SCARD_STATE(0x00000020);
  static const SCARD_STATE_ATRMATCH = SCARD_STATE(0x00000040);
  static const SCARD_STATE_EXCLUSIVE = SCARD_STATE(0x00000080);
  static const SCARD_STATE_INUSE = SCARD_STATE(0x00000100);
  static const SCARD_STATE_MUTE = SCARD_STATE(0x00000200);
  static const SCARD_STATE_CHANGED = SCARD_STATE(0x00000002);
  static const SCARD_STATE_UNKNOWN = SCARD_STATE(0x00000004);
}

/// {@category enum}
extension type const SCROLLBAR_CONSTANTS(int _) implements int {
  static const SB_CTL = SCROLLBAR_CONSTANTS(0x00000002);
  static const SB_HORZ = SCROLLBAR_CONSTANTS(0x00000000);
  static const SB_VERT = SCROLLBAR_CONSTANTS(0x00000001);
  static const SB_BOTH = SCROLLBAR_CONSTANTS(0x00000003);
}

/// {@category enum}
extension type const SCROLLINFO_MASK(int _) implements int {
  static const SIF_ALL = SCROLLINFO_MASK(0x00000017);
  static const SIF_DISABLENOSCROLL = SCROLLINFO_MASK(0x00000008);
  static const SIF_PAGE = SCROLLINFO_MASK(0x00000002);
  static const SIF_POS = SCROLLINFO_MASK(0x00000004);
  static const SIF_RANGE = SCROLLINFO_MASK(0x00000001);
  static const SIF_TRACKPOS = SCROLLINFO_MASK(0x00000010);
}

/// {@category enum}
extension type const SCROLL_WINDOW_FLAGS(int _) implements int {
  static const SW_SCROLLCHILDREN = SCROLL_WINDOW_FLAGS(0x00000001);
  static const SW_INVALIDATE = SCROLL_WINDOW_FLAGS(0x00000002);
  static const SW_ERASE = SCROLL_WINDOW_FLAGS(0x00000004);
  static const SW_SMOOTHSCROLL = SCROLL_WINDOW_FLAGS(0x00000010);
}

/// {@category enum}
extension type const SC_ACTION_TYPE(int _) implements int {
  static const SC_ACTION_NONE = SC_ACTION_TYPE(0x00000000);
  static const SC_ACTION_RESTART = SC_ACTION_TYPE(0x00000001);
  static const SC_ACTION_REBOOT = SC_ACTION_TYPE(0x00000002);
  static const SC_ACTION_RUN_COMMAND = SC_ACTION_TYPE(0x00000003);
  static const SC_ACTION_OWN_RESTART = SC_ACTION_TYPE(0x00000004);
}

/// {@category enum}
extension type const SC_ENUM_TYPE(int _) implements int {
  static const SC_ENUM_PROCESS_INFO = SC_ENUM_TYPE(0x00000000);
}

/// {@category enum}
extension type const SC_STATUS_TYPE(int _) implements int {
  static const SC_STATUS_PROCESS_INFO = SC_STATUS_TYPE(0x00000000);
}

/// {@category enum}
extension type const SDP_SPECIFICTYPE(int _) implements int {
  static const SDP_ST_NONE = SDP_SPECIFICTYPE(0x00000000);
  static const SDP_ST_UINT8 = SDP_SPECIFICTYPE(0x00000010);
  static const SDP_ST_UINT16 = SDP_SPECIFICTYPE(0x00000110);
  static const SDP_ST_UINT32 = SDP_SPECIFICTYPE(0x00000210);
  static const SDP_ST_UINT64 = SDP_SPECIFICTYPE(0x00000310);
  static const SDP_ST_UINT128 = SDP_SPECIFICTYPE(0x00000410);
  static const SDP_ST_INT8 = SDP_SPECIFICTYPE(0x00000020);
  static const SDP_ST_INT16 = SDP_SPECIFICTYPE(0x00000120);
  static const SDP_ST_INT32 = SDP_SPECIFICTYPE(0x00000220);
  static const SDP_ST_INT64 = SDP_SPECIFICTYPE(0x00000320);
  static const SDP_ST_INT128 = SDP_SPECIFICTYPE(0x00000420);
  static const SDP_ST_UUID16 = SDP_SPECIFICTYPE(0x00000130);
  static const SDP_ST_UUID32 = SDP_SPECIFICTYPE(0x00000220);
  static const SDP_ST_UUID128 = SDP_SPECIFICTYPE(0x00000430);
}

/// {@category enum}
extension type const SDP_TYPE(int _) implements int {
  static const SDP_TYPE_NIL = SDP_TYPE(0x00000000);
  static const SDP_TYPE_UINT = SDP_TYPE(0x00000001);
  static const SDP_TYPE_INT = SDP_TYPE(0x00000002);
  static const SDP_TYPE_UUID = SDP_TYPE(0x00000003);
  static const SDP_TYPE_STRING = SDP_TYPE(0x00000004);
  static const SDP_TYPE_BOOLEAN = SDP_TYPE(0x00000005);
  static const SDP_TYPE_SEQUENCE = SDP_TYPE(0x00000006);
  static const SDP_TYPE_ALTERNATIVE = SDP_TYPE(0x00000007);
  static const SDP_TYPE_URL = SDP_TYPE(0x00000008);
  static const SDP_TYPE_CONTAINER = SDP_TYPE(0x00000020);
}

/// {@category enum}
extension type const SECURITY_DESCRIPTOR_CONTROL(int _) implements int {
  static const SE_OWNER_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(0x0001);
  static const SE_GROUP_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(0x0002);
  static const SE_DACL_PRESENT = SECURITY_DESCRIPTOR_CONTROL(0x0004);
  static const SE_DACL_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(0x0008);
  static const SE_SACL_PRESENT = SECURITY_DESCRIPTOR_CONTROL(0x0010);
  static const SE_SACL_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(0x0020);
  static const SE_DACL_AUTO_INHERIT_REQ = SECURITY_DESCRIPTOR_CONTROL(0x0100);
  static const SE_SACL_AUTO_INHERIT_REQ = SECURITY_DESCRIPTOR_CONTROL(0x0200);
  static const SE_DACL_AUTO_INHERITED = SECURITY_DESCRIPTOR_CONTROL(0x0400);
  static const SE_SACL_AUTO_INHERITED = SECURITY_DESCRIPTOR_CONTROL(0x0800);
  static const SE_DACL_PROTECTED = SECURITY_DESCRIPTOR_CONTROL(0x1000);
  static const SE_SACL_PROTECTED = SECURITY_DESCRIPTOR_CONTROL(0x2000);
  static const SE_RM_CONTROL_VALID = SECURITY_DESCRIPTOR_CONTROL(0x4000);
  static const SE_SELF_RELATIVE = SECURITY_DESCRIPTOR_CONTROL(0x8000);
}

/// {@category enum}
extension type const SEND_MESSAGE_TIMEOUT_FLAGS(int _) implements int {
  static const SMTO_ABORTIFHUNG = SEND_MESSAGE_TIMEOUT_FLAGS(0x00000002);
  static const SMTO_BLOCK = SEND_MESSAGE_TIMEOUT_FLAGS(0x00000001);
  static const SMTO_NORMAL = SEND_MESSAGE_TIMEOUT_FLAGS(0x00000000);
  static const SMTO_NOTIMEOUTIFNOTHUNG = SEND_MESSAGE_TIMEOUT_FLAGS(0x00000008);
  static const SMTO_ERRORONEXIT = SEND_MESSAGE_TIMEOUT_FLAGS(0x00000020);
}

/// {@category enum}
extension type const SEND_RECV_FLAGS(int _) implements int {
  static const MSG_OOB = SEND_RECV_FLAGS(0x00000001);
  static const MSG_PEEK = SEND_RECV_FLAGS(0x00000002);
  static const MSG_DONTROUTE = SEND_RECV_FLAGS(0x00000004);
  static const MSG_WAITALL = SEND_RECV_FLAGS(0x00000008);
  static const MSG_PUSH_IMMEDIATE = SEND_RECV_FLAGS(0x00000020);
}

/// {@category enum}
extension type const SERVICE_CONFIG(int _) implements int {
  static const SERVICE_CONFIG_DELAYED_AUTO_START_INFO =
      SERVICE_CONFIG(0x00000003);
  static const SERVICE_CONFIG_DESCRIPTION = SERVICE_CONFIG(0x00000001);
  static const SERVICE_CONFIG_FAILURE_ACTIONS = SERVICE_CONFIG(0x00000002);
  static const SERVICE_CONFIG_FAILURE_ACTIONS_FLAG = SERVICE_CONFIG(0x00000004);
  static const SERVICE_CONFIG_PREFERRED_NODE = SERVICE_CONFIG(0x00000009);
  static const SERVICE_CONFIG_PRESHUTDOWN_INFO = SERVICE_CONFIG(0x00000007);
  static const SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO =
      SERVICE_CONFIG(0x00000006);
  static const SERVICE_CONFIG_SERVICE_SID_INFO = SERVICE_CONFIG(0x00000005);
  static const SERVICE_CONFIG_TRIGGER_INFO = SERVICE_CONFIG(0x00000008);
  static const SERVICE_CONFIG_LAUNCH_PROTECTED = SERVICE_CONFIG(0x0000000c);
}

/// {@category enum}
extension type const SERVICE_DIRECTORY_TYPE(int _) implements int {
  static const ServiceDirectoryPersistentState =
      SERVICE_DIRECTORY_TYPE(0x00000000);
  static const ServiceDirectoryTypeMax = SERVICE_DIRECTORY_TYPE(0x00000001);
}

/// {@category enum}
extension type const SERVICE_ERROR(int _) implements int {
  static const SERVICE_ERROR_CRITICAL = SERVICE_ERROR(0x00000003);
  static const SERVICE_ERROR_IGNORE = SERVICE_ERROR(0x00000000);
  static const SERVICE_ERROR_NORMAL = SERVICE_ERROR(0x00000001);
  static const SERVICE_ERROR_SEVERE = SERVICE_ERROR(0x00000002);
}

/// {@category enum}
extension type const SERVICE_NOTIFY(int _) implements int {
  static const SERVICE_NOTIFY_CREATED = SERVICE_NOTIFY(0x00000080);
  static const SERVICE_NOTIFY_CONTINUE_PENDING = SERVICE_NOTIFY(0x00000010);
  static const SERVICE_NOTIFY_DELETE_PENDING = SERVICE_NOTIFY(0x00000200);
  static const SERVICE_NOTIFY_DELETED = SERVICE_NOTIFY(0x00000100);
  static const SERVICE_NOTIFY_PAUSE_PENDING = SERVICE_NOTIFY(0x00000020);
  static const SERVICE_NOTIFY_PAUSED = SERVICE_NOTIFY(0x00000040);
  static const SERVICE_NOTIFY_RUNNING = SERVICE_NOTIFY(0x00000008);
  static const SERVICE_NOTIFY_START_PENDING = SERVICE_NOTIFY(0x00000002);
  static const SERVICE_NOTIFY_STOP_PENDING = SERVICE_NOTIFY(0x00000004);
  static const SERVICE_NOTIFY_STOPPED = SERVICE_NOTIFY(0x00000001);
}

/// {@category enum}
extension type const SERVICE_REGISTRY_STATE_TYPE(int _) implements int {
  static const ServiceRegistryStateParameters =
      SERVICE_REGISTRY_STATE_TYPE(0x00000000);
  static const ServiceRegistryStatePersistent =
      SERVICE_REGISTRY_STATE_TYPE(0x00000001);
  static const MaxServiceRegistryStateType =
      SERVICE_REGISTRY_STATE_TYPE(0x00000002);
}

/// {@category enum}
extension type const SERVICE_RUNS_IN_PROCESS(int _) implements int {
  static const SERVICE_RUNS_IN_NON_SYSTEM_OR_NOT_RUNNING =
      SERVICE_RUNS_IN_PROCESS(0x00000000);
  static const SERVICE_RUNS_IN_SYSTEM_PROCESS =
      SERVICE_RUNS_IN_PROCESS(0x00000001);
}

/// {@category enum}
extension type const SERVICE_SHARED_DIRECTORY_TYPE(int _) implements int {
  static const ServiceSharedDirectoryPersistentState =
      SERVICE_SHARED_DIRECTORY_TYPE(0x00000000);
}

/// {@category enum}
extension type const SERVICE_SHARED_REGISTRY_STATE_TYPE(int _) implements int {
  static const ServiceSharedRegistryPersistentState =
      SERVICE_SHARED_REGISTRY_STATE_TYPE(0x00000000);
}

/// {@category enum}
extension type const SERVICE_START_TYPE(int _) implements int {
  static const SERVICE_AUTO_START = SERVICE_START_TYPE(0x00000002);
  static const SERVICE_BOOT_START = SERVICE_START_TYPE(0x00000000);
  static const SERVICE_DEMAND_START = SERVICE_START_TYPE(0x00000003);
  static const SERVICE_DISABLED = SERVICE_START_TYPE(0x00000004);
  static const SERVICE_SYSTEM_START = SERVICE_START_TYPE(0x00000001);
}

/// {@category enum}
extension type const SERVICE_STATUS_CURRENT_STATE(int _) implements int {
  static const SERVICE_CONTINUE_PENDING =
      SERVICE_STATUS_CURRENT_STATE(0x00000005);
  static const SERVICE_PAUSE_PENDING = SERVICE_STATUS_CURRENT_STATE(0x00000006);
  static const SERVICE_PAUSED = SERVICE_STATUS_CURRENT_STATE(0x00000007);
  static const SERVICE_RUNNING = SERVICE_STATUS_CURRENT_STATE(0x00000004);
  static const SERVICE_START_PENDING = SERVICE_STATUS_CURRENT_STATE(0x00000002);
  static const SERVICE_STOP_PENDING = SERVICE_STATUS_CURRENT_STATE(0x00000003);
  static const SERVICE_STOPPED = SERVICE_STATUS_CURRENT_STATE(0x00000001);
}

/// {@category enum}
extension type const SERVICE_TRIGGER_ACTION(int _) implements int {
  static const SERVICE_TRIGGER_ACTION_SERVICE_START =
      SERVICE_TRIGGER_ACTION(0x00000001);
  static const SERVICE_TRIGGER_ACTION_SERVICE_STOP =
      SERVICE_TRIGGER_ACTION(0x00000002);
}

/// {@category enum}
extension type const SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(int _)
    implements int {
  static const SERVICE_TRIGGER_DATA_TYPE_BINARY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(0x00000001);
  static const SERVICE_TRIGGER_DATA_TYPE_STRING =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(0x00000002);
  static const SERVICE_TRIGGER_DATA_TYPE_LEVEL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(0x00000003);
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(0x00000004);
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(0x00000005);
}

/// {@category enum}
extension type const SERVICE_TRIGGER_TYPE(int _) implements int {
  static const SERVICE_TRIGGER_TYPE_CUSTOM = SERVICE_TRIGGER_TYPE(0x00000014);
  static const SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL =
      SERVICE_TRIGGER_TYPE(0x00000001);
  static const SERVICE_TRIGGER_TYPE_DOMAIN_JOIN =
      SERVICE_TRIGGER_TYPE(0x00000003);
  static const SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT =
      SERVICE_TRIGGER_TYPE(0x00000004);
  static const SERVICE_TRIGGER_TYPE_GROUP_POLICY =
      SERVICE_TRIGGER_TYPE(0x00000005);
  static const SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY =
      SERVICE_TRIGGER_TYPE(0x00000002);
  static const SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT =
      SERVICE_TRIGGER_TYPE(0x00000006);
}

/// {@category enum}
extension type const SETUP_DI_GET_CLASS_DEVS_FLAGS(int _) implements int {
  static const DIGCF_DEFAULT = SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000001);
  static const DIGCF_PRESENT = SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000002);
  static const DIGCF_ALLCLASSES = SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000004);
  static const DIGCF_PROFILE = SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000008);
  static const DIGCF_DEVICEINTERFACE =
      SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000010);
  static const DIGCF_INTERFACEDEVICE =
      SETUP_DI_GET_CLASS_DEVS_FLAGS(0x00000010);
}

/// {@category enum}
extension type const SETUP_DI_REGISTRY_PROPERTY(int _) implements int {
  static const SPDRP_DEVICEDESC = SETUP_DI_REGISTRY_PROPERTY(0x00000000);
  static const SPDRP_HARDWAREID = SETUP_DI_REGISTRY_PROPERTY(0x00000001);
  static const SPDRP_COMPATIBLEIDS = SETUP_DI_REGISTRY_PROPERTY(0x00000002);
  static const SPDRP_UNUSED0 = SETUP_DI_REGISTRY_PROPERTY(0x00000003);
  static const SPDRP_SERVICE = SETUP_DI_REGISTRY_PROPERTY(0x00000004);
  static const SPDRP_UNUSED1 = SETUP_DI_REGISTRY_PROPERTY(0x00000005);
  static const SPDRP_UNUSED2 = SETUP_DI_REGISTRY_PROPERTY(0x00000006);
  static const SPDRP_CLASS = SETUP_DI_REGISTRY_PROPERTY(0x00000007);
  static const SPDRP_CLASSGUID = SETUP_DI_REGISTRY_PROPERTY(0x00000008);
  static const SPDRP_DRIVER = SETUP_DI_REGISTRY_PROPERTY(0x00000009);
  static const SPDRP_CONFIGFLAGS = SETUP_DI_REGISTRY_PROPERTY(0x0000000a);
  static const SPDRP_MFG = SETUP_DI_REGISTRY_PROPERTY(0x0000000b);
  static const SPDRP_FRIENDLYNAME = SETUP_DI_REGISTRY_PROPERTY(0x0000000c);
  static const SPDRP_LOCATION_INFORMATION =
      SETUP_DI_REGISTRY_PROPERTY(0x0000000d);
  static const SPDRP_PHYSICAL_DEVICE_OBJECT_NAME =
      SETUP_DI_REGISTRY_PROPERTY(0x0000000e);
  static const SPDRP_CAPABILITIES = SETUP_DI_REGISTRY_PROPERTY(0x0000000f);
  static const SPDRP_UI_NUMBER = SETUP_DI_REGISTRY_PROPERTY(0x00000010);
  static const SPDRP_UPPERFILTERS = SETUP_DI_REGISTRY_PROPERTY(0x00000011);
  static const SPDRP_LOWERFILTERS = SETUP_DI_REGISTRY_PROPERTY(0x00000012);
  static const SPDRP_BUSTYPEGUID = SETUP_DI_REGISTRY_PROPERTY(0x00000013);
  static const SPDRP_LEGACYBUSTYPE = SETUP_DI_REGISTRY_PROPERTY(0x00000014);
  static const SPDRP_BUSNUMBER = SETUP_DI_REGISTRY_PROPERTY(0x00000015);
  static const SPDRP_ENUMERATOR_NAME = SETUP_DI_REGISTRY_PROPERTY(0x00000016);
  static const SPDRP_SECURITY = SETUP_DI_REGISTRY_PROPERTY(0x00000017);
  static const SPDRP_SECURITY_SDS = SETUP_DI_REGISTRY_PROPERTY(0x00000018);
  static const SPDRP_DEVTYPE = SETUP_DI_REGISTRY_PROPERTY(0x00000019);
  static const SPDRP_EXCLUSIVE = SETUP_DI_REGISTRY_PROPERTY(0x0000001a);
  static const SPDRP_CHARACTERISTICS = SETUP_DI_REGISTRY_PROPERTY(0x0000001b);
  static const SPDRP_ADDRESS = SETUP_DI_REGISTRY_PROPERTY(0x0000001c);
  static const SPDRP_UI_NUMBER_DESC_FORMAT =
      SETUP_DI_REGISTRY_PROPERTY(0x0000001d);
  static const SPDRP_DEVICE_POWER_DATA = SETUP_DI_REGISTRY_PROPERTY(0x0000001e);
  static const SPDRP_REMOVAL_POLICY = SETUP_DI_REGISTRY_PROPERTY(0x0000001f);
  static const SPDRP_REMOVAL_POLICY_HW_DEFAULT =
      SETUP_DI_REGISTRY_PROPERTY(0x00000020);
  static const SPDRP_REMOVAL_POLICY_OVERRIDE =
      SETUP_DI_REGISTRY_PROPERTY(0x00000021);
  static const SPDRP_INSTALL_STATE = SETUP_DI_REGISTRY_PROPERTY(0x00000022);
  static const SPDRP_LOCATION_PATHS = SETUP_DI_REGISTRY_PROPERTY(0x00000023);
  static const SPDRP_BASE_CONTAINERID = SETUP_DI_REGISTRY_PROPERTY(0x00000024);
  static const SPDRP_MAXIMUM_PROPERTY = SETUP_DI_REGISTRY_PROPERTY(0x00000025);
}

/// {@category enum}
extension type const SET_DISPLAY_CONFIG_FLAGS(int _) implements int {
  static const SDC_USE_DATABASE_CURRENT = SET_DISPLAY_CONFIG_FLAGS(0x0000000f);
  static const SDC_TOPOLOGY_INTERNAL = SET_DISPLAY_CONFIG_FLAGS(0x00000001);
  static const SDC_TOPOLOGY_CLONE = SET_DISPLAY_CONFIG_FLAGS(0x00000002);
  static const SDC_TOPOLOGY_EXTEND = SET_DISPLAY_CONFIG_FLAGS(0x00000004);
  static const SDC_TOPOLOGY_EXTERNAL = SET_DISPLAY_CONFIG_FLAGS(0x00000008);
  static const SDC_TOPOLOGY_SUPPLIED = SET_DISPLAY_CONFIG_FLAGS(0x00000010);
  static const SDC_USE_SUPPLIED_DISPLAY_CONFIG =
      SET_DISPLAY_CONFIG_FLAGS(0x00000020);
  static const SDC_VALIDATE = SET_DISPLAY_CONFIG_FLAGS(0x00000040);
  static const SDC_APPLY = SET_DISPLAY_CONFIG_FLAGS(0x00000080);
  static const SDC_NO_OPTIMIZATION = SET_DISPLAY_CONFIG_FLAGS(0x00000100);
  static const SDC_SAVE_TO_DATABASE = SET_DISPLAY_CONFIG_FLAGS(0x00000200);
  static const SDC_ALLOW_CHANGES = SET_DISPLAY_CONFIG_FLAGS(0x00000400);
  static const SDC_PATH_PERSIST_IF_REQUIRED =
      SET_DISPLAY_CONFIG_FLAGS(0x00000800);
  static const SDC_FORCE_MODE_ENUMERATION =
      SET_DISPLAY_CONFIG_FLAGS(0x00001000);
  static const SDC_ALLOW_PATH_ORDER_CHANGES =
      SET_DISPLAY_CONFIG_FLAGS(0x00002000);
  static const SDC_VIRTUAL_MODE_AWARE = SET_DISPLAY_CONFIG_FLAGS(0x00008000);
  static const SDC_VIRTUAL_REFRESH_RATE_AWARE =
      SET_DISPLAY_CONFIG_FLAGS(0x00020000);
}

/// {@category enum}
extension type const SET_FILE_POINTER_MOVE_METHOD(int _) implements int {
  static const FILE_BEGIN = SET_FILE_POINTER_MOVE_METHOD(0x00000000);
  static const FILE_CURRENT = SET_FILE_POINTER_MOVE_METHOD(0x00000001);
  static const FILE_END = SET_FILE_POINTER_MOVE_METHOD(0x00000002);
}

/// {@category enum}
extension type const SET_THEME_APP_PROPERTIES_FLAGS(int _) implements int {
  static const ALLOW_NONCLIENT = SET_THEME_APP_PROPERTIES_FLAGS(0x00000001);
  static const ALLOW_CONTROLS = SET_THEME_APP_PROPERTIES_FLAGS(0x00000002);
  static const ALLOW_WEBCONTENT = SET_THEME_APP_PROPERTIES_FLAGS(0x00000004);
  static const VALIDBITS = SET_THEME_APP_PROPERTIES_FLAGS(0x00000007);
}

/// {@category enum}
extension type const SET_WINDOW_POS_FLAGS(int _) implements int {
  static const SWP_ASYNCWINDOWPOS = SET_WINDOW_POS_FLAGS(0x00004000);
  static const SWP_DEFERERASE = SET_WINDOW_POS_FLAGS(0x00002000);
  static const SWP_DRAWFRAME = SET_WINDOW_POS_FLAGS(0x00000020);
  static const SWP_FRAMECHANGED = SET_WINDOW_POS_FLAGS(0x00000020);
  static const SWP_HIDEWINDOW = SET_WINDOW_POS_FLAGS(0x00000080);
  static const SWP_NOACTIVATE = SET_WINDOW_POS_FLAGS(0x00000010);
  static const SWP_NOCOPYBITS = SET_WINDOW_POS_FLAGS(0x00000100);
  static const SWP_NOMOVE = SET_WINDOW_POS_FLAGS(0x00000002);
  static const SWP_NOOWNERZORDER = SET_WINDOW_POS_FLAGS(0x00000200);
  static const SWP_NOREDRAW = SET_WINDOW_POS_FLAGS(0x00000008);
  static const SWP_NOREPOSITION = SET_WINDOW_POS_FLAGS(0x00000200);
  static const SWP_NOSENDCHANGING = SET_WINDOW_POS_FLAGS(0x00000400);
  static const SWP_NOSIZE = SET_WINDOW_POS_FLAGS(0x00000001);
  static const SWP_NOZORDER = SET_WINDOW_POS_FLAGS(0x00000004);
  static const SWP_SHOWWINDOW = SET_WINDOW_POS_FLAGS(0x00000040);
}

/// {@category enum}
extension type const SFGAO_FLAGS(int _) implements int {
  static const SFGAO_CANCOPY = SFGAO_FLAGS(0x00000001);
  static const SFGAO_CANMOVE = SFGAO_FLAGS(0x00000002);
  static const SFGAO_CANLINK = SFGAO_FLAGS(0x00000004);
  static const SFGAO_STORAGE = SFGAO_FLAGS(0x00000008);
  static const SFGAO_CANRENAME = SFGAO_FLAGS(0x00000010);
  static const SFGAO_CANDELETE = SFGAO_FLAGS(0x00000020);
  static const SFGAO_HASPROPSHEET = SFGAO_FLAGS(0x00000040);
  static const SFGAO_DROPTARGET = SFGAO_FLAGS(0x00000100);
  static const SFGAO_CAPABILITYMASK = SFGAO_FLAGS(0x00000177);
  static const SFGAO_PLACEHOLDER = SFGAO_FLAGS(0x00000800);
  static const SFGAO_SYSTEM = SFGAO_FLAGS(0x00001000);
  static const SFGAO_ENCRYPTED = SFGAO_FLAGS(0x00002000);
  static const SFGAO_ISSLOW = SFGAO_FLAGS(0x00004000);
  static const SFGAO_GHOSTED = SFGAO_FLAGS(0x00008000);
  static const SFGAO_LINK = SFGAO_FLAGS(0x00010000);
  static const SFGAO_SHARE = SFGAO_FLAGS(0x00020000);
  static const SFGAO_READONLY = SFGAO_FLAGS(0x00040000);
  static const SFGAO_HIDDEN = SFGAO_FLAGS(0x00080000);
  static const SFGAO_DISPLAYATTRMASK = SFGAO_FLAGS(0x000fc000);
  static const SFGAO_FILESYSANCESTOR = SFGAO_FLAGS(0x10000000);
  static const SFGAO_FOLDER = SFGAO_FLAGS(0x20000000);
  static const SFGAO_FILESYSTEM = SFGAO_FLAGS(0x40000000);
  static const SFGAO_HASSUBFOLDER = SFGAO_FLAGS(0x80000000);
  static const SFGAO_CONTENTSMASK = SFGAO_FLAGS(0x80000000);
  static const SFGAO_VALIDATE = SFGAO_FLAGS(0x01000000);
  static const SFGAO_REMOVABLE = SFGAO_FLAGS(0x02000000);
  static const SFGAO_COMPRESSED = SFGAO_FLAGS(0x04000000);
  static const SFGAO_BROWSABLE = SFGAO_FLAGS(0x08000000);
  static const SFGAO_NONENUMERATED = SFGAO_FLAGS(0x00100000);
  static const SFGAO_NEWCONTENT = SFGAO_FLAGS(0x00200000);
  static const SFGAO_CANMONIKER = SFGAO_FLAGS(0x00400000);
  static const SFGAO_HASSTORAGE = SFGAO_FLAGS(0x00400000);
  static const SFGAO_STREAM = SFGAO_FLAGS(0x00400000);
  static const SFGAO_STORAGEANCESTOR = SFGAO_FLAGS(0x00800000);
  static const SFGAO_STORAGECAPMASK = SFGAO_FLAGS(0x70c50008);
  static const SFGAO_PKEYSFGAOMASK = SFGAO_FLAGS(0x81044000);
}

/// {@category enum}
extension type const SHGDNF(int _) implements int {
  static const SHGDN_NORMAL = SHGDNF(0x00000000);
  static const SHGDN_INFOLDER = SHGDNF(0x00000001);
  static const SHGDN_FOREDITING = SHGDNF(0x00001000);
  static const SHGDN_FORADDRESSBAR = SHGDNF(0x00004000);
  static const SHGDN_FORPARSING = SHGDNF(0x00008000);
}

/// {@category enum}
extension type const SHGFI_FLAGS(int _) implements int {
  static const SHGFI_ADDOVERLAYS = SHGFI_FLAGS(0x00000020);
  static const SHGFI_ATTR_SPECIFIED = SHGFI_FLAGS(0x00020000);
  static const SHGFI_ATTRIBUTES = SHGFI_FLAGS(0x00000800);
  static const SHGFI_DISPLAYNAME = SHGFI_FLAGS(0x00000200);
  static const SHGFI_EXETYPE = SHGFI_FLAGS(0x00002000);
  static const SHGFI_ICON = SHGFI_FLAGS(0x00000100);
  static const SHGFI_ICONLOCATION = SHGFI_FLAGS(0x00001000);
  static const SHGFI_LARGEICON = SHGFI_FLAGS(0x00000000);
  static const SHGFI_LINKOVERLAY = SHGFI_FLAGS(0x00008000);
  static const SHGFI_OPENICON = SHGFI_FLAGS(0x00000002);
  static const SHGFI_OVERLAYINDEX = SHGFI_FLAGS(0x00000040);
  static const SHGFI_PIDL = SHGFI_FLAGS(0x00000008);
  static const SHGFI_SELECTED = SHGFI_FLAGS(0x00010000);
  static const SHGFI_SHELLICONSIZE = SHGFI_FLAGS(0x00000004);
  static const SHGFI_SMALLICON = SHGFI_FLAGS(0x00000001);
  static const SHGFI_SYSICONINDEX = SHGFI_FLAGS(0x00004000);
  static const SHGFI_TYPENAME = SHGFI_FLAGS(0x00000400);
  static const SHGFI_USEFILEATTRIBUTES = SHGFI_FLAGS(0x00000010);
}

/// {@category enum}
extension type const SHOW_WINDOW_CMD(int _) implements int {
  static const SW_HIDE = SHOW_WINDOW_CMD(0x00000000);
  static const SW_SHOWNORMAL = SHOW_WINDOW_CMD(0x00000001);
  static const SW_NORMAL = SHOW_WINDOW_CMD(0x00000001);
  static const SW_SHOWMINIMIZED = SHOW_WINDOW_CMD(0x00000002);
  static const SW_SHOWMAXIMIZED = SHOW_WINDOW_CMD(0x00000003);
  static const SW_MAXIMIZE = SHOW_WINDOW_CMD(0x00000003);
  static const SW_SHOWNOACTIVATE = SHOW_WINDOW_CMD(0x00000004);
  static const SW_SHOW = SHOW_WINDOW_CMD(0x00000005);
  static const SW_MINIMIZE = SHOW_WINDOW_CMD(0x00000006);
  static const SW_SHOWMINNOACTIVE = SHOW_WINDOW_CMD(0x00000007);
  static const SW_SHOWNA = SHOW_WINDOW_CMD(0x00000008);
  static const SW_RESTORE = SHOW_WINDOW_CMD(0x00000009);
  static const SW_SHOWDEFAULT = SHOW_WINDOW_CMD(0x0000000a);
  static const SW_FORCEMINIMIZE = SHOW_WINDOW_CMD(0x0000000b);
  static const SW_MAX = SHOW_WINDOW_CMD(0x0000000b);
}

/// {@category enum}
extension type const SHUTDOWN_FLAGS(int _) implements int {
  static const SHUTDOWN_FORCE_OTHERS = SHUTDOWN_FLAGS(0x00000001);
  static const SHUTDOWN_FORCE_SELF = SHUTDOWN_FLAGS(0x00000002);
  static const SHUTDOWN_RESTART = SHUTDOWN_FLAGS(0x00000004);
  static const SHUTDOWN_POWEROFF = SHUTDOWN_FLAGS(0x00000008);
  static const SHUTDOWN_NOREBOOT = SHUTDOWN_FLAGS(0x00000010);
  static const SHUTDOWN_GRACE_OVERRIDE = SHUTDOWN_FLAGS(0x00000020);
  static const SHUTDOWN_INSTALL_UPDATES = SHUTDOWN_FLAGS(0x00000040);
  static const SHUTDOWN_RESTARTAPPS = SHUTDOWN_FLAGS(0x00000080);
  static const SHUTDOWN_SKIP_SVC_PRESHUTDOWN = SHUTDOWN_FLAGS(0x00000100);
  static const SHUTDOWN_HYBRID = SHUTDOWN_FLAGS(0x00000200);
  static const SHUTDOWN_RESTART_BOOTOPTIONS = SHUTDOWN_FLAGS(0x00000400);
  static const SHUTDOWN_SOFT_REBOOT = SHUTDOWN_FLAGS(0x00000800);
  static const SHUTDOWN_MOBILE_UI = SHUTDOWN_FLAGS(0x00001000);
  static const SHUTDOWN_ARSO = SHUTDOWN_FLAGS(0x00002000);
  static const SHUTDOWN_CHECK_SAFE_FOR_SERVER = SHUTDOWN_FLAGS(0x00004000);
  static const SHUTDOWN_VAIL_CONTAINER = SHUTDOWN_FLAGS(0x00008000);
  static const SHUTDOWN_SYSTEM_INITIATED = SHUTDOWN_FLAGS(0x00010000);
}

/// {@category enum}
extension type const SHUTDOWN_REASON(int _) implements int {
  static const SHTDN_REASON_NONE = SHUTDOWN_REASON(0x00000000);
  static const SHTDN_REASON_FLAG_COMMENT_REQUIRED = SHUTDOWN_REASON(0x01000000);
  static const SHTDN_REASON_FLAG_DIRTY_PROBLEM_ID_REQUIRED =
      SHUTDOWN_REASON(0x02000000);
  static const SHTDN_REASON_FLAG_CLEAN_UI = SHUTDOWN_REASON(0x04000000);
  static const SHTDN_REASON_FLAG_DIRTY_UI = SHUTDOWN_REASON(0x08000000);
  static const SHTDN_REASON_FLAG_MOBILE_UI_RESERVED =
      SHUTDOWN_REASON(0x10000000);
  static const SHTDN_REASON_FLAG_USER_DEFINED = SHUTDOWN_REASON(0x40000000);
  static const SHTDN_REASON_FLAG_PLANNED = SHUTDOWN_REASON(0x80000000);
  static const SHTDN_REASON_MAJOR_OTHER = SHUTDOWN_REASON(0x00000000);
  static const SHTDN_REASON_MAJOR_NONE = SHUTDOWN_REASON(0x00000000);
  static const SHTDN_REASON_MAJOR_HARDWARE = SHUTDOWN_REASON(0x00010000);
  static const SHTDN_REASON_MAJOR_OPERATINGSYSTEM = SHUTDOWN_REASON(0x00020000);
  static const SHTDN_REASON_MAJOR_SOFTWARE = SHUTDOWN_REASON(0x00030000);
  static const SHTDN_REASON_MAJOR_APPLICATION = SHUTDOWN_REASON(0x00040000);
  static const SHTDN_REASON_MAJOR_SYSTEM = SHUTDOWN_REASON(0x00050000);
  static const SHTDN_REASON_MAJOR_POWER = SHUTDOWN_REASON(0x00060000);
  static const SHTDN_REASON_MAJOR_LEGACY_API = SHUTDOWN_REASON(0x00070000);
  static const SHTDN_REASON_MINOR_OTHER = SHUTDOWN_REASON(0x00000000);
  static const SHTDN_REASON_MINOR_NONE = SHUTDOWN_REASON(0x000000ff);
  static const SHTDN_REASON_MINOR_MAINTENANCE = SHUTDOWN_REASON(0x00000001);
  static const SHTDN_REASON_MINOR_INSTALLATION = SHUTDOWN_REASON(0x00000002);
  static const SHTDN_REASON_MINOR_UPGRADE = SHUTDOWN_REASON(0x00000003);
  static const SHTDN_REASON_MINOR_RECONFIG = SHUTDOWN_REASON(0x00000004);
  static const SHTDN_REASON_MINOR_HUNG = SHUTDOWN_REASON(0x00000005);
  static const SHTDN_REASON_MINOR_UNSTABLE = SHUTDOWN_REASON(0x00000006);
  static const SHTDN_REASON_MINOR_DISK = SHUTDOWN_REASON(0x00000007);
  static const SHTDN_REASON_MINOR_PROCESSOR = SHUTDOWN_REASON(0x00000008);
  static const SHTDN_REASON_MINOR_NETWORKCARD = SHUTDOWN_REASON(0x00000009);
  static const SHTDN_REASON_MINOR_POWER_SUPPLY = SHUTDOWN_REASON(0x0000000a);
  static const SHTDN_REASON_MINOR_CORDUNPLUGGED = SHUTDOWN_REASON(0x0000000b);
  static const SHTDN_REASON_MINOR_ENVIRONMENT = SHUTDOWN_REASON(0x0000000c);
  static const SHTDN_REASON_MINOR_HARDWARE_DRIVER = SHUTDOWN_REASON(0x0000000d);
  static const SHTDN_REASON_MINOR_OTHERDRIVER = SHUTDOWN_REASON(0x0000000e);
  static const SHTDN_REASON_MINOR_BLUESCREEN = SHUTDOWN_REASON(0x0000000f);
  static const SHTDN_REASON_MINOR_SERVICEPACK = SHUTDOWN_REASON(0x00000010);
  static const SHTDN_REASON_MINOR_HOTFIX = SHUTDOWN_REASON(0x00000011);
  static const SHTDN_REASON_MINOR_SECURITYFIX = SHUTDOWN_REASON(0x00000012);
  static const SHTDN_REASON_MINOR_SECURITY = SHUTDOWN_REASON(0x00000013);
  static const SHTDN_REASON_MINOR_NETWORK_CONNECTIVITY =
      SHUTDOWN_REASON(0x00000014);
  static const SHTDN_REASON_MINOR_WMI = SHUTDOWN_REASON(0x00000015);
  static const SHTDN_REASON_MINOR_SERVICEPACK_UNINSTALL =
      SHUTDOWN_REASON(0x00000016);
  static const SHTDN_REASON_MINOR_HOTFIX_UNINSTALL =
      SHUTDOWN_REASON(0x00000017);
  static const SHTDN_REASON_MINOR_SECURITYFIX_UNINSTALL =
      SHUTDOWN_REASON(0x00000018);
  static const SHTDN_REASON_MINOR_MMC = SHUTDOWN_REASON(0x00000019);
  static const SHTDN_REASON_MINOR_SYSTEMRESTORE = SHUTDOWN_REASON(0x0000001a);
  static const SHTDN_REASON_MINOR_TERMSRV = SHUTDOWN_REASON(0x00000020);
  static const SHTDN_REASON_MINOR_DC_PROMOTION = SHUTDOWN_REASON(0x00000021);
  static const SHTDN_REASON_MINOR_DC_DEMOTION = SHUTDOWN_REASON(0x00000022);
  static const SHTDN_REASON_UNKNOWN = SHUTDOWN_REASON(0x000000ff);
  static const SHTDN_REASON_LEGACY_API = SHUTDOWN_REASON(0x80070000);
  static const SHTDN_REASON_VALID_BIT_MASK = SHUTDOWN_REASON(0xc0ffffff);
}

/// {@category enum}
extension type const SIATTRIBFLAGS(int _) implements int {
  static const SIATTRIBFLAGS_AND = SIATTRIBFLAGS(0x00000001);
  static const SIATTRIBFLAGS_OR = SIATTRIBFLAGS(0x00000002);
  static const SIATTRIBFLAGS_APPCOMPAT = SIATTRIBFLAGS(0x00000003);
  static const SIATTRIBFLAGS_MASK = SIATTRIBFLAGS(0x00000003);
  static const SIATTRIBFLAGS_ALLITEMS = SIATTRIBFLAGS(0x00004000);
}

/// {@category enum}
extension type const SIGDN(int _) implements int {
  static const SIGDN_NORMALDISPLAY = SIGDN(0x00000000);
  static const SIGDN_PARENTRELATIVEPARSING = SIGDN(0x80018001);
  static const SIGDN_DESKTOPABSOLUTEPARSING = SIGDN(0x80028000);
  static const SIGDN_PARENTRELATIVEEDITING = SIGDN(0x80031001);
  static const SIGDN_DESKTOPABSOLUTEEDITING = SIGDN(0x8004c000);
  static const SIGDN_FILESYSPATH = SIGDN(0x80058000);
  static const SIGDN_URL = SIGDN(0x80068000);
  static const SIGDN_PARENTRELATIVEFORADDRESSBAR = SIGDN(0x8007c001);
  static const SIGDN_PARENTRELATIVE = SIGDN(0x80080001);
  static const SIGDN_PARENTRELATIVEFORUI = SIGDN(0x80094001);
}

/// {@category enum}
extension type const SIIGBF(int _) implements int {
  static const SIIGBF_RESIZETOFIT = SIIGBF(0x00000000);
  static const SIIGBF_BIGGERSIZEOK = SIIGBF(0x00000001);
  static const SIIGBF_MEMORYONLY = SIIGBF(0x00000002);
  static const SIIGBF_ICONONLY = SIIGBF(0x00000004);
  static const SIIGBF_THUMBNAILONLY = SIIGBF(0x00000008);
  static const SIIGBF_INCACHEONLY = SIIGBF(0x00000010);
  static const SIIGBF_CROPTOSQUARE = SIIGBF(0x00000020);
  static const SIIGBF_WIDETHUMBNAILS = SIIGBF(0x00000040);
  static const SIIGBF_ICONBACKGROUND = SIIGBF(0x00000080);
  static const SIIGBF_SCALEUP = SIIGBF(0x00000100);
}

/// {@category enum}
extension type const SND_FLAGS(int _) implements int {
  static const SND_APPLICATION = SND_FLAGS(0x00000080);
  static const SND_ALIAS = SND_FLAGS(0x00010000);
  static const SND_ALIAS_ID = SND_FLAGS(0x00110000);
  static const SND_FILENAME = SND_FLAGS(0x00020000);
  static const SND_RESOURCE = SND_FLAGS(0x00040004);
  static const SND_ASYNC = SND_FLAGS(0x00000001);
  static const SND_NODEFAULT = SND_FLAGS(0x00000002);
  static const SND_LOOP = SND_FLAGS(0x00000008);
  static const SND_MEMORY = SND_FLAGS(0x00000004);
  static const SND_NOSTOP = SND_FLAGS(0x00000010);
  static const SND_NOWAIT = SND_FLAGS(0x00002000);
  static const SND_PURGE = SND_FLAGS(0x00000040);
  static const SND_SENTRY = SND_FLAGS(0x00080000);
  static const SND_SYNC = SND_FLAGS(0x00000000);
  static const SND_SYSTEM = SND_FLAGS(0x00200000);
}

/// {@category enum}
extension type const SPEVENTENUM(int _) implements int {
  static const SPEI_UNDEFINED = SPEVENTENUM(0x00000000);
  static const SPEI_START_INPUT_STREAM = SPEVENTENUM(0x00000001);
  static const SPEI_END_INPUT_STREAM = SPEVENTENUM(0x00000002);
  static const SPEI_VOICE_CHANGE = SPEVENTENUM(0x00000003);
  static const SPEI_TTS_BOOKMARK = SPEVENTENUM(0x00000004);
  static const SPEI_WORD_BOUNDARY = SPEVENTENUM(0x00000005);
  static const SPEI_PHONEME = SPEVENTENUM(0x00000006);
  static const SPEI_SENTENCE_BOUNDARY = SPEVENTENUM(0x00000007);
  static const SPEI_VISEME = SPEVENTENUM(0x00000008);
  static const SPEI_TTS_AUDIO_LEVEL = SPEVENTENUM(0x00000009);
  static const SPEI_TTS_PRIVATE = SPEVENTENUM(0x0000000f);
  static const SPEI_MIN_TTS = SPEVENTENUM(0x00000001);
  static const SPEI_MAX_TTS = SPEVENTENUM(0x0000000f);
  static const SPEI_END_SR_STREAM = SPEVENTENUM(0x00000022);
  static const SPEI_SOUND_START = SPEVENTENUM(0x00000023);
  static const SPEI_SOUND_END = SPEVENTENUM(0x00000024);
  static const SPEI_PHRASE_START = SPEVENTENUM(0x00000025);
  static const SPEI_RECOGNITION = SPEVENTENUM(0x00000026);
  static const SPEI_HYPOTHESIS = SPEVENTENUM(0x00000027);
  static const SPEI_SR_BOOKMARK = SPEVENTENUM(0x00000028);
  static const SPEI_PROPERTY_NUM_CHANGE = SPEVENTENUM(0x00000029);
  static const SPEI_PROPERTY_STRING_CHANGE = SPEVENTENUM(0x0000002a);
  static const SPEI_FALSE_RECOGNITION = SPEVENTENUM(0x0000002b);
  static const SPEI_INTERFERENCE = SPEVENTENUM(0x0000002c);
  static const SPEI_REQUEST_UI = SPEVENTENUM(0x0000002d);
  static const SPEI_RECO_STATE_CHANGE = SPEVENTENUM(0x0000002e);
  static const SPEI_ADAPTATION = SPEVENTENUM(0x0000002f);
  static const SPEI_START_SR_STREAM = SPEVENTENUM(0x00000030);
  static const SPEI_RECO_OTHER_CONTEXT = SPEVENTENUM(0x00000031);
  static const SPEI_SR_AUDIO_LEVEL = SPEVENTENUM(0x00000032);
  static const SPEI_SR_RETAINEDAUDIO = SPEVENTENUM(0x00000033);
  static const SPEI_SR_PRIVATE = SPEVENTENUM(0x00000034);
  static const SPEI_RESERVED4 = SPEVENTENUM(0x00000035);
  static const SPEI_RESERVED5 = SPEVENTENUM(0x00000036);
  static const SPEI_RESERVED6 = SPEVENTENUM(0x00000037);
  static const SPEI_MIN_SR = SPEVENTENUM(0x00000022);
  static const SPEI_MAX_SR = SPEVENTENUM(0x00000037);
  static const SPEI_RESERVED1 = SPEVENTENUM(0x0000001e);
  static const SPEI_RESERVED2 = SPEVENTENUM(0x00000021);
  static const SPEI_RESERVED3 = SPEVENTENUM(0x0000003f);
}

/// {@category enum}
extension type const SPVISEMES(int _) implements int {
  static const SP_VISEME_0 = SPVISEMES(0x00000000);
  static const SP_VISEME_1 = SPVISEMES(0x00000001);
  static const SP_VISEME_2 = SPVISEMES(0x00000002);
  static const SP_VISEME_3 = SPVISEMES(0x00000003);
  static const SP_VISEME_4 = SPVISEMES(0x00000004);
  static const SP_VISEME_5 = SPVISEMES(0x00000005);
  static const SP_VISEME_6 = SPVISEMES(0x00000006);
  static const SP_VISEME_7 = SPVISEMES(0x00000007);
  static const SP_VISEME_8 = SPVISEMES(0x00000008);
  static const SP_VISEME_9 = SPVISEMES(0x00000009);
  static const SP_VISEME_10 = SPVISEMES(0x0000000a);
  static const SP_VISEME_11 = SPVISEMES(0x0000000b);
  static const SP_VISEME_12 = SPVISEMES(0x0000000c);
  static const SP_VISEME_13 = SPVISEMES(0x0000000d);
  static const SP_VISEME_14 = SPVISEMES(0x0000000e);
  static const SP_VISEME_15 = SPVISEMES(0x0000000f);
  static const SP_VISEME_16 = SPVISEMES(0x00000010);
  static const SP_VISEME_17 = SPVISEMES(0x00000011);
  static const SP_VISEME_18 = SPVISEMES(0x00000012);
  static const SP_VISEME_19 = SPVISEMES(0x00000013);
  static const SP_VISEME_20 = SPVISEMES(0x00000014);
  static const SP_VISEME_21 = SPVISEMES(0x00000015);
}

/// {@category enum}
extension type const SPVPRIORITY(int _) implements int {
  static const SPVPRI_NORMAL = SPVPRIORITY(0x00000000);
  static const SPVPRI_ALERT = SPVPRIORITY(0x00000001);
  static const SPVPRI_OVER = SPVPRIORITY(0x00000002);
}

/// {@category enum}
extension type const STARTUPINFOW_FLAGS(int _) implements int {
  static const STARTF_FORCEONFEEDBACK = STARTUPINFOW_FLAGS(0x00000040);
  static const STARTF_FORCEOFFFEEDBACK = STARTUPINFOW_FLAGS(0x00000080);
  static const STARTF_PREVENTPINNING = STARTUPINFOW_FLAGS(0x00002000);
  static const STARTF_RUNFULLSCREEN = STARTUPINFOW_FLAGS(0x00000020);
  static const STARTF_TITLEISAPPID = STARTUPINFOW_FLAGS(0x00001000);
  static const STARTF_TITLEISLINKNAME = STARTUPINFOW_FLAGS(0x00000800);
  static const STARTF_UNTRUSTEDSOURCE = STARTUPINFOW_FLAGS(0x00008000);
  static const STARTF_USECOUNTCHARS = STARTUPINFOW_FLAGS(0x00000008);
  static const STARTF_USEFILLATTRIBUTE = STARTUPINFOW_FLAGS(0x00000010);
  static const STARTF_USEHOTKEY = STARTUPINFOW_FLAGS(0x00000200);
  static const STARTF_USEPOSITION = STARTUPINFOW_FLAGS(0x00000004);
  static const STARTF_USESHOWWINDOW = STARTUPINFOW_FLAGS(0x00000001);
  static const STARTF_USESIZE = STARTUPINFOW_FLAGS(0x00000002);
  static const STARTF_USESTDHANDLES = STARTUPINFOW_FLAGS(0x00000100);
}

/// {@category enum}
extension type const STD_HANDLE(int _) implements int {
  static const STD_INPUT_HANDLE = STD_HANDLE(0xfffffff6);
  static const STD_OUTPUT_HANDLE = STD_HANDLE(0xfffffff5);
  static const STD_ERROR_HANDLE = STD_HANDLE(0xfffffff4);
}

/// {@category enum}
extension type const STGM(int _) implements int {
  static const STGM_DIRECT = STGM(0x00000000);
  static const STGM_TRANSACTED = STGM(0x00010000);
  static const STGM_SIMPLE = STGM(0x08000000);
  static const STGM_READ = STGM(0x00000000);
  static const STGM_WRITE = STGM(0x00000001);
  static const STGM_READWRITE = STGM(0x00000002);
  static const STGM_SHARE_DENY_NONE = STGM(0x00000040);
  static const STGM_SHARE_DENY_READ = STGM(0x00000030);
  static const STGM_SHARE_DENY_WRITE = STGM(0x00000020);
  static const STGM_SHARE_EXCLUSIVE = STGM(0x00000010);
  static const STGM_PRIORITY = STGM(0x00040000);
  static const STGM_DELETEONRELEASE = STGM(0x04000000);
  static const STGM_NOSCRATCH = STGM(0x00100000);
  static const STGM_CREATE = STGM(0x00001000);
  static const STGM_CONVERT = STGM(0x00020000);
  static const STGM_FAILIFTHERE = STGM(0x00000000);
  static const STGM_NOSNAPSHOT = STGM(0x00200000);
  static const STGM_DIRECT_SWMR = STGM(0x00400000);
}

/// {@category enum}
extension type const STREAM_INFO_LEVELS(int _) implements int {
  static const FindStreamInfoStandard = STREAM_INFO_LEVELS(0x00000000);
  static const FindStreamInfoMaxInfoLevel = STREAM_INFO_LEVELS(0x00000001);
}

/// {@category enum}
extension type const STREAM_SEEK(int _) implements int {
  static const STREAM_SEEK_SET = STREAM_SEEK(0x00000000);
  static const STREAM_SEEK_CUR = STREAM_SEEK(0x00000001);
  static const STREAM_SEEK_END = STREAM_SEEK(0x00000002);
}

/// {@category enum}
extension type const STRETCH_BLT_MODE(int _) implements int {
  static const BLACKONWHITE = STRETCH_BLT_MODE(0x00000001);
  static const COLORONCOLOR = STRETCH_BLT_MODE(0x00000003);
  static const HALFTONE = STRETCH_BLT_MODE(0x00000004);
  static const STRETCH_ANDSCANS = STRETCH_BLT_MODE(0x00000001);
  static const STRETCH_DELETESCANS = STRETCH_BLT_MODE(0x00000003);
  static const STRETCH_HALFTONE = STRETCH_BLT_MODE(0x00000004);
  static const STRETCH_ORSCANS = STRETCH_BLT_MODE(0x00000002);
  static const WHITEONBLACK = STRETCH_BLT_MODE(0x00000002);
}

/// {@category enum}
extension type const SYMBOL_INFO_FLAGS(int _) implements int {
  static const SYMFLAG_CLR_TOKEN = SYMBOL_INFO_FLAGS(0x00040000);
  static const SYMFLAG_CONSTANT = SYMBOL_INFO_FLAGS(0x00000100);
  static const SYMFLAG_EXPORT = SYMBOL_INFO_FLAGS(0x00000200);
  static const SYMFLAG_FORWARDER = SYMBOL_INFO_FLAGS(0x00000400);
  static const SYMFLAG_FRAMEREL = SYMBOL_INFO_FLAGS(0x00000020);
  static const SYMFLAG_FUNCTION = SYMBOL_INFO_FLAGS(0x00000800);
  static const SYMFLAG_ILREL = SYMBOL_INFO_FLAGS(0x00010000);
  static const SYMFLAG_LOCAL = SYMBOL_INFO_FLAGS(0x00000080);
  static const SYMFLAG_METADATA = SYMBOL_INFO_FLAGS(0x00020000);
  static const SYMFLAG_PARAMETER = SYMBOL_INFO_FLAGS(0x00000040);
  static const SYMFLAG_REGISTER = SYMBOL_INFO_FLAGS(0x00000008);
  static const SYMFLAG_REGREL = SYMBOL_INFO_FLAGS(0x00000010);
  static const SYMFLAG_SLOT = SYMBOL_INFO_FLAGS(0x00008000);
  static const SYMFLAG_THUNK = SYMBOL_INFO_FLAGS(0x00002000);
  static const SYMFLAG_TLSREL = SYMBOL_INFO_FLAGS(0x00004000);
  static const SYMFLAG_VALUEPRESENT = SYMBOL_INFO_FLAGS(0x00000001);
  static const SYMFLAG_VIRTUAL = SYMBOL_INFO_FLAGS(0x00001000);
}

/// {@category enum}
extension type const SYM_LOAD_FLAGS(int _) implements int {
  static const SLMFLAG_NONE = SYM_LOAD_FLAGS(0x00000000);
  static const SLMFLAG_VIRTUAL = SYM_LOAD_FLAGS(0x00000001);
  static const SLMFLAG_ALT_INDEX = SYM_LOAD_FLAGS(0x00000002);
  static const SLMFLAG_NO_SYMBOLS = SYM_LOAD_FLAGS(0x00000004);
}

/// {@category enum}
extension type const SYNCHRONIZATION_ACCESS_RIGHTS(int _) implements int {
  static const EVENT_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(0x001f0003);
  static const EVENT_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(0x00000002);
  static const MUTEX_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(0x001f0001);
  static const MUTEX_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(0x00000001);
  static const SEMAPHORE_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(0x001f0003);
  static const SEMAPHORE_MODIFY_STATE =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00000002);
  static const TIMER_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(0x001f0003);
  static const TIMER_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(0x00000002);
  static const TIMER_QUERY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(0x00000001);
  static const SYNCHRONIZATION_DELETE =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00010000);
  static const SYNCHRONIZATION_READ_CONTROL =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00020000);
  static const SYNCHRONIZATION_WRITE_DAC =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00040000);
  static const SYNCHRONIZATION_WRITE_OWNER =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00080000);
  static const SYNCHRONIZATION_SYNCHRONIZE =
      SYNCHRONIZATION_ACCESS_RIGHTS(0x00100000);
}

/// {@category enum}
extension type const SYSTEM_CURSOR_ID(int _) implements int {
  static const OCR_APPSTARTING = SYSTEM_CURSOR_ID(0x00007f8a);
  static const OCR_NORMAL = SYSTEM_CURSOR_ID(0x00007f00);
  static const OCR_CROSS = SYSTEM_CURSOR_ID(0x00007f03);
  static const OCR_HAND = SYSTEM_CURSOR_ID(0x00007f89);
  static const OCR_HELP = SYSTEM_CURSOR_ID(0x00007f8b);
  static const OCR_IBEAM = SYSTEM_CURSOR_ID(0x00007f01);
  static const OCR_NO = SYSTEM_CURSOR_ID(0x00007f88);
  static const OCR_SIZEALL = SYSTEM_CURSOR_ID(0x00007f86);
  static const OCR_SIZENESW = SYSTEM_CURSOR_ID(0x00007f83);
  static const OCR_SIZENS = SYSTEM_CURSOR_ID(0x00007f85);
  static const OCR_SIZENWSE = SYSTEM_CURSOR_ID(0x00007f82);
  static const OCR_SIZEWE = SYSTEM_CURSOR_ID(0x00007f84);
  static const OCR_UP = SYSTEM_CURSOR_ID(0x00007f04);
  static const OCR_WAIT = SYSTEM_CURSOR_ID(0x00007f02);
}

/// {@category enum}
extension type const SYSTEM_METRICS_INDEX(int _) implements int {
  static const SM_ARRANGE = SYSTEM_METRICS_INDEX(0x00000038);
  static const SM_CLEANBOOT = SYSTEM_METRICS_INDEX(0x00000043);
  static const SM_CMONITORS = SYSTEM_METRICS_INDEX(0x00000050);
  static const SM_CMOUSEBUTTONS = SYSTEM_METRICS_INDEX(0x0000002b);
  static const SM_CONVERTIBLESLATEMODE = SYSTEM_METRICS_INDEX(0x00002003);
  static const SM_CXBORDER = SYSTEM_METRICS_INDEX(0x00000005);
  static const SM_CXCURSOR = SYSTEM_METRICS_INDEX(0x0000000d);
  static const SM_CXDLGFRAME = SYSTEM_METRICS_INDEX(0x00000007);
  static const SM_CXDOUBLECLK = SYSTEM_METRICS_INDEX(0x00000024);
  static const SM_CXDRAG = SYSTEM_METRICS_INDEX(0x00000044);
  static const SM_CXEDGE = SYSTEM_METRICS_INDEX(0x0000002d);
  static const SM_CXFIXEDFRAME = SYSTEM_METRICS_INDEX(0x00000007);
  static const SM_CXFOCUSBORDER = SYSTEM_METRICS_INDEX(0x00000053);
  static const SM_CXFRAME = SYSTEM_METRICS_INDEX(0x00000020);
  static const SM_CXFULLSCREEN = SYSTEM_METRICS_INDEX(0x00000010);
  static const SM_CXHSCROLL = SYSTEM_METRICS_INDEX(0x00000015);
  static const SM_CXHTHUMB = SYSTEM_METRICS_INDEX(0x0000000a);
  static const SM_CXICON = SYSTEM_METRICS_INDEX(0x0000000b);
  static const SM_CXICONSPACING = SYSTEM_METRICS_INDEX(0x00000026);
  static const SM_CXMAXIMIZED = SYSTEM_METRICS_INDEX(0x0000003d);
  static const SM_CXMAXTRACK = SYSTEM_METRICS_INDEX(0x0000003b);
  static const SM_CXMENUCHECK = SYSTEM_METRICS_INDEX(0x00000047);
  static const SM_CXMENUSIZE = SYSTEM_METRICS_INDEX(0x00000036);
  static const SM_CXMIN = SYSTEM_METRICS_INDEX(0x0000001c);
  static const SM_CXMINIMIZED = SYSTEM_METRICS_INDEX(0x00000039);
  static const SM_CXMINSPACING = SYSTEM_METRICS_INDEX(0x0000002f);
  static const SM_CXMINTRACK = SYSTEM_METRICS_INDEX(0x00000022);
  static const SM_CXPADDEDBORDER = SYSTEM_METRICS_INDEX(0x0000005c);
  static const SM_CXSCREEN = SYSTEM_METRICS_INDEX(0x00000000);
  static const SM_CXSIZE = SYSTEM_METRICS_INDEX(0x0000001e);
  static const SM_CXSIZEFRAME = SYSTEM_METRICS_INDEX(0x00000020);
  static const SM_CXSMICON = SYSTEM_METRICS_INDEX(0x00000031);
  static const SM_CXSMSIZE = SYSTEM_METRICS_INDEX(0x00000034);
  static const SM_CXVIRTUALSCREEN = SYSTEM_METRICS_INDEX(0x0000004e);
  static const SM_CXVSCROLL = SYSTEM_METRICS_INDEX(0x00000002);
  static const SM_CYBORDER = SYSTEM_METRICS_INDEX(0x00000006);
  static const SM_CYCAPTION = SYSTEM_METRICS_INDEX(0x00000004);
  static const SM_CYCURSOR = SYSTEM_METRICS_INDEX(0x0000000e);
  static const SM_CYDLGFRAME = SYSTEM_METRICS_INDEX(0x00000008);
  static const SM_CYDOUBLECLK = SYSTEM_METRICS_INDEX(0x00000025);
  static const SM_CYDRAG = SYSTEM_METRICS_INDEX(0x00000045);
  static const SM_CYEDGE = SYSTEM_METRICS_INDEX(0x0000002e);
  static const SM_CYFIXEDFRAME = SYSTEM_METRICS_INDEX(0x00000008);
  static const SM_CYFOCUSBORDER = SYSTEM_METRICS_INDEX(0x00000054);
  static const SM_CYFRAME = SYSTEM_METRICS_INDEX(0x00000021);
  static const SM_CYFULLSCREEN = SYSTEM_METRICS_INDEX(0x00000011);
  static const SM_CYHSCROLL = SYSTEM_METRICS_INDEX(0x00000003);
  static const SM_CYICON = SYSTEM_METRICS_INDEX(0x0000000c);
  static const SM_CYICONSPACING = SYSTEM_METRICS_INDEX(0x00000027);
  static const SM_CYKANJIWINDOW = SYSTEM_METRICS_INDEX(0x00000012);
  static const SM_CYMAXIMIZED = SYSTEM_METRICS_INDEX(0x0000003e);
  static const SM_CYMAXTRACK = SYSTEM_METRICS_INDEX(0x0000003c);
  static const SM_CYMENU = SYSTEM_METRICS_INDEX(0x0000000f);
  static const SM_CYMENUCHECK = SYSTEM_METRICS_INDEX(0x00000048);
  static const SM_CYMENUSIZE = SYSTEM_METRICS_INDEX(0x00000037);
  static const SM_CYMIN = SYSTEM_METRICS_INDEX(0x0000001d);
  static const SM_CYMINIMIZED = SYSTEM_METRICS_INDEX(0x0000003a);
  static const SM_CYMINSPACING = SYSTEM_METRICS_INDEX(0x00000030);
  static const SM_CYMINTRACK = SYSTEM_METRICS_INDEX(0x00000023);
  static const SM_CYSCREEN = SYSTEM_METRICS_INDEX(0x00000001);
  static const SM_CYSIZE = SYSTEM_METRICS_INDEX(0x0000001f);
  static const SM_CYSIZEFRAME = SYSTEM_METRICS_INDEX(0x00000021);
  static const SM_CYSMCAPTION = SYSTEM_METRICS_INDEX(0x00000033);
  static const SM_CYSMICON = SYSTEM_METRICS_INDEX(0x00000032);
  static const SM_CYSMSIZE = SYSTEM_METRICS_INDEX(0x00000035);
  static const SM_CYVIRTUALSCREEN = SYSTEM_METRICS_INDEX(0x0000004f);
  static const SM_CYVSCROLL = SYSTEM_METRICS_INDEX(0x00000014);
  static const SM_CYVTHUMB = SYSTEM_METRICS_INDEX(0x00000009);
  static const SM_DBCSENABLED = SYSTEM_METRICS_INDEX(0x0000002a);
  static const SM_DEBUG = SYSTEM_METRICS_INDEX(0x00000016);
  static const SM_DIGITIZER = SYSTEM_METRICS_INDEX(0x0000005e);
  static const SM_IMMENABLED = SYSTEM_METRICS_INDEX(0x00000052);
  static const SM_MAXIMUMTOUCHES = SYSTEM_METRICS_INDEX(0x0000005f);
  static const SM_MEDIACENTER = SYSTEM_METRICS_INDEX(0x00000057);
  static const SM_MENUDROPALIGNMENT = SYSTEM_METRICS_INDEX(0x00000028);
  static const SM_MIDEASTENABLED = SYSTEM_METRICS_INDEX(0x0000004a);
  static const SM_MOUSEPRESENT = SYSTEM_METRICS_INDEX(0x00000013);
  static const SM_MOUSEHORIZONTALWHEELPRESENT =
      SYSTEM_METRICS_INDEX(0x0000005b);
  static const SM_MOUSEWHEELPRESENT = SYSTEM_METRICS_INDEX(0x0000004b);
  static const SM_NETWORK = SYSTEM_METRICS_INDEX(0x0000003f);
  static const SM_PENWINDOWS = SYSTEM_METRICS_INDEX(0x00000029);
  static const SM_REMOTECONTROL = SYSTEM_METRICS_INDEX(0x00002001);
  static const SM_REMOTESESSION = SYSTEM_METRICS_INDEX(0x00001000);
  static const SM_SAMEDISPLAYFORMAT = SYSTEM_METRICS_INDEX(0x00000051);
  static const SM_SECURE = SYSTEM_METRICS_INDEX(0x0000002c);
  static const SM_SERVERR2 = SYSTEM_METRICS_INDEX(0x00000059);
  static const SM_SHOWSOUNDS = SYSTEM_METRICS_INDEX(0x00000046);
  static const SM_SHUTTINGDOWN = SYSTEM_METRICS_INDEX(0x00002000);
  static const SM_SLOWMACHINE = SYSTEM_METRICS_INDEX(0x00000049);
  static const SM_STARTER = SYSTEM_METRICS_INDEX(0x00000058);
  static const SM_SWAPBUTTON = SYSTEM_METRICS_INDEX(0x00000017);
  static const SM_SYSTEMDOCKED = SYSTEM_METRICS_INDEX(0x00002004);
  static const SM_TABLETPC = SYSTEM_METRICS_INDEX(0x00000056);
  static const SM_XVIRTUALSCREEN = SYSTEM_METRICS_INDEX(0x0000004c);
  static const SM_YVIRTUALSCREEN = SYSTEM_METRICS_INDEX(0x0000004d);
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_ACTION(int _) implements int {
  static const SPI_GETBEEP = SYSTEM_PARAMETERS_INFO_ACTION(0x00000001);
  static const SPI_SETBEEP = SYSTEM_PARAMETERS_INFO_ACTION(0x00000002);
  static const SPI_GETMOUSE = SYSTEM_PARAMETERS_INFO_ACTION(0x00000003);
  static const SPI_SETMOUSE = SYSTEM_PARAMETERS_INFO_ACTION(0x00000004);
  static const SPI_GETBORDER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000005);
  static const SPI_SETBORDER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000006);
  static const SPI_GETKEYBOARDSPEED = SYSTEM_PARAMETERS_INFO_ACTION(0x0000000a);
  static const SPI_SETKEYBOARDSPEED = SYSTEM_PARAMETERS_INFO_ACTION(0x0000000b);
  static const SPI_LANGDRIVER = SYSTEM_PARAMETERS_INFO_ACTION(0x0000000c);
  static const SPI_ICONHORIZONTALSPACING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000000d);
  static const SPI_GETSCREENSAVETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000000e);
  static const SPI_SETSCREENSAVETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000000f);
  static const SPI_GETSCREENSAVEACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000010);
  static const SPI_SETSCREENSAVEACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000011);
  static const SPI_GETGRIDGRANULARITY =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000012);
  static const SPI_SETGRIDGRANULARITY =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000013);
  static const SPI_SETDESKWALLPAPER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000014);
  static const SPI_SETDESKPATTERN = SYSTEM_PARAMETERS_INFO_ACTION(0x00000015);
  static const SPI_GETKEYBOARDDELAY = SYSTEM_PARAMETERS_INFO_ACTION(0x00000016);
  static const SPI_SETKEYBOARDDELAY = SYSTEM_PARAMETERS_INFO_ACTION(0x00000017);
  static const SPI_ICONVERTICALSPACING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000018);
  static const SPI_GETICONTITLEWRAP = SYSTEM_PARAMETERS_INFO_ACTION(0x00000019);
  static const SPI_SETICONTITLEWRAP = SYSTEM_PARAMETERS_INFO_ACTION(0x0000001a);
  static const SPI_GETMENUDROPALIGNMENT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000001b);
  static const SPI_SETMENUDROPALIGNMENT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000001c);
  static const SPI_SETDOUBLECLKWIDTH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000001d);
  static const SPI_SETDOUBLECLKHEIGHT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000001e);
  static const SPI_GETICONTITLELOGFONT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000001f);
  static const SPI_SETDOUBLECLICKTIME =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000020);
  static const SPI_SETMOUSEBUTTONSWAP =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000021);
  static const SPI_SETICONTITLELOGFONT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000022);
  static const SPI_GETFASTTASKSWITCH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000023);
  static const SPI_SETFASTTASKSWITCH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000024);
  static const SPI_SETDRAGFULLWINDOWS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000025);
  static const SPI_GETDRAGFULLWINDOWS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000026);
  static const SPI_GETNONCLIENTMETRICS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000029);
  static const SPI_SETNONCLIENTMETRICS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000002a);
  static const SPI_GETMINIMIZEDMETRICS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000002b);
  static const SPI_SETMINIMIZEDMETRICS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000002c);
  static const SPI_GETICONMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000002d);
  static const SPI_SETICONMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000002e);
  static const SPI_SETWORKAREA = SYSTEM_PARAMETERS_INFO_ACTION(0x0000002f);
  static const SPI_GETWORKAREA = SYSTEM_PARAMETERS_INFO_ACTION(0x00000030);
  static const SPI_SETPENWINDOWS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000031);
  static const SPI_GETHIGHCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(0x00000042);
  static const SPI_SETHIGHCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(0x00000043);
  static const SPI_GETKEYBOARDPREF = SYSTEM_PARAMETERS_INFO_ACTION(0x00000044);
  static const SPI_SETKEYBOARDPREF = SYSTEM_PARAMETERS_INFO_ACTION(0x00000045);
  static const SPI_GETSCREENREADER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000046);
  static const SPI_SETSCREENREADER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000047);
  static const SPI_GETANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(0x00000048);
  static const SPI_SETANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(0x00000049);
  static const SPI_GETFONTSMOOTHING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000004a);
  static const SPI_SETFONTSMOOTHING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000004b);
  static const SPI_SETDRAGWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(0x0000004c);
  static const SPI_SETDRAGHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(0x0000004d);
  static const SPI_SETHANDHELD = SYSTEM_PARAMETERS_INFO_ACTION(0x0000004e);
  static const SPI_GETLOWPOWERTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000004f);
  static const SPI_GETPOWEROFFTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000050);
  static const SPI_SETLOWPOWERTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000051);
  static const SPI_SETPOWEROFFTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000052);
  static const SPI_GETLOWPOWERACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000053);
  static const SPI_GETPOWEROFFACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000054);
  static const SPI_SETLOWPOWERACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000055);
  static const SPI_SETPOWEROFFACTIVE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000056);
  static const SPI_SETCURSORS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000057);
  static const SPI_SETICONS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000058);
  static const SPI_GETDEFAULTINPUTLANG =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000059);
  static const SPI_SETDEFAULTINPUTLANG =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000005a);
  static const SPI_SETLANGTOGGLE = SYSTEM_PARAMETERS_INFO_ACTION(0x0000005b);
  static const SPI_GETWINDOWSEXTENSION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000005c);
  static const SPI_SETMOUSETRAILS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000005d);
  static const SPI_GETMOUSETRAILS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000005e);
  static const SPI_SETSCREENSAVERRUNNING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000061);
  static const SPI_SCREENSAVERRUNNING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000061);
  static const SPI_GETFILTERKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000032);
  static const SPI_SETFILTERKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000033);
  static const SPI_GETTOGGLEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000034);
  static const SPI_SETTOGGLEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000035);
  static const SPI_GETMOUSEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000036);
  static const SPI_SETMOUSEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000037);
  static const SPI_GETSHOWSOUNDS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000038);
  static const SPI_SETSHOWSOUNDS = SYSTEM_PARAMETERS_INFO_ACTION(0x00000039);
  static const SPI_GETSTICKYKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003a);
  static const SPI_SETSTICKYKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003b);
  static const SPI_GETACCESSTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003c);
  static const SPI_SETACCESSTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003d);
  static const SPI_GETSERIALKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003e);
  static const SPI_SETSERIALKEYS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000003f);
  static const SPI_GETSOUNDSENTRY = SYSTEM_PARAMETERS_INFO_ACTION(0x00000040);
  static const SPI_SETSOUNDSENTRY = SYSTEM_PARAMETERS_INFO_ACTION(0x00000041);
  static const SPI_GETSNAPTODEFBUTTON =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000005f);
  static const SPI_SETSNAPTODEFBUTTON =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000060);
  static const SPI_GETMOUSEHOVERWIDTH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000062);
  static const SPI_SETMOUSEHOVERWIDTH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000063);
  static const SPI_GETMOUSEHOVERHEIGHT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000064);
  static const SPI_SETMOUSEHOVERHEIGHT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000065);
  static const SPI_GETMOUSEHOVERTIME =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000066);
  static const SPI_SETMOUSEHOVERTIME =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000067);
  static const SPI_GETWHEELSCROLLLINES =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000068);
  static const SPI_SETWHEELSCROLLLINES =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000069);
  static const SPI_GETMENUSHOWDELAY = SYSTEM_PARAMETERS_INFO_ACTION(0x0000006a);
  static const SPI_SETMENUSHOWDELAY = SYSTEM_PARAMETERS_INFO_ACTION(0x0000006b);
  static const SPI_GETWHEELSCROLLCHARS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000006c);
  static const SPI_SETWHEELSCROLLCHARS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000006d);
  static const SPI_GETSHOWIMEUI = SYSTEM_PARAMETERS_INFO_ACTION(0x0000006e);
  static const SPI_SETSHOWIMEUI = SYSTEM_PARAMETERS_INFO_ACTION(0x0000006f);
  static const SPI_GETMOUSESPEED = SYSTEM_PARAMETERS_INFO_ACTION(0x00000070);
  static const SPI_SETMOUSESPEED = SYSTEM_PARAMETERS_INFO_ACTION(0x00000071);
  static const SPI_GETSCREENSAVERRUNNING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000072);
  static const SPI_GETDESKWALLPAPER = SYSTEM_PARAMETERS_INFO_ACTION(0x00000073);
  static const SPI_GETAUDIODESCRIPTION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000074);
  static const SPI_SETAUDIODESCRIPTION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000075);
  static const SPI_GETSCREENSAVESECURE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000076);
  static const SPI_SETSCREENSAVESECURE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000077);
  static const SPI_GETHUNGAPPTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000078);
  static const SPI_SETHUNGAPPTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000079);
  static const SPI_GETWAITTOKILLTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007a);
  static const SPI_SETWAITTOKILLTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007b);
  static const SPI_GETWAITTOKILLSERVICETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007c);
  static const SPI_SETWAITTOKILLSERVICETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007d);
  static const SPI_GETMOUSEDOCKTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007e);
  static const SPI_SETMOUSEDOCKTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000007f);
  static const SPI_GETPENDOCKTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000080);
  static const SPI_SETPENDOCKTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000081);
  static const SPI_GETWINARRANGING = SYSTEM_PARAMETERS_INFO_ACTION(0x00000082);
  static const SPI_SETWINARRANGING = SYSTEM_PARAMETERS_INFO_ACTION(0x00000083);
  static const SPI_GETMOUSEDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000084);
  static const SPI_SETMOUSEDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000085);
  static const SPI_GETPENDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000086);
  static const SPI_SETPENDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000087);
  static const SPI_GETMOUSESIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000088);
  static const SPI_SETMOUSESIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00000089);
  static const SPI_GETPENSIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000008a);
  static const SPI_SETPENSIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000008b);
  static const SPI_GETDRAGFROMMAXIMIZE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000008c);
  static const SPI_SETDRAGFROMMAXIMIZE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000008d);
  static const SPI_GETSNAPSIZING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000008e);
  static const SPI_SETSNAPSIZING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000008f);
  static const SPI_GETDOCKMOVING = SYSTEM_PARAMETERS_INFO_ACTION(0x00000090);
  static const SPI_SETDOCKMOVING = SYSTEM_PARAMETERS_INFO_ACTION(0x00000091);
  static const SPI_GETTOUCHPREDICTIONPARAMETERS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000009c);
  static const SPI_SETTOUCHPREDICTIONPARAMETERS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000009d);
  static const SPI_GETLOGICALDPIOVERRIDE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000009e);
  static const SPI_SETLOGICALDPIOVERRIDE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000009f);
  static const SPI_GETMENURECT = SYSTEM_PARAMETERS_INFO_ACTION(0x000000a2);
  static const SPI_SETMENURECT = SYSTEM_PARAMETERS_INFO_ACTION(0x000000a3);
  static const SPI_GETACTIVEWINDOWTRACKING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001000);
  static const SPI_SETACTIVEWINDOWTRACKING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001001);
  static const SPI_GETMENUANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(0x00001002);
  static const SPI_SETMENUANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(0x00001003);
  static const SPI_GETCOMBOBOXANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001004);
  static const SPI_SETCOMBOBOXANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001005);
  static const SPI_GETLISTBOXSMOOTHSCROLLING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001006);
  static const SPI_SETLISTBOXSMOOTHSCROLLING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001007);
  static const SPI_GETGRADIENTCAPTIONS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001008);
  static const SPI_SETGRADIENTCAPTIONS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001009);
  static const SPI_GETKEYBOARDCUES = SYSTEM_PARAMETERS_INFO_ACTION(0x0000100a);
  static const SPI_SETKEYBOARDCUES = SYSTEM_PARAMETERS_INFO_ACTION(0x0000100b);
  static const SPI_GETMENUUNDERLINES =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000100a);
  static const SPI_SETMENUUNDERLINES =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000100b);
  static const SPI_GETACTIVEWNDTRKZORDER =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000100c);
  static const SPI_SETACTIVEWNDTRKZORDER =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000100d);
  static const SPI_GETHOTTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000100e);
  static const SPI_SETHOTTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000100f);
  static const SPI_GETMENUFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001012);
  static const SPI_SETMENUFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001013);
  static const SPI_GETSELECTIONFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001014);
  static const SPI_SETSELECTIONFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001015);
  static const SPI_GETTOOLTIPANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001016);
  static const SPI_SETTOOLTIPANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001017);
  static const SPI_GETTOOLTIPFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001018);
  static const SPI_SETTOOLTIPFADE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001019);
  static const SPI_GETCURSORSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(0x0000101a);
  static const SPI_SETCURSORSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(0x0000101b);
  static const SPI_GETMOUSESONAR = SYSTEM_PARAMETERS_INFO_ACTION(0x0000101c);
  static const SPI_SETMOUSESONAR = SYSTEM_PARAMETERS_INFO_ACTION(0x0000101d);
  static const SPI_GETMOUSECLICKLOCK =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000101e);
  static const SPI_SETMOUSECLICKLOCK =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000101f);
  static const SPI_GETMOUSEVANISH = SYSTEM_PARAMETERS_INFO_ACTION(0x00001020);
  static const SPI_SETMOUSEVANISH = SYSTEM_PARAMETERS_INFO_ACTION(0x00001021);
  static const SPI_GETFLATMENU = SYSTEM_PARAMETERS_INFO_ACTION(0x00001022);
  static const SPI_SETFLATMENU = SYSTEM_PARAMETERS_INFO_ACTION(0x00001023);
  static const SPI_GETDROPSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(0x00001024);
  static const SPI_SETDROPSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(0x00001025);
  static const SPI_GETBLOCKSENDINPUTRESETS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001026);
  static const SPI_SETBLOCKSENDINPUTRESETS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001027);
  static const SPI_GETUIEFFECTS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000103e);
  static const SPI_SETUIEFFECTS = SYSTEM_PARAMETERS_INFO_ACTION(0x0000103f);
  static const SPI_GETDISABLEOVERLAPPEDCONTENT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001040);
  static const SPI_SETDISABLEOVERLAPPEDCONTENT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001041);
  static const SPI_GETCLIENTAREAANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001042);
  static const SPI_SETCLIENTAREAANIMATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001043);
  static const SPI_GETCLEARTYPE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001048);
  static const SPI_SETCLEARTYPE = SYSTEM_PARAMETERS_INFO_ACTION(0x00001049);
  static const SPI_GETSPEECHRECOGNITION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000104a);
  static const SPI_SETSPEECHRECOGNITION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000104b);
  static const SPI_GETCARETBROWSING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000104c);
  static const SPI_SETCARETBROWSING = SYSTEM_PARAMETERS_INFO_ACTION(0x0000104d);
  static const SPI_GETTHREADLOCALINPUTSETTINGS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000104e);
  static const SPI_SETTHREADLOCALINPUTSETTINGS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000104f);
  static const SPI_GETSYSTEMLANGUAGEBAR =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001050);
  static const SPI_SETSYSTEMLANGUAGEBAR =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00001051);
  static const SPI_GETFOREGROUNDLOCKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002000);
  static const SPI_SETFOREGROUNDLOCKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002001);
  static const SPI_GETACTIVEWNDTRKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002002);
  static const SPI_SETACTIVEWNDTRKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002003);
  static const SPI_GETFOREGROUNDFLASHCOUNT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002004);
  static const SPI_SETFOREGROUNDFLASHCOUNT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002005);
  static const SPI_GETCARETWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(0x00002006);
  static const SPI_SETCARETWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(0x00002007);
  static const SPI_GETMOUSECLICKLOCKTIME =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002008);
  static const SPI_SETMOUSECLICKLOCKTIME =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002009);
  static const SPI_GETFONTSMOOTHINGTYPE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200a);
  static const SPI_SETFONTSMOOTHINGTYPE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200b);
  static const SPI_GETFONTSMOOTHINGCONTRAST =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200c);
  static const SPI_SETFONTSMOOTHINGCONTRAST =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200d);
  static const SPI_GETFOCUSBORDERWIDTH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200e);
  static const SPI_SETFOCUSBORDERWIDTH =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000200f);
  static const SPI_GETFOCUSBORDERHEIGHT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002010);
  static const SPI_SETFOCUSBORDERHEIGHT =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002011);
  static const SPI_GETFONTSMOOTHINGORIENTATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002012);
  static const SPI_SETFONTSMOOTHINGORIENTATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002013);
  static const SPI_GETMINIMUMHITRADIUS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002014);
  static const SPI_SETMINIMUMHITRADIUS =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002015);
  static const SPI_GETMESSAGEDURATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002016);
  static const SPI_SETMESSAGEDURATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002017);
  static const SPI_GETCONTACTVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002018);
  static const SPI_SETCONTACTVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002019);
  static const SPI_GETGESTUREVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201a);
  static const SPI_SETGESTUREVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201b);
  static const SPI_GETMOUSEWHEELROUTING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201c);
  static const SPI_SETMOUSEWHEELROUTING =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201d);
  static const SPI_GETPENVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201e);
  static const SPI_SETPENVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(0x0000201f);
  static const SPI_GETPENARBITRATIONTYPE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002020);
  static const SPI_SETPENARBITRATIONTYPE =
      SYSTEM_PARAMETERS_INFO_ACTION(0x00002021);
  static const SPI_GETCARETTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(0x00002022);
  static const SPI_SETCARETTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(0x00002023);
  static const SPI_GETHANDEDNESS = SYSTEM_PARAMETERS_INFO_ACTION(0x00002024);
  static const SPI_SETHANDEDNESS = SYSTEM_PARAMETERS_INFO_ACTION(0x00002025);
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(int _) implements int {
  static const SPIF_UPDATEINIFILE =
      SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(0x00000001);
  static const SPIF_SENDCHANGE =
      SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(0x00000002);
  static const SPIF_SENDWININICHANGE =
      SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(0x00000002);
}

/// {@category enum}
extension type const SYS_COLOR_INDEX(int _) implements int {
  static const COLOR_SCROLLBAR = SYS_COLOR_INDEX(0x00000000);
  static const COLOR_BACKGROUND = SYS_COLOR_INDEX(0x00000001);
  static const COLOR_ACTIVECAPTION = SYS_COLOR_INDEX(0x00000002);
  static const COLOR_INACTIVECAPTION = SYS_COLOR_INDEX(0x00000003);
  static const COLOR_MENU = SYS_COLOR_INDEX(0x00000004);
  static const COLOR_WINDOW = SYS_COLOR_INDEX(0x00000005);
  static const COLOR_WINDOWFRAME = SYS_COLOR_INDEX(0x00000006);
  static const COLOR_MENUTEXT = SYS_COLOR_INDEX(0x00000007);
  static const COLOR_WINDOWTEXT = SYS_COLOR_INDEX(0x00000008);
  static const COLOR_CAPTIONTEXT = SYS_COLOR_INDEX(0x00000009);
  static const COLOR_ACTIVEBORDER = SYS_COLOR_INDEX(0x0000000a);
  static const COLOR_INACTIVEBORDER = SYS_COLOR_INDEX(0x0000000b);
  static const COLOR_APPWORKSPACE = SYS_COLOR_INDEX(0x0000000c);
  static const COLOR_HIGHLIGHT = SYS_COLOR_INDEX(0x0000000d);
  static const COLOR_HIGHLIGHTTEXT = SYS_COLOR_INDEX(0x0000000e);
  static const COLOR_BTNFACE = SYS_COLOR_INDEX(0x0000000f);
  static const COLOR_BTNSHADOW = SYS_COLOR_INDEX(0x00000010);
  static const COLOR_GRAYTEXT = SYS_COLOR_INDEX(0x00000011);
  static const COLOR_BTNTEXT = SYS_COLOR_INDEX(0x00000012);
  static const COLOR_INACTIVECAPTIONTEXT = SYS_COLOR_INDEX(0x00000013);
  static const COLOR_BTNHIGHLIGHT = SYS_COLOR_INDEX(0x00000014);
  static const COLOR_3DDKSHADOW = SYS_COLOR_INDEX(0x00000015);
  static const COLOR_3DLIGHT = SYS_COLOR_INDEX(0x00000016);
  static const COLOR_INFOTEXT = SYS_COLOR_INDEX(0x00000017);
  static const COLOR_INFOBK = SYS_COLOR_INDEX(0x00000018);
  static const COLOR_HOTLIGHT = SYS_COLOR_INDEX(0x0000001a);
  static const COLOR_GRADIENTACTIVECAPTION = SYS_COLOR_INDEX(0x0000001b);
  static const COLOR_GRADIENTINACTIVECAPTION = SYS_COLOR_INDEX(0x0000001c);
  static const COLOR_MENUHILIGHT = SYS_COLOR_INDEX(0x0000001d);
  static const COLOR_MENUBAR = SYS_COLOR_INDEX(0x0000001e);
  static const COLOR_DESKTOP = SYS_COLOR_INDEX(0x00000001);
  static const COLOR_3DFACE = SYS_COLOR_INDEX(0x0000000f);
  static const COLOR_3DSHADOW = SYS_COLOR_INDEX(0x00000010);
  static const COLOR_3DHIGHLIGHT = SYS_COLOR_INDEX(0x00000014);
  static const COLOR_3DHILIGHT = SYS_COLOR_INDEX(0x00000014);
  static const COLOR_BTNHILIGHT = SYS_COLOR_INDEX(0x00000014);
}

/// {@category enum}
extension type const ScrollAmount(int _) implements int {
  static const ScrollAmount_LargeDecrement = ScrollAmount(0x00000000);
  static const ScrollAmount_SmallDecrement = ScrollAmount(0x00000001);
  static const ScrollAmount_NoAmount = ScrollAmount(0x00000002);
  static const ScrollAmount_LargeIncrement = ScrollAmount(0x00000003);
  static const ScrollAmount_SmallIncrement = ScrollAmount(0x00000004);
}

/// {@category enum}
extension type const SensorState(int _) implements int {
  static const SENSOR_STATE_MIN = SensorState(0x00000000);
  static const SENSOR_STATE_READY = SensorState(0x00000000);
  static const SENSOR_STATE_NOT_AVAILABLE = SensorState(0x00000001);
  static const SENSOR_STATE_NO_DATA = SensorState(0x00000002);
  static const SENSOR_STATE_INITIALIZING = SensorState(0x00000003);
  static const SENSOR_STATE_ACCESS_DENIED = SensorState(0x00000004);
  static const SENSOR_STATE_ERROR = SensorState(0x00000005);
  static const SENSOR_STATE_MAX = SensorState(0x00000005);
}

/// {@category enum}
extension type const SpeechAudioFormatType(int _) implements int {
  static const SAFTDefault = SpeechAudioFormatType(0xffffffff);
  static const SAFTNoAssignedFormat = SpeechAudioFormatType(0x00000000);
  static const SAFTText = SpeechAudioFormatType(0x00000001);
  static const SAFTNonStandardFormat = SpeechAudioFormatType(0x00000002);
  static const SAFTExtendedAudioFormat = SpeechAudioFormatType(0x00000003);
  static const SAFT8kHz8BitMono = SpeechAudioFormatType(0x00000004);
  static const SAFT8kHz8BitStereo = SpeechAudioFormatType(0x00000005);
  static const SAFT8kHz16BitMono = SpeechAudioFormatType(0x00000006);
  static const SAFT8kHz16BitStereo = SpeechAudioFormatType(0x00000007);
  static const SAFT11kHz8BitMono = SpeechAudioFormatType(0x00000008);
  static const SAFT11kHz8BitStereo = SpeechAudioFormatType(0x00000009);
  static const SAFT11kHz16BitMono = SpeechAudioFormatType(0x0000000a);
  static const SAFT11kHz16BitStereo = SpeechAudioFormatType(0x0000000b);
  static const SAFT12kHz8BitMono = SpeechAudioFormatType(0x0000000c);
  static const SAFT12kHz8BitStereo = SpeechAudioFormatType(0x0000000d);
  static const SAFT12kHz16BitMono = SpeechAudioFormatType(0x0000000e);
  static const SAFT12kHz16BitStereo = SpeechAudioFormatType(0x0000000f);
  static const SAFT16kHz8BitMono = SpeechAudioFormatType(0x00000010);
  static const SAFT16kHz8BitStereo = SpeechAudioFormatType(0x00000011);
  static const SAFT16kHz16BitMono = SpeechAudioFormatType(0x00000012);
  static const SAFT16kHz16BitStereo = SpeechAudioFormatType(0x00000013);
  static const SAFT22kHz8BitMono = SpeechAudioFormatType(0x00000014);
  static const SAFT22kHz8BitStereo = SpeechAudioFormatType(0x00000015);
  static const SAFT22kHz16BitMono = SpeechAudioFormatType(0x00000016);
  static const SAFT22kHz16BitStereo = SpeechAudioFormatType(0x00000017);
  static const SAFT24kHz8BitMono = SpeechAudioFormatType(0x00000018);
  static const SAFT24kHz8BitStereo = SpeechAudioFormatType(0x00000019);
  static const SAFT24kHz16BitMono = SpeechAudioFormatType(0x0000001a);
  static const SAFT24kHz16BitStereo = SpeechAudioFormatType(0x0000001b);
  static const SAFT32kHz8BitMono = SpeechAudioFormatType(0x0000001c);
  static const SAFT32kHz8BitStereo = SpeechAudioFormatType(0x0000001d);
  static const SAFT32kHz16BitMono = SpeechAudioFormatType(0x0000001e);
  static const SAFT32kHz16BitStereo = SpeechAudioFormatType(0x0000001f);
  static const SAFT44kHz8BitMono = SpeechAudioFormatType(0x00000020);
  static const SAFT44kHz8BitStereo = SpeechAudioFormatType(0x00000021);
  static const SAFT44kHz16BitMono = SpeechAudioFormatType(0x00000022);
  static const SAFT44kHz16BitStereo = SpeechAudioFormatType(0x00000023);
  static const SAFT48kHz8BitMono = SpeechAudioFormatType(0x00000024);
  static const SAFT48kHz8BitStereo = SpeechAudioFormatType(0x00000025);
  static const SAFT48kHz16BitMono = SpeechAudioFormatType(0x00000026);
  static const SAFT48kHz16BitStereo = SpeechAudioFormatType(0x00000027);
  static const SAFTTrueSpeech_8kHz1BitMono = SpeechAudioFormatType(0x00000028);
  static const SAFTCCITT_ALaw_8kHzMono = SpeechAudioFormatType(0x00000029);
  static const SAFTCCITT_ALaw_8kHzStereo = SpeechAudioFormatType(0x0000002a);
  static const SAFTCCITT_ALaw_11kHzMono = SpeechAudioFormatType(0x0000002b);
  static const SAFTCCITT_ALaw_11kHzStereo = SpeechAudioFormatType(0x0000002c);
  static const SAFTCCITT_ALaw_22kHzMono = SpeechAudioFormatType(0x0000002d);
  static const SAFTCCITT_ALaw_22kHzStereo = SpeechAudioFormatType(0x0000002e);
  static const SAFTCCITT_ALaw_44kHzMono = SpeechAudioFormatType(0x0000002f);
  static const SAFTCCITT_ALaw_44kHzStereo = SpeechAudioFormatType(0x00000030);
  static const SAFTCCITT_uLaw_8kHzMono = SpeechAudioFormatType(0x00000031);
  static const SAFTCCITT_uLaw_8kHzStereo = SpeechAudioFormatType(0x00000032);
  static const SAFTCCITT_uLaw_11kHzMono = SpeechAudioFormatType(0x00000033);
  static const SAFTCCITT_uLaw_11kHzStereo = SpeechAudioFormatType(0x00000034);
  static const SAFTCCITT_uLaw_22kHzMono = SpeechAudioFormatType(0x00000035);
  static const SAFTCCITT_uLaw_22kHzStereo = SpeechAudioFormatType(0x00000036);
  static const SAFTCCITT_uLaw_44kHzMono = SpeechAudioFormatType(0x00000037);
  static const SAFTCCITT_uLaw_44kHzStereo = SpeechAudioFormatType(0x00000038);
  static const SAFTADPCM_8kHzMono = SpeechAudioFormatType(0x00000039);
  static const SAFTADPCM_8kHzStereo = SpeechAudioFormatType(0x0000003a);
  static const SAFTADPCM_11kHzMono = SpeechAudioFormatType(0x0000003b);
  static const SAFTADPCM_11kHzStereo = SpeechAudioFormatType(0x0000003c);
  static const SAFTADPCM_22kHzMono = SpeechAudioFormatType(0x0000003d);
  static const SAFTADPCM_22kHzStereo = SpeechAudioFormatType(0x0000003e);
  static const SAFTADPCM_44kHzMono = SpeechAudioFormatType(0x0000003f);
  static const SAFTADPCM_44kHzStereo = SpeechAudioFormatType(0x00000040);
  static const SAFTGSM610_8kHzMono = SpeechAudioFormatType(0x00000041);
  static const SAFTGSM610_11kHzMono = SpeechAudioFormatType(0x00000042);
  static const SAFTGSM610_22kHzMono = SpeechAudioFormatType(0x00000043);
  static const SAFTGSM610_44kHzMono = SpeechAudioFormatType(0x00000044);
}

/// {@category enum}
extension type const SpeechRunState(int _) implements int {
  static const SRSEDone = SpeechRunState(0x00000001);
  static const SRSEIsSpeaking = SpeechRunState(0x00000002);
}

/// {@category enum}
extension type const SpeechStreamSeekPositionType(int _) implements int {
  static const SSSPTRelativeToStart = SpeechStreamSeekPositionType(0x00000000);
  static const SSSPTRelativeToCurrentPosition =
      SpeechStreamSeekPositionType(0x00000001);
  static const SSSPTRelativeToEnd = SpeechStreamSeekPositionType(0x00000002);
}

/// {@category enum}
extension type const SpeechTokenContext(int _) implements int {
  static const STCInprocServer = SpeechTokenContext(0x00000001);
  static const STCInprocHandler = SpeechTokenContext(0x00000002);
  static const STCLocalServer = SpeechTokenContext(0x00000004);
  static const STCRemoteServer = SpeechTokenContext(0x00000010);
  static const STCAll = SpeechTokenContext(0x00000017);
}

/// {@category enum}
extension type const SpeechTokenShellFolder(int _) implements int {
  static const STSF_AppData = SpeechTokenShellFolder(0x0000001a);
  static const STSF_LocalAppData = SpeechTokenShellFolder(0x0000001c);
  static const STSF_CommonAppData = SpeechTokenShellFolder(0x00000023);
  static const STSF_FlagCreate = SpeechTokenShellFolder(0x00008000);
}

/// {@category enum}
extension type const SpeechVoiceEvents(int _) implements int {
  static const SVEStartInputStream = SpeechVoiceEvents(0x00000002);
  static const SVEEndInputStream = SpeechVoiceEvents(0x00000004);
  static const SVEVoiceChange = SpeechVoiceEvents(0x00000008);
  static const SVEBookmark = SpeechVoiceEvents(0x00000010);
  static const SVEWordBoundary = SpeechVoiceEvents(0x00000020);
  static const SVEPhoneme = SpeechVoiceEvents(0x00000040);
  static const SVESentenceBoundary = SpeechVoiceEvents(0x00000080);
  static const SVEViseme = SpeechVoiceEvents(0x00000100);
  static const SVEAudioLevel = SpeechVoiceEvents(0x00000200);
  static const SVEPrivate = SpeechVoiceEvents(0x00008000);
  static const SVEAllEvents = SpeechVoiceEvents(0x000083fe);
}

/// {@category enum}
extension type const SpeechVoicePriority(int _) implements int {
  static const SVPNormal = SpeechVoicePriority(0x00000000);
  static const SVPAlert = SpeechVoicePriority(0x00000001);
  static const SVPOver = SpeechVoicePriority(0x00000002);
}

/// {@category enum}
extension type const SpeechVoiceSpeakFlags(int _) implements int {
  static const SVSFDefault = SpeechVoiceSpeakFlags(0x00000000);
  static const SVSFlagsAsync = SpeechVoiceSpeakFlags(0x00000001);
  static const SVSFPurgeBeforeSpeak = SpeechVoiceSpeakFlags(0x00000002);
  static const SVSFIsFilename = SpeechVoiceSpeakFlags(0x00000004);
  static const SVSFIsXML = SpeechVoiceSpeakFlags(0x00000008);
  static const SVSFIsNotXML = SpeechVoiceSpeakFlags(0x00000010);
  static const SVSFPersistXML = SpeechVoiceSpeakFlags(0x00000020);
  static const SVSFNLPSpeakPunc = SpeechVoiceSpeakFlags(0x00000040);
  static const SVSFParseSapi = SpeechVoiceSpeakFlags(0x00000080);
  static const SVSFParseSsml = SpeechVoiceSpeakFlags(0x00000100);
  static const SVSFParseAutodetect = SpeechVoiceSpeakFlags(0x00000000);
  static const SVSFNLPMask = SpeechVoiceSpeakFlags(0x00000040);
  static const SVSFParseMask = SpeechVoiceSpeakFlags(0x00000180);
  static const SVSFVoiceMask = SpeechVoiceSpeakFlags(0x000001ff);
  static const SVSFUnusedFlags = SpeechVoiceSpeakFlags(0xfffffe00);
}

/// {@category enum}
extension type const SupportedTextSelection(int _) implements int {
  static const SupportedTextSelection_None = SupportedTextSelection(0x00000000);
  static const SupportedTextSelection_Single =
      SupportedTextSelection(0x00000001);
  static const SupportedTextSelection_Multiple =
      SupportedTextSelection(0x00000002);
}

/// {@category enum}
extension type const SynchronizedInputType(int _) implements int {
  static const SynchronizedInputType_KeyUp = SynchronizedInputType(0x00000001);
  static const SynchronizedInputType_KeyDown =
      SynchronizedInputType(0x00000002);
  static const SynchronizedInputType_LeftMouseUp =
      SynchronizedInputType(0x00000004);
  static const SynchronizedInputType_LeftMouseDown =
      SynchronizedInputType(0x00000008);
  static const SynchronizedInputType_RightMouseUp =
      SynchronizedInputType(0x00000010);
  static const SynchronizedInputType_RightMouseDown =
      SynchronizedInputType(0x00000020);
}

/// {@category enum}
extension type const TASKDIALOG_COMMON_BUTTON_FLAGS(int _) implements int {
  static const TDCBF_OK_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000001);
  static const TDCBF_YES_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000002);
  static const TDCBF_NO_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000004);
  static const TDCBF_CANCEL_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000008);
  static const TDCBF_RETRY_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000010);
  static const TDCBF_CLOSE_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00000020);
  static const TDCBF_ABORT_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00010000);
  static const TDCBF_IGNORE_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00020000);
  static const TDCBF_TRYAGAIN_BUTTON =
      TASKDIALOG_COMMON_BUTTON_FLAGS(0x00040000);
  static const TDCBF_CONTINUE_BUTTON =
      TASKDIALOG_COMMON_BUTTON_FLAGS(0x00080000);
  static const TDCBF_HELP_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(0x00100000);
}

/// {@category enum}
extension type const TASKDIALOG_FLAGS(int _) implements int {
  static const TDF_ENABLE_HYPERLINKS = TASKDIALOG_FLAGS(0x00000001);
  static const TDF_USE_HICON_MAIN = TASKDIALOG_FLAGS(0x00000002);
  static const TDF_USE_HICON_FOOTER = TASKDIALOG_FLAGS(0x00000004);
  static const TDF_ALLOW_DIALOG_CANCELLATION = TASKDIALOG_FLAGS(0x00000008);
  static const TDF_USE_COMMAND_LINKS = TASKDIALOG_FLAGS(0x00000010);
  static const TDF_USE_COMMAND_LINKS_NO_ICON = TASKDIALOG_FLAGS(0x00000020);
  static const TDF_EXPAND_FOOTER_AREA = TASKDIALOG_FLAGS(0x00000040);
  static const TDF_EXPANDED_BY_DEFAULT = TASKDIALOG_FLAGS(0x00000080);
  static const TDF_VERIFICATION_FLAG_CHECKED = TASKDIALOG_FLAGS(0x00000100);
  static const TDF_SHOW_PROGRESS_BAR = TASKDIALOG_FLAGS(0x00000200);
  static const TDF_SHOW_MARQUEE_PROGRESS_BAR = TASKDIALOG_FLAGS(0x00000400);
  static const TDF_CALLBACK_TIMER = TASKDIALOG_FLAGS(0x00000800);
  static const TDF_POSITION_RELATIVE_TO_WINDOW = TASKDIALOG_FLAGS(0x00001000);
  static const TDF_RTL_LAYOUT = TASKDIALOG_FLAGS(0x00002000);
  static const TDF_NO_DEFAULT_RADIO_BUTTON = TASKDIALOG_FLAGS(0x00004000);
  static const TDF_CAN_BE_MINIMIZED = TASKDIALOG_FLAGS(0x00008000);
  static const TDF_NO_SET_FOREGROUND = TASKDIALOG_FLAGS(0x00010000);
  static const TDF_SIZE_TO_CONTENT = TASKDIALOG_FLAGS(0x01000000);
}

/// {@category enum}
extension type const THEMESIZE(int _) implements int {
  static const TS_MIN = THEMESIZE(0x00000000);
  static const TS_TRUE = THEMESIZE(0x00000001);
  static const TS_DRAW = THEMESIZE(0x00000002);
}

/// {@category enum}
extension type const THREAD_CREATION_FLAGS(int _) implements int {
  static const THREAD_CREATE_RUN_IMMEDIATELY =
      THREAD_CREATION_FLAGS(0x00000000);
  static const THREAD_CREATE_SUSPENDED = THREAD_CREATION_FLAGS(0x00000004);
  static const STACK_SIZE_PARAM_IS_A_RESERVATION =
      THREAD_CREATION_FLAGS(0x00010000);
}

/// {@category enum}
extension type const THREAD_ERROR_MODE(int _) implements int {
  static const SEM_ALL_ERRORS = THREAD_ERROR_MODE(0x00000000);
  static const SEM_FAILCRITICALERRORS = THREAD_ERROR_MODE(0x00000001);
  static const SEM_NOGPFAULTERRORBOX = THREAD_ERROR_MODE(0x00000002);
  static const SEM_NOOPENFILEERRORBOX = THREAD_ERROR_MODE(0x00008000);
  static const SEM_NOALIGNMENTFAULTEXCEPT = THREAD_ERROR_MODE(0x00000004);
}

/// {@category enum}
extension type const TILE_WINDOWS_HOW(int _) implements int {
  static const MDITILE_HORIZONTAL = TILE_WINDOWS_HOW(0x00000001);
  static const MDITILE_VERTICAL = TILE_WINDOWS_HOW(0x00000000);
}

/// {@category enum}
extension type const TMPF_FLAGS(int _) implements int {
  static const TMPF_FIXED_PITCH = TMPF_FLAGS(0x01);
  static const TMPF_VECTOR = TMPF_FLAGS(0x02);
  static const TMPF_DEVICE = TMPF_FLAGS(0x08);
  static const TMPF_TRUETYPE = TMPF_FLAGS(0x04);
}

/// {@category enum}
extension type const TOKEN_ACCESS_MASK(int _) implements int {
  static const TOKEN_DELETE = TOKEN_ACCESS_MASK(0x00010000);
  static const TOKEN_READ_CONTROL = TOKEN_ACCESS_MASK(0x00020000);
  static const TOKEN_WRITE_DAC = TOKEN_ACCESS_MASK(0x00040000);
  static const TOKEN_WRITE_OWNER = TOKEN_ACCESS_MASK(0x00080000);
  static const TOKEN_ACCESS_SYSTEM_SECURITY = TOKEN_ACCESS_MASK(0x01000000);
  static const TOKEN_ASSIGN_PRIMARY = TOKEN_ACCESS_MASK(0x00000001);
  static const TOKEN_DUPLICATE = TOKEN_ACCESS_MASK(0x00000002);
  static const TOKEN_IMPERSONATE = TOKEN_ACCESS_MASK(0x00000004);
  static const TOKEN_QUERY = TOKEN_ACCESS_MASK(0x00000008);
  static const TOKEN_QUERY_SOURCE = TOKEN_ACCESS_MASK(0x00000010);
  static const TOKEN_ADJUST_PRIVILEGES = TOKEN_ACCESS_MASK(0x00000020);
  static const TOKEN_ADJUST_GROUPS = TOKEN_ACCESS_MASK(0x00000040);
  static const TOKEN_ADJUST_DEFAULT = TOKEN_ACCESS_MASK(0x00000080);
  static const TOKEN_ADJUST_SESSIONID = TOKEN_ACCESS_MASK(0x00000100);
  static const TOKEN_READ = TOKEN_ACCESS_MASK(0x00020008);
  static const TOKEN_WRITE = TOKEN_ACCESS_MASK(0x000200e0);
  static const TOKEN_EXECUTE = TOKEN_ACCESS_MASK(0x00020000);
  static const TOKEN_TRUST_CONSTRAINT_MASK = TOKEN_ACCESS_MASK(0x00020018);
  static const TOKEN_ACCESS_PSEUDO_HANDLE_WIN8 = TOKEN_ACCESS_MASK(0x00000018);
  static const TOKEN_ACCESS_PSEUDO_HANDLE = TOKEN_ACCESS_MASK(0x00000018);
  static const TOKEN_ALL_ACCESS = TOKEN_ACCESS_MASK(0x000f01ff);
}

/// {@category enum}
extension type const TOKEN_INFORMATION_CLASS(int _) implements int {
  static const TokenUser = TOKEN_INFORMATION_CLASS(0x00000001);
  static const TokenGroups = TOKEN_INFORMATION_CLASS(0x00000002);
  static const TokenPrivileges = TOKEN_INFORMATION_CLASS(0x00000003);
  static const TokenOwner = TOKEN_INFORMATION_CLASS(0x00000004);
  static const TokenPrimaryGroup = TOKEN_INFORMATION_CLASS(0x00000005);
  static const TokenDefaultDacl = TOKEN_INFORMATION_CLASS(0x00000006);
  static const TokenSource = TOKEN_INFORMATION_CLASS(0x00000007);
  static const TokenType = TOKEN_INFORMATION_CLASS(0x00000008);
  static const TokenImpersonationLevel = TOKEN_INFORMATION_CLASS(0x00000009);
  static const TokenStatistics = TOKEN_INFORMATION_CLASS(0x0000000a);
  static const TokenRestrictedSids = TOKEN_INFORMATION_CLASS(0x0000000b);
  static const TokenSessionId = TOKEN_INFORMATION_CLASS(0x0000000c);
  static const TokenGroupsAndPrivileges = TOKEN_INFORMATION_CLASS(0x0000000d);
  static const TokenSessionReference = TOKEN_INFORMATION_CLASS(0x0000000e);
  static const TokenSandBoxInert = TOKEN_INFORMATION_CLASS(0x0000000f);
  static const TokenAuditPolicy = TOKEN_INFORMATION_CLASS(0x00000010);
  static const TokenOrigin = TOKEN_INFORMATION_CLASS(0x00000011);
  static const TokenElevationType = TOKEN_INFORMATION_CLASS(0x00000012);
  static const TokenLinkedToken = TOKEN_INFORMATION_CLASS(0x00000013);
  static const TokenElevation = TOKEN_INFORMATION_CLASS(0x00000014);
  static const TokenHasRestrictions = TOKEN_INFORMATION_CLASS(0x00000015);
  static const TokenAccessInformation = TOKEN_INFORMATION_CLASS(0x00000016);
  static const TokenVirtualizationAllowed = TOKEN_INFORMATION_CLASS(0x00000017);
  static const TokenVirtualizationEnabled = TOKEN_INFORMATION_CLASS(0x00000018);
  static const TokenIntegrityLevel = TOKEN_INFORMATION_CLASS(0x00000019);
  static const TokenUIAccess = TOKEN_INFORMATION_CLASS(0x0000001a);
  static const TokenMandatoryPolicy = TOKEN_INFORMATION_CLASS(0x0000001b);
  static const TokenLogonSid = TOKEN_INFORMATION_CLASS(0x0000001c);
  static const TokenIsAppContainer = TOKEN_INFORMATION_CLASS(0x0000001d);
  static const TokenCapabilities = TOKEN_INFORMATION_CLASS(0x0000001e);
  static const TokenAppContainerSid = TOKEN_INFORMATION_CLASS(0x0000001f);
  static const TokenAppContainerNumber = TOKEN_INFORMATION_CLASS(0x00000020);
  static const TokenUserClaimAttributes = TOKEN_INFORMATION_CLASS(0x00000021);
  static const TokenDeviceClaimAttributes = TOKEN_INFORMATION_CLASS(0x00000022);
  static const TokenRestrictedUserClaimAttributes =
      TOKEN_INFORMATION_CLASS(0x00000023);
  static const TokenRestrictedDeviceClaimAttributes =
      TOKEN_INFORMATION_CLASS(0x00000024);
  static const TokenDeviceGroups = TOKEN_INFORMATION_CLASS(0x00000025);
  static const TokenRestrictedDeviceGroups =
      TOKEN_INFORMATION_CLASS(0x00000026);
  static const TokenSecurityAttributes = TOKEN_INFORMATION_CLASS(0x00000027);
  static const TokenIsRestricted = TOKEN_INFORMATION_CLASS(0x00000028);
  static const TokenProcessTrustLevel = TOKEN_INFORMATION_CLASS(0x00000029);
  static const TokenPrivateNameSpace = TOKEN_INFORMATION_CLASS(0x0000002a);
  static const TokenSingletonAttributes = TOKEN_INFORMATION_CLASS(0x0000002b);
  static const TokenBnoIsolation = TOKEN_INFORMATION_CLASS(0x0000002c);
  static const TokenChildProcessFlags = TOKEN_INFORMATION_CLASS(0x0000002d);
  static const TokenIsLessPrivilegedAppContainer =
      TOKEN_INFORMATION_CLASS(0x0000002e);
  static const TokenIsSandboxed = TOKEN_INFORMATION_CLASS(0x0000002f);
  static const TokenIsAppSilo = TOKEN_INFORMATION_CLASS(0x00000030);
  static const MaxTokenInfoClass = TOKEN_INFORMATION_CLASS(0x00000031);
}

/// {@category enum}
extension type const TOUCHEVENTF_FLAGS(int _) implements int {
  static const TOUCHEVENTF_MOVE = TOUCHEVENTF_FLAGS(0x00000001);
  static const TOUCHEVENTF_DOWN = TOUCHEVENTF_FLAGS(0x00000002);
  static const TOUCHEVENTF_UP = TOUCHEVENTF_FLAGS(0x00000004);
  static const TOUCHEVENTF_INRANGE = TOUCHEVENTF_FLAGS(0x00000008);
  static const TOUCHEVENTF_PRIMARY = TOUCHEVENTF_FLAGS(0x00000010);
  static const TOUCHEVENTF_NOCOALESCE = TOUCHEVENTF_FLAGS(0x00000020);
  static const TOUCHEVENTF_PEN = TOUCHEVENTF_FLAGS(0x00000040);
  static const TOUCHEVENTF_PALM = TOUCHEVENTF_FLAGS(0x00000080);
}

/// {@category enum}
extension type const TOUCHINPUTMASKF_MASK(int _) implements int {
  static const TOUCHINPUTMASKF_TIMEFROMSYSTEM =
      TOUCHINPUTMASKF_MASK(0x00000001);
  static const TOUCHINPUTMASKF_EXTRAINFO = TOUCHINPUTMASKF_MASK(0x00000002);
  static const TOUCHINPUTMASKF_CONTACTAREA = TOUCHINPUTMASKF_MASK(0x00000004);
}

/// {@category enum}
extension type const TRACK_POPUP_MENU_FLAGS(int _) implements int {
  static const TPM_LEFTBUTTON = TRACK_POPUP_MENU_FLAGS(0x00000000);
  static const TPM_RIGHTBUTTON = TRACK_POPUP_MENU_FLAGS(0x00000002);
  static const TPM_LEFTALIGN = TRACK_POPUP_MENU_FLAGS(0x00000000);
  static const TPM_CENTERALIGN = TRACK_POPUP_MENU_FLAGS(0x00000004);
  static const TPM_RIGHTALIGN = TRACK_POPUP_MENU_FLAGS(0x00000008);
  static const TPM_TOPALIGN = TRACK_POPUP_MENU_FLAGS(0x00000000);
  static const TPM_VCENTERALIGN = TRACK_POPUP_MENU_FLAGS(0x00000010);
  static const TPM_BOTTOMALIGN = TRACK_POPUP_MENU_FLAGS(0x00000020);
  static const TPM_HORIZONTAL = TRACK_POPUP_MENU_FLAGS(0x00000000);
  static const TPM_VERTICAL = TRACK_POPUP_MENU_FLAGS(0x00000040);
  static const TPM_NONOTIFY = TRACK_POPUP_MENU_FLAGS(0x00000080);
  static const TPM_RETURNCMD = TRACK_POPUP_MENU_FLAGS(0x00000100);
  static const TPM_RECURSE = TRACK_POPUP_MENU_FLAGS(0x00000001);
  static const TPM_HORPOSANIMATION = TRACK_POPUP_MENU_FLAGS(0x00000400);
  static const TPM_HORNEGANIMATION = TRACK_POPUP_MENU_FLAGS(0x00000800);
  static const TPM_VERPOSANIMATION = TRACK_POPUP_MENU_FLAGS(0x00001000);
  static const TPM_VERNEGANIMATION = TRACK_POPUP_MENU_FLAGS(0x00002000);
  static const TPM_NOANIMATION = TRACK_POPUP_MENU_FLAGS(0x00004000);
  static const TPM_LAYOUTRTL = TRACK_POPUP_MENU_FLAGS(0x00008000);
  static const TPM_WORKAREA = TRACK_POPUP_MENU_FLAGS(0x00010000);
}

/// {@category enum}
extension type const TUNNEL_TYPE(int _) implements int {
  static const TUNNEL_TYPE_NONE = TUNNEL_TYPE(0x00000000);
  static const TUNNEL_TYPE_OTHER = TUNNEL_TYPE(0x00000001);
  static const TUNNEL_TYPE_DIRECT = TUNNEL_TYPE(0x00000002);
  static const TUNNEL_TYPE_6TO4 = TUNNEL_TYPE(0x0000000b);
  static const TUNNEL_TYPE_ISATAP = TUNNEL_TYPE(0x0000000d);
  static const TUNNEL_TYPE_TEREDO = TUNNEL_TYPE(0x0000000e);
  static const TUNNEL_TYPE_IPHTTPS = TUNNEL_TYPE(0x0000000f);
}

/// {@category enum}
extension type const TYPEKIND(int _) implements int {
  static const TKIND_ENUM = TYPEKIND(0x00000000);
  static const TKIND_RECORD = TYPEKIND(0x00000001);
  static const TKIND_MODULE = TYPEKIND(0x00000002);
  static const TKIND_INTERFACE = TYPEKIND(0x00000003);
  static const TKIND_DISPATCH = TYPEKIND(0x00000004);
  static const TKIND_COCLASS = TYPEKIND(0x00000005);
  static const TKIND_ALIAS = TYPEKIND(0x00000006);
  static const TKIND_UNION = TYPEKIND(0x00000007);
  static const TKIND_MAX = TYPEKIND(0x00000008);
}

/// {@category enum}
extension type const TextEditChangeType(int _) implements int {
  static const TextEditChangeType_None = TextEditChangeType(0x00000000);
  static const TextEditChangeType_AutoCorrect = TextEditChangeType(0x00000001);
  static const TextEditChangeType_Composition = TextEditChangeType(0x00000002);
  static const TextEditChangeType_CompositionFinalized =
      TextEditChangeType(0x00000003);
  static const TextEditChangeType_AutoComplete = TextEditChangeType(0x00000004);
}

/// {@category enum}
extension type const TextPatternRangeEndpoint(int _) implements int {
  static const TextPatternRangeEndpoint_Start =
      TextPatternRangeEndpoint(0x00000000);
  static const TextPatternRangeEndpoint_End =
      TextPatternRangeEndpoint(0x00000001);
}

/// {@category enum}
extension type const TextUnit(int _) implements int {
  static const TextUnit_Character = TextUnit(0x00000000);
  static const TextUnit_Format = TextUnit(0x00000001);
  static const TextUnit_Word = TextUnit(0x00000002);
  static const TextUnit_Line = TextUnit(0x00000003);
  static const TextUnit_Paragraph = TextUnit(0x00000004);
  static const TextUnit_Page = TextUnit(0x00000005);
  static const TextUnit_Document = TextUnit(0x00000006);
}

/// {@category enum}
extension type const ToggleState(int _) implements int {
  static const ToggleState_Off = ToggleState(0x00000000);
  static const ToggleState_On = ToggleState(0x00000001);
  static const ToggleState_Indeterminate = ToggleState(0x00000002);
}

/// {@category enum}
extension type const TreeScope(int _) implements int {
  static const TreeScope_None = TreeScope(0x00000000);
  static const TreeScope_Element = TreeScope(0x00000001);
  static const TreeScope_Children = TreeScope(0x00000002);
  static const TreeScope_Descendants = TreeScope(0x00000004);
  static const TreeScope_Parent = TreeScope(0x00000008);
  static const TreeScope_Ancestors = TreeScope(0x00000010);
  static const TreeScope_Subtree = TreeScope(0x00000007);
}

/// {@category enum}
extension type const TreeTraversalOptions(int _) implements int {
  static const TreeTraversalOptions_Default = TreeTraversalOptions(0x00000000);
  static const TreeTraversalOptions_PostOrder =
      TreeTraversalOptions(0x00000001);
  static const TreeTraversalOptions_LastToFirstOrder =
      TreeTraversalOptions(0x00000002);
}

/// {@category enum}
extension type const TrustLevel(int _) implements int {
  static const BaseTrust = TrustLevel(0x00000000);
  static const PartialTrust = TrustLevel(0x00000001);
  static const FullTrust = TrustLevel(0x00000002);
}

/// {@category enum}
extension type const UIA_ANNOTATIONTYPE(int _) implements int {
  static const AnnotationType_Unknown = UIA_ANNOTATIONTYPE(0x0000ea60);
  static const AnnotationType_SpellingError = UIA_ANNOTATIONTYPE(0x0000ea61);
  static const AnnotationType_GrammarError = UIA_ANNOTATIONTYPE(0x0000ea62);
  static const AnnotationType_Comment = UIA_ANNOTATIONTYPE(0x0000ea63);
  static const AnnotationType_FormulaError = UIA_ANNOTATIONTYPE(0x0000ea64);
  static const AnnotationType_TrackChanges = UIA_ANNOTATIONTYPE(0x0000ea65);
  static const AnnotationType_Header = UIA_ANNOTATIONTYPE(0x0000ea66);
  static const AnnotationType_Footer = UIA_ANNOTATIONTYPE(0x0000ea67);
  static const AnnotationType_Highlighted = UIA_ANNOTATIONTYPE(0x0000ea68);
  static const AnnotationType_Endnote = UIA_ANNOTATIONTYPE(0x0000ea69);
  static const AnnotationType_Footnote = UIA_ANNOTATIONTYPE(0x0000ea6a);
  static const AnnotationType_InsertionChange = UIA_ANNOTATIONTYPE(0x0000ea6b);
  static const AnnotationType_DeletionChange = UIA_ANNOTATIONTYPE(0x0000ea6c);
  static const AnnotationType_MoveChange = UIA_ANNOTATIONTYPE(0x0000ea6d);
  static const AnnotationType_FormatChange = UIA_ANNOTATIONTYPE(0x0000ea6e);
  static const AnnotationType_UnsyncedChange = UIA_ANNOTATIONTYPE(0x0000ea6f);
  static const AnnotationType_EditingLockedChange =
      UIA_ANNOTATIONTYPE(0x0000ea70);
  static const AnnotationType_ExternalChange = UIA_ANNOTATIONTYPE(0x0000ea71);
  static const AnnotationType_ConflictingChange =
      UIA_ANNOTATIONTYPE(0x0000ea72);
  static const AnnotationType_Author = UIA_ANNOTATIONTYPE(0x0000ea73);
  static const AnnotationType_AdvancedProofingIssue =
      UIA_ANNOTATIONTYPE(0x0000ea74);
  static const AnnotationType_DataValidationError =
      UIA_ANNOTATIONTYPE(0x0000ea75);
  static const AnnotationType_CircularReferenceError =
      UIA_ANNOTATIONTYPE(0x0000ea76);
  static const AnnotationType_Mathematics = UIA_ANNOTATIONTYPE(0x0000ea77);
  static const AnnotationType_Sensitive = UIA_ANNOTATIONTYPE(0x0000ea78);
}

/// {@category enum}
extension type const UIA_CONTROLTYPE_ID(int _) implements int {
  static const UIA_ButtonControlTypeId = UIA_CONTROLTYPE_ID(0x0000c350);
  static const UIA_CalendarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c351);
  static const UIA_CheckBoxControlTypeId = UIA_CONTROLTYPE_ID(0x0000c352);
  static const UIA_ComboBoxControlTypeId = UIA_CONTROLTYPE_ID(0x0000c353);
  static const UIA_EditControlTypeId = UIA_CONTROLTYPE_ID(0x0000c354);
  static const UIA_HyperlinkControlTypeId = UIA_CONTROLTYPE_ID(0x0000c355);
  static const UIA_ImageControlTypeId = UIA_CONTROLTYPE_ID(0x0000c356);
  static const UIA_ListItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c357);
  static const UIA_ListControlTypeId = UIA_CONTROLTYPE_ID(0x0000c358);
  static const UIA_MenuControlTypeId = UIA_CONTROLTYPE_ID(0x0000c359);
  static const UIA_MenuBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35a);
  static const UIA_MenuItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35b);
  static const UIA_ProgressBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35c);
  static const UIA_RadioButtonControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35d);
  static const UIA_ScrollBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35e);
  static const UIA_SliderControlTypeId = UIA_CONTROLTYPE_ID(0x0000c35f);
  static const UIA_SpinnerControlTypeId = UIA_CONTROLTYPE_ID(0x0000c360);
  static const UIA_StatusBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c361);
  static const UIA_TabControlTypeId = UIA_CONTROLTYPE_ID(0x0000c362);
  static const UIA_TabItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c363);
  static const UIA_TextControlTypeId = UIA_CONTROLTYPE_ID(0x0000c364);
  static const UIA_ToolBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c365);
  static const UIA_ToolTipControlTypeId = UIA_CONTROLTYPE_ID(0x0000c366);
  static const UIA_TreeControlTypeId = UIA_CONTROLTYPE_ID(0x0000c367);
  static const UIA_TreeItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c368);
  static const UIA_CustomControlTypeId = UIA_CONTROLTYPE_ID(0x0000c369);
  static const UIA_GroupControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36a);
  static const UIA_ThumbControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36b);
  static const UIA_DataGridControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36c);
  static const UIA_DataItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36d);
  static const UIA_DocumentControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36e);
  static const UIA_SplitButtonControlTypeId = UIA_CONTROLTYPE_ID(0x0000c36f);
  static const UIA_WindowControlTypeId = UIA_CONTROLTYPE_ID(0x0000c370);
  static const UIA_PaneControlTypeId = UIA_CONTROLTYPE_ID(0x0000c371);
  static const UIA_HeaderControlTypeId = UIA_CONTROLTYPE_ID(0x0000c372);
  static const UIA_HeaderItemControlTypeId = UIA_CONTROLTYPE_ID(0x0000c373);
  static const UIA_TableControlTypeId = UIA_CONTROLTYPE_ID(0x0000c374);
  static const UIA_TitleBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c375);
  static const UIA_SeparatorControlTypeId = UIA_CONTROLTYPE_ID(0x0000c376);
  static const UIA_SemanticZoomControlTypeId = UIA_CONTROLTYPE_ID(0x0000c377);
  static const UIA_AppBarControlTypeId = UIA_CONTROLTYPE_ID(0x0000c378);
}

/// {@category enum}
extension type const UIA_EVENT_ID(int _) implements int {
  static const UIA_ToolTipOpenedEventId = UIA_EVENT_ID(0x00004e20);
  static const UIA_ToolTipClosedEventId = UIA_EVENT_ID(0x00004e21);
  static const UIA_StructureChangedEventId = UIA_EVENT_ID(0x00004e22);
  static const UIA_MenuOpenedEventId = UIA_EVENT_ID(0x00004e23);
  static const UIA_AutomationPropertyChangedEventId = UIA_EVENT_ID(0x00004e24);
  static const UIA_AutomationFocusChangedEventId = UIA_EVENT_ID(0x00004e25);
  static const UIA_AsyncContentLoadedEventId = UIA_EVENT_ID(0x00004e26);
  static const UIA_MenuClosedEventId = UIA_EVENT_ID(0x00004e27);
  static const UIA_LayoutInvalidatedEventId = UIA_EVENT_ID(0x00004e28);
  static const UIA_Invoke_InvokedEventId = UIA_EVENT_ID(0x00004e29);
  static const UIA_SelectionItem_ElementAddedToSelectionEventId =
      UIA_EVENT_ID(0x00004e2a);
  static const UIA_SelectionItem_ElementRemovedFromSelectionEventId =
      UIA_EVENT_ID(0x00004e2b);
  static const UIA_SelectionItem_ElementSelectedEventId =
      UIA_EVENT_ID(0x00004e2c);
  static const UIA_Selection_InvalidatedEventId = UIA_EVENT_ID(0x00004e2d);
  static const UIA_Text_TextSelectionChangedEventId = UIA_EVENT_ID(0x00004e2e);
  static const UIA_Text_TextChangedEventId = UIA_EVENT_ID(0x00004e2f);
  static const UIA_Window_WindowOpenedEventId = UIA_EVENT_ID(0x00004e30);
  static const UIA_Window_WindowClosedEventId = UIA_EVENT_ID(0x00004e31);
  static const UIA_MenuModeStartEventId = UIA_EVENT_ID(0x00004e32);
  static const UIA_MenuModeEndEventId = UIA_EVENT_ID(0x00004e33);
  static const UIA_InputReachedTargetEventId = UIA_EVENT_ID(0x00004e34);
  static const UIA_InputReachedOtherElementEventId = UIA_EVENT_ID(0x00004e35);
  static const UIA_InputDiscardedEventId = UIA_EVENT_ID(0x00004e36);
  static const UIA_SystemAlertEventId = UIA_EVENT_ID(0x00004e37);
  static const UIA_LiveRegionChangedEventId = UIA_EVENT_ID(0x00004e38);
  static const UIA_HostedFragmentRootsInvalidatedEventId =
      UIA_EVENT_ID(0x00004e39);
  static const UIA_Drag_DragStartEventId = UIA_EVENT_ID(0x00004e3a);
  static const UIA_Drag_DragCancelEventId = UIA_EVENT_ID(0x00004e3b);
  static const UIA_Drag_DragCompleteEventId = UIA_EVENT_ID(0x00004e3c);
  static const UIA_DropTarget_DragEnterEventId = UIA_EVENT_ID(0x00004e3d);
  static const UIA_DropTarget_DragLeaveEventId = UIA_EVENT_ID(0x00004e3e);
  static const UIA_DropTarget_DroppedEventId = UIA_EVENT_ID(0x00004e3f);
  static const UIA_TextEdit_TextChangedEventId = UIA_EVENT_ID(0x00004e40);
  static const UIA_TextEdit_ConversionTargetChangedEventId =
      UIA_EVENT_ID(0x00004e41);
  static const UIA_ChangesEventId = UIA_EVENT_ID(0x00004e42);
  static const UIA_NotificationEventId = UIA_EVENT_ID(0x00004e43);
  static const UIA_ActiveTextPositionChangedEventId = UIA_EVENT_ID(0x00004e44);
}

/// {@category enum}
extension type const UIA_HEADINGLEVEL_ID(int _) implements int {
  static const HeadingLevel_None = UIA_HEADINGLEVEL_ID(0x000138b2);
  static const HeadingLevel1 = UIA_HEADINGLEVEL_ID(0x000138b3);
  static const HeadingLevel2 = UIA_HEADINGLEVEL_ID(0x000138b4);
  static const HeadingLevel3 = UIA_HEADINGLEVEL_ID(0x000138b5);
  static const HeadingLevel4 = UIA_HEADINGLEVEL_ID(0x000138b6);
  static const HeadingLevel5 = UIA_HEADINGLEVEL_ID(0x000138b7);
  static const HeadingLevel6 = UIA_HEADINGLEVEL_ID(0x000138b8);
  static const HeadingLevel7 = UIA_HEADINGLEVEL_ID(0x000138b9);
  static const HeadingLevel8 = UIA_HEADINGLEVEL_ID(0x000138ba);
  static const HeadingLevel9 = UIA_HEADINGLEVEL_ID(0x000138bb);
}

/// {@category enum}
extension type const UIA_LANDMARKTYPE_ID(int _) implements int {
  static const UIA_CustomLandmarkTypeId = UIA_LANDMARKTYPE_ID(0x00013880);
  static const UIA_FormLandmarkTypeId = UIA_LANDMARKTYPE_ID(0x00013881);
  static const UIA_MainLandmarkTypeId = UIA_LANDMARKTYPE_ID(0x00013882);
  static const UIA_NavigationLandmarkTypeId = UIA_LANDMARKTYPE_ID(0x00013883);
  static const UIA_SearchLandmarkTypeId = UIA_LANDMARKTYPE_ID(0x00013884);
}

/// {@category enum}
extension type const UIA_METADATA_ID(int _) implements int {
  static const UIA_SayAsInterpretAsMetadataId = UIA_METADATA_ID(0x000186a0);
}

/// {@category enum}
extension type const UIA_PATTERN_ID(int _) implements int {
  static const UIA_InvokePatternId = UIA_PATTERN_ID(0x00002710);
  static const UIA_SelectionPatternId = UIA_PATTERN_ID(0x00002711);
  static const UIA_ValuePatternId = UIA_PATTERN_ID(0x00002712);
  static const UIA_RangeValuePatternId = UIA_PATTERN_ID(0x00002713);
  static const UIA_ScrollPatternId = UIA_PATTERN_ID(0x00002714);
  static const UIA_ExpandCollapsePatternId = UIA_PATTERN_ID(0x00002715);
  static const UIA_GridPatternId = UIA_PATTERN_ID(0x00002716);
  static const UIA_GridItemPatternId = UIA_PATTERN_ID(0x00002717);
  static const UIA_MultipleViewPatternId = UIA_PATTERN_ID(0x00002718);
  static const UIA_WindowPatternId = UIA_PATTERN_ID(0x00002719);
  static const UIA_SelectionItemPatternId = UIA_PATTERN_ID(0x0000271a);
  static const UIA_DockPatternId = UIA_PATTERN_ID(0x0000271b);
  static const UIA_TablePatternId = UIA_PATTERN_ID(0x0000271c);
  static const UIA_TableItemPatternId = UIA_PATTERN_ID(0x0000271d);
  static const UIA_TextPatternId = UIA_PATTERN_ID(0x0000271e);
  static const UIA_TogglePatternId = UIA_PATTERN_ID(0x0000271f);
  static const UIA_TransformPatternId = UIA_PATTERN_ID(0x00002720);
  static const UIA_ScrollItemPatternId = UIA_PATTERN_ID(0x00002721);
  static const UIA_LegacyIAccessiblePatternId = UIA_PATTERN_ID(0x00002722);
  static const UIA_ItemContainerPatternId = UIA_PATTERN_ID(0x00002723);
  static const UIA_VirtualizedItemPatternId = UIA_PATTERN_ID(0x00002724);
  static const UIA_SynchronizedInputPatternId = UIA_PATTERN_ID(0x00002725);
  static const UIA_ObjectModelPatternId = UIA_PATTERN_ID(0x00002726);
  static const UIA_AnnotationPatternId = UIA_PATTERN_ID(0x00002727);
  static const UIA_TextPattern2Id = UIA_PATTERN_ID(0x00002728);
  static const UIA_StylesPatternId = UIA_PATTERN_ID(0x00002729);
  static const UIA_SpreadsheetPatternId = UIA_PATTERN_ID(0x0000272a);
  static const UIA_SpreadsheetItemPatternId = UIA_PATTERN_ID(0x0000272b);
  static const UIA_TransformPattern2Id = UIA_PATTERN_ID(0x0000272c);
  static const UIA_TextChildPatternId = UIA_PATTERN_ID(0x0000272d);
  static const UIA_DragPatternId = UIA_PATTERN_ID(0x0000272e);
  static const UIA_DropTargetPatternId = UIA_PATTERN_ID(0x0000272f);
  static const UIA_TextEditPatternId = UIA_PATTERN_ID(0x00002730);
  static const UIA_CustomNavigationPatternId = UIA_PATTERN_ID(0x00002731);
  static const UIA_SelectionPattern2Id = UIA_PATTERN_ID(0x00002732);
}

/// {@category enum}
extension type const UIA_PROPERTY_ID(int _) implements int {
  static const UIA_RuntimeIdPropertyId = UIA_PROPERTY_ID(0x00007530);
  static const UIA_BoundingRectanglePropertyId = UIA_PROPERTY_ID(0x00007531);
  static const UIA_ProcessIdPropertyId = UIA_PROPERTY_ID(0x00007532);
  static const UIA_ControlTypePropertyId = UIA_PROPERTY_ID(0x00007533);
  static const UIA_LocalizedControlTypePropertyId = UIA_PROPERTY_ID(0x00007534);
  static const UIA_NamePropertyId = UIA_PROPERTY_ID(0x00007535);
  static const UIA_AcceleratorKeyPropertyId = UIA_PROPERTY_ID(0x00007536);
  static const UIA_AccessKeyPropertyId = UIA_PROPERTY_ID(0x00007537);
  static const UIA_HasKeyboardFocusPropertyId = UIA_PROPERTY_ID(0x00007538);
  static const UIA_IsKeyboardFocusablePropertyId = UIA_PROPERTY_ID(0x00007539);
  static const UIA_IsEnabledPropertyId = UIA_PROPERTY_ID(0x0000753a);
  static const UIA_AutomationIdPropertyId = UIA_PROPERTY_ID(0x0000753b);
  static const UIA_ClassNamePropertyId = UIA_PROPERTY_ID(0x0000753c);
  static const UIA_HelpTextPropertyId = UIA_PROPERTY_ID(0x0000753d);
  static const UIA_ClickablePointPropertyId = UIA_PROPERTY_ID(0x0000753e);
  static const UIA_CulturePropertyId = UIA_PROPERTY_ID(0x0000753f);
  static const UIA_IsControlElementPropertyId = UIA_PROPERTY_ID(0x00007540);
  static const UIA_IsContentElementPropertyId = UIA_PROPERTY_ID(0x00007541);
  static const UIA_LabeledByPropertyId = UIA_PROPERTY_ID(0x00007542);
  static const UIA_IsPasswordPropertyId = UIA_PROPERTY_ID(0x00007543);
  static const UIA_NativeWindowHandlePropertyId = UIA_PROPERTY_ID(0x00007544);
  static const UIA_ItemTypePropertyId = UIA_PROPERTY_ID(0x00007545);
  static const UIA_IsOffscreenPropertyId = UIA_PROPERTY_ID(0x00007546);
  static const UIA_OrientationPropertyId = UIA_PROPERTY_ID(0x00007547);
  static const UIA_FrameworkIdPropertyId = UIA_PROPERTY_ID(0x00007548);
  static const UIA_IsRequiredForFormPropertyId = UIA_PROPERTY_ID(0x00007549);
  static const UIA_ItemStatusPropertyId = UIA_PROPERTY_ID(0x0000754a);
  static const UIA_IsDockPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000754b);
  static const UIA_IsExpandCollapsePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000754c);
  static const UIA_IsGridItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000754d);
  static const UIA_IsGridPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000754e);
  static const UIA_IsInvokePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000754f);
  static const UIA_IsMultipleViewPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007550);
  static const UIA_IsRangeValuePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007551);
  static const UIA_IsScrollPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007552);
  static const UIA_IsScrollItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007553);
  static const UIA_IsSelectionItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007554);
  static const UIA_IsSelectionPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007555);
  static const UIA_IsTablePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007556);
  static const UIA_IsTableItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007557);
  static const UIA_IsTextPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007558);
  static const UIA_IsTogglePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x00007559);
  static const UIA_IsTransformPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000755a);
  static const UIA_IsValuePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000755b);
  static const UIA_IsWindowPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000755c);
  static const UIA_ValueValuePropertyId = UIA_PROPERTY_ID(0x0000755d);
  static const UIA_ValueIsReadOnlyPropertyId = UIA_PROPERTY_ID(0x0000755e);
  static const UIA_RangeValueValuePropertyId = UIA_PROPERTY_ID(0x0000755f);
  static const UIA_RangeValueIsReadOnlyPropertyId = UIA_PROPERTY_ID(0x00007560);
  static const UIA_RangeValueMinimumPropertyId = UIA_PROPERTY_ID(0x00007561);
  static const UIA_RangeValueMaximumPropertyId = UIA_PROPERTY_ID(0x00007562);
  static const UIA_RangeValueLargeChangePropertyId =
      UIA_PROPERTY_ID(0x00007563);
  static const UIA_RangeValueSmallChangePropertyId =
      UIA_PROPERTY_ID(0x00007564);
  static const UIA_ScrollHorizontalScrollPercentPropertyId =
      UIA_PROPERTY_ID(0x00007565);
  static const UIA_ScrollHorizontalViewSizePropertyId =
      UIA_PROPERTY_ID(0x00007566);
  static const UIA_ScrollVerticalScrollPercentPropertyId =
      UIA_PROPERTY_ID(0x00007567);
  static const UIA_ScrollVerticalViewSizePropertyId =
      UIA_PROPERTY_ID(0x00007568);
  static const UIA_ScrollHorizontallyScrollablePropertyId =
      UIA_PROPERTY_ID(0x00007569);
  static const UIA_ScrollVerticallyScrollablePropertyId =
      UIA_PROPERTY_ID(0x0000756a);
  static const UIA_SelectionSelectionPropertyId = UIA_PROPERTY_ID(0x0000756b);
  static const UIA_SelectionCanSelectMultiplePropertyId =
      UIA_PROPERTY_ID(0x0000756c);
  static const UIA_SelectionIsSelectionRequiredPropertyId =
      UIA_PROPERTY_ID(0x0000756d);
  static const UIA_GridRowCountPropertyId = UIA_PROPERTY_ID(0x0000756e);
  static const UIA_GridColumnCountPropertyId = UIA_PROPERTY_ID(0x0000756f);
  static const UIA_GridItemRowPropertyId = UIA_PROPERTY_ID(0x00007570);
  static const UIA_GridItemColumnPropertyId = UIA_PROPERTY_ID(0x00007571);
  static const UIA_GridItemRowSpanPropertyId = UIA_PROPERTY_ID(0x00007572);
  static const UIA_GridItemColumnSpanPropertyId = UIA_PROPERTY_ID(0x00007573);
  static const UIA_GridItemContainingGridPropertyId =
      UIA_PROPERTY_ID(0x00007574);
  static const UIA_DockDockPositionPropertyId = UIA_PROPERTY_ID(0x00007575);
  static const UIA_ExpandCollapseExpandCollapseStatePropertyId =
      UIA_PROPERTY_ID(0x00007576);
  static const UIA_MultipleViewCurrentViewPropertyId =
      UIA_PROPERTY_ID(0x00007577);
  static const UIA_MultipleViewSupportedViewsPropertyId =
      UIA_PROPERTY_ID(0x00007578);
  static const UIA_WindowCanMaximizePropertyId = UIA_PROPERTY_ID(0x00007579);
  static const UIA_WindowCanMinimizePropertyId = UIA_PROPERTY_ID(0x0000757a);
  static const UIA_WindowWindowVisualStatePropertyId =
      UIA_PROPERTY_ID(0x0000757b);
  static const UIA_WindowWindowInteractionStatePropertyId =
      UIA_PROPERTY_ID(0x0000757c);
  static const UIA_WindowIsModalPropertyId = UIA_PROPERTY_ID(0x0000757d);
  static const UIA_WindowIsTopmostPropertyId = UIA_PROPERTY_ID(0x0000757e);
  static const UIA_SelectionItemIsSelectedPropertyId =
      UIA_PROPERTY_ID(0x0000757f);
  static const UIA_SelectionItemSelectionContainerPropertyId =
      UIA_PROPERTY_ID(0x00007580);
  static const UIA_TableRowHeadersPropertyId = UIA_PROPERTY_ID(0x00007581);
  static const UIA_TableColumnHeadersPropertyId = UIA_PROPERTY_ID(0x00007582);
  static const UIA_TableRowOrColumnMajorPropertyId =
      UIA_PROPERTY_ID(0x00007583);
  static const UIA_TableItemRowHeaderItemsPropertyId =
      UIA_PROPERTY_ID(0x00007584);
  static const UIA_TableItemColumnHeaderItemsPropertyId =
      UIA_PROPERTY_ID(0x00007585);
  static const UIA_ToggleToggleStatePropertyId = UIA_PROPERTY_ID(0x00007586);
  static const UIA_TransformCanMovePropertyId = UIA_PROPERTY_ID(0x00007587);
  static const UIA_TransformCanResizePropertyId = UIA_PROPERTY_ID(0x00007588);
  static const UIA_TransformCanRotatePropertyId = UIA_PROPERTY_ID(0x00007589);
  static const UIA_IsLegacyIAccessiblePatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000758a);
  static const UIA_LegacyIAccessibleChildIdPropertyId =
      UIA_PROPERTY_ID(0x0000758b);
  static const UIA_LegacyIAccessibleNamePropertyId =
      UIA_PROPERTY_ID(0x0000758c);
  static const UIA_LegacyIAccessibleValuePropertyId =
      UIA_PROPERTY_ID(0x0000758d);
  static const UIA_LegacyIAccessibleDescriptionPropertyId =
      UIA_PROPERTY_ID(0x0000758e);
  static const UIA_LegacyIAccessibleRolePropertyId =
      UIA_PROPERTY_ID(0x0000758f);
  static const UIA_LegacyIAccessibleStatePropertyId =
      UIA_PROPERTY_ID(0x00007590);
  static const UIA_LegacyIAccessibleHelpPropertyId =
      UIA_PROPERTY_ID(0x00007591);
  static const UIA_LegacyIAccessibleKeyboardShortcutPropertyId =
      UIA_PROPERTY_ID(0x00007592);
  static const UIA_LegacyIAccessibleSelectionPropertyId =
      UIA_PROPERTY_ID(0x00007593);
  static const UIA_LegacyIAccessibleDefaultActionPropertyId =
      UIA_PROPERTY_ID(0x00007594);
  static const UIA_AriaRolePropertyId = UIA_PROPERTY_ID(0x00007595);
  static const UIA_AriaPropertiesPropertyId = UIA_PROPERTY_ID(0x00007596);
  static const UIA_IsDataValidForFormPropertyId = UIA_PROPERTY_ID(0x00007597);
  static const UIA_ControllerForPropertyId = UIA_PROPERTY_ID(0x00007598);
  static const UIA_DescribedByPropertyId = UIA_PROPERTY_ID(0x00007599);
  static const UIA_FlowsToPropertyId = UIA_PROPERTY_ID(0x0000759a);
  static const UIA_ProviderDescriptionPropertyId = UIA_PROPERTY_ID(0x0000759b);
  static const UIA_IsItemContainerPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000759c);
  static const UIA_IsVirtualizedItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000759d);
  static const UIA_IsSynchronizedInputPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x0000759e);
  static const UIA_OptimizeForVisualContentPropertyId =
      UIA_PROPERTY_ID(0x0000759f);
  static const UIA_IsObjectModelPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075a0);
  static const UIA_AnnotationAnnotationTypeIdPropertyId =
      UIA_PROPERTY_ID(0x000075a1);
  static const UIA_AnnotationAnnotationTypeNamePropertyId =
      UIA_PROPERTY_ID(0x000075a2);
  static const UIA_AnnotationAuthorPropertyId = UIA_PROPERTY_ID(0x000075a3);
  static const UIA_AnnotationDateTimePropertyId = UIA_PROPERTY_ID(0x000075a4);
  static const UIA_AnnotationTargetPropertyId = UIA_PROPERTY_ID(0x000075a5);
  static const UIA_IsAnnotationPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075a6);
  static const UIA_IsTextPattern2AvailablePropertyId =
      UIA_PROPERTY_ID(0x000075a7);
  static const UIA_StylesStyleIdPropertyId = UIA_PROPERTY_ID(0x000075a8);
  static const UIA_StylesStyleNamePropertyId = UIA_PROPERTY_ID(0x000075a9);
  static const UIA_StylesFillColorPropertyId = UIA_PROPERTY_ID(0x000075aa);
  static const UIA_StylesFillPatternStylePropertyId =
      UIA_PROPERTY_ID(0x000075ab);
  static const UIA_StylesShapePropertyId = UIA_PROPERTY_ID(0x000075ac);
  static const UIA_StylesFillPatternColorPropertyId =
      UIA_PROPERTY_ID(0x000075ad);
  static const UIA_StylesExtendedPropertiesPropertyId =
      UIA_PROPERTY_ID(0x000075ae);
  static const UIA_IsStylesPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075af);
  static const UIA_IsSpreadsheetPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075b0);
  static const UIA_SpreadsheetItemFormulaPropertyId =
      UIA_PROPERTY_ID(0x000075b1);
  static const UIA_SpreadsheetItemAnnotationObjectsPropertyId =
      UIA_PROPERTY_ID(0x000075b2);
  static const UIA_SpreadsheetItemAnnotationTypesPropertyId =
      UIA_PROPERTY_ID(0x000075b3);
  static const UIA_IsSpreadsheetItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075b4);
  static const UIA_Transform2CanZoomPropertyId = UIA_PROPERTY_ID(0x000075b5);
  static const UIA_IsTransformPattern2AvailablePropertyId =
      UIA_PROPERTY_ID(0x000075b6);
  static const UIA_LiveSettingPropertyId = UIA_PROPERTY_ID(0x000075b7);
  static const UIA_IsTextChildPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075b8);
  static const UIA_IsDragPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075b9);
  static const UIA_DragIsGrabbedPropertyId = UIA_PROPERTY_ID(0x000075ba);
  static const UIA_DragDropEffectPropertyId = UIA_PROPERTY_ID(0x000075bb);
  static const UIA_DragDropEffectsPropertyId = UIA_PROPERTY_ID(0x000075bc);
  static const UIA_IsDropTargetPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075bd);
  static const UIA_DropTargetDropTargetEffectPropertyId =
      UIA_PROPERTY_ID(0x000075be);
  static const UIA_DropTargetDropTargetEffectsPropertyId =
      UIA_PROPERTY_ID(0x000075bf);
  static const UIA_DragGrabbedItemsPropertyId = UIA_PROPERTY_ID(0x000075c0);
  static const UIA_Transform2ZoomLevelPropertyId = UIA_PROPERTY_ID(0x000075c1);
  static const UIA_Transform2ZoomMinimumPropertyId =
      UIA_PROPERTY_ID(0x000075c2);
  static const UIA_Transform2ZoomMaximumPropertyId =
      UIA_PROPERTY_ID(0x000075c3);
  static const UIA_FlowsFromPropertyId = UIA_PROPERTY_ID(0x000075c4);
  static const UIA_IsTextEditPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075c5);
  static const UIA_IsPeripheralPropertyId = UIA_PROPERTY_ID(0x000075c6);
  static const UIA_IsCustomNavigationPatternAvailablePropertyId =
      UIA_PROPERTY_ID(0x000075c7);
  static const UIA_PositionInSetPropertyId = UIA_PROPERTY_ID(0x000075c8);
  static const UIA_SizeOfSetPropertyId = UIA_PROPERTY_ID(0x000075c9);
  static const UIA_LevelPropertyId = UIA_PROPERTY_ID(0x000075ca);
  static const UIA_AnnotationTypesPropertyId = UIA_PROPERTY_ID(0x000075cb);
  static const UIA_AnnotationObjectsPropertyId = UIA_PROPERTY_ID(0x000075cc);
  static const UIA_LandmarkTypePropertyId = UIA_PROPERTY_ID(0x000075cd);
  static const UIA_LocalizedLandmarkTypePropertyId =
      UIA_PROPERTY_ID(0x000075ce);
  static const UIA_FullDescriptionPropertyId = UIA_PROPERTY_ID(0x000075cf);
  static const UIA_FillColorPropertyId = UIA_PROPERTY_ID(0x000075d0);
  static const UIA_OutlineColorPropertyId = UIA_PROPERTY_ID(0x000075d1);
  static const UIA_FillTypePropertyId = UIA_PROPERTY_ID(0x000075d2);
  static const UIA_VisualEffectsPropertyId = UIA_PROPERTY_ID(0x000075d3);
  static const UIA_OutlineThicknessPropertyId = UIA_PROPERTY_ID(0x000075d4);
  static const UIA_CenterPointPropertyId = UIA_PROPERTY_ID(0x000075d5);
  static const UIA_RotationPropertyId = UIA_PROPERTY_ID(0x000075d6);
  static const UIA_SizePropertyId = UIA_PROPERTY_ID(0x000075d7);
  static const UIA_IsSelectionPattern2AvailablePropertyId =
      UIA_PROPERTY_ID(0x000075d8);
  static const UIA_Selection2FirstSelectedItemPropertyId =
      UIA_PROPERTY_ID(0x000075d9);
  static const UIA_Selection2LastSelectedItemPropertyId =
      UIA_PROPERTY_ID(0x000075da);
  static const UIA_Selection2CurrentSelectedItemPropertyId =
      UIA_PROPERTY_ID(0x000075db);
  static const UIA_Selection2ItemCountPropertyId = UIA_PROPERTY_ID(0x000075dc);
  static const UIA_HeadingLevelPropertyId = UIA_PROPERTY_ID(0x000075dd);
  static const UIA_IsDialogPropertyId = UIA_PROPERTY_ID(0x000075de);
}

/// {@category enum}
extension type const UIA_STYLE_ID(int _) implements int {
  static const StyleId_Custom = UIA_STYLE_ID(0x00011170);
  static const StyleId_Heading1 = UIA_STYLE_ID(0x00011171);
  static const StyleId_Heading2 = UIA_STYLE_ID(0x00011172);
  static const StyleId_Heading3 = UIA_STYLE_ID(0x00011173);
  static const StyleId_Heading4 = UIA_STYLE_ID(0x00011174);
  static const StyleId_Heading5 = UIA_STYLE_ID(0x00011175);
  static const StyleId_Heading6 = UIA_STYLE_ID(0x00011176);
  static const StyleId_Heading7 = UIA_STYLE_ID(0x00011177);
  static const StyleId_Heading8 = UIA_STYLE_ID(0x00011178);
  static const StyleId_Heading9 = UIA_STYLE_ID(0x00011179);
  static const StyleId_Title = UIA_STYLE_ID(0x0001117a);
  static const StyleId_Subtitle = UIA_STYLE_ID(0x0001117b);
  static const StyleId_Normal = UIA_STYLE_ID(0x0001117c);
  static const StyleId_Emphasis = UIA_STYLE_ID(0x0001117d);
  static const StyleId_Quote = UIA_STYLE_ID(0x0001117e);
  static const StyleId_BulletedList = UIA_STYLE_ID(0x0001117f);
  static const StyleId_NumberedList = UIA_STYLE_ID(0x00011180);
}

/// {@category enum}
extension type const UIA_TEXTATTRIBUTE_ID(int _) implements int {
  static const UIA_AnimationStyleAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c40);
  static const UIA_BackgroundColorAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c41);
  static const UIA_BulletStyleAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c42);
  static const UIA_CapStyleAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c43);
  static const UIA_CultureAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c44);
  static const UIA_FontNameAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c45);
  static const UIA_FontSizeAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c46);
  static const UIA_FontWeightAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c47);
  static const UIA_ForegroundColorAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c48);
  static const UIA_HorizontalTextAlignmentAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c49);
  static const UIA_IndentationFirstLineAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c4a);
  static const UIA_IndentationLeadingAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c4b);
  static const UIA_IndentationTrailingAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c4c);
  static const UIA_IsHiddenAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c4d);
  static const UIA_IsItalicAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c4e);
  static const UIA_IsReadOnlyAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c4f);
  static const UIA_IsSubscriptAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c50);
  static const UIA_IsSuperscriptAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c51);
  static const UIA_MarginBottomAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c52);
  static const UIA_MarginLeadingAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c53);
  static const UIA_MarginTopAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c54);
  static const UIA_MarginTrailingAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c55);
  static const UIA_OutlineStylesAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c56);
  static const UIA_OverlineColorAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c57);
  static const UIA_OverlineStyleAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c58);
  static const UIA_StrikethroughColorAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c59);
  static const UIA_StrikethroughStyleAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c5a);
  static const UIA_TabsAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c5b);
  static const UIA_TextFlowDirectionsAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c5c);
  static const UIA_UnderlineColorAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c5d);
  static const UIA_UnderlineStyleAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c5e);
  static const UIA_AnnotationTypesAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c5f);
  static const UIA_AnnotationObjectsAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c60);
  static const UIA_StyleNameAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c61);
  static const UIA_StyleIdAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c62);
  static const UIA_LinkAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c63);
  static const UIA_IsActiveAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c64);
  static const UIA_SelectionActiveEndAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c65);
  static const UIA_CaretPositionAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c66);
  static const UIA_CaretBidiModeAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c67);
  static const UIA_LineSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(0x00009c68);
  static const UIA_BeforeParagraphSpacingAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c69);
  static const UIA_AfterParagraphSpacingAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c6a);
  static const UIA_SayAsInterpretAsAttributeId =
      UIA_TEXTATTRIBUTE_ID(0x00009c6b);
}

/// {@category enum}
extension type const UPDATE_LAYERED_WINDOW_FLAGS(int _) implements int {
  static const ULW_ALPHA = UPDATE_LAYERED_WINDOW_FLAGS(0x00000002);
  static const ULW_COLORKEY = UPDATE_LAYERED_WINDOW_FLAGS(0x00000001);
  static const ULW_OPAQUE = UPDATE_LAYERED_WINDOW_FLAGS(0x00000004);
  static const ULW_EX_NORESIZE = UPDATE_LAYERED_WINDOW_FLAGS(0x00000008);
}

/// {@category enum}
extension type const USER_OBJECT_INFORMATION_INDEX(int _) implements int {
  static const UOI_FLAGS = USER_OBJECT_INFORMATION_INDEX(0x00000001);
  static const UOI_HEAPSIZE = USER_OBJECT_INFORMATION_INDEX(0x00000005);
  static const UOI_IO = USER_OBJECT_INFORMATION_INDEX(0x00000006);
  static const UOI_NAME = USER_OBJECT_INFORMATION_INDEX(0x00000002);
  static const UOI_TYPE = USER_OBJECT_INFORMATION_INDEX(0x00000003);
  static const UOI_USER_SID = USER_OBJECT_INFORMATION_INDEX(0x00000004);
}

/// {@category enum}
extension type const Uri_PROPERTY(int _) implements int {
  static const Uri_PROPERTY_ABSOLUTE_URI = Uri_PROPERTY(0x00000000);
  static const Uri_PROPERTY_STRING_START = Uri_PROPERTY(0x00000000);
  static const Uri_PROPERTY_AUTHORITY = Uri_PROPERTY(0x00000001);
  static const Uri_PROPERTY_DISPLAY_URI = Uri_PROPERTY(0x00000002);
  static const Uri_PROPERTY_DOMAIN = Uri_PROPERTY(0x00000003);
  static const Uri_PROPERTY_EXTENSION = Uri_PROPERTY(0x00000004);
  static const Uri_PROPERTY_FRAGMENT = Uri_PROPERTY(0x00000005);
  static const Uri_PROPERTY_HOST = Uri_PROPERTY(0x00000006);
  static const Uri_PROPERTY_PASSWORD = Uri_PROPERTY(0x00000007);
  static const Uri_PROPERTY_PATH = Uri_PROPERTY(0x00000008);
  static const Uri_PROPERTY_PATH_AND_QUERY = Uri_PROPERTY(0x00000009);
  static const Uri_PROPERTY_QUERY = Uri_PROPERTY(0x0000000a);
  static const Uri_PROPERTY_RAW_URI = Uri_PROPERTY(0x0000000b);
  static const Uri_PROPERTY_SCHEME_NAME = Uri_PROPERTY(0x0000000c);
  static const Uri_PROPERTY_USER_INFO = Uri_PROPERTY(0x0000000d);
  static const Uri_PROPERTY_USER_NAME = Uri_PROPERTY(0x0000000e);
  static const Uri_PROPERTY_STRING_LAST = Uri_PROPERTY(0x0000000e);
  static const Uri_PROPERTY_HOST_TYPE = Uri_PROPERTY(0x0000000f);
  static const Uri_PROPERTY_DWORD_START = Uri_PROPERTY(0x0000000f);
  static const Uri_PROPERTY_PORT = Uri_PROPERTY(0x00000010);
  static const Uri_PROPERTY_SCHEME = Uri_PROPERTY(0x00000011);
  static const Uri_PROPERTY_ZONE = Uri_PROPERTY(0x00000012);
  static const Uri_PROPERTY_DWORD_LAST = Uri_PROPERTY(0x00000012);
}

/// {@category enum}
extension type const VARENUM(int _) implements int {
  static const VT_EMPTY = VARENUM(0x0000);
  static const VT_NULL = VARENUM(0x0001);
  static const VT_I2 = VARENUM(0x0002);
  static const VT_I4 = VARENUM(0x0003);
  static const VT_R4 = VARENUM(0x0004);
  static const VT_R8 = VARENUM(0x0005);
  static const VT_CY = VARENUM(0x0006);
  static const VT_DATE = VARENUM(0x0007);
  static const VT_BSTR = VARENUM(0x0008);
  static const VT_DISPATCH = VARENUM(0x0009);
  static const VT_ERROR = VARENUM(0x000a);
  static const VT_BOOL = VARENUM(0x000b);
  static const VT_VARIANT = VARENUM(0x000c);
  static const VT_UNKNOWN = VARENUM(0x000d);
  static const VT_DECIMAL = VARENUM(0x000e);
  static const VT_I1 = VARENUM(0x0010);
  static const VT_UI1 = VARENUM(0x0011);
  static const VT_UI2 = VARENUM(0x0012);
  static const VT_UI4 = VARENUM(0x0013);
  static const VT_I8 = VARENUM(0x0014);
  static const VT_UI8 = VARENUM(0x0015);
  static const VT_INT = VARENUM(0x0016);
  static const VT_UINT = VARENUM(0x0017);
  static const VT_VOID = VARENUM(0x0018);
  static const VT_HRESULT = VARENUM(0x0019);
  static const VT_PTR = VARENUM(0x001a);
  static const VT_SAFEARRAY = VARENUM(0x001b);
  static const VT_CARRAY = VARENUM(0x001c);
  static const VT_USERDEFINED = VARENUM(0x001d);
  static const VT_LPSTR = VARENUM(0x001e);
  static const VT_LPWSTR = VARENUM(0x001f);
  static const VT_RECORD = VARENUM(0x0024);
  static const VT_INT_PTR = VARENUM(0x0025);
  static const VT_UINT_PTR = VARENUM(0x0026);
  static const VT_FILETIME = VARENUM(0x0040);
  static const VT_BLOB = VARENUM(0x0041);
  static const VT_STREAM = VARENUM(0x0042);
  static const VT_STORAGE = VARENUM(0x0043);
  static const VT_STREAMED_OBJECT = VARENUM(0x0044);
  static const VT_STORED_OBJECT = VARENUM(0x0045);
  static const VT_BLOB_OBJECT = VARENUM(0x0046);
  static const VT_CF = VARENUM(0x0047);
  static const VT_CLSID = VARENUM(0x0048);
  static const VT_VERSIONED_STREAM = VARENUM(0x0049);
  static const VT_BSTR_BLOB = VARENUM(0x0fff);
  static const VT_VECTOR = VARENUM(0x1000);
  static const VT_ARRAY = VARENUM(0x2000);
  static const VT_BYREF = VARENUM(0x4000);
  static const VT_RESERVED = VARENUM(0x8000);
  static const VT_ILLEGAL = VARENUM(0xffff);
  static const VT_ILLEGALMASKED = VARENUM(0x0fff);
  static const VT_TYPEMASK = VARENUM(0x0fff);
}

/// {@category enum}
extension type const VARFLAGS(int _) implements int {
  static const VARFLAG_FREADONLY = VARFLAGS(0x0001);
  static const VARFLAG_FSOURCE = VARFLAGS(0x0002);
  static const VARFLAG_FBINDABLE = VARFLAGS(0x0004);
  static const VARFLAG_FREQUESTEDIT = VARFLAGS(0x0008);
  static const VARFLAG_FDISPLAYBIND = VARFLAGS(0x0010);
  static const VARFLAG_FDEFAULTBIND = VARFLAGS(0x0020);
  static const VARFLAG_FHIDDEN = VARFLAGS(0x0040);
  static const VARFLAG_FRESTRICTED = VARFLAGS(0x0080);
  static const VARFLAG_FDEFAULTCOLLELEM = VARFLAGS(0x0100);
  static const VARFLAG_FUIDEFAULT = VARFLAGS(0x0200);
  static const VARFLAG_FNONBROWSABLE = VARFLAGS(0x0400);
  static const VARFLAG_FREPLACEABLE = VARFLAGS(0x0800);
  static const VARFLAG_FIMMEDIATEBIND = VARFLAGS(0x1000);
}

/// {@category enum}
extension type const VARKIND(int _) implements int {
  static const VAR_PERINSTANCE = VARKIND(0x00000000);
  static const VAR_STATIC = VARKIND(0x00000001);
  static const VAR_CONST = VARKIND(0x00000002);
  static const VAR_DISPATCH = VARKIND(0x00000003);
}

/// {@category enum}
extension type const VAR_CHANGE_FLAGS(int _) implements int {
  static const VARIANT_NOVALUEPROP = VAR_CHANGE_FLAGS(0x0001);
  static const VARIANT_ALPHABOOL = VAR_CHANGE_FLAGS(0x0002);
  static const VARIANT_NOUSEROVERRIDE = VAR_CHANGE_FLAGS(0x0004);
  static const VARIANT_CALENDAR_HIJRI = VAR_CHANGE_FLAGS(0x0008);
  static const VARIANT_LOCALBOOL = VAR_CHANGE_FLAGS(0x0010);
  static const VARIANT_CALENDAR_THAI = VAR_CHANGE_FLAGS(0x0020);
  static const VARIANT_CALENDAR_GREGORIAN = VAR_CHANGE_FLAGS(0x0040);
  static const VARIANT_USE_NLS = VAR_CHANGE_FLAGS(0x0080);
}

/// {@category enum}
extension type const VER_FIND_FILE_FLAGS(int _) implements int {
  static const VFFF_ISSHAREDFILE = VER_FIND_FILE_FLAGS(0x00000001);
}

/// {@category enum}
extension type const VER_FIND_FILE_STATUS(int _) implements int {
  static const VFF_CURNEDEST = VER_FIND_FILE_STATUS(0x00000001);
  static const VFF_FILEINUSE = VER_FIND_FILE_STATUS(0x00000002);
  static const VFF_BUFFTOOSMALL = VER_FIND_FILE_STATUS(0x00000004);
}

/// {@category enum}
extension type const VER_FLAGS(int _) implements int {
  static const VER_MINORVERSION = VER_FLAGS(0x00000001);
  static const VER_MAJORVERSION = VER_FLAGS(0x00000002);
  static const VER_BUILDNUMBER = VER_FLAGS(0x00000004);
  static const VER_PLATFORMID = VER_FLAGS(0x00000008);
  static const VER_SERVICEPACKMINOR = VER_FLAGS(0x00000010);
  static const VER_SERVICEPACKMAJOR = VER_FLAGS(0x00000020);
  static const VER_SUITENAME = VER_FLAGS(0x00000040);
  static const VER_PRODUCT_TYPE = VER_FLAGS(0x00000080);
}

/// {@category enum}
extension type const VER_INSTALL_FILE_FLAGS(int _) implements int {
  static const VIFF_FORCEINSTALL = VER_INSTALL_FILE_FLAGS(0x00000001);
  static const VIFF_DONTDELETEOLD = VER_INSTALL_FILE_FLAGS(0x00000002);
}

/// {@category enum}
extension type const VER_INSTALL_FILE_STATUS(int _) implements int {
  static const VIF_TEMPFILE = VER_INSTALL_FILE_STATUS(0x00000001);
  static const VIF_MISMATCH = VER_INSTALL_FILE_STATUS(0x00000002);
  static const VIF_SRCOLD = VER_INSTALL_FILE_STATUS(0x00000004);
  static const VIF_DIFFLANG = VER_INSTALL_FILE_STATUS(0x00000008);
  static const VIF_DIFFCODEPG = VER_INSTALL_FILE_STATUS(0x00000010);
  static const VIF_DIFFTYPE = VER_INSTALL_FILE_STATUS(0x00000020);
  static const VIF_WRITEPROT = VER_INSTALL_FILE_STATUS(0x00000040);
  static const VIF_FILEINUSE = VER_INSTALL_FILE_STATUS(0x00000080);
  static const VIF_OUTOFSPACE = VER_INSTALL_FILE_STATUS(0x00000100);
  static const VIF_ACCESSVIOLATION = VER_INSTALL_FILE_STATUS(0x00000200);
  static const VIF_SHARINGVIOLATION = VER_INSTALL_FILE_STATUS(0x00000400);
  static const VIF_CANNOTCREATE = VER_INSTALL_FILE_STATUS(0x00000800);
  static const VIF_CANNOTDELETE = VER_INSTALL_FILE_STATUS(0x00001000);
  static const VIF_CANNOTRENAME = VER_INSTALL_FILE_STATUS(0x00002000);
  static const VIF_CANNOTDELETECUR = VER_INSTALL_FILE_STATUS(0x00004000);
  static const VIF_OUTOFMEMORY = VER_INSTALL_FILE_STATUS(0x00008000);
  static const VIF_CANNOTREADSRC = VER_INSTALL_FILE_STATUS(0x00010000);
  static const VIF_CANNOTREADDST = VER_INSTALL_FILE_STATUS(0x00020000);
  static const VIF_BUFFTOOSMALL = VER_INSTALL_FILE_STATUS(0x00040000);
  static const VIF_CANNOTLOADLZ32 = VER_INSTALL_FILE_STATUS(0x00080000);
  static const VIF_CANNOTLOADCABINET = VER_INSTALL_FILE_STATUS(0x00100000);
}

/// {@category enum}
extension type const VIRTUAL_ALLOCATION_TYPE(int _) implements int {
  static const MEM_COMMIT = VIRTUAL_ALLOCATION_TYPE(0x00001000);
  static const MEM_RESERVE = VIRTUAL_ALLOCATION_TYPE(0x00002000);
  static const MEM_RESET = VIRTUAL_ALLOCATION_TYPE(0x00080000);
  static const MEM_RESET_UNDO = VIRTUAL_ALLOCATION_TYPE(0x01000000);
  static const MEM_REPLACE_PLACEHOLDER = VIRTUAL_ALLOCATION_TYPE(0x00004000);
  static const MEM_LARGE_PAGES = VIRTUAL_ALLOCATION_TYPE(0x20000000);
  static const MEM_RESERVE_PLACEHOLDER = VIRTUAL_ALLOCATION_TYPE(0x00040000);
  static const MEM_FREE = VIRTUAL_ALLOCATION_TYPE(0x00010000);
}

/// {@category enum}
extension type const VIRTUAL_FREE_TYPE(int _) implements int {
  static const MEM_DECOMMIT = VIRTUAL_FREE_TYPE(0x00004000);
  static const MEM_RELEASE = VIRTUAL_FREE_TYPE(0x00008000);
}

/// {@category enum}
extension type const VIRTUAL_KEY(int _) implements int {
  static const VK_0 = VIRTUAL_KEY(0x0030);
  static const VK_1 = VIRTUAL_KEY(0x0031);
  static const VK_2 = VIRTUAL_KEY(0x0032);
  static const VK_3 = VIRTUAL_KEY(0x0033);
  static const VK_4 = VIRTUAL_KEY(0x0034);
  static const VK_5 = VIRTUAL_KEY(0x0035);
  static const VK_6 = VIRTUAL_KEY(0x0036);
  static const VK_7 = VIRTUAL_KEY(0x0037);
  static const VK_8 = VIRTUAL_KEY(0x0038);
  static const VK_9 = VIRTUAL_KEY(0x0039);
  static const VK_A = VIRTUAL_KEY(0x0041);
  static const VK_B = VIRTUAL_KEY(0x0042);
  static const VK_C = VIRTUAL_KEY(0x0043);
  static const VK_D = VIRTUAL_KEY(0x0044);
  static const VK_E = VIRTUAL_KEY(0x0045);
  static const VK_F = VIRTUAL_KEY(0x0046);
  static const VK_G = VIRTUAL_KEY(0x0047);
  static const VK_H = VIRTUAL_KEY(0x0048);
  static const VK_I = VIRTUAL_KEY(0x0049);
  static const VK_J = VIRTUAL_KEY(0x004a);
  static const VK_K = VIRTUAL_KEY(0x004b);
  static const VK_L = VIRTUAL_KEY(0x004c);
  static const VK_M = VIRTUAL_KEY(0x004d);
  static const VK_N = VIRTUAL_KEY(0x004e);
  static const VK_O = VIRTUAL_KEY(0x004f);
  static const VK_P = VIRTUAL_KEY(0x0050);
  static const VK_Q = VIRTUAL_KEY(0x0051);
  static const VK_R = VIRTUAL_KEY(0x0052);
  static const VK_S = VIRTUAL_KEY(0x0053);
  static const VK_T = VIRTUAL_KEY(0x0054);
  static const VK_U = VIRTUAL_KEY(0x0055);
  static const VK_V = VIRTUAL_KEY(0x0056);
  static const VK_W = VIRTUAL_KEY(0x0057);
  static const VK_X = VIRTUAL_KEY(0x0058);
  static const VK_Y = VIRTUAL_KEY(0x0059);
  static const VK_Z = VIRTUAL_KEY(0x005a);
  static const VK_ABNT_C1 = VIRTUAL_KEY(0x00c1);
  static const VK_ABNT_C2 = VIRTUAL_KEY(0x00c2);
  static const VK_DBE_ALPHANUMERIC = VIRTUAL_KEY(0x00f0);
  static const VK_DBE_CODEINPUT = VIRTUAL_KEY(0x00fa);
  static const VK_DBE_DBCSCHAR = VIRTUAL_KEY(0x00f4);
  static const VK_DBE_DETERMINESTRING = VIRTUAL_KEY(0x00fc);
  static const VK_DBE_ENTERDLGCONVERSIONMODE = VIRTUAL_KEY(0x00fd);
  static const VK_DBE_ENTERIMECONFIGMODE = VIRTUAL_KEY(0x00f8);
  static const VK_DBE_ENTERWORDREGISTERMODE = VIRTUAL_KEY(0x00f7);
  static const VK_DBE_FLUSHSTRING = VIRTUAL_KEY(0x00f9);
  static const VK_DBE_HIRAGANA = VIRTUAL_KEY(0x00f2);
  static const VK_DBE_KATAKANA = VIRTUAL_KEY(0x00f1);
  static const VK_DBE_NOCODEINPUT = VIRTUAL_KEY(0x00fb);
  static const VK_DBE_NOROMAN = VIRTUAL_KEY(0x00f6);
  static const VK_DBE_ROMAN = VIRTUAL_KEY(0x00f5);
  static const VK_DBE_SBCSCHAR = VIRTUAL_KEY(0x00f3);
  static const VK__none_ = VIRTUAL_KEY(0x00ff);
  static const VK_LBUTTON = VIRTUAL_KEY(0x0001);
  static const VK_RBUTTON = VIRTUAL_KEY(0x0002);
  static const VK_CANCEL = VIRTUAL_KEY(0x0003);
  static const VK_MBUTTON = VIRTUAL_KEY(0x0004);
  static const VK_XBUTTON1 = VIRTUAL_KEY(0x0005);
  static const VK_XBUTTON2 = VIRTUAL_KEY(0x0006);
  static const VK_BACK = VIRTUAL_KEY(0x0008);
  static const VK_TAB = VIRTUAL_KEY(0x0009);
  static const VK_CLEAR = VIRTUAL_KEY(0x000c);
  static const VK_RETURN = VIRTUAL_KEY(0x000d);
  static const VK_SHIFT = VIRTUAL_KEY(0x0010);
  static const VK_CONTROL = VIRTUAL_KEY(0x0011);
  static const VK_MENU = VIRTUAL_KEY(0x0012);
  static const VK_PAUSE = VIRTUAL_KEY(0x0013);
  static const VK_CAPITAL = VIRTUAL_KEY(0x0014);
  static const VK_KANA = VIRTUAL_KEY(0x0015);
  static const VK_HANGEUL = VIRTUAL_KEY(0x0015);
  static const VK_HANGUL = VIRTUAL_KEY(0x0015);
  static const VK_IME_ON = VIRTUAL_KEY(0x0016);
  static const VK_JUNJA = VIRTUAL_KEY(0x0017);
  static const VK_FINAL = VIRTUAL_KEY(0x0018);
  static const VK_HANJA = VIRTUAL_KEY(0x0019);
  static const VK_KANJI = VIRTUAL_KEY(0x0019);
  static const VK_IME_OFF = VIRTUAL_KEY(0x001a);
  static const VK_ESCAPE = VIRTUAL_KEY(0x001b);
  static const VK_CONVERT = VIRTUAL_KEY(0x001c);
  static const VK_NONCONVERT = VIRTUAL_KEY(0x001d);
  static const VK_ACCEPT = VIRTUAL_KEY(0x001e);
  static const VK_MODECHANGE = VIRTUAL_KEY(0x001f);
  static const VK_SPACE = VIRTUAL_KEY(0x0020);
  static const VK_PRIOR = VIRTUAL_KEY(0x0021);
  static const VK_NEXT = VIRTUAL_KEY(0x0022);
  static const VK_END = VIRTUAL_KEY(0x0023);
  static const VK_HOME = VIRTUAL_KEY(0x0024);
  static const VK_LEFT = VIRTUAL_KEY(0x0025);
  static const VK_UP = VIRTUAL_KEY(0x0026);
  static const VK_RIGHT = VIRTUAL_KEY(0x0027);
  static const VK_DOWN = VIRTUAL_KEY(0x0028);
  static const VK_SELECT = VIRTUAL_KEY(0x0029);
  static const VK_PRINT = VIRTUAL_KEY(0x002a);
  static const VK_EXECUTE = VIRTUAL_KEY(0x002b);
  static const VK_SNAPSHOT = VIRTUAL_KEY(0x002c);
  static const VK_INSERT = VIRTUAL_KEY(0x002d);
  static const VK_DELETE = VIRTUAL_KEY(0x002e);
  static const VK_HELP = VIRTUAL_KEY(0x002f);
  static const VK_LWIN = VIRTUAL_KEY(0x005b);
  static const VK_RWIN = VIRTUAL_KEY(0x005c);
  static const VK_APPS = VIRTUAL_KEY(0x005d);
  static const VK_SLEEP = VIRTUAL_KEY(0x005f);
  static const VK_NUMPAD0 = VIRTUAL_KEY(0x0060);
  static const VK_NUMPAD1 = VIRTUAL_KEY(0x0061);
  static const VK_NUMPAD2 = VIRTUAL_KEY(0x0062);
  static const VK_NUMPAD3 = VIRTUAL_KEY(0x0063);
  static const VK_NUMPAD4 = VIRTUAL_KEY(0x0064);
  static const VK_NUMPAD5 = VIRTUAL_KEY(0x0065);
  static const VK_NUMPAD6 = VIRTUAL_KEY(0x0066);
  static const VK_NUMPAD7 = VIRTUAL_KEY(0x0067);
  static const VK_NUMPAD8 = VIRTUAL_KEY(0x0068);
  static const VK_NUMPAD9 = VIRTUAL_KEY(0x0069);
  static const VK_MULTIPLY = VIRTUAL_KEY(0x006a);
  static const VK_ADD = VIRTUAL_KEY(0x006b);
  static const VK_SEPARATOR = VIRTUAL_KEY(0x006c);
  static const VK_SUBTRACT = VIRTUAL_KEY(0x006d);
  static const VK_DECIMAL = VIRTUAL_KEY(0x006e);
  static const VK_DIVIDE = VIRTUAL_KEY(0x006f);
  static const VK_F1 = VIRTUAL_KEY(0x0070);
  static const VK_F2 = VIRTUAL_KEY(0x0071);
  static const VK_F3 = VIRTUAL_KEY(0x0072);
  static const VK_F4 = VIRTUAL_KEY(0x0073);
  static const VK_F5 = VIRTUAL_KEY(0x0074);
  static const VK_F6 = VIRTUAL_KEY(0x0075);
  static const VK_F7 = VIRTUAL_KEY(0x0076);
  static const VK_F8 = VIRTUAL_KEY(0x0077);
  static const VK_F9 = VIRTUAL_KEY(0x0078);
  static const VK_F10 = VIRTUAL_KEY(0x0079);
  static const VK_F11 = VIRTUAL_KEY(0x007a);
  static const VK_F12 = VIRTUAL_KEY(0x007b);
  static const VK_F13 = VIRTUAL_KEY(0x007c);
  static const VK_F14 = VIRTUAL_KEY(0x007d);
  static const VK_F15 = VIRTUAL_KEY(0x007e);
  static const VK_F16 = VIRTUAL_KEY(0x007f);
  static const VK_F17 = VIRTUAL_KEY(0x0080);
  static const VK_F18 = VIRTUAL_KEY(0x0081);
  static const VK_F19 = VIRTUAL_KEY(0x0082);
  static const VK_F20 = VIRTUAL_KEY(0x0083);
  static const VK_F21 = VIRTUAL_KEY(0x0084);
  static const VK_F22 = VIRTUAL_KEY(0x0085);
  static const VK_F23 = VIRTUAL_KEY(0x0086);
  static const VK_F24 = VIRTUAL_KEY(0x0087);
  static const VK_NAVIGATION_VIEW = VIRTUAL_KEY(0x0088);
  static const VK_NAVIGATION_MENU = VIRTUAL_KEY(0x0089);
  static const VK_NAVIGATION_UP = VIRTUAL_KEY(0x008a);
  static const VK_NAVIGATION_DOWN = VIRTUAL_KEY(0x008b);
  static const VK_NAVIGATION_LEFT = VIRTUAL_KEY(0x008c);
  static const VK_NAVIGATION_RIGHT = VIRTUAL_KEY(0x008d);
  static const VK_NAVIGATION_ACCEPT = VIRTUAL_KEY(0x008e);
  static const VK_NAVIGATION_CANCEL = VIRTUAL_KEY(0x008f);
  static const VK_NUMLOCK = VIRTUAL_KEY(0x0090);
  static const VK_SCROLL = VIRTUAL_KEY(0x0091);
  static const VK_OEM_NEC_EQUAL = VIRTUAL_KEY(0x0092);
  static const VK_OEM_FJ_JISHO = VIRTUAL_KEY(0x0092);
  static const VK_OEM_FJ_MASSHOU = VIRTUAL_KEY(0x0093);
  static const VK_OEM_FJ_TOUROKU = VIRTUAL_KEY(0x0094);
  static const VK_OEM_FJ_LOYA = VIRTUAL_KEY(0x0095);
  static const VK_OEM_FJ_ROYA = VIRTUAL_KEY(0x0096);
  static const VK_LSHIFT = VIRTUAL_KEY(0x00a0);
  static const VK_RSHIFT = VIRTUAL_KEY(0x00a1);
  static const VK_LCONTROL = VIRTUAL_KEY(0x00a2);
  static const VK_RCONTROL = VIRTUAL_KEY(0x00a3);
  static const VK_LMENU = VIRTUAL_KEY(0x00a4);
  static const VK_RMENU = VIRTUAL_KEY(0x00a5);
  static const VK_BROWSER_BACK = VIRTUAL_KEY(0x00a6);
  static const VK_BROWSER_FORWARD = VIRTUAL_KEY(0x00a7);
  static const VK_BROWSER_REFRESH = VIRTUAL_KEY(0x00a8);
  static const VK_BROWSER_STOP = VIRTUAL_KEY(0x00a9);
  static const VK_BROWSER_SEARCH = VIRTUAL_KEY(0x00aa);
  static const VK_BROWSER_FAVORITES = VIRTUAL_KEY(0x00ab);
  static const VK_BROWSER_HOME = VIRTUAL_KEY(0x00ac);
  static const VK_VOLUME_MUTE = VIRTUAL_KEY(0x00ad);
  static const VK_VOLUME_DOWN = VIRTUAL_KEY(0x00ae);
  static const VK_VOLUME_UP = VIRTUAL_KEY(0x00af);
  static const VK_MEDIA_NEXT_TRACK = VIRTUAL_KEY(0x00b0);
  static const VK_MEDIA_PREV_TRACK = VIRTUAL_KEY(0x00b1);
  static const VK_MEDIA_STOP = VIRTUAL_KEY(0x00b2);
  static const VK_MEDIA_PLAY_PAUSE = VIRTUAL_KEY(0x00b3);
  static const VK_LAUNCH_MAIL = VIRTUAL_KEY(0x00b4);
  static const VK_LAUNCH_MEDIA_SELECT = VIRTUAL_KEY(0x00b5);
  static const VK_LAUNCH_APP1 = VIRTUAL_KEY(0x00b6);
  static const VK_LAUNCH_APP2 = VIRTUAL_KEY(0x00b7);
  static const VK_OEM_1 = VIRTUAL_KEY(0x00ba);
  static const VK_OEM_PLUS = VIRTUAL_KEY(0x00bb);
  static const VK_OEM_COMMA = VIRTUAL_KEY(0x00bc);
  static const VK_OEM_MINUS = VIRTUAL_KEY(0x00bd);
  static const VK_OEM_PERIOD = VIRTUAL_KEY(0x00be);
  static const VK_OEM_2 = VIRTUAL_KEY(0x00bf);
  static const VK_OEM_3 = VIRTUAL_KEY(0x00c0);
  static const VK_GAMEPAD_A = VIRTUAL_KEY(0x00c3);
  static const VK_GAMEPAD_B = VIRTUAL_KEY(0x00c4);
  static const VK_GAMEPAD_X = VIRTUAL_KEY(0x00c5);
  static const VK_GAMEPAD_Y = VIRTUAL_KEY(0x00c6);
  static const VK_GAMEPAD_RIGHT_SHOULDER = VIRTUAL_KEY(0x00c7);
  static const VK_GAMEPAD_LEFT_SHOULDER = VIRTUAL_KEY(0x00c8);
  static const VK_GAMEPAD_LEFT_TRIGGER = VIRTUAL_KEY(0x00c9);
  static const VK_GAMEPAD_RIGHT_TRIGGER = VIRTUAL_KEY(0x00ca);
  static const VK_GAMEPAD_DPAD_UP = VIRTUAL_KEY(0x00cb);
  static const VK_GAMEPAD_DPAD_DOWN = VIRTUAL_KEY(0x00cc);
  static const VK_GAMEPAD_DPAD_LEFT = VIRTUAL_KEY(0x00cd);
  static const VK_GAMEPAD_DPAD_RIGHT = VIRTUAL_KEY(0x00ce);
  static const VK_GAMEPAD_MENU = VIRTUAL_KEY(0x00cf);
  static const VK_GAMEPAD_VIEW = VIRTUAL_KEY(0x00d0);
  static const VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = VIRTUAL_KEY(0x00d1);
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = VIRTUAL_KEY(0x00d2);
  static const VK_GAMEPAD_LEFT_THUMBSTICK_UP = VIRTUAL_KEY(0x00d3);
  static const VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = VIRTUAL_KEY(0x00d4);
  static const VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = VIRTUAL_KEY(0x00d5);
  static const VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = VIRTUAL_KEY(0x00d6);
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_UP = VIRTUAL_KEY(0x00d7);
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = VIRTUAL_KEY(0x00d8);
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = VIRTUAL_KEY(0x00d9);
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = VIRTUAL_KEY(0x00da);
  static const VK_OEM_4 = VIRTUAL_KEY(0x00db);
  static const VK_OEM_5 = VIRTUAL_KEY(0x00dc);
  static const VK_OEM_6 = VIRTUAL_KEY(0x00dd);
  static const VK_OEM_7 = VIRTUAL_KEY(0x00de);
  static const VK_OEM_8 = VIRTUAL_KEY(0x00df);
  static const VK_OEM_AX = VIRTUAL_KEY(0x00e1);
  static const VK_OEM_102 = VIRTUAL_KEY(0x00e2);
  static const VK_ICO_HELP = VIRTUAL_KEY(0x00e3);
  static const VK_ICO_00 = VIRTUAL_KEY(0x00e4);
  static const VK_PROCESSKEY = VIRTUAL_KEY(0x00e5);
  static const VK_ICO_CLEAR = VIRTUAL_KEY(0x00e6);
  static const VK_PACKET = VIRTUAL_KEY(0x00e7);
  static const VK_OEM_RESET = VIRTUAL_KEY(0x00e9);
  static const VK_OEM_JUMP = VIRTUAL_KEY(0x00ea);
  static const VK_OEM_PA1 = VIRTUAL_KEY(0x00eb);
  static const VK_OEM_PA2 = VIRTUAL_KEY(0x00ec);
  static const VK_OEM_PA3 = VIRTUAL_KEY(0x00ed);
  static const VK_OEM_WSCTRL = VIRTUAL_KEY(0x00ee);
  static const VK_OEM_CUSEL = VIRTUAL_KEY(0x00ef);
  static const VK_OEM_ATTN = VIRTUAL_KEY(0x00f0);
  static const VK_OEM_FINISH = VIRTUAL_KEY(0x00f1);
  static const VK_OEM_COPY = VIRTUAL_KEY(0x00f2);
  static const VK_OEM_AUTO = VIRTUAL_KEY(0x00f3);
  static const VK_OEM_ENLW = VIRTUAL_KEY(0x00f4);
  static const VK_OEM_BACKTAB = VIRTUAL_KEY(0x00f5);
  static const VK_ATTN = VIRTUAL_KEY(0x00f6);
  static const VK_CRSEL = VIRTUAL_KEY(0x00f7);
  static const VK_EXSEL = VIRTUAL_KEY(0x00f8);
  static const VK_EREOF = VIRTUAL_KEY(0x00f9);
  static const VK_PLAY = VIRTUAL_KEY(0x00fa);
  static const VK_ZOOM = VIRTUAL_KEY(0x00fb);
  static const VK_NONAME = VIRTUAL_KEY(0x00fc);
  static const VK_PA1 = VIRTUAL_KEY(0x00fd);
  static const VK_OEM_CLEAR = VIRTUAL_KEY(0x00fe);
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_FLAGS(int _) implements int {
  static const VS_FF_DEBUG = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000001);
  static const VS_FF_PRERELEASE = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000002);
  static const VS_FF_PATCHED = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000004);
  static const VS_FF_PRIVATEBUILD = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000008);
  static const VS_FF_INFOINFERRED = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000010);
  static const VS_FF_SPECIALBUILD = VS_FIXEDFILEINFO_FILE_FLAGS(0x00000020);
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_OS(int _) implements int {
  static const VOS_UNKNOWN = VS_FIXEDFILEINFO_FILE_OS(0x00000000);
  static const VOS_DOS = VS_FIXEDFILEINFO_FILE_OS(0x00010000);
  static const VOS_OS216 = VS_FIXEDFILEINFO_FILE_OS(0x00020000);
  static const VOS_OS232 = VS_FIXEDFILEINFO_FILE_OS(0x00030000);
  static const VOS_NT = VS_FIXEDFILEINFO_FILE_OS(0x00040000);
  static const VOS_WINCE = VS_FIXEDFILEINFO_FILE_OS(0x00050000);
  static const VOS__BASE = VS_FIXEDFILEINFO_FILE_OS(0x00000000);
  static const VOS__WINDOWS16 = VS_FIXEDFILEINFO_FILE_OS(0x00000001);
  static const VOS__PM16 = VS_FIXEDFILEINFO_FILE_OS(0x00000002);
  static const VOS__PM32 = VS_FIXEDFILEINFO_FILE_OS(0x00000003);
  static const VOS__WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(0x00000004);
  static const VOS_DOS_WINDOWS16 = VS_FIXEDFILEINFO_FILE_OS(0x00010001);
  static const VOS_DOS_WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(0x00010004);
  static const VOS_OS216_PM16 = VS_FIXEDFILEINFO_FILE_OS(0x00020002);
  static const VOS_OS232_PM32 = VS_FIXEDFILEINFO_FILE_OS(0x00030003);
  static const VOS_NT_WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(0x00040004);
}

/// {@category enum}
extension type const WAIT_EVENT(int _) implements int {
  static const WAIT_OBJECT_0 = WAIT_EVENT(0x00000000);
  static const WAIT_ABANDONED = WAIT_EVENT(0x00000080);
  static const WAIT_ABANDONED_0 = WAIT_EVENT(0x00000080);
  static const WAIT_IO_COMPLETION = WAIT_EVENT(0x000000c0);
  static const WAIT_TIMEOUT = WAIT_EVENT(0x00000102);
  static const WAIT_FAILED = WAIT_EVENT(0xffffffff);
}

/// {@category enum}
extension type const WBEM_COMPARISON_FLAG(int _) implements int {
  static const WBEM_COMPARISON_INCLUDE_ALL = WBEM_COMPARISON_FLAG(0x00000000);
  static const WBEM_FLAG_IGNORE_QUALIFIERS = WBEM_COMPARISON_FLAG(0x00000001);
  static const WBEM_FLAG_IGNORE_OBJECT_SOURCE =
      WBEM_COMPARISON_FLAG(0x00000002);
  static const WBEM_FLAG_IGNORE_DEFAULT_VALUES =
      WBEM_COMPARISON_FLAG(0x00000004);
  static const WBEM_FLAG_IGNORE_CLASS = WBEM_COMPARISON_FLAG(0x00000008);
  static const WBEM_FLAG_IGNORE_CASE = WBEM_COMPARISON_FLAG(0x00000010);
  static const WBEM_FLAG_IGNORE_FLAVOR = WBEM_COMPARISON_FLAG(0x00000020);
}

/// {@category enum}
extension type const WBEM_CONDITION_FLAG_TYPE(int _) implements int {
  static const WBEM_FLAG_ALWAYS = WBEM_CONDITION_FLAG_TYPE(0x00000000);
  static const WBEM_FLAG_ONLY_IF_TRUE = WBEM_CONDITION_FLAG_TYPE(0x00000001);
  static const WBEM_FLAG_ONLY_IF_FALSE = WBEM_CONDITION_FLAG_TYPE(0x00000002);
  static const WBEM_FLAG_ONLY_IF_IDENTICAL =
      WBEM_CONDITION_FLAG_TYPE(0x00000003);
  static const WBEM_MASK_PRIMARY_CONDITION =
      WBEM_CONDITION_FLAG_TYPE(0x00000003);
  static const WBEM_FLAG_KEYS_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000004);
  static const WBEM_FLAG_REFS_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000008);
  static const WBEM_FLAG_LOCAL_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000010);
  static const WBEM_FLAG_PROPAGATED_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000020);
  static const WBEM_FLAG_SYSTEM_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000030);
  static const WBEM_FLAG_NONSYSTEM_ONLY = WBEM_CONDITION_FLAG_TYPE(0x00000040);
  static const WBEM_MASK_CONDITION_ORIGIN =
      WBEM_CONDITION_FLAG_TYPE(0x00000070);
  static const WBEM_FLAG_CLASS_OVERRIDES_ONLY =
      WBEM_CONDITION_FLAG_TYPE(0x00000100);
  static const WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES =
      WBEM_CONDITION_FLAG_TYPE(0x00000200);
  static const WBEM_MASK_CLASS_CONDITION = WBEM_CONDITION_FLAG_TYPE(0x00000300);
}

/// {@category enum}
extension type const WBEM_GENERIC_FLAG_TYPE(int _) implements int {
  static const WBEM_FLAG_RETURN_IMMEDIATELY =
      WBEM_GENERIC_FLAG_TYPE(0x00000010);
  static const WBEM_FLAG_RETURN_WBEM_COMPLETE =
      WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_FLAG_BIDIRECTIONAL = WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_FLAG_FORWARD_ONLY = WBEM_GENERIC_FLAG_TYPE(0x00000020);
  static const WBEM_FLAG_NO_ERROR_OBJECT = WBEM_GENERIC_FLAG_TYPE(0x00000040);
  static const WBEM_FLAG_RETURN_ERROR_OBJECT =
      WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_FLAG_SEND_STATUS = WBEM_GENERIC_FLAG_TYPE(0x00000080);
  static const WBEM_FLAG_DONT_SEND_STATUS = WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_FLAG_ENSURE_LOCATABLE = WBEM_GENERIC_FLAG_TYPE(0x00000100);
  static const WBEM_FLAG_DIRECT_READ = WBEM_GENERIC_FLAG_TYPE(0x00000200);
  static const WBEM_FLAG_SEND_ONLY_SELECTED =
      WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_RETURN_WHEN_COMPLETE = WBEM_GENERIC_FLAG_TYPE(0x00000000);
  static const WBEM_RETURN_IMMEDIATELY = WBEM_GENERIC_FLAG_TYPE(0x00000010);
  static const WBEM_MASK_RESERVED_FLAGS = WBEM_GENERIC_FLAG_TYPE(0x0001f000);
  static const WBEM_FLAG_USE_AMENDED_QUALIFIERS =
      WBEM_GENERIC_FLAG_TYPE(0x00020000);
  static const WBEM_FLAG_STRONG_VALIDATION = WBEM_GENERIC_FLAG_TYPE(0x00100000);
}

/// {@category enum}
extension type const WIN32_ERROR(int _) implements int {
  static const NO_ERROR = WIN32_ERROR(0x00000000);
  static const ERROR_EXPECTED_SECTION_NAME = WIN32_ERROR(0xe0000000);
  static const ERROR_BAD_SECTION_NAME_LINE = WIN32_ERROR(0xe0000001);
  static const ERROR_SECTION_NAME_TOO_LONG = WIN32_ERROR(0xe0000002);
  static const ERROR_GENERAL_SYNTAX = WIN32_ERROR(0xe0000003);
  static const ERROR_WRONG_INF_STYLE = WIN32_ERROR(0xe0000100);
  static const ERROR_SECTION_NOT_FOUND = WIN32_ERROR(0xe0000101);
  static const ERROR_LINE_NOT_FOUND = WIN32_ERROR(0xe0000102);
  static const ERROR_NO_BACKUP = WIN32_ERROR(0xe0000103);
  static const ERROR_NO_ASSOCIATED_CLASS = WIN32_ERROR(0xe0000200);
  static const ERROR_CLASS_MISMATCH = WIN32_ERROR(0xe0000201);
  static const ERROR_DUPLICATE_FOUND = WIN32_ERROR(0xe0000202);
  static const ERROR_NO_DRIVER_SELECTED = WIN32_ERROR(0xe0000203);
  static const ERROR_KEY_DOES_NOT_EXIST = WIN32_ERROR(0xe0000204);
  static const ERROR_INVALID_DEVINST_NAME = WIN32_ERROR(0xe0000205);
  static const ERROR_INVALID_CLASS = WIN32_ERROR(0xe0000206);
  static const ERROR_DEVINST_ALREADY_EXISTS = WIN32_ERROR(0xe0000207);
  static const ERROR_DEVINFO_NOT_REGISTERED = WIN32_ERROR(0xe0000208);
  static const ERROR_INVALID_REG_PROPERTY = WIN32_ERROR(0xe0000209);
  static const ERROR_NO_INF = WIN32_ERROR(0xe000020a);
  static const ERROR_NO_SUCH_DEVINST = WIN32_ERROR(0xe000020b);
  static const ERROR_CANT_LOAD_CLASS_ICON = WIN32_ERROR(0xe000020c);
  static const ERROR_INVALID_CLASS_INSTALLER = WIN32_ERROR(0xe000020d);
  static const ERROR_DI_DO_DEFAULT = WIN32_ERROR(0xe000020e);
  static const ERROR_DI_NOFILECOPY = WIN32_ERROR(0xe000020f);
  static const ERROR_INVALID_HWPROFILE = WIN32_ERROR(0xe0000210);
  static const ERROR_NO_DEVICE_SELECTED = WIN32_ERROR(0xe0000211);
  static const ERROR_DEVINFO_LIST_LOCKED = WIN32_ERROR(0xe0000212);
  static const ERROR_DEVINFO_DATA_LOCKED = WIN32_ERROR(0xe0000213);
  static const ERROR_DI_BAD_PATH = WIN32_ERROR(0xe0000214);
  static const ERROR_NO_CLASSINSTALL_PARAMS = WIN32_ERROR(0xe0000215);
  static const ERROR_FILEQUEUE_LOCKED = WIN32_ERROR(0xe0000216);
  static const ERROR_BAD_SERVICE_INSTALLSECT = WIN32_ERROR(0xe0000217);
  static const ERROR_NO_CLASS_DRIVER_LIST = WIN32_ERROR(0xe0000218);
  static const ERROR_NO_ASSOCIATED_SERVICE = WIN32_ERROR(0xe0000219);
  static const ERROR_NO_DEFAULT_DEVICE_INTERFACE = WIN32_ERROR(0xe000021a);
  static const ERROR_DEVICE_INTERFACE_ACTIVE = WIN32_ERROR(0xe000021b);
  static const ERROR_DEVICE_INTERFACE_REMOVED = WIN32_ERROR(0xe000021c);
  static const ERROR_BAD_INTERFACE_INSTALLSECT = WIN32_ERROR(0xe000021d);
  static const ERROR_NO_SUCH_INTERFACE_CLASS = WIN32_ERROR(0xe000021e);
  static const ERROR_INVALID_REFERENCE_STRING = WIN32_ERROR(0xe000021f);
  static const ERROR_INVALID_MACHINENAME = WIN32_ERROR(0xe0000220);
  static const ERROR_REMOTE_COMM_FAILURE = WIN32_ERROR(0xe0000221);
  static const ERROR_MACHINE_UNAVAILABLE = WIN32_ERROR(0xe0000222);
  static const ERROR_NO_CONFIGMGR_SERVICES = WIN32_ERROR(0xe0000223);
  static const ERROR_INVALID_PROPPAGE_PROVIDER = WIN32_ERROR(0xe0000224);
  static const ERROR_NO_SUCH_DEVICE_INTERFACE = WIN32_ERROR(0xe0000225);
  static const ERROR_DI_POSTPROCESSING_REQUIRED = WIN32_ERROR(0xe0000226);
  static const ERROR_INVALID_COINSTALLER = WIN32_ERROR(0xe0000227);
  static const ERROR_NO_COMPAT_DRIVERS = WIN32_ERROR(0xe0000228);
  static const ERROR_NO_DEVICE_ICON = WIN32_ERROR(0xe0000229);
  static const ERROR_INVALID_INF_LOGCONFIG = WIN32_ERROR(0xe000022a);
  static const ERROR_DI_DONT_INSTALL = WIN32_ERROR(0xe000022b);
  static const ERROR_INVALID_FILTER_DRIVER = WIN32_ERROR(0xe000022c);
  static const ERROR_NON_WINDOWS_NT_DRIVER = WIN32_ERROR(0xe000022d);
  static const ERROR_NON_WINDOWS_DRIVER = WIN32_ERROR(0xe000022e);
  static const ERROR_NO_CATALOG_FOR_OEM_INF = WIN32_ERROR(0xe000022f);
  static const ERROR_DEVINSTALL_QUEUE_NONNATIVE = WIN32_ERROR(0xe0000230);
  static const ERROR_NOT_DISABLEABLE = WIN32_ERROR(0xe0000231);
  static const ERROR_CANT_REMOVE_DEVINST = WIN32_ERROR(0xe0000232);
  static const ERROR_INVALID_TARGET = WIN32_ERROR(0xe0000233);
  static const ERROR_DRIVER_NONNATIVE = WIN32_ERROR(0xe0000234);
  static const ERROR_IN_WOW64 = WIN32_ERROR(0xe0000235);
  static const ERROR_SET_SYSTEM_RESTORE_POINT = WIN32_ERROR(0xe0000236);
  static const ERROR_SCE_DISABLED = WIN32_ERROR(0xe0000238);
  static const ERROR_UNKNOWN_EXCEPTION = WIN32_ERROR(0xe0000239);
  static const ERROR_PNP_REGISTRY_ERROR = WIN32_ERROR(0xe000023a);
  static const ERROR_REMOTE_REQUEST_UNSUPPORTED = WIN32_ERROR(0xe000023b);
  static const ERROR_NOT_AN_INSTALLED_OEM_INF = WIN32_ERROR(0xe000023c);
  static const ERROR_INF_IN_USE_BY_DEVICES = WIN32_ERROR(0xe000023d);
  static const ERROR_DI_FUNCTION_OBSOLETE = WIN32_ERROR(0xe000023e);
  static const ERROR_NO_AUTHENTICODE_CATALOG = WIN32_ERROR(0xe000023f);
  static const ERROR_AUTHENTICODE_DISALLOWED = WIN32_ERROR(0xe0000240);
  static const ERROR_AUTHENTICODE_TRUSTED_PUBLISHER = WIN32_ERROR(0xe0000241);
  static const ERROR_AUTHENTICODE_TRUST_NOT_ESTABLISHED =
      WIN32_ERROR(0xe0000242);
  static const ERROR_AUTHENTICODE_PUBLISHER_NOT_TRUSTED =
      WIN32_ERROR(0xe0000243);
  static const ERROR_SIGNATURE_OSATTRIBUTE_MISMATCH = WIN32_ERROR(0xe0000244);
  static const ERROR_ONLY_VALIDATE_VIA_AUTHENTICODE = WIN32_ERROR(0xe0000245);
  static const ERROR_DEVICE_INSTALLER_NOT_READY = WIN32_ERROR(0xe0000246);
  static const ERROR_DRIVER_STORE_ADD_FAILED = WIN32_ERROR(0xe0000247);
  static const ERROR_DEVICE_INSTALL_BLOCKED = WIN32_ERROR(0xe0000248);
  static const ERROR_DRIVER_INSTALL_BLOCKED = WIN32_ERROR(0xe0000249);
  static const ERROR_WRONG_INF_TYPE = WIN32_ERROR(0xe000024a);
  static const ERROR_FILE_HASH_NOT_IN_CATALOG = WIN32_ERROR(0xe000024b);
  static const ERROR_DRIVER_STORE_DELETE_FAILED = WIN32_ERROR(0xe000024c);
  static const ERROR_UNRECOVERABLE_STACK_OVERFLOW = WIN32_ERROR(0xe0000300);
  static const ERROR_NO_DEFAULT_INTERFACE_DEVICE = WIN32_ERROR(0xe000021a);
  static const ERROR_INTERFACE_DEVICE_ACTIVE = WIN32_ERROR(0xe000021b);
  static const ERROR_INTERFACE_DEVICE_REMOVED = WIN32_ERROR(0xe000021c);
  static const ERROR_NO_SUCH_INTERFACE_DEVICE = WIN32_ERROR(0xe0000225);
  static const ERROR_NOT_INSTALLED = WIN32_ERROR(0xe0001000);
  static const ERROR_SUCCESS = WIN32_ERROR(0x00000000);
  static const ERROR_INVALID_FUNCTION = WIN32_ERROR(0x00000001);
  static const ERROR_FILE_NOT_FOUND = WIN32_ERROR(0x00000002);
  static const ERROR_PATH_NOT_FOUND = WIN32_ERROR(0x00000003);
  static const ERROR_TOO_MANY_OPEN_FILES = WIN32_ERROR(0x00000004);
  static const ERROR_ACCESS_DENIED = WIN32_ERROR(0x00000005);
  static const ERROR_INVALID_HANDLE = WIN32_ERROR(0x00000006);
  static const ERROR_ARENA_TRASHED = WIN32_ERROR(0x00000007);
  static const ERROR_NOT_ENOUGH_MEMORY = WIN32_ERROR(0x00000008);
  static const ERROR_INVALID_BLOCK = WIN32_ERROR(0x00000009);
  static const ERROR_BAD_ENVIRONMENT = WIN32_ERROR(0x0000000a);
  static const ERROR_BAD_FORMAT = WIN32_ERROR(0x0000000b);
  static const ERROR_INVALID_ACCESS = WIN32_ERROR(0x0000000c);
  static const ERROR_INVALID_DATA = WIN32_ERROR(0x0000000d);
  static const ERROR_OUTOFMEMORY = WIN32_ERROR(0x0000000e);
  static const ERROR_INVALID_DRIVE = WIN32_ERROR(0x0000000f);
  static const ERROR_CURRENT_DIRECTORY = WIN32_ERROR(0x00000010);
  static const ERROR_NOT_SAME_DEVICE = WIN32_ERROR(0x00000011);
  static const ERROR_NO_MORE_FILES = WIN32_ERROR(0x00000012);
  static const ERROR_WRITE_PROTECT = WIN32_ERROR(0x00000013);
  static const ERROR_BAD_UNIT = WIN32_ERROR(0x00000014);
  static const ERROR_NOT_READY = WIN32_ERROR(0x00000015);
  static const ERROR_BAD_COMMAND = WIN32_ERROR(0x00000016);
  static const ERROR_CRC = WIN32_ERROR(0x00000017);
  static const ERROR_BAD_LENGTH = WIN32_ERROR(0x00000018);
  static const ERROR_SEEK = WIN32_ERROR(0x00000019);
  static const ERROR_NOT_DOS_DISK = WIN32_ERROR(0x0000001a);
  static const ERROR_SECTOR_NOT_FOUND = WIN32_ERROR(0x0000001b);
  static const ERROR_OUT_OF_PAPER = WIN32_ERROR(0x0000001c);
  static const ERROR_WRITE_FAULT = WIN32_ERROR(0x0000001d);
  static const ERROR_READ_FAULT = WIN32_ERROR(0x0000001e);
  static const ERROR_GEN_FAILURE = WIN32_ERROR(0x0000001f);
  static const ERROR_SHARING_VIOLATION = WIN32_ERROR(0x00000020);
  static const ERROR_LOCK_VIOLATION = WIN32_ERROR(0x00000021);
  static const ERROR_WRONG_DISK = WIN32_ERROR(0x00000022);
  static const ERROR_SHARING_BUFFER_EXCEEDED = WIN32_ERROR(0x00000024);
  static const ERROR_HANDLE_EOF = WIN32_ERROR(0x00000026);
  static const ERROR_HANDLE_DISK_FULL = WIN32_ERROR(0x00000027);
  static const ERROR_NOT_SUPPORTED = WIN32_ERROR(0x00000032);
  static const ERROR_REM_NOT_LIST = WIN32_ERROR(0x00000033);
  static const ERROR_DUP_NAME = WIN32_ERROR(0x00000034);
  static const ERROR_BAD_NETPATH = WIN32_ERROR(0x00000035);
  static const ERROR_NETWORK_BUSY = WIN32_ERROR(0x00000036);
  static const ERROR_DEV_NOT_EXIST = WIN32_ERROR(0x00000037);
  static const ERROR_TOO_MANY_CMDS = WIN32_ERROR(0x00000038);
  static const ERROR_ADAP_HDW_ERR = WIN32_ERROR(0x00000039);
  static const ERROR_BAD_NET_RESP = WIN32_ERROR(0x0000003a);
  static const ERROR_UNEXP_NET_ERR = WIN32_ERROR(0x0000003b);
  static const ERROR_BAD_REM_ADAP = WIN32_ERROR(0x0000003c);
  static const ERROR_PRINTQ_FULL = WIN32_ERROR(0x0000003d);
  static const ERROR_NO_SPOOL_SPACE = WIN32_ERROR(0x0000003e);
  static const ERROR_PRINT_CANCELLED = WIN32_ERROR(0x0000003f);
  static const ERROR_NETNAME_DELETED = WIN32_ERROR(0x00000040);
  static const ERROR_NETWORK_ACCESS_DENIED = WIN32_ERROR(0x00000041);
  static const ERROR_BAD_DEV_TYPE = WIN32_ERROR(0x00000042);
  static const ERROR_BAD_NET_NAME = WIN32_ERROR(0x00000043);
  static const ERROR_TOO_MANY_NAMES = WIN32_ERROR(0x00000044);
  static const ERROR_TOO_MANY_SESS = WIN32_ERROR(0x00000045);
  static const ERROR_SHARING_PAUSED = WIN32_ERROR(0x00000046);
  static const ERROR_REQ_NOT_ACCEP = WIN32_ERROR(0x00000047);
  static const ERROR_REDIR_PAUSED = WIN32_ERROR(0x00000048);
  static const ERROR_FILE_EXISTS = WIN32_ERROR(0x00000050);
  static const ERROR_CANNOT_MAKE = WIN32_ERROR(0x00000052);
  static const ERROR_FAIL_I24 = WIN32_ERROR(0x00000053);
  static const ERROR_OUT_OF_STRUCTURES = WIN32_ERROR(0x00000054);
  static const ERROR_ALREADY_ASSIGNED = WIN32_ERROR(0x00000055);
  static const ERROR_INVALID_PASSWORD = WIN32_ERROR(0x00000056);
  static const ERROR_INVALID_PARAMETER = WIN32_ERROR(0x00000057);
  static const ERROR_NET_WRITE_FAULT = WIN32_ERROR(0x00000058);
  static const ERROR_NO_PROC_SLOTS = WIN32_ERROR(0x00000059);
  static const ERROR_TOO_MANY_SEMAPHORES = WIN32_ERROR(0x00000064);
  static const ERROR_EXCL_SEM_ALREADY_OWNED = WIN32_ERROR(0x00000065);
  static const ERROR_SEM_IS_SET = WIN32_ERROR(0x00000066);
  static const ERROR_TOO_MANY_SEM_REQUESTS = WIN32_ERROR(0x00000067);
  static const ERROR_INVALID_AT_INTERRUPT_TIME = WIN32_ERROR(0x00000068);
  static const ERROR_SEM_OWNER_DIED = WIN32_ERROR(0x00000069);
  static const ERROR_SEM_USER_LIMIT = WIN32_ERROR(0x0000006a);
  static const ERROR_DISK_CHANGE = WIN32_ERROR(0x0000006b);
  static const ERROR_DRIVE_LOCKED = WIN32_ERROR(0x0000006c);
  static const ERROR_BROKEN_PIPE = WIN32_ERROR(0x0000006d);
  static const ERROR_OPEN_FAILED = WIN32_ERROR(0x0000006e);
  static const ERROR_BUFFER_OVERFLOW = WIN32_ERROR(0x0000006f);
  static const ERROR_DISK_FULL = WIN32_ERROR(0x00000070);
  static const ERROR_NO_MORE_SEARCH_HANDLES = WIN32_ERROR(0x00000071);
  static const ERROR_INVALID_TARGET_HANDLE = WIN32_ERROR(0x00000072);
  static const ERROR_INVALID_CATEGORY = WIN32_ERROR(0x00000075);
  static const ERROR_INVALID_VERIFY_SWITCH = WIN32_ERROR(0x00000076);
  static const ERROR_BAD_DRIVER_LEVEL = WIN32_ERROR(0x00000077);
  static const ERROR_CALL_NOT_IMPLEMENTED = WIN32_ERROR(0x00000078);
  static const ERROR_SEM_TIMEOUT = WIN32_ERROR(0x00000079);
  static const ERROR_INSUFFICIENT_BUFFER = WIN32_ERROR(0x0000007a);
  static const ERROR_INVALID_NAME = WIN32_ERROR(0x0000007b);
  static const ERROR_INVALID_LEVEL = WIN32_ERROR(0x0000007c);
  static const ERROR_NO_VOLUME_LABEL = WIN32_ERROR(0x0000007d);
  static const ERROR_MOD_NOT_FOUND = WIN32_ERROR(0x0000007e);
  static const ERROR_PROC_NOT_FOUND = WIN32_ERROR(0x0000007f);
  static const ERROR_WAIT_NO_CHILDREN = WIN32_ERROR(0x00000080);
  static const ERROR_CHILD_NOT_COMPLETE = WIN32_ERROR(0x00000081);
  static const ERROR_DIRECT_ACCESS_HANDLE = WIN32_ERROR(0x00000082);
  static const ERROR_NEGATIVE_SEEK = WIN32_ERROR(0x00000083);
  static const ERROR_SEEK_ON_DEVICE = WIN32_ERROR(0x00000084);
  static const ERROR_IS_JOIN_TARGET = WIN32_ERROR(0x00000085);
  static const ERROR_IS_JOINED = WIN32_ERROR(0x00000086);
  static const ERROR_IS_SUBSTED = WIN32_ERROR(0x00000087);
  static const ERROR_NOT_JOINED = WIN32_ERROR(0x00000088);
  static const ERROR_NOT_SUBSTED = WIN32_ERROR(0x00000089);
  static const ERROR_JOIN_TO_JOIN = WIN32_ERROR(0x0000008a);
  static const ERROR_SUBST_TO_SUBST = WIN32_ERROR(0x0000008b);
  static const ERROR_JOIN_TO_SUBST = WIN32_ERROR(0x0000008c);
  static const ERROR_SUBST_TO_JOIN = WIN32_ERROR(0x0000008d);
  static const ERROR_BUSY_DRIVE = WIN32_ERROR(0x0000008e);
  static const ERROR_SAME_DRIVE = WIN32_ERROR(0x0000008f);
  static const ERROR_DIR_NOT_ROOT = WIN32_ERROR(0x00000090);
  static const ERROR_DIR_NOT_EMPTY = WIN32_ERROR(0x00000091);
  static const ERROR_IS_SUBST_PATH = WIN32_ERROR(0x00000092);
  static const ERROR_IS_JOIN_PATH = WIN32_ERROR(0x00000093);
  static const ERROR_PATH_BUSY = WIN32_ERROR(0x00000094);
  static const ERROR_IS_SUBST_TARGET = WIN32_ERROR(0x00000095);
  static const ERROR_SYSTEM_TRACE = WIN32_ERROR(0x00000096);
  static const ERROR_INVALID_EVENT_COUNT = WIN32_ERROR(0x00000097);
  static const ERROR_TOO_MANY_MUXWAITERS = WIN32_ERROR(0x00000098);
  static const ERROR_INVALID_LIST_FORMAT = WIN32_ERROR(0x00000099);
  static const ERROR_LABEL_TOO_LONG = WIN32_ERROR(0x0000009a);
  static const ERROR_TOO_MANY_TCBS = WIN32_ERROR(0x0000009b);
  static const ERROR_SIGNAL_REFUSED = WIN32_ERROR(0x0000009c);
  static const ERROR_DISCARDED = WIN32_ERROR(0x0000009d);
  static const ERROR_NOT_LOCKED = WIN32_ERROR(0x0000009e);
  static const ERROR_BAD_THREADID_ADDR = WIN32_ERROR(0x0000009f);
  static const ERROR_BAD_ARGUMENTS = WIN32_ERROR(0x000000a0);
  static const ERROR_BAD_PATHNAME = WIN32_ERROR(0x000000a1);
  static const ERROR_SIGNAL_PENDING = WIN32_ERROR(0x000000a2);
  static const ERROR_MAX_THRDS_REACHED = WIN32_ERROR(0x000000a4);
  static const ERROR_LOCK_FAILED = WIN32_ERROR(0x000000a7);
  static const ERROR_BUSY = WIN32_ERROR(0x000000aa);
  static const ERROR_DEVICE_SUPPORT_IN_PROGRESS = WIN32_ERROR(0x000000ab);
  static const ERROR_CANCEL_VIOLATION = WIN32_ERROR(0x000000ad);
  static const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = WIN32_ERROR(0x000000ae);
  static const ERROR_INVALID_SEGMENT_NUMBER = WIN32_ERROR(0x000000b4);
  static const ERROR_INVALID_ORDINAL = WIN32_ERROR(0x000000b6);
  static const ERROR_ALREADY_EXISTS = WIN32_ERROR(0x000000b7);
  static const ERROR_INVALID_FLAG_NUMBER = WIN32_ERROR(0x000000ba);
  static const ERROR_SEM_NOT_FOUND = WIN32_ERROR(0x000000bb);
  static const ERROR_INVALID_STARTING_CODESEG = WIN32_ERROR(0x000000bc);
  static const ERROR_INVALID_STACKSEG = WIN32_ERROR(0x000000bd);
  static const ERROR_INVALID_MODULETYPE = WIN32_ERROR(0x000000be);
  static const ERROR_INVALID_EXE_SIGNATURE = WIN32_ERROR(0x000000bf);
  static const ERROR_EXE_MARKED_INVALID = WIN32_ERROR(0x000000c0);
  static const ERROR_BAD_EXE_FORMAT = WIN32_ERROR(0x000000c1);
  static const ERROR_ITERATED_DATA_EXCEEDS_64k = WIN32_ERROR(0x000000c2);
  static const ERROR_INVALID_MINALLOCSIZE = WIN32_ERROR(0x000000c3);
  static const ERROR_DYNLINK_FROM_INVALID_RING = WIN32_ERROR(0x000000c4);
  static const ERROR_IOPL_NOT_ENABLED = WIN32_ERROR(0x000000c5);
  static const ERROR_INVALID_SEGDPL = WIN32_ERROR(0x000000c6);
  static const ERROR_AUTODATASEG_EXCEEDS_64k = WIN32_ERROR(0x000000c7);
  static const ERROR_RING2SEG_MUST_BE_MOVABLE = WIN32_ERROR(0x000000c8);
  static const ERROR_RELOC_CHAIN_XEEDS_SEGLIM = WIN32_ERROR(0x000000c9);
  static const ERROR_INFLOOP_IN_RELOC_CHAIN = WIN32_ERROR(0x000000ca);
  static const ERROR_ENVVAR_NOT_FOUND = WIN32_ERROR(0x000000cb);
  static const ERROR_NO_SIGNAL_SENT = WIN32_ERROR(0x000000cd);
  static const ERROR_FILENAME_EXCED_RANGE = WIN32_ERROR(0x000000ce);
  static const ERROR_RING2_STACK_IN_USE = WIN32_ERROR(0x000000cf);
  static const ERROR_META_EXPANSION_TOO_LONG = WIN32_ERROR(0x000000d0);
  static const ERROR_INVALID_SIGNAL_NUMBER = WIN32_ERROR(0x000000d1);
  static const ERROR_THREAD_1_INACTIVE = WIN32_ERROR(0x000000d2);
  static const ERROR_LOCKED = WIN32_ERROR(0x000000d4);
  static const ERROR_TOO_MANY_MODULES = WIN32_ERROR(0x000000d6);
  static const ERROR_NESTING_NOT_ALLOWED = WIN32_ERROR(0x000000d7);
  static const ERROR_EXE_MACHINE_TYPE_MISMATCH = WIN32_ERROR(0x000000d8);
  static const ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY = WIN32_ERROR(0x000000d9);
  static const ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY =
      WIN32_ERROR(0x000000da);
  static const ERROR_FILE_CHECKED_OUT = WIN32_ERROR(0x000000dc);
  static const ERROR_CHECKOUT_REQUIRED = WIN32_ERROR(0x000000dd);
  static const ERROR_BAD_FILE_TYPE = WIN32_ERROR(0x000000de);
  static const ERROR_FILE_TOO_LARGE = WIN32_ERROR(0x000000df);
  static const ERROR_FORMS_AUTH_REQUIRED = WIN32_ERROR(0x000000e0);
  static const ERROR_VIRUS_INFECTED = WIN32_ERROR(0x000000e1);
  static const ERROR_VIRUS_DELETED = WIN32_ERROR(0x000000e2);
  static const ERROR_PIPE_LOCAL = WIN32_ERROR(0x000000e5);
  static const ERROR_BAD_PIPE = WIN32_ERROR(0x000000e6);
  static const ERROR_PIPE_BUSY = WIN32_ERROR(0x000000e7);
  static const ERROR_NO_DATA = WIN32_ERROR(0x000000e8);
  static const ERROR_PIPE_NOT_CONNECTED = WIN32_ERROR(0x000000e9);
  static const ERROR_MORE_DATA = WIN32_ERROR(0x000000ea);
  static const ERROR_NO_WORK_DONE = WIN32_ERROR(0x000000eb);
  static const ERROR_VC_DISCONNECTED = WIN32_ERROR(0x000000f0);
  static const ERROR_INVALID_EA_NAME = WIN32_ERROR(0x000000fe);
  static const ERROR_EA_LIST_INCONSISTENT = WIN32_ERROR(0x000000ff);
  static const ERROR_NO_MORE_ITEMS = WIN32_ERROR(0x00000103);
  static const ERROR_CANNOT_COPY = WIN32_ERROR(0x0000010a);
  static const ERROR_DIRECTORY = WIN32_ERROR(0x0000010b);
  static const ERROR_EAS_DIDNT_FIT = WIN32_ERROR(0x00000113);
  static const ERROR_EA_FILE_CORRUPT = WIN32_ERROR(0x00000114);
  static const ERROR_EA_TABLE_FULL = WIN32_ERROR(0x00000115);
  static const ERROR_INVALID_EA_HANDLE = WIN32_ERROR(0x00000116);
  static const ERROR_EAS_NOT_SUPPORTED = WIN32_ERROR(0x0000011a);
  static const ERROR_NOT_OWNER = WIN32_ERROR(0x00000120);
  static const ERROR_TOO_MANY_POSTS = WIN32_ERROR(0x0000012a);
  static const ERROR_PARTIAL_COPY = WIN32_ERROR(0x0000012b);
  static const ERROR_OPLOCK_NOT_GRANTED = WIN32_ERROR(0x0000012c);
  static const ERROR_INVALID_OPLOCK_PROTOCOL = WIN32_ERROR(0x0000012d);
  static const ERROR_DISK_TOO_FRAGMENTED = WIN32_ERROR(0x0000012e);
  static const ERROR_DELETE_PENDING = WIN32_ERROR(0x0000012f);
  static const ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING =
      WIN32_ERROR(0x00000130);
  static const ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME =
      WIN32_ERROR(0x00000131);
  static const ERROR_SECURITY_STREAM_IS_INCONSISTENT = WIN32_ERROR(0x00000132);
  static const ERROR_INVALID_LOCK_RANGE = WIN32_ERROR(0x00000133);
  static const ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT = WIN32_ERROR(0x00000134);
  static const ERROR_NOTIFICATION_GUID_ALREADY_DEFINED =
      WIN32_ERROR(0x00000135);
  static const ERROR_INVALID_EXCEPTION_HANDLER = WIN32_ERROR(0x00000136);
  static const ERROR_DUPLICATE_PRIVILEGES = WIN32_ERROR(0x00000137);
  static const ERROR_NO_RANGES_PROCESSED = WIN32_ERROR(0x00000138);
  static const ERROR_NOT_ALLOWED_ON_SYSTEM_FILE = WIN32_ERROR(0x00000139);
  static const ERROR_DISK_RESOURCES_EXHAUSTED = WIN32_ERROR(0x0000013a);
  static const ERROR_INVALID_TOKEN = WIN32_ERROR(0x0000013b);
  static const ERROR_DEVICE_FEATURE_NOT_SUPPORTED = WIN32_ERROR(0x0000013c);
  static const ERROR_MR_MID_NOT_FOUND = WIN32_ERROR(0x0000013d);
  static const ERROR_SCOPE_NOT_FOUND = WIN32_ERROR(0x0000013e);
  static const ERROR_UNDEFINED_SCOPE = WIN32_ERROR(0x0000013f);
  static const ERROR_INVALID_CAP = WIN32_ERROR(0x00000140);
  static const ERROR_DEVICE_UNREACHABLE = WIN32_ERROR(0x00000141);
  static const ERROR_DEVICE_NO_RESOURCES = WIN32_ERROR(0x00000142);
  static const ERROR_DATA_CHECKSUM_ERROR = WIN32_ERROR(0x00000143);
  static const ERROR_INTERMIXED_KERNEL_EA_OPERATION = WIN32_ERROR(0x00000144);
  static const ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED = WIN32_ERROR(0x00000146);
  static const ERROR_OFFSET_ALIGNMENT_VIOLATION = WIN32_ERROR(0x00000147);
  static const ERROR_INVALID_FIELD_IN_PARAMETER_LIST = WIN32_ERROR(0x00000148);
  static const ERROR_OPERATION_IN_PROGRESS = WIN32_ERROR(0x00000149);
  static const ERROR_BAD_DEVICE_PATH = WIN32_ERROR(0x0000014a);
  static const ERROR_TOO_MANY_DESCRIPTORS = WIN32_ERROR(0x0000014b);
  static const ERROR_SCRUB_DATA_DISABLED = WIN32_ERROR(0x0000014c);
  static const ERROR_NOT_REDUNDANT_STORAGE = WIN32_ERROR(0x0000014d);
  static const ERROR_RESIDENT_FILE_NOT_SUPPORTED = WIN32_ERROR(0x0000014e);
  static const ERROR_COMPRESSED_FILE_NOT_SUPPORTED = WIN32_ERROR(0x0000014f);
  static const ERROR_DIRECTORY_NOT_SUPPORTED = WIN32_ERROR(0x00000150);
  static const ERROR_NOT_READ_FROM_COPY = WIN32_ERROR(0x00000151);
  static const ERROR_FT_WRITE_FAILURE = WIN32_ERROR(0x00000152);
  static const ERROR_FT_DI_SCAN_REQUIRED = WIN32_ERROR(0x00000153);
  static const ERROR_INVALID_KERNEL_INFO_VERSION = WIN32_ERROR(0x00000154);
  static const ERROR_INVALID_PEP_INFO_VERSION = WIN32_ERROR(0x00000155);
  static const ERROR_OBJECT_NOT_EXTERNALLY_BACKED = WIN32_ERROR(0x00000156);
  static const ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN =
      WIN32_ERROR(0x00000157);
  static const ERROR_COMPRESSION_NOT_BENEFICIAL = WIN32_ERROR(0x00000158);
  static const ERROR_STORAGE_TOPOLOGY_ID_MISMATCH = WIN32_ERROR(0x00000159);
  static const ERROR_BLOCKED_BY_PARENTAL_CONTROLS = WIN32_ERROR(0x0000015a);
  static const ERROR_BLOCK_TOO_MANY_REFERENCES = WIN32_ERROR(0x0000015b);
  static const ERROR_MARKED_TO_DISALLOW_WRITES = WIN32_ERROR(0x0000015c);
  static const ERROR_ENCLAVE_FAILURE = WIN32_ERROR(0x0000015d);
  static const ERROR_FAIL_NOACTION_REBOOT = WIN32_ERROR(0x0000015e);
  static const ERROR_FAIL_SHUTDOWN = WIN32_ERROR(0x0000015f);
  static const ERROR_FAIL_RESTART = WIN32_ERROR(0x00000160);
  static const ERROR_MAX_SESSIONS_REACHED = WIN32_ERROR(0x00000161);
  static const ERROR_NETWORK_ACCESS_DENIED_EDP = WIN32_ERROR(0x00000162);
  static const ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL =
      WIN32_ERROR(0x00000163);
  static const ERROR_EDP_POLICY_DENIES_OPERATION = WIN32_ERROR(0x00000164);
  static const ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED = WIN32_ERROR(0x00000165);
  static const ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT =
      WIN32_ERROR(0x00000166);
  static const ERROR_DEVICE_IN_MAINTENANCE = WIN32_ERROR(0x00000167);
  static const ERROR_NOT_SUPPORTED_ON_DAX = WIN32_ERROR(0x00000168);
  static const ERROR_DAX_MAPPING_EXISTS = WIN32_ERROR(0x00000169);
  static const ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING = WIN32_ERROR(0x0000016a);
  static const ERROR_CLOUD_FILE_METADATA_CORRUPT = WIN32_ERROR(0x0000016b);
  static const ERROR_CLOUD_FILE_METADATA_TOO_LARGE = WIN32_ERROR(0x0000016c);
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE =
      WIN32_ERROR(0x0000016d);
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH =
      WIN32_ERROR(0x0000016e);
  static const ERROR_CHILD_PROCESS_BLOCKED = WIN32_ERROR(0x0000016f);
  static const ERROR_STORAGE_LOST_DATA_PERSISTENCE = WIN32_ERROR(0x00000170);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE =
      WIN32_ERROR(0x00000171);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT =
      WIN32_ERROR(0x00000172);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY = WIN32_ERROR(0x00000173);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN =
      WIN32_ERROR(0x00000174);
  static const ERROR_GDI_HANDLE_LEAK = WIN32_ERROR(0x00000175);
  static const ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS =
      WIN32_ERROR(0x00000176);
  static const ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED =
      WIN32_ERROR(0x00000177);
  static const ERROR_NOT_A_CLOUD_FILE = WIN32_ERROR(0x00000178);
  static const ERROR_CLOUD_FILE_NOT_IN_SYNC = WIN32_ERROR(0x00000179);
  static const ERROR_CLOUD_FILE_ALREADY_CONNECTED = WIN32_ERROR(0x0000017a);
  static const ERROR_CLOUD_FILE_NOT_SUPPORTED = WIN32_ERROR(0x0000017b);
  static const ERROR_CLOUD_FILE_INVALID_REQUEST = WIN32_ERROR(0x0000017c);
  static const ERROR_CLOUD_FILE_READ_ONLY_VOLUME = WIN32_ERROR(0x0000017d);
  static const ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY =
      WIN32_ERROR(0x0000017e);
  static const ERROR_CLOUD_FILE_VALIDATION_FAILED = WIN32_ERROR(0x0000017f);
  static const ERROR_SMB1_NOT_AVAILABLE = WIN32_ERROR(0x00000180);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION =
      WIN32_ERROR(0x00000181);
  static const ERROR_CLOUD_FILE_AUTHENTICATION_FAILED = WIN32_ERROR(0x00000182);
  static const ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES =
      WIN32_ERROR(0x00000183);
  static const ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE = WIN32_ERROR(0x00000184);
  static const ERROR_CLOUD_FILE_UNSUCCESSFUL = WIN32_ERROR(0x00000185);
  static const ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT = WIN32_ERROR(0x00000186);
  static const ERROR_CLOUD_FILE_IN_USE = WIN32_ERROR(0x00000187);
  static const ERROR_CLOUD_FILE_PINNED = WIN32_ERROR(0x00000188);
  static const ERROR_CLOUD_FILE_REQUEST_ABORTED = WIN32_ERROR(0x00000189);
  static const ERROR_CLOUD_FILE_PROPERTY_CORRUPT = WIN32_ERROR(0x0000018a);
  static const ERROR_CLOUD_FILE_ACCESS_DENIED = WIN32_ERROR(0x0000018b);
  static const ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS =
      WIN32_ERROR(0x0000018c);
  static const ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT =
      WIN32_ERROR(0x0000018d);
  static const ERROR_CLOUD_FILE_REQUEST_CANCELED = WIN32_ERROR(0x0000018e);
  static const ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED = WIN32_ERROR(0x0000018f);
  static const ERROR_THREAD_MODE_ALREADY_BACKGROUND = WIN32_ERROR(0x00000190);
  static const ERROR_THREAD_MODE_NOT_BACKGROUND = WIN32_ERROR(0x00000191);
  static const ERROR_PROCESS_MODE_ALREADY_BACKGROUND = WIN32_ERROR(0x00000192);
  static const ERROR_PROCESS_MODE_NOT_BACKGROUND = WIN32_ERROR(0x00000193);
  static const ERROR_CLOUD_FILE_PROVIDER_TERMINATED = WIN32_ERROR(0x00000194);
  static const ERROR_NOT_A_CLOUD_SYNC_ROOT = WIN32_ERROR(0x00000195);
  static const ERROR_FILE_PROTECTED_UNDER_DPL = WIN32_ERROR(0x00000196);
  static const ERROR_VOLUME_NOT_CLUSTER_ALIGNED = WIN32_ERROR(0x00000197);
  static const ERROR_NO_PHYSICALLY_ALIGNED_FREE_SPACE_FOUND =
      WIN32_ERROR(0x00000198);
  static const ERROR_APPX_FILE_NOT_ENCRYPTED = WIN32_ERROR(0x00000199);
  static const ERROR_RWRAW_ENCRYPTED_FILE_NOT_ENCRYPTED =
      WIN32_ERROR(0x0000019a);
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILEOFFSET =
      WIN32_ERROR(0x0000019b);
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILERANGE =
      WIN32_ERROR(0x0000019c);
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_PARAMETER =
      WIN32_ERROR(0x0000019d);
  static const ERROR_LINUX_SUBSYSTEM_NOT_PRESENT = WIN32_ERROR(0x0000019e);
  static const ERROR_FT_READ_FAILURE = WIN32_ERROR(0x0000019f);
  static const ERROR_STORAGE_RESERVE_ID_INVALID = WIN32_ERROR(0x000001a0);
  static const ERROR_STORAGE_RESERVE_DOES_NOT_EXIST = WIN32_ERROR(0x000001a1);
  static const ERROR_STORAGE_RESERVE_ALREADY_EXISTS = WIN32_ERROR(0x000001a2);
  static const ERROR_STORAGE_RESERVE_NOT_EMPTY = WIN32_ERROR(0x000001a3);
  static const ERROR_NOT_A_DAX_VOLUME = WIN32_ERROR(0x000001a4);
  static const ERROR_NOT_DAX_MAPPABLE = WIN32_ERROR(0x000001a5);
  static const ERROR_TIME_SENSITIVE_THREAD = WIN32_ERROR(0x000001a6);
  static const ERROR_DPL_NOT_SUPPORTED_FOR_USER = WIN32_ERROR(0x000001a7);
  static const ERROR_CASE_DIFFERING_NAMES_IN_DIR = WIN32_ERROR(0x000001a8);
  static const ERROR_FILE_NOT_SUPPORTED = WIN32_ERROR(0x000001a9);
  static const ERROR_CLOUD_FILE_REQUEST_TIMEOUT = WIN32_ERROR(0x000001aa);
  static const ERROR_NO_TASK_QUEUE = WIN32_ERROR(0x000001ab);
  static const ERROR_SRC_SRV_DLL_LOAD_FAILED = WIN32_ERROR(0x000001ac);
  static const ERROR_NOT_SUPPORTED_WITH_BTT = WIN32_ERROR(0x000001ad);
  static const ERROR_ENCRYPTION_DISABLED = WIN32_ERROR(0x000001ae);
  static const ERROR_ENCRYPTING_METADATA_DISALLOWED = WIN32_ERROR(0x000001af);
  static const ERROR_CANT_CLEAR_ENCRYPTION_FLAG = WIN32_ERROR(0x000001b0);
  static const ERROR_NO_SUCH_DEVICE = WIN32_ERROR(0x000001b1);
  static const ERROR_CLOUD_FILE_DEHYDRATION_DISALLOWED =
      WIN32_ERROR(0x000001b2);
  static const ERROR_FILE_SNAP_IN_PROGRESS = WIN32_ERROR(0x000001b3);
  static const ERROR_FILE_SNAP_USER_SECTION_NOT_SUPPORTED =
      WIN32_ERROR(0x000001b4);
  static const ERROR_FILE_SNAP_MODIFY_NOT_SUPPORTED = WIN32_ERROR(0x000001b5);
  static const ERROR_FILE_SNAP_IO_NOT_COORDINATED = WIN32_ERROR(0x000001b6);
  static const ERROR_FILE_SNAP_UNEXPECTED_ERROR = WIN32_ERROR(0x000001b7);
  static const ERROR_FILE_SNAP_INVALID_PARAMETER = WIN32_ERROR(0x000001b8);
  static const ERROR_UNSATISFIED_DEPENDENCIES = WIN32_ERROR(0x000001b9);
  static const ERROR_CASE_SENSITIVE_PATH = WIN32_ERROR(0x000001ba);
  static const ERROR_UNEXPECTED_NTCACHEMANAGER_ERROR = WIN32_ERROR(0x000001bb);
  static const ERROR_LINUX_SUBSYSTEM_UPDATE_REQUIRED = WIN32_ERROR(0x000001bc);
  static const ERROR_DLP_POLICY_WARNS_AGAINST_OPERATION =
      WIN32_ERROR(0x000001bd);
  static const ERROR_DLP_POLICY_DENIES_OPERATION = WIN32_ERROR(0x000001be);
  static const ERROR_SECURITY_DENIES_OPERATION = WIN32_ERROR(0x000001bf);
  static const ERROR_UNTRUSTED_MOUNT_POINT = WIN32_ERROR(0x000001c0);
  static const ERROR_DLP_POLICY_SILENTLY_FAIL = WIN32_ERROR(0x000001c1);
  static const ERROR_CAPAUTHZ_NOT_DEVUNLOCKED = WIN32_ERROR(0x000001c2);
  static const ERROR_CAPAUTHZ_CHANGE_TYPE = WIN32_ERROR(0x000001c3);
  static const ERROR_CAPAUTHZ_NOT_PROVISIONED = WIN32_ERROR(0x000001c4);
  static const ERROR_CAPAUTHZ_NOT_AUTHORIZED = WIN32_ERROR(0x000001c5);
  static const ERROR_CAPAUTHZ_NO_POLICY = WIN32_ERROR(0x000001c6);
  static const ERROR_CAPAUTHZ_DB_CORRUPTED = WIN32_ERROR(0x000001c7);
  static const ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG = WIN32_ERROR(0x000001c8);
  static const ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY = WIN32_ERROR(0x000001c9);
  static const ERROR_CAPAUTHZ_SCCD_PARSE_ERROR = WIN32_ERROR(0x000001ca);
  static const ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED = WIN32_ERROR(0x000001cb);
  static const ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH =
      WIN32_ERROR(0x000001cc);
  static const ERROR_CIMFS_IMAGE_CORRUPT = WIN32_ERROR(0x000001d6);
  static const ERROR_CIMFS_IMAGE_VERSION_NOT_SUPPORTED =
      WIN32_ERROR(0x000001d7);
  static const ERROR_STORAGE_STACK_ACCESS_DENIED = WIN32_ERROR(0x000001d8);
  static const ERROR_INSUFFICIENT_VIRTUAL_ADDR_RESOURCES =
      WIN32_ERROR(0x000001d9);
  static const ERROR_INDEX_OUT_OF_BOUNDS = WIN32_ERROR(0x000001da);
  static const ERROR_CLOUD_FILE_US_MESSAGE_TIMEOUT = WIN32_ERROR(0x000001db);
  static const ERROR_NOT_A_DEV_VOLUME = WIN32_ERROR(0x000001dc);
  static const ERROR_FS_GUID_MISMATCH = WIN32_ERROR(0x000001dd);
  static const ERROR_CANT_ATTACH_TO_DEV_VOLUME = WIN32_ERROR(0x000001de);
  static const ERROR_INVALID_CONFIG_VALUE = WIN32_ERROR(0x000001df);
  static const ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT = WIN32_ERROR(0x000001e0);
  static const ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT =
      WIN32_ERROR(0x000001e1);
  static const ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT =
      WIN32_ERROR(0x000001e2);
  static const ERROR_DEVICE_HARDWARE_ERROR = WIN32_ERROR(0x000001e3);
  static const ERROR_INVALID_ADDRESS = WIN32_ERROR(0x000001e7);
  static const ERROR_HAS_SYSTEM_CRITICAL_FILES = WIN32_ERROR(0x000001e8);
  static const ERROR_ENCRYPTED_FILE_NOT_SUPPORTED = WIN32_ERROR(0x000001e9);
  static const ERROR_SPARSE_FILE_NOT_SUPPORTED = WIN32_ERROR(0x000001ea);
  static const ERROR_PAGEFILE_NOT_SUPPORTED = WIN32_ERROR(0x000001eb);
  static const ERROR_VOLUME_NOT_SUPPORTED = WIN32_ERROR(0x000001ec);
  static const ERROR_NOT_SUPPORTED_WITH_BYPASSIO = WIN32_ERROR(0x000001ed);
  static const ERROR_NO_BYPASSIO_DRIVER_SUPPORT = WIN32_ERROR(0x000001ee);
  static const ERROR_NOT_SUPPORTED_WITH_ENCRYPTION = WIN32_ERROR(0x000001ef);
  static const ERROR_NOT_SUPPORTED_WITH_COMPRESSION = WIN32_ERROR(0x000001f0);
  static const ERROR_NOT_SUPPORTED_WITH_REPLICATION = WIN32_ERROR(0x000001f1);
  static const ERROR_NOT_SUPPORTED_WITH_DEDUPLICATION = WIN32_ERROR(0x000001f2);
  static const ERROR_NOT_SUPPORTED_WITH_AUDITING = WIN32_ERROR(0x000001f3);
  static const ERROR_USER_PROFILE_LOAD = WIN32_ERROR(0x000001f4);
  static const ERROR_SESSION_KEY_TOO_SHORT = WIN32_ERROR(0x000001f5);
  static const ERROR_ACCESS_DENIED_APPDATA = WIN32_ERROR(0x000001f6);
  static const ERROR_NOT_SUPPORTED_WITH_MONITORING = WIN32_ERROR(0x000001f7);
  static const ERROR_NOT_SUPPORTED_WITH_SNAPSHOT = WIN32_ERROR(0x000001f8);
  static const ERROR_NOT_SUPPORTED_WITH_VIRTUALIZATION =
      WIN32_ERROR(0x000001f9);
  static const ERROR_BYPASSIO_FLT_NOT_SUPPORTED = WIN32_ERROR(0x000001fa);
  static const ERROR_DEVICE_RESET_REQUIRED = WIN32_ERROR(0x000001fb);
  static const ERROR_VOLUME_WRITE_ACCESS_DENIED = WIN32_ERROR(0x000001fc);
  static const ERROR_NOT_SUPPORTED_WITH_CACHED_HANDLE = WIN32_ERROR(0x000001fd);
  static const ERROR_FS_METADATA_INCONSISTENT = WIN32_ERROR(0x000001fe);
  static const ERROR_BLOCK_WEAK_REFERENCE_INVALID = WIN32_ERROR(0x000001ff);
  static const ERROR_BLOCK_SOURCE_WEAK_REFERENCE_INVALID =
      WIN32_ERROR(0x00000200);
  static const ERROR_BLOCK_TARGET_WEAK_REFERENCE_INVALID =
      WIN32_ERROR(0x00000201);
  static const ERROR_BLOCK_SHARED = WIN32_ERROR(0x00000202);
  static const ERROR_VOLUME_UPGRADE_NOT_NEEDED = WIN32_ERROR(0x00000203);
  static const ERROR_VOLUME_UPGRADE_PENDING = WIN32_ERROR(0x00000204);
  static const ERROR_VOLUME_UPGRADE_DISABLED = WIN32_ERROR(0x00000205);
  static const ERROR_VOLUME_UPGRADE_DISABLED_TILL_OS_DOWNGRADE_EXPIRED =
      WIN32_ERROR(0x00000206);
  static const ERROR_ARITHMETIC_OVERFLOW = WIN32_ERROR(0x00000216);
  static const ERROR_PIPE_CONNECTED = WIN32_ERROR(0x00000217);
  static const ERROR_PIPE_LISTENING = WIN32_ERROR(0x00000218);
  static const ERROR_VERIFIER_STOP = WIN32_ERROR(0x00000219);
  static const ERROR_ABIOS_ERROR = WIN32_ERROR(0x0000021a);
  static const ERROR_WX86_WARNING = WIN32_ERROR(0x0000021b);
  static const ERROR_WX86_ERROR = WIN32_ERROR(0x0000021c);
  static const ERROR_TIMER_NOT_CANCELED = WIN32_ERROR(0x0000021d);
  static const ERROR_UNWIND = WIN32_ERROR(0x0000021e);
  static const ERROR_BAD_STACK = WIN32_ERROR(0x0000021f);
  static const ERROR_INVALID_UNWIND_TARGET = WIN32_ERROR(0x00000220);
  static const ERROR_INVALID_PORT_ATTRIBUTES = WIN32_ERROR(0x00000221);
  static const ERROR_PORT_MESSAGE_TOO_LONG = WIN32_ERROR(0x00000222);
  static const ERROR_INVALID_QUOTA_LOWER = WIN32_ERROR(0x00000223);
  static const ERROR_DEVICE_ALREADY_ATTACHED = WIN32_ERROR(0x00000224);
  static const ERROR_INSTRUCTION_MISALIGNMENT = WIN32_ERROR(0x00000225);
  static const ERROR_PROFILING_NOT_STARTED = WIN32_ERROR(0x00000226);
  static const ERROR_PROFILING_NOT_STOPPED = WIN32_ERROR(0x00000227);
  static const ERROR_COULD_NOT_INTERPRET = WIN32_ERROR(0x00000228);
  static const ERROR_PROFILING_AT_LIMIT = WIN32_ERROR(0x00000229);
  static const ERROR_CANT_WAIT = WIN32_ERROR(0x0000022a);
  static const ERROR_CANT_TERMINATE_SELF = WIN32_ERROR(0x0000022b);
  static const ERROR_UNEXPECTED_MM_CREATE_ERR = WIN32_ERROR(0x0000022c);
  static const ERROR_UNEXPECTED_MM_MAP_ERROR = WIN32_ERROR(0x0000022d);
  static const ERROR_UNEXPECTED_MM_EXTEND_ERR = WIN32_ERROR(0x0000022e);
  static const ERROR_BAD_FUNCTION_TABLE = WIN32_ERROR(0x0000022f);
  static const ERROR_NO_GUID_TRANSLATION = WIN32_ERROR(0x00000230);
  static const ERROR_INVALID_LDT_SIZE = WIN32_ERROR(0x00000231);
  static const ERROR_INVALID_LDT_OFFSET = WIN32_ERROR(0x00000233);
  static const ERROR_INVALID_LDT_DESCRIPTOR = WIN32_ERROR(0x00000234);
  static const ERROR_TOO_MANY_THREADS = WIN32_ERROR(0x00000235);
  static const ERROR_THREAD_NOT_IN_PROCESS = WIN32_ERROR(0x00000236);
  static const ERROR_PAGEFILE_QUOTA_EXCEEDED = WIN32_ERROR(0x00000237);
  static const ERROR_LOGON_SERVER_CONFLICT = WIN32_ERROR(0x00000238);
  static const ERROR_SYNCHRONIZATION_REQUIRED = WIN32_ERROR(0x00000239);
  static const ERROR_NET_OPEN_FAILED = WIN32_ERROR(0x0000023a);
  static const ERROR_IO_PRIVILEGE_FAILED = WIN32_ERROR(0x0000023b);
  static const ERROR_CONTROL_C_EXIT = WIN32_ERROR(0x0000023c);
  static const ERROR_MISSING_SYSTEMFILE = WIN32_ERROR(0x0000023d);
  static const ERROR_UNHANDLED_EXCEPTION = WIN32_ERROR(0x0000023e);
  static const ERROR_APP_INIT_FAILURE = WIN32_ERROR(0x0000023f);
  static const ERROR_PAGEFILE_CREATE_FAILED = WIN32_ERROR(0x00000240);
  static const ERROR_INVALID_IMAGE_HASH = WIN32_ERROR(0x00000241);
  static const ERROR_NO_PAGEFILE = WIN32_ERROR(0x00000242);
  static const ERROR_ILLEGAL_FLOAT_CONTEXT = WIN32_ERROR(0x00000243);
  static const ERROR_NO_EVENT_PAIR = WIN32_ERROR(0x00000244);
  static const ERROR_DOMAIN_CTRLR_CONFIG_ERROR = WIN32_ERROR(0x00000245);
  static const ERROR_ILLEGAL_CHARACTER = WIN32_ERROR(0x00000246);
  static const ERROR_UNDEFINED_CHARACTER = WIN32_ERROR(0x00000247);
  static const ERROR_FLOPPY_VOLUME = WIN32_ERROR(0x00000248);
  static const ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT = WIN32_ERROR(0x00000249);
  static const ERROR_BACKUP_CONTROLLER = WIN32_ERROR(0x0000024a);
  static const ERROR_MUTANT_LIMIT_EXCEEDED = WIN32_ERROR(0x0000024b);
  static const ERROR_FS_DRIVER_REQUIRED = WIN32_ERROR(0x0000024c);
  static const ERROR_CANNOT_LOAD_REGISTRY_FILE = WIN32_ERROR(0x0000024d);
  static const ERROR_DEBUG_ATTACH_FAILED = WIN32_ERROR(0x0000024e);
  static const ERROR_SYSTEM_PROCESS_TERMINATED = WIN32_ERROR(0x0000024f);
  static const ERROR_DATA_NOT_ACCEPTED = WIN32_ERROR(0x00000250);
  static const ERROR_VDM_HARD_ERROR = WIN32_ERROR(0x00000251);
  static const ERROR_DRIVER_CANCEL_TIMEOUT = WIN32_ERROR(0x00000252);
  static const ERROR_REPLY_MESSAGE_MISMATCH = WIN32_ERROR(0x00000253);
  static const ERROR_LOST_WRITEBEHIND_DATA = WIN32_ERROR(0x00000254);
  static const ERROR_CLIENT_SERVER_PARAMETERS_INVALID = WIN32_ERROR(0x00000255);
  static const ERROR_NOT_TINY_STREAM = WIN32_ERROR(0x00000256);
  static const ERROR_STACK_OVERFLOW_READ = WIN32_ERROR(0x00000257);
  static const ERROR_CONVERT_TO_LARGE = WIN32_ERROR(0x00000258);
  static const ERROR_FOUND_OUT_OF_SCOPE = WIN32_ERROR(0x00000259);
  static const ERROR_ALLOCATE_BUCKET = WIN32_ERROR(0x0000025a);
  static const ERROR_MARSHALL_OVERFLOW = WIN32_ERROR(0x0000025b);
  static const ERROR_INVALID_VARIANT = WIN32_ERROR(0x0000025c);
  static const ERROR_BAD_COMPRESSION_BUFFER = WIN32_ERROR(0x0000025d);
  static const ERROR_AUDIT_FAILED = WIN32_ERROR(0x0000025e);
  static const ERROR_TIMER_RESOLUTION_NOT_SET = WIN32_ERROR(0x0000025f);
  static const ERROR_INSUFFICIENT_LOGON_INFO = WIN32_ERROR(0x00000260);
  static const ERROR_BAD_DLL_ENTRYPOINT = WIN32_ERROR(0x00000261);
  static const ERROR_BAD_SERVICE_ENTRYPOINT = WIN32_ERROR(0x00000262);
  static const ERROR_IP_ADDRESS_CONFLICT1 = WIN32_ERROR(0x00000263);
  static const ERROR_IP_ADDRESS_CONFLICT2 = WIN32_ERROR(0x00000264);
  static const ERROR_REGISTRY_QUOTA_LIMIT = WIN32_ERROR(0x00000265);
  static const ERROR_NO_CALLBACK_ACTIVE = WIN32_ERROR(0x00000266);
  static const ERROR_PWD_TOO_SHORT = WIN32_ERROR(0x00000267);
  static const ERROR_PWD_TOO_RECENT = WIN32_ERROR(0x00000268);
  static const ERROR_PWD_HISTORY_CONFLICT = WIN32_ERROR(0x00000269);
  static const ERROR_UNSUPPORTED_COMPRESSION = WIN32_ERROR(0x0000026a);
  static const ERROR_INVALID_HW_PROFILE = WIN32_ERROR(0x0000026b);
  static const ERROR_INVALID_PLUGPLAY_DEVICE_PATH = WIN32_ERROR(0x0000026c);
  static const ERROR_QUOTA_LIST_INCONSISTENT = WIN32_ERROR(0x0000026d);
  static const ERROR_EVALUATION_EXPIRATION = WIN32_ERROR(0x0000026e);
  static const ERROR_ILLEGAL_DLL_RELOCATION = WIN32_ERROR(0x0000026f);
  static const ERROR_DLL_INIT_FAILED_LOGOFF = WIN32_ERROR(0x00000270);
  static const ERROR_VALIDATE_CONTINUE = WIN32_ERROR(0x00000271);
  static const ERROR_NO_MORE_MATCHES = WIN32_ERROR(0x00000272);
  static const ERROR_RANGE_LIST_CONFLICT = WIN32_ERROR(0x00000273);
  static const ERROR_SERVER_SID_MISMATCH = WIN32_ERROR(0x00000274);
  static const ERROR_CANT_ENABLE_DENY_ONLY = WIN32_ERROR(0x00000275);
  static const ERROR_FLOAT_MULTIPLE_FAULTS = WIN32_ERROR(0x00000276);
  static const ERROR_FLOAT_MULTIPLE_TRAPS = WIN32_ERROR(0x00000277);
  static const ERROR_NOINTERFACE = WIN32_ERROR(0x00000278);
  static const ERROR_DRIVER_FAILED_SLEEP = WIN32_ERROR(0x00000279);
  static const ERROR_CORRUPT_SYSTEM_FILE = WIN32_ERROR(0x0000027a);
  static const ERROR_COMMITMENT_MINIMUM = WIN32_ERROR(0x0000027b);
  static const ERROR_PNP_RESTART_ENUMERATION = WIN32_ERROR(0x0000027c);
  static const ERROR_SYSTEM_IMAGE_BAD_SIGNATURE = WIN32_ERROR(0x0000027d);
  static const ERROR_PNP_REBOOT_REQUIRED = WIN32_ERROR(0x0000027e);
  static const ERROR_INSUFFICIENT_POWER = WIN32_ERROR(0x0000027f);
  static const ERROR_MULTIPLE_FAULT_VIOLATION = WIN32_ERROR(0x00000280);
  static const ERROR_SYSTEM_SHUTDOWN = WIN32_ERROR(0x00000281);
  static const ERROR_PORT_NOT_SET = WIN32_ERROR(0x00000282);
  static const ERROR_DS_VERSION_CHECK_FAILURE = WIN32_ERROR(0x00000283);
  static const ERROR_RANGE_NOT_FOUND = WIN32_ERROR(0x00000284);
  static const ERROR_NOT_SAFE_MODE_DRIVER = WIN32_ERROR(0x00000286);
  static const ERROR_FAILED_DRIVER_ENTRY = WIN32_ERROR(0x00000287);
  static const ERROR_DEVICE_ENUMERATION_ERROR = WIN32_ERROR(0x00000288);
  static const ERROR_MOUNT_POINT_NOT_RESOLVED = WIN32_ERROR(0x00000289);
  static const ERROR_INVALID_DEVICE_OBJECT_PARAMETER = WIN32_ERROR(0x0000028a);
  static const ERROR_MCA_OCCURED = WIN32_ERROR(0x0000028b);
  static const ERROR_DRIVER_DATABASE_ERROR = WIN32_ERROR(0x0000028c);
  static const ERROR_SYSTEM_HIVE_TOO_LARGE = WIN32_ERROR(0x0000028d);
  static const ERROR_DRIVER_FAILED_PRIOR_UNLOAD = WIN32_ERROR(0x0000028e);
  static const ERROR_VOLSNAP_PREPARE_HIBERNATE = WIN32_ERROR(0x0000028f);
  static const ERROR_HIBERNATION_FAILURE = WIN32_ERROR(0x00000290);
  static const ERROR_PWD_TOO_LONG = WIN32_ERROR(0x00000291);
  static const ERROR_FILE_SYSTEM_LIMITATION = WIN32_ERROR(0x00000299);
  static const ERROR_ASSERTION_FAILURE = WIN32_ERROR(0x0000029c);
  static const ERROR_ACPI_ERROR = WIN32_ERROR(0x0000029d);
  static const ERROR_WOW_ASSERTION = WIN32_ERROR(0x0000029e);
  static const ERROR_PNP_BAD_MPS_TABLE = WIN32_ERROR(0x0000029f);
  static const ERROR_PNP_TRANSLATION_FAILED = WIN32_ERROR(0x000002a0);
  static const ERROR_PNP_IRQ_TRANSLATION_FAILED = WIN32_ERROR(0x000002a1);
  static const ERROR_PNP_INVALID_ID = WIN32_ERROR(0x000002a2);
  static const ERROR_WAKE_SYSTEM_DEBUGGER = WIN32_ERROR(0x000002a3);
  static const ERROR_HANDLES_CLOSED = WIN32_ERROR(0x000002a4);
  static const ERROR_EXTRANEOUS_INFORMATION = WIN32_ERROR(0x000002a5);
  static const ERROR_RXACT_COMMIT_NECESSARY = WIN32_ERROR(0x000002a6);
  static const ERROR_MEDIA_CHECK = WIN32_ERROR(0x000002a7);
  static const ERROR_GUID_SUBSTITUTION_MADE = WIN32_ERROR(0x000002a8);
  static const ERROR_STOPPED_ON_SYMLINK = WIN32_ERROR(0x000002a9);
  static const ERROR_LONGJUMP = WIN32_ERROR(0x000002aa);
  static const ERROR_PLUGPLAY_QUERY_VETOED = WIN32_ERROR(0x000002ab);
  static const ERROR_UNWIND_CONSOLIDATE = WIN32_ERROR(0x000002ac);
  static const ERROR_REGISTRY_HIVE_RECOVERED = WIN32_ERROR(0x000002ad);
  static const ERROR_DLL_MIGHT_BE_INSECURE = WIN32_ERROR(0x000002ae);
  static const ERROR_DLL_MIGHT_BE_INCOMPATIBLE = WIN32_ERROR(0x000002af);
  static const ERROR_DBG_EXCEPTION_NOT_HANDLED = WIN32_ERROR(0x000002b0);
  static const ERROR_DBG_REPLY_LATER = WIN32_ERROR(0x000002b1);
  static const ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE = WIN32_ERROR(0x000002b2);
  static const ERROR_DBG_TERMINATE_THREAD = WIN32_ERROR(0x000002b3);
  static const ERROR_DBG_TERMINATE_PROCESS = WIN32_ERROR(0x000002b4);
  static const ERROR_DBG_CONTROL_C = WIN32_ERROR(0x000002b5);
  static const ERROR_DBG_PRINTEXCEPTION_C = WIN32_ERROR(0x000002b6);
  static const ERROR_DBG_RIPEXCEPTION = WIN32_ERROR(0x000002b7);
  static const ERROR_DBG_CONTROL_BREAK = WIN32_ERROR(0x000002b8);
  static const ERROR_DBG_COMMAND_EXCEPTION = WIN32_ERROR(0x000002b9);
  static const ERROR_OBJECT_NAME_EXISTS = WIN32_ERROR(0x000002ba);
  static const ERROR_THREAD_WAS_SUSPENDED = WIN32_ERROR(0x000002bb);
  static const ERROR_IMAGE_NOT_AT_BASE = WIN32_ERROR(0x000002bc);
  static const ERROR_RXACT_STATE_CREATED = WIN32_ERROR(0x000002bd);
  static const ERROR_SEGMENT_NOTIFICATION = WIN32_ERROR(0x000002be);
  static const ERROR_BAD_CURRENT_DIRECTORY = WIN32_ERROR(0x000002bf);
  static const ERROR_FT_READ_RECOVERY_FROM_BACKUP = WIN32_ERROR(0x000002c0);
  static const ERROR_FT_WRITE_RECOVERY = WIN32_ERROR(0x000002c1);
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH = WIN32_ERROR(0x000002c2);
  static const ERROR_RECEIVE_PARTIAL = WIN32_ERROR(0x000002c3);
  static const ERROR_RECEIVE_EXPEDITED = WIN32_ERROR(0x000002c4);
  static const ERROR_RECEIVE_PARTIAL_EXPEDITED = WIN32_ERROR(0x000002c5);
  static const ERROR_EVENT_DONE = WIN32_ERROR(0x000002c6);
  static const ERROR_EVENT_PENDING = WIN32_ERROR(0x000002c7);
  static const ERROR_CHECKING_FILE_SYSTEM = WIN32_ERROR(0x000002c8);
  static const ERROR_FATAL_APP_EXIT = WIN32_ERROR(0x000002c9);
  static const ERROR_PREDEFINED_HANDLE = WIN32_ERROR(0x000002ca);
  static const ERROR_WAS_UNLOCKED = WIN32_ERROR(0x000002cb);
  static const ERROR_SERVICE_NOTIFICATION = WIN32_ERROR(0x000002cc);
  static const ERROR_WAS_LOCKED = WIN32_ERROR(0x000002cd);
  static const ERROR_LOG_HARD_ERROR = WIN32_ERROR(0x000002ce);
  static const ERROR_ALREADY_WIN32 = WIN32_ERROR(0x000002cf);
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE = WIN32_ERROR(0x000002d0);
  static const ERROR_NO_YIELD_PERFORMED = WIN32_ERROR(0x000002d1);
  static const ERROR_TIMER_RESUME_IGNORED = WIN32_ERROR(0x000002d2);
  static const ERROR_ARBITRATION_UNHANDLED = WIN32_ERROR(0x000002d3);
  static const ERROR_CARDBUS_NOT_SUPPORTED = WIN32_ERROR(0x000002d4);
  static const ERROR_MP_PROCESSOR_MISMATCH = WIN32_ERROR(0x000002d5);
  static const ERROR_HIBERNATED = WIN32_ERROR(0x000002d6);
  static const ERROR_RESUME_HIBERNATION = WIN32_ERROR(0x000002d7);
  static const ERROR_FIRMWARE_UPDATED = WIN32_ERROR(0x000002d8);
  static const ERROR_DRIVERS_LEAKING_LOCKED_PAGES = WIN32_ERROR(0x000002d9);
  static const ERROR_WAKE_SYSTEM = WIN32_ERROR(0x000002da);
  static const ERROR_WAIT_1 = WIN32_ERROR(0x000002db);
  static const ERROR_WAIT_2 = WIN32_ERROR(0x000002dc);
  static const ERROR_WAIT_3 = WIN32_ERROR(0x000002dd);
  static const ERROR_WAIT_63 = WIN32_ERROR(0x000002de);
  static const ERROR_ABANDONED_WAIT_0 = WIN32_ERROR(0x000002df);
  static const ERROR_ABANDONED_WAIT_63 = WIN32_ERROR(0x000002e0);
  static const ERROR_USER_APC = WIN32_ERROR(0x000002e1);
  static const ERROR_KERNEL_APC = WIN32_ERROR(0x000002e2);
  static const ERROR_ALERTED = WIN32_ERROR(0x000002e3);
  static const ERROR_ELEVATION_REQUIRED = WIN32_ERROR(0x000002e4);
  static const ERROR_REPARSE = WIN32_ERROR(0x000002e5);
  static const ERROR_OPLOCK_BREAK_IN_PROGRESS = WIN32_ERROR(0x000002e6);
  static const ERROR_VOLUME_MOUNTED = WIN32_ERROR(0x000002e7);
  static const ERROR_RXACT_COMMITTED = WIN32_ERROR(0x000002e8);
  static const ERROR_NOTIFY_CLEANUP = WIN32_ERROR(0x000002e9);
  static const ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED = WIN32_ERROR(0x000002ea);
  static const ERROR_PAGE_FAULT_TRANSITION = WIN32_ERROR(0x000002eb);
  static const ERROR_PAGE_FAULT_DEMAND_ZERO = WIN32_ERROR(0x000002ec);
  static const ERROR_PAGE_FAULT_COPY_ON_WRITE = WIN32_ERROR(0x000002ed);
  static const ERROR_PAGE_FAULT_GUARD_PAGE = WIN32_ERROR(0x000002ee);
  static const ERROR_PAGE_FAULT_PAGING_FILE = WIN32_ERROR(0x000002ef);
  static const ERROR_CACHE_PAGE_LOCKED = WIN32_ERROR(0x000002f0);
  static const ERROR_CRASH_DUMP = WIN32_ERROR(0x000002f1);
  static const ERROR_BUFFER_ALL_ZEROS = WIN32_ERROR(0x000002f2);
  static const ERROR_REPARSE_OBJECT = WIN32_ERROR(0x000002f3);
  static const ERROR_RESOURCE_REQUIREMENTS_CHANGED = WIN32_ERROR(0x000002f4);
  static const ERROR_TRANSLATION_COMPLETE = WIN32_ERROR(0x000002f5);
  static const ERROR_NOTHING_TO_TERMINATE = WIN32_ERROR(0x000002f6);
  static const ERROR_PROCESS_NOT_IN_JOB = WIN32_ERROR(0x000002f7);
  static const ERROR_PROCESS_IN_JOB = WIN32_ERROR(0x000002f8);
  static const ERROR_VOLSNAP_HIBERNATE_READY = WIN32_ERROR(0x000002f9);
  static const ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY =
      WIN32_ERROR(0x000002fa);
  static const ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED =
      WIN32_ERROR(0x000002fb);
  static const ERROR_INTERRUPT_STILL_CONNECTED = WIN32_ERROR(0x000002fc);
  static const ERROR_WAIT_FOR_OPLOCK = WIN32_ERROR(0x000002fd);
  static const ERROR_DBG_EXCEPTION_HANDLED = WIN32_ERROR(0x000002fe);
  static const ERROR_DBG_CONTINUE = WIN32_ERROR(0x000002ff);
  static const ERROR_CALLBACK_POP_STACK = WIN32_ERROR(0x00000300);
  static const ERROR_COMPRESSION_DISABLED = WIN32_ERROR(0x00000301);
  static const ERROR_CANTFETCHBACKWARDS = WIN32_ERROR(0x00000302);
  static const ERROR_CANTSCROLLBACKWARDS = WIN32_ERROR(0x00000303);
  static const ERROR_ROWSNOTRELEASED = WIN32_ERROR(0x00000304);
  static const ERROR_BAD_ACCESSOR_FLAGS = WIN32_ERROR(0x00000305);
  static const ERROR_ERRORS_ENCOUNTERED = WIN32_ERROR(0x00000306);
  static const ERROR_NOT_CAPABLE = WIN32_ERROR(0x00000307);
  static const ERROR_REQUEST_OUT_OF_SEQUENCE = WIN32_ERROR(0x00000308);
  static const ERROR_VERSION_PARSE_ERROR = WIN32_ERROR(0x00000309);
  static const ERROR_BADSTARTPOSITION = WIN32_ERROR(0x0000030a);
  static const ERROR_MEMORY_HARDWARE = WIN32_ERROR(0x0000030b);
  static const ERROR_DISK_REPAIR_DISABLED = WIN32_ERROR(0x0000030c);
  static const ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE =
      WIN32_ERROR(0x0000030d);
  static const ERROR_SYSTEM_POWERSTATE_TRANSITION = WIN32_ERROR(0x0000030e);
  static const ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION =
      WIN32_ERROR(0x0000030f);
  static const ERROR_MCA_EXCEPTION = WIN32_ERROR(0x00000310);
  static const ERROR_ACCESS_AUDIT_BY_POLICY = WIN32_ERROR(0x00000311);
  static const ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY =
      WIN32_ERROR(0x00000312);
  static const ERROR_ABANDON_HIBERFILE = WIN32_ERROR(0x00000313);
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED =
      WIN32_ERROR(0x00000314);
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR =
      WIN32_ERROR(0x00000315);
  static const ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR =
      WIN32_ERROR(0x00000316);
  static const ERROR_BAD_MCFG_TABLE = WIN32_ERROR(0x00000317);
  static const ERROR_DISK_REPAIR_REDIRECTED = WIN32_ERROR(0x00000318);
  static const ERROR_DISK_REPAIR_UNSUCCESSFUL = WIN32_ERROR(0x00000319);
  static const ERROR_CORRUPT_LOG_OVERFULL = WIN32_ERROR(0x0000031a);
  static const ERROR_CORRUPT_LOG_CORRUPTED = WIN32_ERROR(0x0000031b);
  static const ERROR_CORRUPT_LOG_UNAVAILABLE = WIN32_ERROR(0x0000031c);
  static const ERROR_CORRUPT_LOG_DELETED_FULL = WIN32_ERROR(0x0000031d);
  static const ERROR_CORRUPT_LOG_CLEARED = WIN32_ERROR(0x0000031e);
  static const ERROR_ORPHAN_NAME_EXHAUSTED = WIN32_ERROR(0x0000031f);
  static const ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE = WIN32_ERROR(0x00000320);
  static const ERROR_CANNOT_GRANT_REQUESTED_OPLOCK = WIN32_ERROR(0x00000321);
  static const ERROR_CANNOT_BREAK_OPLOCK = WIN32_ERROR(0x00000322);
  static const ERROR_OPLOCK_HANDLE_CLOSED = WIN32_ERROR(0x00000323);
  static const ERROR_NO_ACE_CONDITION = WIN32_ERROR(0x00000324);
  static const ERROR_INVALID_ACE_CONDITION = WIN32_ERROR(0x00000325);
  static const ERROR_FILE_HANDLE_REVOKED = WIN32_ERROR(0x00000326);
  static const ERROR_IMAGE_AT_DIFFERENT_BASE = WIN32_ERROR(0x00000327);
  static const ERROR_ENCRYPTED_IO_NOT_POSSIBLE = WIN32_ERROR(0x00000328);
  static const ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS =
      WIN32_ERROR(0x00000329);
  static const ERROR_QUOTA_ACTIVITY = WIN32_ERROR(0x0000032a);
  static const ERROR_HANDLE_REVOKED = WIN32_ERROR(0x0000032b);
  static const ERROR_CALLBACK_INVOKE_INLINE = WIN32_ERROR(0x0000032c);
  static const ERROR_CPU_SET_INVALID = WIN32_ERROR(0x0000032d);
  static const ERROR_ENCLAVE_NOT_TERMINATED = WIN32_ERROR(0x0000032e);
  static const ERROR_ENCLAVE_VIOLATION = WIN32_ERROR(0x0000032f);
  static const ERROR_SERVER_TRANSPORT_CONFLICT = WIN32_ERROR(0x00000330);
  static const ERROR_CERTIFICATE_VALIDATION_PREFERENCE_CONFLICT =
      WIN32_ERROR(0x00000331);
  static const ERROR_FT_READ_FROM_COPY_FAILURE = WIN32_ERROR(0x00000332);
  static const ERROR_SECTION_DIRECT_MAP_ONLY = WIN32_ERROR(0x00000333);
  static const ERROR_EA_ACCESS_DENIED = WIN32_ERROR(0x000003e2);
  static const ERROR_OPERATION_ABORTED = WIN32_ERROR(0x000003e3);
  static const ERROR_IO_INCOMPLETE = WIN32_ERROR(0x000003e4);
  static const ERROR_IO_PENDING = WIN32_ERROR(0x000003e5);
  static const ERROR_NOACCESS = WIN32_ERROR(0x000003e6);
  static const ERROR_SWAPERROR = WIN32_ERROR(0x000003e7);
  static const ERROR_STACK_OVERFLOW = WIN32_ERROR(0x000003e9);
  static const ERROR_INVALID_MESSAGE = WIN32_ERROR(0x000003ea);
  static const ERROR_CAN_NOT_COMPLETE = WIN32_ERROR(0x000003eb);
  static const ERROR_INVALID_FLAGS = WIN32_ERROR(0x000003ec);
  static const ERROR_UNRECOGNIZED_VOLUME = WIN32_ERROR(0x000003ed);
  static const ERROR_FILE_INVALID = WIN32_ERROR(0x000003ee);
  static const ERROR_FULLSCREEN_MODE = WIN32_ERROR(0x000003ef);
  static const ERROR_NO_TOKEN = WIN32_ERROR(0x000003f0);
  static const ERROR_BADDB = WIN32_ERROR(0x000003f1);
  static const ERROR_BADKEY = WIN32_ERROR(0x000003f2);
  static const ERROR_CANTOPEN = WIN32_ERROR(0x000003f3);
  static const ERROR_CANTREAD = WIN32_ERROR(0x000003f4);
  static const ERROR_CANTWRITE = WIN32_ERROR(0x000003f5);
  static const ERROR_REGISTRY_RECOVERED = WIN32_ERROR(0x000003f6);
  static const ERROR_REGISTRY_CORRUPT = WIN32_ERROR(0x000003f7);
  static const ERROR_REGISTRY_IO_FAILED = WIN32_ERROR(0x000003f8);
  static const ERROR_NOT_REGISTRY_FILE = WIN32_ERROR(0x000003f9);
  static const ERROR_KEY_DELETED = WIN32_ERROR(0x000003fa);
  static const ERROR_NO_LOG_SPACE = WIN32_ERROR(0x000003fb);
  static const ERROR_KEY_HAS_CHILDREN = WIN32_ERROR(0x000003fc);
  static const ERROR_CHILD_MUST_BE_VOLATILE = WIN32_ERROR(0x000003fd);
  static const ERROR_NOTIFY_ENUM_DIR = WIN32_ERROR(0x000003fe);
  static const ERROR_DEPENDENT_SERVICES_RUNNING = WIN32_ERROR(0x0000041b);
  static const ERROR_INVALID_SERVICE_CONTROL = WIN32_ERROR(0x0000041c);
  static const ERROR_SERVICE_REQUEST_TIMEOUT = WIN32_ERROR(0x0000041d);
  static const ERROR_SERVICE_NO_THREAD = WIN32_ERROR(0x0000041e);
  static const ERROR_SERVICE_DATABASE_LOCKED = WIN32_ERROR(0x0000041f);
  static const ERROR_SERVICE_ALREADY_RUNNING = WIN32_ERROR(0x00000420);
  static const ERROR_INVALID_SERVICE_ACCOUNT = WIN32_ERROR(0x00000421);
  static const ERROR_SERVICE_DISABLED = WIN32_ERROR(0x00000422);
  static const ERROR_CIRCULAR_DEPENDENCY = WIN32_ERROR(0x00000423);
  static const ERROR_SERVICE_DOES_NOT_EXIST = WIN32_ERROR(0x00000424);
  static const ERROR_SERVICE_CANNOT_ACCEPT_CTRL = WIN32_ERROR(0x00000425);
  static const ERROR_SERVICE_NOT_ACTIVE = WIN32_ERROR(0x00000426);
  static const ERROR_FAILED_SERVICE_CONTROLLER_CONNECT =
      WIN32_ERROR(0x00000427);
  static const ERROR_EXCEPTION_IN_SERVICE = WIN32_ERROR(0x00000428);
  static const ERROR_DATABASE_DOES_NOT_EXIST = WIN32_ERROR(0x00000429);
  static const ERROR_SERVICE_SPECIFIC_ERROR = WIN32_ERROR(0x0000042a);
  static const ERROR_PROCESS_ABORTED = WIN32_ERROR(0x0000042b);
  static const ERROR_SERVICE_DEPENDENCY_FAIL = WIN32_ERROR(0x0000042c);
  static const ERROR_SERVICE_LOGON_FAILED = WIN32_ERROR(0x0000042d);
  static const ERROR_SERVICE_START_HANG = WIN32_ERROR(0x0000042e);
  static const ERROR_INVALID_SERVICE_LOCK = WIN32_ERROR(0x0000042f);
  static const ERROR_SERVICE_MARKED_FOR_DELETE = WIN32_ERROR(0x00000430);
  static const ERROR_SERVICE_EXISTS = WIN32_ERROR(0x00000431);
  static const ERROR_ALREADY_RUNNING_LKG = WIN32_ERROR(0x00000432);
  static const ERROR_SERVICE_DEPENDENCY_DELETED = WIN32_ERROR(0x00000433);
  static const ERROR_BOOT_ALREADY_ACCEPTED = WIN32_ERROR(0x00000434);
  static const ERROR_SERVICE_NEVER_STARTED = WIN32_ERROR(0x00000435);
  static const ERROR_DUPLICATE_SERVICE_NAME = WIN32_ERROR(0x00000436);
  static const ERROR_DIFFERENT_SERVICE_ACCOUNT = WIN32_ERROR(0x00000437);
  static const ERROR_CANNOT_DETECT_DRIVER_FAILURE = WIN32_ERROR(0x00000438);
  static const ERROR_CANNOT_DETECT_PROCESS_ABORT = WIN32_ERROR(0x00000439);
  static const ERROR_NO_RECOVERY_PROGRAM = WIN32_ERROR(0x0000043a);
  static const ERROR_SERVICE_NOT_IN_EXE = WIN32_ERROR(0x0000043b);
  static const ERROR_NOT_SAFEBOOT_SERVICE = WIN32_ERROR(0x0000043c);
  static const ERROR_END_OF_MEDIA = WIN32_ERROR(0x0000044c);
  static const ERROR_FILEMARK_DETECTED = WIN32_ERROR(0x0000044d);
  static const ERROR_BEGINNING_OF_MEDIA = WIN32_ERROR(0x0000044e);
  static const ERROR_SETMARK_DETECTED = WIN32_ERROR(0x0000044f);
  static const ERROR_NO_DATA_DETECTED = WIN32_ERROR(0x00000450);
  static const ERROR_PARTITION_FAILURE = WIN32_ERROR(0x00000451);
  static const ERROR_INVALID_BLOCK_LENGTH = WIN32_ERROR(0x00000452);
  static const ERROR_DEVICE_NOT_PARTITIONED = WIN32_ERROR(0x00000453);
  static const ERROR_UNABLE_TO_LOCK_MEDIA = WIN32_ERROR(0x00000454);
  static const ERROR_UNABLE_TO_UNLOAD_MEDIA = WIN32_ERROR(0x00000455);
  static const ERROR_MEDIA_CHANGED = WIN32_ERROR(0x00000456);
  static const ERROR_BUS_RESET = WIN32_ERROR(0x00000457);
  static const ERROR_NO_MEDIA_IN_DRIVE = WIN32_ERROR(0x00000458);
  static const ERROR_NO_UNICODE_TRANSLATION = WIN32_ERROR(0x00000459);
  static const ERROR_DLL_INIT_FAILED = WIN32_ERROR(0x0000045a);
  static const ERROR_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(0x0000045b);
  static const ERROR_NO_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(0x0000045c);
  static const ERROR_IO_DEVICE = WIN32_ERROR(0x0000045d);
  static const ERROR_SERIAL_NO_DEVICE = WIN32_ERROR(0x0000045e);
  static const ERROR_IRQ_BUSY = WIN32_ERROR(0x0000045f);
  static const ERROR_MORE_WRITES = WIN32_ERROR(0x00000460);
  static const ERROR_COUNTER_TIMEOUT = WIN32_ERROR(0x00000461);
  static const ERROR_FLOPPY_ID_MARK_NOT_FOUND = WIN32_ERROR(0x00000462);
  static const ERROR_FLOPPY_WRONG_CYLINDER = WIN32_ERROR(0x00000463);
  static const ERROR_FLOPPY_UNKNOWN_ERROR = WIN32_ERROR(0x00000464);
  static const ERROR_FLOPPY_BAD_REGISTERS = WIN32_ERROR(0x00000465);
  static const ERROR_DISK_RECALIBRATE_FAILED = WIN32_ERROR(0x00000466);
  static const ERROR_DISK_OPERATION_FAILED = WIN32_ERROR(0x00000467);
  static const ERROR_DISK_RESET_FAILED = WIN32_ERROR(0x00000468);
  static const ERROR_EOM_OVERFLOW = WIN32_ERROR(0x00000469);
  static const ERROR_NOT_ENOUGH_SERVER_MEMORY = WIN32_ERROR(0x0000046a);
  static const ERROR_POSSIBLE_DEADLOCK = WIN32_ERROR(0x0000046b);
  static const ERROR_MAPPED_ALIGNMENT = WIN32_ERROR(0x0000046c);
  static const ERROR_SET_POWER_STATE_VETOED = WIN32_ERROR(0x00000474);
  static const ERROR_SET_POWER_STATE_FAILED = WIN32_ERROR(0x00000475);
  static const ERROR_TOO_MANY_LINKS = WIN32_ERROR(0x00000476);
  static const ERROR_OLD_WIN_VERSION = WIN32_ERROR(0x0000047e);
  static const ERROR_APP_WRONG_OS = WIN32_ERROR(0x0000047f);
  static const ERROR_SINGLE_INSTANCE_APP = WIN32_ERROR(0x00000480);
  static const ERROR_RMODE_APP = WIN32_ERROR(0x00000481);
  static const ERROR_INVALID_DLL = WIN32_ERROR(0x00000482);
  static const ERROR_NO_ASSOCIATION = WIN32_ERROR(0x00000483);
  static const ERROR_DDE_FAIL = WIN32_ERROR(0x00000484);
  static const ERROR_DLL_NOT_FOUND = WIN32_ERROR(0x00000485);
  static const ERROR_NO_MORE_USER_HANDLES = WIN32_ERROR(0x00000486);
  static const ERROR_MESSAGE_SYNC_ONLY = WIN32_ERROR(0x00000487);
  static const ERROR_SOURCE_ELEMENT_EMPTY = WIN32_ERROR(0x00000488);
  static const ERROR_DESTINATION_ELEMENT_FULL = WIN32_ERROR(0x00000489);
  static const ERROR_ILLEGAL_ELEMENT_ADDRESS = WIN32_ERROR(0x0000048a);
  static const ERROR_MAGAZINE_NOT_PRESENT = WIN32_ERROR(0x0000048b);
  static const ERROR_DEVICE_REINITIALIZATION_NEEDED = WIN32_ERROR(0x0000048c);
  static const ERROR_DEVICE_REQUIRES_CLEANING = WIN32_ERROR(0x0000048d);
  static const ERROR_DEVICE_DOOR_OPEN = WIN32_ERROR(0x0000048e);
  static const ERROR_DEVICE_NOT_CONNECTED = WIN32_ERROR(0x0000048f);
  static const ERROR_NOT_FOUND = WIN32_ERROR(0x00000490);
  static const ERROR_NO_MATCH = WIN32_ERROR(0x00000491);
  static const ERROR_SET_NOT_FOUND = WIN32_ERROR(0x00000492);
  static const ERROR_POINT_NOT_FOUND = WIN32_ERROR(0x00000493);
  static const ERROR_NO_TRACKING_SERVICE = WIN32_ERROR(0x00000494);
  static const ERROR_NO_VOLUME_ID = WIN32_ERROR(0x00000495);
  static const ERROR_UNABLE_TO_REMOVE_REPLACED = WIN32_ERROR(0x00000497);
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT = WIN32_ERROR(0x00000498);
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 = WIN32_ERROR(0x00000499);
  static const ERROR_JOURNAL_DELETE_IN_PROGRESS = WIN32_ERROR(0x0000049a);
  static const ERROR_JOURNAL_NOT_ACTIVE = WIN32_ERROR(0x0000049b);
  static const ERROR_POTENTIAL_FILE_FOUND = WIN32_ERROR(0x0000049c);
  static const ERROR_JOURNAL_ENTRY_DELETED = WIN32_ERROR(0x0000049d);
  static const ERROR_PARTITION_TERMINATING = WIN32_ERROR(0x000004a0);
  static const ERROR_SHUTDOWN_IS_SCHEDULED = WIN32_ERROR(0x000004a6);
  static const ERROR_SHUTDOWN_USERS_LOGGED_ON = WIN32_ERROR(0x000004a7);
  static const ERROR_SHUTDOWN_DISKS_NOT_IN_MAINTENANCE_MODE =
      WIN32_ERROR(0x000004a8);
  static const ERROR_BAD_DEVICE = WIN32_ERROR(0x000004b0);
  static const ERROR_CONNECTION_UNAVAIL = WIN32_ERROR(0x000004b1);
  static const ERROR_DEVICE_ALREADY_REMEMBERED = WIN32_ERROR(0x000004b2);
  static const ERROR_NO_NET_OR_BAD_PATH = WIN32_ERROR(0x000004b3);
  static const ERROR_BAD_PROVIDER = WIN32_ERROR(0x000004b4);
  static const ERROR_CANNOT_OPEN_PROFILE = WIN32_ERROR(0x000004b5);
  static const ERROR_BAD_PROFILE = WIN32_ERROR(0x000004b6);
  static const ERROR_NOT_CONTAINER = WIN32_ERROR(0x000004b7);
  static const ERROR_EXTENDED_ERROR = WIN32_ERROR(0x000004b8);
  static const ERROR_INVALID_GROUPNAME = WIN32_ERROR(0x000004b9);
  static const ERROR_INVALID_COMPUTERNAME = WIN32_ERROR(0x000004ba);
  static const ERROR_INVALID_EVENTNAME = WIN32_ERROR(0x000004bb);
  static const ERROR_INVALID_DOMAINNAME = WIN32_ERROR(0x000004bc);
  static const ERROR_INVALID_SERVICENAME = WIN32_ERROR(0x000004bd);
  static const ERROR_INVALID_NETNAME = WIN32_ERROR(0x000004be);
  static const ERROR_INVALID_SHARENAME = WIN32_ERROR(0x000004bf);
  static const ERROR_INVALID_PASSWORDNAME = WIN32_ERROR(0x000004c0);
  static const ERROR_INVALID_MESSAGENAME = WIN32_ERROR(0x000004c1);
  static const ERROR_INVALID_MESSAGEDEST = WIN32_ERROR(0x000004c2);
  static const ERROR_SESSION_CREDENTIAL_CONFLICT = WIN32_ERROR(0x000004c3);
  static const ERROR_REMOTE_SESSION_LIMIT_EXCEEDED = WIN32_ERROR(0x000004c4);
  static const ERROR_DUP_DOMAINNAME = WIN32_ERROR(0x000004c5);
  static const ERROR_NO_NETWORK = WIN32_ERROR(0x000004c6);
  static const ERROR_CANCELLED = WIN32_ERROR(0x000004c7);
  static const ERROR_USER_MAPPED_FILE = WIN32_ERROR(0x000004c8);
  static const ERROR_CONNECTION_REFUSED = WIN32_ERROR(0x000004c9);
  static const ERROR_GRACEFUL_DISCONNECT = WIN32_ERROR(0x000004ca);
  static const ERROR_ADDRESS_ALREADY_ASSOCIATED = WIN32_ERROR(0x000004cb);
  static const ERROR_ADDRESS_NOT_ASSOCIATED = WIN32_ERROR(0x000004cc);
  static const ERROR_CONNECTION_INVALID = WIN32_ERROR(0x000004cd);
  static const ERROR_CONNECTION_ACTIVE = WIN32_ERROR(0x000004ce);
  static const ERROR_NETWORK_UNREACHABLE = WIN32_ERROR(0x000004cf);
  static const ERROR_HOST_UNREACHABLE = WIN32_ERROR(0x000004d0);
  static const ERROR_PROTOCOL_UNREACHABLE = WIN32_ERROR(0x000004d1);
  static const ERROR_PORT_UNREACHABLE = WIN32_ERROR(0x000004d2);
  static const ERROR_REQUEST_ABORTED = WIN32_ERROR(0x000004d3);
  static const ERROR_CONNECTION_ABORTED = WIN32_ERROR(0x000004d4);
  static const ERROR_RETRY = WIN32_ERROR(0x000004d5);
  static const ERROR_CONNECTION_COUNT_LIMIT = WIN32_ERROR(0x000004d6);
  static const ERROR_LOGIN_TIME_RESTRICTION = WIN32_ERROR(0x000004d7);
  static const ERROR_LOGIN_WKSTA_RESTRICTION = WIN32_ERROR(0x000004d8);
  static const ERROR_INCORRECT_ADDRESS = WIN32_ERROR(0x000004d9);
  static const ERROR_ALREADY_REGISTERED = WIN32_ERROR(0x000004da);
  static const ERROR_SERVICE_NOT_FOUND = WIN32_ERROR(0x000004db);
  static const ERROR_NOT_AUTHENTICATED = WIN32_ERROR(0x000004dc);
  static const ERROR_NOT_LOGGED_ON = WIN32_ERROR(0x000004dd);
  static const ERROR_CONTINUE = WIN32_ERROR(0x000004de);
  static const ERROR_ALREADY_INITIALIZED = WIN32_ERROR(0x000004df);
  static const ERROR_NO_MORE_DEVICES = WIN32_ERROR(0x000004e0);
  static const ERROR_NO_SUCH_SITE = WIN32_ERROR(0x000004e1);
  static const ERROR_DOMAIN_CONTROLLER_EXISTS = WIN32_ERROR(0x000004e2);
  static const ERROR_ONLY_IF_CONNECTED = WIN32_ERROR(0x000004e3);
  static const ERROR_OVERRIDE_NOCHANGES = WIN32_ERROR(0x000004e4);
  static const ERROR_BAD_USER_PROFILE = WIN32_ERROR(0x000004e5);
  static const ERROR_NOT_SUPPORTED_ON_SBS = WIN32_ERROR(0x000004e6);
  static const ERROR_SERVER_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(0x000004e7);
  static const ERROR_HOST_DOWN = WIN32_ERROR(0x000004e8);
  static const ERROR_NON_ACCOUNT_SID = WIN32_ERROR(0x000004e9);
  static const ERROR_NON_DOMAIN_SID = WIN32_ERROR(0x000004ea);
  static const ERROR_APPHELP_BLOCK = WIN32_ERROR(0x000004eb);
  static const ERROR_ACCESS_DISABLED_BY_POLICY = WIN32_ERROR(0x000004ec);
  static const ERROR_REG_NAT_CONSUMPTION = WIN32_ERROR(0x000004ed);
  static const ERROR_CSCSHARE_OFFLINE = WIN32_ERROR(0x000004ee);
  static const ERROR_PKINIT_FAILURE = WIN32_ERROR(0x000004ef);
  static const ERROR_SMARTCARD_SUBSYSTEM_FAILURE = WIN32_ERROR(0x000004f0);
  static const ERROR_DOWNGRADE_DETECTED = WIN32_ERROR(0x000004f1);
  static const ERROR_MACHINE_LOCKED = WIN32_ERROR(0x000004f7);
  static const ERROR_SMB_GUEST_LOGON_BLOCKED = WIN32_ERROR(0x000004f8);
  static const ERROR_CALLBACK_SUPPLIED_INVALID_DATA = WIN32_ERROR(0x000004f9);
  static const ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED = WIN32_ERROR(0x000004fa);
  static const ERROR_DRIVER_BLOCKED = WIN32_ERROR(0x000004fb);
  static const ERROR_INVALID_IMPORT_OF_NON_DLL = WIN32_ERROR(0x000004fc);
  static const ERROR_ACCESS_DISABLED_WEBBLADE = WIN32_ERROR(0x000004fd);
  static const ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER = WIN32_ERROR(0x000004fe);
  static const ERROR_RECOVERY_FAILURE = WIN32_ERROR(0x000004ff);
  static const ERROR_ALREADY_FIBER = WIN32_ERROR(0x00000500);
  static const ERROR_ALREADY_THREAD = WIN32_ERROR(0x00000501);
  static const ERROR_STACK_BUFFER_OVERRUN = WIN32_ERROR(0x00000502);
  static const ERROR_PARAMETER_QUOTA_EXCEEDED = WIN32_ERROR(0x00000503);
  static const ERROR_DEBUGGER_INACTIVE = WIN32_ERROR(0x00000504);
  static const ERROR_DELAY_LOAD_FAILED = WIN32_ERROR(0x00000505);
  static const ERROR_VDM_DISALLOWED = WIN32_ERROR(0x00000506);
  static const ERROR_UNIDENTIFIED_ERROR = WIN32_ERROR(0x00000507);
  static const ERROR_INVALID_CRUNTIME_PARAMETER = WIN32_ERROR(0x00000508);
  static const ERROR_BEYOND_VDL = WIN32_ERROR(0x00000509);
  static const ERROR_INCOMPATIBLE_SERVICE_SID_TYPE = WIN32_ERROR(0x0000050a);
  static const ERROR_DRIVER_PROCESS_TERMINATED = WIN32_ERROR(0x0000050b);
  static const ERROR_IMPLEMENTATION_LIMIT = WIN32_ERROR(0x0000050c);
  static const ERROR_PROCESS_IS_PROTECTED = WIN32_ERROR(0x0000050d);
  static const ERROR_SERVICE_NOTIFY_CLIENT_LAGGING = WIN32_ERROR(0x0000050e);
  static const ERROR_DISK_QUOTA_EXCEEDED = WIN32_ERROR(0x0000050f);
  static const ERROR_CONTENT_BLOCKED = WIN32_ERROR(0x00000510);
  static const ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE = WIN32_ERROR(0x00000511);
  static const ERROR_APP_HANG = WIN32_ERROR(0x00000512);
  static const ERROR_INVALID_LABEL = WIN32_ERROR(0x00000513);
  static const ERROR_NOT_ALL_ASSIGNED = WIN32_ERROR(0x00000514);
  static const ERROR_SOME_NOT_MAPPED = WIN32_ERROR(0x00000515);
  static const ERROR_NO_QUOTAS_FOR_ACCOUNT = WIN32_ERROR(0x00000516);
  static const ERROR_LOCAL_USER_SESSION_KEY = WIN32_ERROR(0x00000517);
  static const ERROR_NULL_LM_PASSWORD = WIN32_ERROR(0x00000518);
  static const ERROR_UNKNOWN_REVISION = WIN32_ERROR(0x00000519);
  static const ERROR_REVISION_MISMATCH = WIN32_ERROR(0x0000051a);
  static const ERROR_INVALID_OWNER = WIN32_ERROR(0x0000051b);
  static const ERROR_INVALID_PRIMARY_GROUP = WIN32_ERROR(0x0000051c);
  static const ERROR_NO_IMPERSONATION_TOKEN = WIN32_ERROR(0x0000051d);
  static const ERROR_CANT_DISABLE_MANDATORY = WIN32_ERROR(0x0000051e);
  static const ERROR_NO_LOGON_SERVERS = WIN32_ERROR(0x0000051f);
  static const ERROR_NO_SUCH_LOGON_SESSION = WIN32_ERROR(0x00000520);
  static const ERROR_NO_SUCH_PRIVILEGE = WIN32_ERROR(0x00000521);
  static const ERROR_PRIVILEGE_NOT_HELD = WIN32_ERROR(0x00000522);
  static const ERROR_INVALID_ACCOUNT_NAME = WIN32_ERROR(0x00000523);
  static const ERROR_USER_EXISTS = WIN32_ERROR(0x00000524);
  static const ERROR_NO_SUCH_USER = WIN32_ERROR(0x00000525);
  static const ERROR_GROUP_EXISTS = WIN32_ERROR(0x00000526);
  static const ERROR_NO_SUCH_GROUP = WIN32_ERROR(0x00000527);
  static const ERROR_MEMBER_IN_GROUP = WIN32_ERROR(0x00000528);
  static const ERROR_MEMBER_NOT_IN_GROUP = WIN32_ERROR(0x00000529);
  static const ERROR_LAST_ADMIN = WIN32_ERROR(0x0000052a);
  static const ERROR_WRONG_PASSWORD = WIN32_ERROR(0x0000052b);
  static const ERROR_ILL_FORMED_PASSWORD = WIN32_ERROR(0x0000052c);
  static const ERROR_PASSWORD_RESTRICTION = WIN32_ERROR(0x0000052d);
  static const ERROR_LOGON_FAILURE = WIN32_ERROR(0x0000052e);
  static const ERROR_ACCOUNT_RESTRICTION = WIN32_ERROR(0x0000052f);
  static const ERROR_INVALID_LOGON_HOURS = WIN32_ERROR(0x00000530);
  static const ERROR_INVALID_WORKSTATION = WIN32_ERROR(0x00000531);
  static const ERROR_PASSWORD_EXPIRED = WIN32_ERROR(0x00000532);
  static const ERROR_ACCOUNT_DISABLED = WIN32_ERROR(0x00000533);
  static const ERROR_NONE_MAPPED = WIN32_ERROR(0x00000534);
  static const ERROR_TOO_MANY_LUIDS_REQUESTED = WIN32_ERROR(0x00000535);
  static const ERROR_LUIDS_EXHAUSTED = WIN32_ERROR(0x00000536);
  static const ERROR_INVALID_SUB_AUTHORITY = WIN32_ERROR(0x00000537);
  static const ERROR_INVALID_ACL = WIN32_ERROR(0x00000538);
  static const ERROR_INVALID_SID = WIN32_ERROR(0x00000539);
  static const ERROR_INVALID_SECURITY_DESCR = WIN32_ERROR(0x0000053a);
  static const ERROR_BAD_INHERITANCE_ACL = WIN32_ERROR(0x0000053c);
  static const ERROR_SERVER_DISABLED = WIN32_ERROR(0x0000053d);
  static const ERROR_SERVER_NOT_DISABLED = WIN32_ERROR(0x0000053e);
  static const ERROR_INVALID_ID_AUTHORITY = WIN32_ERROR(0x0000053f);
  static const ERROR_ALLOTTED_SPACE_EXCEEDED = WIN32_ERROR(0x00000540);
  static const ERROR_INVALID_GROUP_ATTRIBUTES = WIN32_ERROR(0x00000541);
  static const ERROR_BAD_IMPERSONATION_LEVEL = WIN32_ERROR(0x00000542);
  static const ERROR_CANT_OPEN_ANONYMOUS = WIN32_ERROR(0x00000543);
  static const ERROR_BAD_VALIDATION_CLASS = WIN32_ERROR(0x00000544);
  static const ERROR_BAD_TOKEN_TYPE = WIN32_ERROR(0x00000545);
  static const ERROR_NO_SECURITY_ON_OBJECT = WIN32_ERROR(0x00000546);
  static const ERROR_CANT_ACCESS_DOMAIN_INFO = WIN32_ERROR(0x00000547);
  static const ERROR_INVALID_SERVER_STATE = WIN32_ERROR(0x00000548);
  static const ERROR_INVALID_DOMAIN_STATE = WIN32_ERROR(0x00000549);
  static const ERROR_INVALID_DOMAIN_ROLE = WIN32_ERROR(0x0000054a);
  static const ERROR_NO_SUCH_DOMAIN = WIN32_ERROR(0x0000054b);
  static const ERROR_DOMAIN_EXISTS = WIN32_ERROR(0x0000054c);
  static const ERROR_DOMAIN_LIMIT_EXCEEDED = WIN32_ERROR(0x0000054d);
  static const ERROR_INTERNAL_DB_CORRUPTION = WIN32_ERROR(0x0000054e);
  static const ERROR_INTERNAL_ERROR = WIN32_ERROR(0x0000054f);
  static const ERROR_GENERIC_NOT_MAPPED = WIN32_ERROR(0x00000550);
  static const ERROR_BAD_DESCRIPTOR_FORMAT = WIN32_ERROR(0x00000551);
  static const ERROR_NOT_LOGON_PROCESS = WIN32_ERROR(0x00000552);
  static const ERROR_LOGON_SESSION_EXISTS = WIN32_ERROR(0x00000553);
  static const ERROR_NO_SUCH_PACKAGE = WIN32_ERROR(0x00000554);
  static const ERROR_BAD_LOGON_SESSION_STATE = WIN32_ERROR(0x00000555);
  static const ERROR_LOGON_SESSION_COLLISION = WIN32_ERROR(0x00000556);
  static const ERROR_INVALID_LOGON_TYPE = WIN32_ERROR(0x00000557);
  static const ERROR_CANNOT_IMPERSONATE = WIN32_ERROR(0x00000558);
  static const ERROR_RXACT_INVALID_STATE = WIN32_ERROR(0x00000559);
  static const ERROR_RXACT_COMMIT_FAILURE = WIN32_ERROR(0x0000055a);
  static const ERROR_SPECIAL_ACCOUNT = WIN32_ERROR(0x0000055b);
  static const ERROR_SPECIAL_GROUP = WIN32_ERROR(0x0000055c);
  static const ERROR_SPECIAL_USER = WIN32_ERROR(0x0000055d);
  static const ERROR_MEMBERS_PRIMARY_GROUP = WIN32_ERROR(0x0000055e);
  static const ERROR_TOKEN_ALREADY_IN_USE = WIN32_ERROR(0x0000055f);
  static const ERROR_NO_SUCH_ALIAS = WIN32_ERROR(0x00000560);
  static const ERROR_MEMBER_NOT_IN_ALIAS = WIN32_ERROR(0x00000561);
  static const ERROR_MEMBER_IN_ALIAS = WIN32_ERROR(0x00000562);
  static const ERROR_ALIAS_EXISTS = WIN32_ERROR(0x00000563);
  static const ERROR_LOGON_NOT_GRANTED = WIN32_ERROR(0x00000564);
  static const ERROR_TOO_MANY_SECRETS = WIN32_ERROR(0x00000565);
  static const ERROR_SECRET_TOO_LONG = WIN32_ERROR(0x00000566);
  static const ERROR_INTERNAL_DB_ERROR = WIN32_ERROR(0x00000567);
  static const ERROR_TOO_MANY_CONTEXT_IDS = WIN32_ERROR(0x00000568);
  static const ERROR_LOGON_TYPE_NOT_GRANTED = WIN32_ERROR(0x00000569);
  static const ERROR_NT_CROSS_ENCRYPTION_REQUIRED = WIN32_ERROR(0x0000056a);
  static const ERROR_NO_SUCH_MEMBER = WIN32_ERROR(0x0000056b);
  static const ERROR_INVALID_MEMBER = WIN32_ERROR(0x0000056c);
  static const ERROR_TOO_MANY_SIDS = WIN32_ERROR(0x0000056d);
  static const ERROR_LM_CROSS_ENCRYPTION_REQUIRED = WIN32_ERROR(0x0000056e);
  static const ERROR_NO_INHERITANCE = WIN32_ERROR(0x0000056f);
  static const ERROR_FILE_CORRUPT = WIN32_ERROR(0x00000570);
  static const ERROR_DISK_CORRUPT = WIN32_ERROR(0x00000571);
  static const ERROR_NO_USER_SESSION_KEY = WIN32_ERROR(0x00000572);
  static const ERROR_LICENSE_QUOTA_EXCEEDED = WIN32_ERROR(0x00000573);
  static const ERROR_WRONG_TARGET_NAME = WIN32_ERROR(0x00000574);
  static const ERROR_MUTUAL_AUTH_FAILED = WIN32_ERROR(0x00000575);
  static const ERROR_TIME_SKEW = WIN32_ERROR(0x00000576);
  static const ERROR_CURRENT_DOMAIN_NOT_ALLOWED = WIN32_ERROR(0x00000577);
  static const ERROR_INVALID_WINDOW_HANDLE = WIN32_ERROR(0x00000578);
  static const ERROR_INVALID_MENU_HANDLE = WIN32_ERROR(0x00000579);
  static const ERROR_INVALID_CURSOR_HANDLE = WIN32_ERROR(0x0000057a);
  static const ERROR_INVALID_ACCEL_HANDLE = WIN32_ERROR(0x0000057b);
  static const ERROR_INVALID_HOOK_HANDLE = WIN32_ERROR(0x0000057c);
  static const ERROR_INVALID_DWP_HANDLE = WIN32_ERROR(0x0000057d);
  static const ERROR_TLW_WITH_WSCHILD = WIN32_ERROR(0x0000057e);
  static const ERROR_CANNOT_FIND_WND_CLASS = WIN32_ERROR(0x0000057f);
  static const ERROR_WINDOW_OF_OTHER_THREAD = WIN32_ERROR(0x00000580);
  static const ERROR_HOTKEY_ALREADY_REGISTERED = WIN32_ERROR(0x00000581);
  static const ERROR_CLASS_ALREADY_EXISTS = WIN32_ERROR(0x00000582);
  static const ERROR_CLASS_DOES_NOT_EXIST = WIN32_ERROR(0x00000583);
  static const ERROR_CLASS_HAS_WINDOWS = WIN32_ERROR(0x00000584);
  static const ERROR_INVALID_INDEX = WIN32_ERROR(0x00000585);
  static const ERROR_INVALID_ICON_HANDLE = WIN32_ERROR(0x00000586);
  static const ERROR_PRIVATE_DIALOG_INDEX = WIN32_ERROR(0x00000587);
  static const ERROR_LISTBOX_ID_NOT_FOUND = WIN32_ERROR(0x00000588);
  static const ERROR_NO_WILDCARD_CHARACTERS = WIN32_ERROR(0x00000589);
  static const ERROR_CLIPBOARD_NOT_OPEN = WIN32_ERROR(0x0000058a);
  static const ERROR_HOTKEY_NOT_REGISTERED = WIN32_ERROR(0x0000058b);
  static const ERROR_WINDOW_NOT_DIALOG = WIN32_ERROR(0x0000058c);
  static const ERROR_CONTROL_ID_NOT_FOUND = WIN32_ERROR(0x0000058d);
  static const ERROR_INVALID_COMBOBOX_MESSAGE = WIN32_ERROR(0x0000058e);
  static const ERROR_WINDOW_NOT_COMBOBOX = WIN32_ERROR(0x0000058f);
  static const ERROR_INVALID_EDIT_HEIGHT = WIN32_ERROR(0x00000590);
  static const ERROR_DC_NOT_FOUND = WIN32_ERROR(0x00000591);
  static const ERROR_INVALID_HOOK_FILTER = WIN32_ERROR(0x00000592);
  static const ERROR_INVALID_FILTER_PROC = WIN32_ERROR(0x00000593);
  static const ERROR_HOOK_NEEDS_HMOD = WIN32_ERROR(0x00000594);
  static const ERROR_GLOBAL_ONLY_HOOK = WIN32_ERROR(0x00000595);
  static const ERROR_JOURNAL_HOOK_SET = WIN32_ERROR(0x00000596);
  static const ERROR_HOOK_NOT_INSTALLED = WIN32_ERROR(0x00000597);
  static const ERROR_INVALID_LB_MESSAGE = WIN32_ERROR(0x00000598);
  static const ERROR_SETCOUNT_ON_BAD_LB = WIN32_ERROR(0x00000599);
  static const ERROR_LB_WITHOUT_TABSTOPS = WIN32_ERROR(0x0000059a);
  static const ERROR_DESTROY_OBJECT_OF_OTHER_THREAD = WIN32_ERROR(0x0000059b);
  static const ERROR_CHILD_WINDOW_MENU = WIN32_ERROR(0x0000059c);
  static const ERROR_NO_SYSTEM_MENU = WIN32_ERROR(0x0000059d);
  static const ERROR_INVALID_MSGBOX_STYLE = WIN32_ERROR(0x0000059e);
  static const ERROR_INVALID_SPI_VALUE = WIN32_ERROR(0x0000059f);
  static const ERROR_SCREEN_ALREADY_LOCKED = WIN32_ERROR(0x000005a0);
  static const ERROR_HWNDS_HAVE_DIFF_PARENT = WIN32_ERROR(0x000005a1);
  static const ERROR_NOT_CHILD_WINDOW = WIN32_ERROR(0x000005a2);
  static const ERROR_INVALID_GW_COMMAND = WIN32_ERROR(0x000005a3);
  static const ERROR_INVALID_THREAD_ID = WIN32_ERROR(0x000005a4);
  static const ERROR_NON_MDICHILD_WINDOW = WIN32_ERROR(0x000005a5);
  static const ERROR_POPUP_ALREADY_ACTIVE = WIN32_ERROR(0x000005a6);
  static const ERROR_NO_SCROLLBARS = WIN32_ERROR(0x000005a7);
  static const ERROR_INVALID_SCROLLBAR_RANGE = WIN32_ERROR(0x000005a8);
  static const ERROR_INVALID_SHOWWIN_COMMAND = WIN32_ERROR(0x000005a9);
  static const ERROR_NO_SYSTEM_RESOURCES = WIN32_ERROR(0x000005aa);
  static const ERROR_NONPAGED_SYSTEM_RESOURCES = WIN32_ERROR(0x000005ab);
  static const ERROR_PAGED_SYSTEM_RESOURCES = WIN32_ERROR(0x000005ac);
  static const ERROR_WORKING_SET_QUOTA = WIN32_ERROR(0x000005ad);
  static const ERROR_PAGEFILE_QUOTA = WIN32_ERROR(0x000005ae);
  static const ERROR_COMMITMENT_LIMIT = WIN32_ERROR(0x000005af);
  static const ERROR_MENU_ITEM_NOT_FOUND = WIN32_ERROR(0x000005b0);
  static const ERROR_INVALID_KEYBOARD_HANDLE = WIN32_ERROR(0x000005b1);
  static const ERROR_HOOK_TYPE_NOT_ALLOWED = WIN32_ERROR(0x000005b2);
  static const ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION =
      WIN32_ERROR(0x000005b3);
  static const ERROR_TIMEOUT = WIN32_ERROR(0x000005b4);
  static const ERROR_INVALID_MONITOR_HANDLE = WIN32_ERROR(0x000005b5);
  static const ERROR_INCORRECT_SIZE = WIN32_ERROR(0x000005b6);
  static const ERROR_SYMLINK_CLASS_DISABLED = WIN32_ERROR(0x000005b7);
  static const ERROR_SYMLINK_NOT_SUPPORTED = WIN32_ERROR(0x000005b8);
  static const ERROR_XML_PARSE_ERROR = WIN32_ERROR(0x000005b9);
  static const ERROR_XMLDSIG_ERROR = WIN32_ERROR(0x000005ba);
  static const ERROR_RESTART_APPLICATION = WIN32_ERROR(0x000005bb);
  static const ERROR_WRONG_COMPARTMENT = WIN32_ERROR(0x000005bc);
  static const ERROR_AUTHIP_FAILURE = WIN32_ERROR(0x000005bd);
  static const ERROR_NO_NVRAM_RESOURCES = WIN32_ERROR(0x000005be);
  static const ERROR_NOT_GUI_PROCESS = WIN32_ERROR(0x000005bf);
  static const ERROR_EVENTLOG_FILE_CORRUPT = WIN32_ERROR(0x000005dc);
  static const ERROR_EVENTLOG_CANT_START = WIN32_ERROR(0x000005dd);
  static const ERROR_LOG_FILE_FULL = WIN32_ERROR(0x000005de);
  static const ERROR_EVENTLOG_FILE_CHANGED = WIN32_ERROR(0x000005df);
  static const ERROR_CONTAINER_ASSIGNED = WIN32_ERROR(0x000005e0);
  static const ERROR_JOB_NO_CONTAINER = WIN32_ERROR(0x000005e1);
  static const ERROR_INVALID_TASK_NAME = WIN32_ERROR(0x0000060e);
  static const ERROR_INVALID_TASK_INDEX = WIN32_ERROR(0x0000060f);
  static const ERROR_THREAD_ALREADY_IN_TASK = WIN32_ERROR(0x00000610);
  static const ERROR_INSTALL_SERVICE_FAILURE = WIN32_ERROR(0x00000641);
  static const ERROR_INSTALL_USEREXIT = WIN32_ERROR(0x00000642);
  static const ERROR_INSTALL_FAILURE = WIN32_ERROR(0x00000643);
  static const ERROR_INSTALL_SUSPEND = WIN32_ERROR(0x00000644);
  static const ERROR_UNKNOWN_PRODUCT = WIN32_ERROR(0x00000645);
  static const ERROR_UNKNOWN_FEATURE = WIN32_ERROR(0x00000646);
  static const ERROR_UNKNOWN_COMPONENT = WIN32_ERROR(0x00000647);
  static const ERROR_UNKNOWN_PROPERTY = WIN32_ERROR(0x00000648);
  static const ERROR_INVALID_HANDLE_STATE = WIN32_ERROR(0x00000649);
  static const ERROR_BAD_CONFIGURATION = WIN32_ERROR(0x0000064a);
  static const ERROR_INDEX_ABSENT = WIN32_ERROR(0x0000064b);
  static const ERROR_INSTALL_SOURCE_ABSENT = WIN32_ERROR(0x0000064c);
  static const ERROR_INSTALL_PACKAGE_VERSION = WIN32_ERROR(0x0000064d);
  static const ERROR_PRODUCT_UNINSTALLED = WIN32_ERROR(0x0000064e);
  static const ERROR_BAD_QUERY_SYNTAX = WIN32_ERROR(0x0000064f);
  static const ERROR_INVALID_FIELD = WIN32_ERROR(0x00000650);
  static const ERROR_DEVICE_REMOVED = WIN32_ERROR(0x00000651);
  static const ERROR_INSTALL_ALREADY_RUNNING = WIN32_ERROR(0x00000652);
  static const ERROR_INSTALL_PACKAGE_OPEN_FAILED = WIN32_ERROR(0x00000653);
  static const ERROR_INSTALL_PACKAGE_INVALID = WIN32_ERROR(0x00000654);
  static const ERROR_INSTALL_UI_FAILURE = WIN32_ERROR(0x00000655);
  static const ERROR_INSTALL_LOG_FAILURE = WIN32_ERROR(0x00000656);
  static const ERROR_INSTALL_LANGUAGE_UNSUPPORTED = WIN32_ERROR(0x00000657);
  static const ERROR_INSTALL_TRANSFORM_FAILURE = WIN32_ERROR(0x00000658);
  static const ERROR_INSTALL_PACKAGE_REJECTED = WIN32_ERROR(0x00000659);
  static const ERROR_FUNCTION_NOT_CALLED = WIN32_ERROR(0x0000065a);
  static const ERROR_FUNCTION_FAILED = WIN32_ERROR(0x0000065b);
  static const ERROR_INVALID_TABLE = WIN32_ERROR(0x0000065c);
  static const ERROR_DATATYPE_MISMATCH = WIN32_ERROR(0x0000065d);
  static const ERROR_UNSUPPORTED_TYPE = WIN32_ERROR(0x0000065e);
  static const ERROR_CREATE_FAILED = WIN32_ERROR(0x0000065f);
  static const ERROR_INSTALL_TEMP_UNWRITABLE = WIN32_ERROR(0x00000660);
  static const ERROR_INSTALL_PLATFORM_UNSUPPORTED = WIN32_ERROR(0x00000661);
  static const ERROR_INSTALL_NOTUSED = WIN32_ERROR(0x00000662);
  static const ERROR_PATCH_PACKAGE_OPEN_FAILED = WIN32_ERROR(0x00000663);
  static const ERROR_PATCH_PACKAGE_INVALID = WIN32_ERROR(0x00000664);
  static const ERROR_PATCH_PACKAGE_UNSUPPORTED = WIN32_ERROR(0x00000665);
  static const ERROR_PRODUCT_VERSION = WIN32_ERROR(0x00000666);
  static const ERROR_INVALID_COMMAND_LINE = WIN32_ERROR(0x00000667);
  static const ERROR_INSTALL_REMOTE_DISALLOWED = WIN32_ERROR(0x00000668);
  static const ERROR_SUCCESS_REBOOT_INITIATED = WIN32_ERROR(0x00000669);
  static const ERROR_PATCH_TARGET_NOT_FOUND = WIN32_ERROR(0x0000066a);
  static const ERROR_PATCH_PACKAGE_REJECTED = WIN32_ERROR(0x0000066b);
  static const ERROR_INSTALL_TRANSFORM_REJECTED = WIN32_ERROR(0x0000066c);
  static const ERROR_INSTALL_REMOTE_PROHIBITED = WIN32_ERROR(0x0000066d);
  static const ERROR_PATCH_REMOVAL_UNSUPPORTED = WIN32_ERROR(0x0000066e);
  static const ERROR_UNKNOWN_PATCH = WIN32_ERROR(0x0000066f);
  static const ERROR_PATCH_NO_SEQUENCE = WIN32_ERROR(0x00000670);
  static const ERROR_PATCH_REMOVAL_DISALLOWED = WIN32_ERROR(0x00000671);
  static const ERROR_INVALID_PATCH_XML = WIN32_ERROR(0x00000672);
  static const ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT = WIN32_ERROR(0x00000673);
  static const ERROR_INSTALL_SERVICE_SAFEBOOT = WIN32_ERROR(0x00000674);
  static const ERROR_FAIL_FAST_EXCEPTION = WIN32_ERROR(0x00000675);
  static const ERROR_INSTALL_REJECTED = WIN32_ERROR(0x00000676);
  static const ERROR_DYNAMIC_CODE_BLOCKED = WIN32_ERROR(0x00000677);
  static const ERROR_NOT_SAME_OBJECT = WIN32_ERROR(0x00000678);
  static const ERROR_STRICT_CFG_VIOLATION = WIN32_ERROR(0x00000679);
  static const ERROR_SET_CONTEXT_DENIED = WIN32_ERROR(0x0000067c);
  static const ERROR_CROSS_PARTITION_VIOLATION = WIN32_ERROR(0x0000067d);
  static const ERROR_RETURN_ADDRESS_HIJACK_ATTEMPT = WIN32_ERROR(0x0000067e);
  static const ERROR_INVALID_USER_BUFFER = WIN32_ERROR(0x000006f8);
  static const ERROR_UNRECOGNIZED_MEDIA = WIN32_ERROR(0x000006f9);
  static const ERROR_NO_TRUST_LSA_SECRET = WIN32_ERROR(0x000006fa);
  static const ERROR_NO_TRUST_SAM_ACCOUNT = WIN32_ERROR(0x000006fb);
  static const ERROR_TRUSTED_DOMAIN_FAILURE = WIN32_ERROR(0x000006fc);
  static const ERROR_TRUSTED_RELATIONSHIP_FAILURE = WIN32_ERROR(0x000006fd);
  static const ERROR_TRUST_FAILURE = WIN32_ERROR(0x000006fe);
  static const ERROR_NETLOGON_NOT_STARTED = WIN32_ERROR(0x00000700);
  static const ERROR_ACCOUNT_EXPIRED = WIN32_ERROR(0x00000701);
  static const ERROR_REDIRECTOR_HAS_OPEN_HANDLES = WIN32_ERROR(0x00000702);
  static const ERROR_PRINTER_DRIVER_ALREADY_INSTALLED = WIN32_ERROR(0x00000703);
  static const ERROR_UNKNOWN_PORT = WIN32_ERROR(0x00000704);
  static const ERROR_UNKNOWN_PRINTER_DRIVER = WIN32_ERROR(0x00000705);
  static const ERROR_UNKNOWN_PRINTPROCESSOR = WIN32_ERROR(0x00000706);
  static const ERROR_INVALID_SEPARATOR_FILE = WIN32_ERROR(0x00000707);
  static const ERROR_INVALID_PRIORITY = WIN32_ERROR(0x00000708);
  static const ERROR_INVALID_PRINTER_NAME = WIN32_ERROR(0x00000709);
  static const ERROR_PRINTER_ALREADY_EXISTS = WIN32_ERROR(0x0000070a);
  static const ERROR_INVALID_PRINTER_COMMAND = WIN32_ERROR(0x0000070b);
  static const ERROR_INVALID_DATATYPE = WIN32_ERROR(0x0000070c);
  static const ERROR_INVALID_ENVIRONMENT = WIN32_ERROR(0x0000070d);
  static const ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT =
      WIN32_ERROR(0x0000070f);
  static const ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT =
      WIN32_ERROR(0x00000710);
  static const ERROR_NOLOGON_SERVER_TRUST_ACCOUNT = WIN32_ERROR(0x00000711);
  static const ERROR_DOMAIN_TRUST_INCONSISTENT = WIN32_ERROR(0x00000712);
  static const ERROR_SERVER_HAS_OPEN_HANDLES = WIN32_ERROR(0x00000713);
  static const ERROR_RESOURCE_DATA_NOT_FOUND = WIN32_ERROR(0x00000714);
  static const ERROR_RESOURCE_TYPE_NOT_FOUND = WIN32_ERROR(0x00000715);
  static const ERROR_RESOURCE_NAME_NOT_FOUND = WIN32_ERROR(0x00000716);
  static const ERROR_RESOURCE_LANG_NOT_FOUND = WIN32_ERROR(0x00000717);
  static const ERROR_NOT_ENOUGH_QUOTA = WIN32_ERROR(0x00000718);
  static const ERROR_INVALID_TIME = WIN32_ERROR(0x0000076d);
  static const ERROR_INVALID_FORM_NAME = WIN32_ERROR(0x0000076e);
  static const ERROR_INVALID_FORM_SIZE = WIN32_ERROR(0x0000076f);
  static const ERROR_ALREADY_WAITING = WIN32_ERROR(0x00000770);
  static const ERROR_PRINTER_DELETED = WIN32_ERROR(0x00000771);
  static const ERROR_INVALID_PRINTER_STATE = WIN32_ERROR(0x00000772);
  static const ERROR_PASSWORD_MUST_CHANGE = WIN32_ERROR(0x00000773);
  static const ERROR_DOMAIN_CONTROLLER_NOT_FOUND = WIN32_ERROR(0x00000774);
  static const ERROR_ACCOUNT_LOCKED_OUT = WIN32_ERROR(0x00000775);
  static const ERROR_NO_SITENAME = WIN32_ERROR(0x0000077f);
  static const ERROR_CANT_ACCESS_FILE = WIN32_ERROR(0x00000780);
  static const ERROR_CANT_RESOLVE_FILENAME = WIN32_ERROR(0x00000781);
  static const ERROR_KM_DRIVER_BLOCKED = WIN32_ERROR(0x0000078a);
  static const ERROR_CONTEXT_EXPIRED = WIN32_ERROR(0x0000078b);
  static const ERROR_PER_USER_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(0x0000078c);
  static const ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(0x0000078d);
  static const ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(0x0000078e);
  static const ERROR_AUTHENTICATION_FIREWALL_FAILED = WIN32_ERROR(0x0000078f);
  static const ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED = WIN32_ERROR(0x00000790);
  static const ERROR_NTLM_BLOCKED = WIN32_ERROR(0x00000791);
  static const ERROR_PASSWORD_CHANGE_REQUIRED = WIN32_ERROR(0x00000792);
  static const ERROR_LOST_MODE_LOGON_RESTRICTION = WIN32_ERROR(0x00000793);
  static const ERROR_INVALID_PIXEL_FORMAT = WIN32_ERROR(0x000007d0);
  static const ERROR_BAD_DRIVER = WIN32_ERROR(0x000007d1);
  static const ERROR_INVALID_WINDOW_STYLE = WIN32_ERROR(0x000007d2);
  static const ERROR_METAFILE_NOT_SUPPORTED = WIN32_ERROR(0x000007d3);
  static const ERROR_TRANSFORM_NOT_SUPPORTED = WIN32_ERROR(0x000007d4);
  static const ERROR_CLIPPING_NOT_SUPPORTED = WIN32_ERROR(0x000007d5);
  static const ERROR_INVALID_CMM = WIN32_ERROR(0x000007da);
  static const ERROR_INVALID_PROFILE = WIN32_ERROR(0x000007db);
  static const ERROR_TAG_NOT_FOUND = WIN32_ERROR(0x000007dc);
  static const ERROR_TAG_NOT_PRESENT = WIN32_ERROR(0x000007dd);
  static const ERROR_DUPLICATE_TAG = WIN32_ERROR(0x000007de);
  static const ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE =
      WIN32_ERROR(0x000007df);
  static const ERROR_PROFILE_NOT_FOUND = WIN32_ERROR(0x000007e0);
  static const ERROR_INVALID_COLORSPACE = WIN32_ERROR(0x000007e1);
  static const ERROR_ICM_NOT_ENABLED = WIN32_ERROR(0x000007e2);
  static const ERROR_DELETING_ICM_XFORM = WIN32_ERROR(0x000007e3);
  static const ERROR_INVALID_TRANSFORM = WIN32_ERROR(0x000007e4);
  static const ERROR_COLORSPACE_MISMATCH = WIN32_ERROR(0x000007e5);
  static const ERROR_INVALID_COLORINDEX = WIN32_ERROR(0x000007e6);
  static const ERROR_PROFILE_DOES_NOT_MATCH_DEVICE = WIN32_ERROR(0x000007e7);
  static const ERROR_CONNECTED_OTHER_PASSWORD = WIN32_ERROR(0x0000083c);
  static const ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT = WIN32_ERROR(0x0000083d);
  static const ERROR_BAD_USERNAME = WIN32_ERROR(0x0000089a);
  static const ERROR_NOT_CONNECTED = WIN32_ERROR(0x000008ca);
  static const ERROR_OPEN_FILES = WIN32_ERROR(0x00000961);
  static const ERROR_ACTIVE_CONNECTIONS = WIN32_ERROR(0x00000962);
  static const ERROR_DEVICE_IN_USE = WIN32_ERROR(0x00000964);
  static const ERROR_UNKNOWN_PRINT_MONITOR = WIN32_ERROR(0x00000bb8);
  static const ERROR_PRINTER_DRIVER_IN_USE = WIN32_ERROR(0x00000bb9);
  static const ERROR_SPOOL_FILE_NOT_FOUND = WIN32_ERROR(0x00000bba);
  static const ERROR_SPL_NO_STARTDOC = WIN32_ERROR(0x00000bbb);
  static const ERROR_SPL_NO_ADDJOB = WIN32_ERROR(0x00000bbc);
  static const ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED =
      WIN32_ERROR(0x00000bbd);
  static const ERROR_PRINT_MONITOR_ALREADY_INSTALLED = WIN32_ERROR(0x00000bbe);
  static const ERROR_INVALID_PRINT_MONITOR = WIN32_ERROR(0x00000bbf);
  static const ERROR_PRINT_MONITOR_IN_USE = WIN32_ERROR(0x00000bc0);
  static const ERROR_PRINTER_HAS_JOBS_QUEUED = WIN32_ERROR(0x00000bc1);
  static const ERROR_SUCCESS_REBOOT_REQUIRED = WIN32_ERROR(0x00000bc2);
  static const ERROR_SUCCESS_RESTART_REQUIRED = WIN32_ERROR(0x00000bc3);
  static const ERROR_PRINTER_NOT_FOUND = WIN32_ERROR(0x00000bc4);
  static const ERROR_PRINTER_DRIVER_WARNED = WIN32_ERROR(0x00000bc5);
  static const ERROR_PRINTER_DRIVER_BLOCKED = WIN32_ERROR(0x00000bc6);
  static const ERROR_PRINTER_DRIVER_PACKAGE_IN_USE = WIN32_ERROR(0x00000bc7);
  static const ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND = WIN32_ERROR(0x00000bc8);
  static const ERROR_FAIL_REBOOT_REQUIRED = WIN32_ERROR(0x00000bc9);
  static const ERROR_FAIL_REBOOT_INITIATED = WIN32_ERROR(0x00000bca);
  static const ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED = WIN32_ERROR(0x00000bcb);
  static const ERROR_PRINT_JOB_RESTART_REQUIRED = WIN32_ERROR(0x00000bcc);
  static const ERROR_INVALID_PRINTER_DRIVER_MANIFEST = WIN32_ERROR(0x00000bcd);
  static const ERROR_PRINTER_NOT_SHAREABLE = WIN32_ERROR(0x00000bce);
  static const ERROR_SERVER_SERVICE_CALL_REQUIRES_SMB1 =
      WIN32_ERROR(0x00000bcf);
  static const ERROR_NETWORK_AUTHENTICATION_PROMPT_CANCELED =
      WIN32_ERROR(0x00000bd0);
  static const ERROR_REQUEST_PAUSED = WIN32_ERROR(0x00000bea);
  static const ERROR_APPEXEC_CONDITION_NOT_SATISFIED = WIN32_ERROR(0x00000bf4);
  static const ERROR_APPEXEC_HANDLE_INVALIDATED = WIN32_ERROR(0x00000bf5);
  static const ERROR_APPEXEC_INVALID_HOST_GENERATION = WIN32_ERROR(0x00000bf6);
  static const ERROR_APPEXEC_UNEXPECTED_PROCESS_REGISTRATION =
      WIN32_ERROR(0x00000bf7);
  static const ERROR_APPEXEC_INVALID_HOST_STATE = WIN32_ERROR(0x00000bf8);
  static const ERROR_APPEXEC_NO_DONOR = WIN32_ERROR(0x00000bf9);
  static const ERROR_APPEXEC_HOST_ID_MISMATCH = WIN32_ERROR(0x00000bfa);
  static const ERROR_APPEXEC_UNKNOWN_USER = WIN32_ERROR(0x00000bfb);
  static const ERROR_APPEXEC_APP_COMPAT_BLOCK = WIN32_ERROR(0x00000bfc);
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT = WIN32_ERROR(0x00000bfd);
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_TERMINATION =
      WIN32_ERROR(0x00000bfe);
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_LICENSING =
      WIN32_ERROR(0x00000bff);
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_RESOURCES =
      WIN32_ERROR(0x00000c00);
  static const ERROR_VRF_VOLATILE_CFG_AND_IO_ENABLED = WIN32_ERROR(0x00000c08);
  static const ERROR_VRF_VOLATILE_NOT_STOPPABLE = WIN32_ERROR(0x00000c09);
  static const ERROR_VRF_VOLATILE_SAFE_MODE = WIN32_ERROR(0x00000c0a);
  static const ERROR_VRF_VOLATILE_NOT_RUNNABLE_SYSTEM = WIN32_ERROR(0x00000c0b);
  static const ERROR_VRF_VOLATILE_NOT_SUPPORTED_RULECLASS =
      WIN32_ERROR(0x00000c0c);
  static const ERROR_VRF_VOLATILE_PROTECTED_DRIVER = WIN32_ERROR(0x00000c0d);
  static const ERROR_VRF_VOLATILE_NMI_REGISTERED = WIN32_ERROR(0x00000c0e);
  static const ERROR_VRF_VOLATILE_SETTINGS_CONFLICT = WIN32_ERROR(0x00000c0f);
  static const ERROR_DIF_IOCALLBACK_NOT_REPLACED = WIN32_ERROR(0x00000c76);
  static const ERROR_DIF_LIVEDUMP_LIMIT_EXCEEDED = WIN32_ERROR(0x00000c77);
  static const ERROR_DIF_VOLATILE_SECTION_NOT_LOCKED = WIN32_ERROR(0x00000c78);
  static const ERROR_DIF_VOLATILE_DRIVER_HOTPATCHED = WIN32_ERROR(0x00000c79);
  static const ERROR_DIF_VOLATILE_INVALID_INFO = WIN32_ERROR(0x00000c7a);
  static const ERROR_DIF_VOLATILE_DRIVER_IS_NOT_RUNNING =
      WIN32_ERROR(0x00000c7b);
  static const ERROR_DIF_VOLATILE_PLUGIN_IS_NOT_RUNNING =
      WIN32_ERROR(0x00000c7c);
  static const ERROR_DIF_VOLATILE_PLUGIN_CHANGE_NOT_ALLOWED =
      WIN32_ERROR(0x00000c7d);
  static const ERROR_DIF_VOLATILE_NOT_ALLOWED = WIN32_ERROR(0x00000c7e);
  static const ERROR_DIF_BINDING_API_NOT_FOUND = WIN32_ERROR(0x00000c7f);
  static const ERROR_IO_REISSUE_AS_CACHED = WIN32_ERROR(0x00000f6e);
  static const ERROR_WINS_INTERNAL = WIN32_ERROR(0x00000fa0);
  static const ERROR_CAN_NOT_DEL_LOCAL_WINS = WIN32_ERROR(0x00000fa1);
  static const ERROR_STATIC_INIT = WIN32_ERROR(0x00000fa2);
  static const ERROR_INC_BACKUP = WIN32_ERROR(0x00000fa3);
  static const ERROR_FULL_BACKUP = WIN32_ERROR(0x00000fa4);
  static const ERROR_REC_NON_EXISTENT = WIN32_ERROR(0x00000fa5);
  static const ERROR_RPL_NOT_ALLOWED = WIN32_ERROR(0x00000fa6);
  static const ERROR_DHCP_ADDRESS_CONFLICT = WIN32_ERROR(0x00001004);
  static const ERROR_WMI_GUID_NOT_FOUND = WIN32_ERROR(0x00001068);
  static const ERROR_WMI_INSTANCE_NOT_FOUND = WIN32_ERROR(0x00001069);
  static const ERROR_WMI_ITEMID_NOT_FOUND = WIN32_ERROR(0x0000106a);
  static const ERROR_WMI_TRY_AGAIN = WIN32_ERROR(0x0000106b);
  static const ERROR_WMI_DP_NOT_FOUND = WIN32_ERROR(0x0000106c);
  static const ERROR_WMI_UNRESOLVED_INSTANCE_REF = WIN32_ERROR(0x0000106d);
  static const ERROR_WMI_ALREADY_ENABLED = WIN32_ERROR(0x0000106e);
  static const ERROR_WMI_GUID_DISCONNECTED = WIN32_ERROR(0x0000106f);
  static const ERROR_WMI_SERVER_UNAVAILABLE = WIN32_ERROR(0x00001070);
  static const ERROR_WMI_DP_FAILED = WIN32_ERROR(0x00001071);
  static const ERROR_WMI_INVALID_MOF = WIN32_ERROR(0x00001072);
  static const ERROR_WMI_INVALID_REGINFO = WIN32_ERROR(0x00001073);
  static const ERROR_WMI_ALREADY_DISABLED = WIN32_ERROR(0x00001074);
  static const ERROR_WMI_READ_ONLY = WIN32_ERROR(0x00001075);
  static const ERROR_WMI_SET_FAILURE = WIN32_ERROR(0x00001076);
  static const ERROR_NOT_APPCONTAINER = WIN32_ERROR(0x0000109a);
  static const ERROR_APPCONTAINER_REQUIRED = WIN32_ERROR(0x0000109b);
  static const ERROR_NOT_SUPPORTED_IN_APPCONTAINER = WIN32_ERROR(0x0000109c);
  static const ERROR_INVALID_PACKAGE_SID_LENGTH = WIN32_ERROR(0x0000109d);
  static const ERROR_INVALID_MEDIA = WIN32_ERROR(0x000010cc);
  static const ERROR_INVALID_LIBRARY = WIN32_ERROR(0x000010cd);
  static const ERROR_INVALID_MEDIA_POOL = WIN32_ERROR(0x000010ce);
  static const ERROR_DRIVE_MEDIA_MISMATCH = WIN32_ERROR(0x000010cf);
  static const ERROR_MEDIA_OFFLINE = WIN32_ERROR(0x000010d0);
  static const ERROR_LIBRARY_OFFLINE = WIN32_ERROR(0x000010d1);
  static const ERROR_EMPTY = WIN32_ERROR(0x000010d2);
  static const ERROR_NOT_EMPTY = WIN32_ERROR(0x000010d3);
  static const ERROR_MEDIA_UNAVAILABLE = WIN32_ERROR(0x000010d4);
  static const ERROR_RESOURCE_DISABLED = WIN32_ERROR(0x000010d5);
  static const ERROR_INVALID_CLEANER = WIN32_ERROR(0x000010d6);
  static const ERROR_UNABLE_TO_CLEAN = WIN32_ERROR(0x000010d7);
  static const ERROR_OBJECT_NOT_FOUND = WIN32_ERROR(0x000010d8);
  static const ERROR_DATABASE_FAILURE = WIN32_ERROR(0x000010d9);
  static const ERROR_DATABASE_FULL = WIN32_ERROR(0x000010da);
  static const ERROR_MEDIA_INCOMPATIBLE = WIN32_ERROR(0x000010db);
  static const ERROR_RESOURCE_NOT_PRESENT = WIN32_ERROR(0x000010dc);
  static const ERROR_INVALID_OPERATION = WIN32_ERROR(0x000010dd);
  static const ERROR_MEDIA_NOT_AVAILABLE = WIN32_ERROR(0x000010de);
  static const ERROR_DEVICE_NOT_AVAILABLE = WIN32_ERROR(0x000010df);
  static const ERROR_REQUEST_REFUSED = WIN32_ERROR(0x000010e0);
  static const ERROR_INVALID_DRIVE_OBJECT = WIN32_ERROR(0x000010e1);
  static const ERROR_LIBRARY_FULL = WIN32_ERROR(0x000010e2);
  static const ERROR_MEDIUM_NOT_ACCESSIBLE = WIN32_ERROR(0x000010e3);
  static const ERROR_UNABLE_TO_LOAD_MEDIUM = WIN32_ERROR(0x000010e4);
  static const ERROR_UNABLE_TO_INVENTORY_DRIVE = WIN32_ERROR(0x000010e5);
  static const ERROR_UNABLE_TO_INVENTORY_SLOT = WIN32_ERROR(0x000010e6);
  static const ERROR_UNABLE_TO_INVENTORY_TRANSPORT = WIN32_ERROR(0x000010e7);
  static const ERROR_TRANSPORT_FULL = WIN32_ERROR(0x000010e8);
  static const ERROR_CONTROLLING_IEPORT = WIN32_ERROR(0x000010e9);
  static const ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA = WIN32_ERROR(0x000010ea);
  static const ERROR_CLEANER_SLOT_SET = WIN32_ERROR(0x000010eb);
  static const ERROR_CLEANER_SLOT_NOT_SET = WIN32_ERROR(0x000010ec);
  static const ERROR_CLEANER_CARTRIDGE_SPENT = WIN32_ERROR(0x000010ed);
  static const ERROR_UNEXPECTED_OMID = WIN32_ERROR(0x000010ee);
  static const ERROR_CANT_DELETE_LAST_ITEM = WIN32_ERROR(0x000010ef);
  static const ERROR_MESSAGE_EXCEEDS_MAX_SIZE = WIN32_ERROR(0x000010f0);
  static const ERROR_VOLUME_CONTAINS_SYS_FILES = WIN32_ERROR(0x000010f1);
  static const ERROR_INDIGENOUS_TYPE = WIN32_ERROR(0x000010f2);
  static const ERROR_NO_SUPPORTING_DRIVES = WIN32_ERROR(0x000010f3);
  static const ERROR_CLEANER_CARTRIDGE_INSTALLED = WIN32_ERROR(0x000010f4);
  static const ERROR_IEPORT_FULL = WIN32_ERROR(0x000010f5);
  static const ERROR_FILE_OFFLINE = WIN32_ERROR(0x000010fe);
  static const ERROR_REMOTE_STORAGE_NOT_ACTIVE = WIN32_ERROR(0x000010ff);
  static const ERROR_REMOTE_STORAGE_MEDIA_ERROR = WIN32_ERROR(0x00001100);
  static const ERROR_NOT_A_REPARSE_POINT = WIN32_ERROR(0x00001126);
  static const ERROR_REPARSE_ATTRIBUTE_CONFLICT = WIN32_ERROR(0x00001127);
  static const ERROR_INVALID_REPARSE_DATA = WIN32_ERROR(0x00001128);
  static const ERROR_REPARSE_TAG_INVALID = WIN32_ERROR(0x00001129);
  static const ERROR_REPARSE_TAG_MISMATCH = WIN32_ERROR(0x0000112a);
  static const ERROR_REPARSE_POINT_ENCOUNTERED = WIN32_ERROR(0x0000112b);
  static const ERROR_APP_DATA_NOT_FOUND = WIN32_ERROR(0x00001130);
  static const ERROR_APP_DATA_EXPIRED = WIN32_ERROR(0x00001131);
  static const ERROR_APP_DATA_CORRUPT = WIN32_ERROR(0x00001132);
  static const ERROR_APP_DATA_LIMIT_EXCEEDED = WIN32_ERROR(0x00001133);
  static const ERROR_APP_DATA_REBOOT_REQUIRED = WIN32_ERROR(0x00001134);
  static const ERROR_SECUREBOOT_ROLLBACK_DETECTED = WIN32_ERROR(0x00001144);
  static const ERROR_SECUREBOOT_POLICY_VIOLATION = WIN32_ERROR(0x00001145);
  static const ERROR_SECUREBOOT_INVALID_POLICY = WIN32_ERROR(0x00001146);
  static const ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND =
      WIN32_ERROR(0x00001147);
  static const ERROR_SECUREBOOT_POLICY_NOT_SIGNED = WIN32_ERROR(0x00001148);
  static const ERROR_SECUREBOOT_NOT_ENABLED = WIN32_ERROR(0x00001149);
  static const ERROR_SECUREBOOT_FILE_REPLACED = WIN32_ERROR(0x0000114a);
  static const ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED = WIN32_ERROR(0x0000114b);
  static const ERROR_SECUREBOOT_POLICY_UNKNOWN = WIN32_ERROR(0x0000114c);
  static const ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION =
      WIN32_ERROR(0x0000114d);
  static const ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH = WIN32_ERROR(0x0000114e);
  static const ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED =
      WIN32_ERROR(0x0000114f);
  static const ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH =
      WIN32_ERROR(0x00001150);
  static const ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING =
      WIN32_ERROR(0x00001151);
  static const ERROR_SECUREBOOT_NOT_BASE_POLICY = WIN32_ERROR(0x00001152);
  static const ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY =
      WIN32_ERROR(0x00001153);
  static const ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED = WIN32_ERROR(0x00001158);
  static const ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED = WIN32_ERROR(0x00001159);
  static const ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED = WIN32_ERROR(0x0000115a);
  static const ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED = WIN32_ERROR(0x0000115b);
  static const ERROR_ALREADY_HAS_STREAM_ID = WIN32_ERROR(0x0000115c);
  static const ERROR_SMR_GARBAGE_COLLECTION_REQUIRED = WIN32_ERROR(0x0000115d);
  static const ERROR_WOF_WIM_HEADER_CORRUPT = WIN32_ERROR(0x0000115e);
  static const ERROR_WOF_WIM_RESOURCE_TABLE_CORRUPT = WIN32_ERROR(0x0000115f);
  static const ERROR_WOF_FILE_RESOURCE_TABLE_CORRUPT = WIN32_ERROR(0x00001160);
  static const ERROR_OBJECT_IS_IMMUTABLE = WIN32_ERROR(0x00001161);
  static const ERROR_VOLUME_NOT_SIS_ENABLED = WIN32_ERROR(0x00001194);
  static const ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED =
      WIN32_ERROR(0x000011c6);
  static const ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION =
      WIN32_ERROR(0x000011c7);
  static const ERROR_SYSTEM_INTEGRITY_INVALID_POLICY = WIN32_ERROR(0x000011c8);
  static const ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED =
      WIN32_ERROR(0x000011c9);
  static const ERROR_SYSTEM_INTEGRITY_TOO_MANY_POLICIES =
      WIN32_ERROR(0x000011ca);
  static const ERROR_SYSTEM_INTEGRITY_SUPPLEMENTAL_POLICY_NOT_AUTHORIZED =
      WIN32_ERROR(0x000011cb);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_MALICIOUS =
      WIN32_ERROR(0x000011cc);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_PUA = WIN32_ERROR(0x000011cd);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_DANGEROUS_EXT =
      WIN32_ERROR(0x000011ce);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_OFFLINE =
      WIN32_ERROR(0x000011cf);
  static const ERROR_VSM_NOT_INITIALIZED = WIN32_ERROR(0x000011d0);
  static const ERROR_VSM_DMA_PROTECTION_NOT_IN_USE = WIN32_ERROR(0x000011d1);
  static const ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED = WIN32_ERROR(0x000011da);
  static const ERROR_PLATFORM_MANIFEST_INVALID = WIN32_ERROR(0x000011db);
  static const ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED =
      WIN32_ERROR(0x000011dc);
  static const ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED =
      WIN32_ERROR(0x000011dd);
  static const ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND =
      WIN32_ERROR(0x000011de);
  static const ERROR_PLATFORM_MANIFEST_NOT_ACTIVE = WIN32_ERROR(0x000011df);
  static const ERROR_PLATFORM_MANIFEST_NOT_SIGNED = WIN32_ERROR(0x000011e0);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNFRIENDLY_FILE =
      WIN32_ERROR(0x000011e4);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNATTAINABLE =
      WIN32_ERROR(0x000011e5);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_EXPLICIT_DENY_FILE =
      WIN32_ERROR(0x000011e6);
  static const ERROR_DEPENDENT_RESOURCE_EXISTS = WIN32_ERROR(0x00001389);
  static const ERROR_DEPENDENCY_NOT_FOUND = WIN32_ERROR(0x0000138a);
  static const ERROR_DEPENDENCY_ALREADY_EXISTS = WIN32_ERROR(0x0000138b);
  static const ERROR_RESOURCE_NOT_ONLINE = WIN32_ERROR(0x0000138c);
  static const ERROR_HOST_NODE_NOT_AVAILABLE = WIN32_ERROR(0x0000138d);
  static const ERROR_RESOURCE_NOT_AVAILABLE = WIN32_ERROR(0x0000138e);
  static const ERROR_RESOURCE_NOT_FOUND = WIN32_ERROR(0x0000138f);
  static const ERROR_SHUTDOWN_CLUSTER = WIN32_ERROR(0x00001390);
  static const ERROR_CANT_EVICT_ACTIVE_NODE = WIN32_ERROR(0x00001391);
  static const ERROR_OBJECT_ALREADY_EXISTS = WIN32_ERROR(0x00001392);
  static const ERROR_OBJECT_IN_LIST = WIN32_ERROR(0x00001393);
  static const ERROR_GROUP_NOT_AVAILABLE = WIN32_ERROR(0x00001394);
  static const ERROR_GROUP_NOT_FOUND = WIN32_ERROR(0x00001395);
  static const ERROR_GROUP_NOT_ONLINE = WIN32_ERROR(0x00001396);
  static const ERROR_HOST_NODE_NOT_RESOURCE_OWNER = WIN32_ERROR(0x00001397);
  static const ERROR_HOST_NODE_NOT_GROUP_OWNER = WIN32_ERROR(0x00001398);
  static const ERROR_RESMON_CREATE_FAILED = WIN32_ERROR(0x00001399);
  static const ERROR_RESMON_ONLINE_FAILED = WIN32_ERROR(0x0000139a);
  static const ERROR_RESOURCE_ONLINE = WIN32_ERROR(0x0000139b);
  static const ERROR_QUORUM_RESOURCE = WIN32_ERROR(0x0000139c);
  static const ERROR_NOT_QUORUM_CAPABLE = WIN32_ERROR(0x0000139d);
  static const ERROR_CLUSTER_SHUTTING_DOWN = WIN32_ERROR(0x0000139e);
  static const ERROR_INVALID_STATE = WIN32_ERROR(0x0000139f);
  static const ERROR_RESOURCE_PROPERTIES_STORED = WIN32_ERROR(0x000013a0);
  static const ERROR_NOT_QUORUM_CLASS = WIN32_ERROR(0x000013a1);
  static const ERROR_CORE_RESOURCE = WIN32_ERROR(0x000013a2);
  static const ERROR_QUORUM_RESOURCE_ONLINE_FAILED = WIN32_ERROR(0x000013a3);
  static const ERROR_QUORUMLOG_OPEN_FAILED = WIN32_ERROR(0x000013a4);
  static const ERROR_CLUSTERLOG_CORRUPT = WIN32_ERROR(0x000013a5);
  static const ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE =
      WIN32_ERROR(0x000013a6);
  static const ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE = WIN32_ERROR(0x000013a7);
  static const ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND = WIN32_ERROR(0x000013a8);
  static const ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE = WIN32_ERROR(0x000013a9);
  static const ERROR_QUORUM_OWNER_ALIVE = WIN32_ERROR(0x000013aa);
  static const ERROR_NETWORK_NOT_AVAILABLE = WIN32_ERROR(0x000013ab);
  static const ERROR_NODE_NOT_AVAILABLE = WIN32_ERROR(0x000013ac);
  static const ERROR_ALL_NODES_NOT_AVAILABLE = WIN32_ERROR(0x000013ad);
  static const ERROR_RESOURCE_FAILED = WIN32_ERROR(0x000013ae);
  static const ERROR_CLUSTER_INVALID_NODE = WIN32_ERROR(0x000013af);
  static const ERROR_CLUSTER_NODE_EXISTS = WIN32_ERROR(0x000013b0);
  static const ERROR_CLUSTER_JOIN_IN_PROGRESS = WIN32_ERROR(0x000013b1);
  static const ERROR_CLUSTER_NODE_NOT_FOUND = WIN32_ERROR(0x000013b2);
  static const ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND = WIN32_ERROR(0x000013b3);
  static const ERROR_CLUSTER_NETWORK_EXISTS = WIN32_ERROR(0x000013b4);
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND = WIN32_ERROR(0x000013b5);
  static const ERROR_CLUSTER_NETINTERFACE_EXISTS = WIN32_ERROR(0x000013b6);
  static const ERROR_CLUSTER_NETINTERFACE_NOT_FOUND = WIN32_ERROR(0x000013b7);
  static const ERROR_CLUSTER_INVALID_REQUEST = WIN32_ERROR(0x000013b8);
  static const ERROR_CLUSTER_INVALID_NETWORK_PROVIDER = WIN32_ERROR(0x000013b9);
  static const ERROR_CLUSTER_NODE_DOWN = WIN32_ERROR(0x000013ba);
  static const ERROR_CLUSTER_NODE_UNREACHABLE = WIN32_ERROR(0x000013bb);
  static const ERROR_CLUSTER_NODE_NOT_MEMBER = WIN32_ERROR(0x000013bc);
  static const ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS = WIN32_ERROR(0x000013bd);
  static const ERROR_CLUSTER_INVALID_NETWORK = WIN32_ERROR(0x000013be);
  static const ERROR_CLUSTER_NODE_UP = WIN32_ERROR(0x000013c0);
  static const ERROR_CLUSTER_IPADDR_IN_USE = WIN32_ERROR(0x000013c1);
  static const ERROR_CLUSTER_NODE_NOT_PAUSED = WIN32_ERROR(0x000013c2);
  static const ERROR_CLUSTER_NO_SECURITY_CONTEXT = WIN32_ERROR(0x000013c3);
  static const ERROR_CLUSTER_NETWORK_NOT_INTERNAL = WIN32_ERROR(0x000013c4);
  static const ERROR_CLUSTER_NODE_ALREADY_UP = WIN32_ERROR(0x000013c5);
  static const ERROR_CLUSTER_NODE_ALREADY_DOWN = WIN32_ERROR(0x000013c6);
  static const ERROR_CLUSTER_NETWORK_ALREADY_ONLINE = WIN32_ERROR(0x000013c7);
  static const ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE = WIN32_ERROR(0x000013c8);
  static const ERROR_CLUSTER_NODE_ALREADY_MEMBER = WIN32_ERROR(0x000013c9);
  static const ERROR_CLUSTER_LAST_INTERNAL_NETWORK = WIN32_ERROR(0x000013ca);
  static const ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS = WIN32_ERROR(0x000013cb);
  static const ERROR_INVALID_OPERATION_ON_QUORUM = WIN32_ERROR(0x000013cc);
  static const ERROR_DEPENDENCY_NOT_ALLOWED = WIN32_ERROR(0x000013cd);
  static const ERROR_CLUSTER_NODE_PAUSED = WIN32_ERROR(0x000013ce);
  static const ERROR_NODE_CANT_HOST_RESOURCE = WIN32_ERROR(0x000013cf);
  static const ERROR_CLUSTER_NODE_NOT_READY = WIN32_ERROR(0x000013d0);
  static const ERROR_CLUSTER_NODE_SHUTTING_DOWN = WIN32_ERROR(0x000013d1);
  static const ERROR_CLUSTER_JOIN_ABORTED = WIN32_ERROR(0x000013d2);
  static const ERROR_CLUSTER_INCOMPATIBLE_VERSIONS = WIN32_ERROR(0x000013d3);
  static const ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED =
      WIN32_ERROR(0x000013d4);
  static const ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED = WIN32_ERROR(0x000013d5);
  static const ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND = WIN32_ERROR(0x000013d6);
  static const ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED = WIN32_ERROR(0x000013d7);
  static const ERROR_CLUSTER_RESNAME_NOT_FOUND = WIN32_ERROR(0x000013d8);
  static const ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED =
      WIN32_ERROR(0x000013d9);
  static const ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST = WIN32_ERROR(0x000013da);
  static const ERROR_CLUSTER_DATABASE_SEQMISMATCH = WIN32_ERROR(0x000013db);
  static const ERROR_RESMON_INVALID_STATE = WIN32_ERROR(0x000013dc);
  static const ERROR_CLUSTER_GUM_NOT_LOCKER = WIN32_ERROR(0x000013dd);
  static const ERROR_QUORUM_DISK_NOT_FOUND = WIN32_ERROR(0x000013de);
  static const ERROR_DATABASE_BACKUP_CORRUPT = WIN32_ERROR(0x000013df);
  static const ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT =
      WIN32_ERROR(0x000013e0);
  static const ERROR_RESOURCE_PROPERTY_UNCHANGEABLE = WIN32_ERROR(0x000013e1);
  static const ERROR_NO_ADMIN_ACCESS_POINT = WIN32_ERROR(0x000013e2);
  static const ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE = WIN32_ERROR(0x00001702);
  static const ERROR_CLUSTER_QUORUMLOG_NOT_FOUND = WIN32_ERROR(0x00001703);
  static const ERROR_CLUSTER_MEMBERSHIP_HALT = WIN32_ERROR(0x00001704);
  static const ERROR_CLUSTER_INSTANCE_ID_MISMATCH = WIN32_ERROR(0x00001705);
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP = WIN32_ERROR(0x00001706);
  static const ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH =
      WIN32_ERROR(0x00001707);
  static const ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP = WIN32_ERROR(0x00001708);
  static const ERROR_CLUSTER_PARAMETER_MISMATCH = WIN32_ERROR(0x00001709);
  static const ERROR_NODE_CANNOT_BE_CLUSTERED = WIN32_ERROR(0x0000170a);
  static const ERROR_CLUSTER_WRONG_OS_VERSION = WIN32_ERROR(0x0000170b);
  static const ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME =
      WIN32_ERROR(0x0000170c);
  static const ERROR_CLUSCFG_ALREADY_COMMITTED = WIN32_ERROR(0x0000170d);
  static const ERROR_CLUSCFG_ROLLBACK_FAILED = WIN32_ERROR(0x0000170e);
  static const ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT =
      WIN32_ERROR(0x0000170f);
  static const ERROR_CLUSTER_OLD_VERSION = WIN32_ERROR(0x00001710);
  static const ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME =
      WIN32_ERROR(0x00001711);
  static const ERROR_CLUSTER_NO_NET_ADAPTERS = WIN32_ERROR(0x00001712);
  static const ERROR_CLUSTER_POISONED = WIN32_ERROR(0x00001713);
  static const ERROR_CLUSTER_GROUP_MOVING = WIN32_ERROR(0x00001714);
  static const ERROR_CLUSTER_RESOURCE_TYPE_BUSY = WIN32_ERROR(0x00001715);
  static const ERROR_RESOURCE_CALL_TIMED_OUT = WIN32_ERROR(0x00001716);
  static const ERROR_INVALID_CLUSTER_IPV6_ADDRESS = WIN32_ERROR(0x00001717);
  static const ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION =
      WIN32_ERROR(0x00001718);
  static const ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS = WIN32_ERROR(0x00001719);
  static const ERROR_CLUSTER_PARTIAL_SEND = WIN32_ERROR(0x0000171a);
  static const ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION =
      WIN32_ERROR(0x0000171b);
  static const ERROR_CLUSTER_INVALID_STRING_TERMINATION =
      WIN32_ERROR(0x0000171c);
  static const ERROR_CLUSTER_INVALID_STRING_FORMAT = WIN32_ERROR(0x0000171d);
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS =
      WIN32_ERROR(0x0000171e);
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS =
      WIN32_ERROR(0x0000171f);
  static const ERROR_CLUSTER_NULL_DATA = WIN32_ERROR(0x00001720);
  static const ERROR_CLUSTER_PARTIAL_READ = WIN32_ERROR(0x00001721);
  static const ERROR_CLUSTER_PARTIAL_WRITE = WIN32_ERROR(0x00001722);
  static const ERROR_CLUSTER_CANT_DESERIALIZE_DATA = WIN32_ERROR(0x00001723);
  static const ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT =
      WIN32_ERROR(0x00001724);
  static const ERROR_CLUSTER_NO_QUORUM = WIN32_ERROR(0x00001725);
  static const ERROR_CLUSTER_INVALID_IPV6_NETWORK = WIN32_ERROR(0x00001726);
  static const ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK =
      WIN32_ERROR(0x00001727);
  static const ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP = WIN32_ERROR(0x00001728);
  static const ERROR_DEPENDENCY_TREE_TOO_COMPLEX = WIN32_ERROR(0x00001729);
  static const ERROR_EXCEPTION_IN_RESOURCE_CALL = WIN32_ERROR(0x0000172a);
  static const ERROR_CLUSTER_RHS_FAILED_INITIALIZATION =
      WIN32_ERROR(0x0000172b);
  static const ERROR_CLUSTER_NOT_INSTALLED = WIN32_ERROR(0x0000172c);
  static const ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE =
      WIN32_ERROR(0x0000172d);
  static const ERROR_CLUSTER_MAX_NODES_IN_CLUSTER = WIN32_ERROR(0x0000172e);
  static const ERROR_CLUSTER_TOO_MANY_NODES = WIN32_ERROR(0x0000172f);
  static const ERROR_CLUSTER_OBJECT_ALREADY_USED = WIN32_ERROR(0x00001730);
  static const ERROR_NONCORE_GROUPS_FOUND = WIN32_ERROR(0x00001731);
  static const ERROR_FILE_SHARE_RESOURCE_CONFLICT = WIN32_ERROR(0x00001732);
  static const ERROR_CLUSTER_EVICT_INVALID_REQUEST = WIN32_ERROR(0x00001733);
  static const ERROR_CLUSTER_SINGLETON_RESOURCE = WIN32_ERROR(0x00001734);
  static const ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE = WIN32_ERROR(0x00001735);
  static const ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED = WIN32_ERROR(0x00001736);
  static const ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR =
      WIN32_ERROR(0x00001737);
  static const ERROR_CLUSTER_GROUP_BUSY = WIN32_ERROR(0x00001738);
  static const ERROR_CLUSTER_NOT_SHARED_VOLUME = WIN32_ERROR(0x00001739);
  static const ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR =
      WIN32_ERROR(0x0000173a);
  static const ERROR_CLUSTER_SHARED_VOLUMES_IN_USE = WIN32_ERROR(0x0000173b);
  static const ERROR_CLUSTER_USE_SHARED_VOLUMES_API = WIN32_ERROR(0x0000173c);
  static const ERROR_CLUSTER_BACKUP_IN_PROGRESS = WIN32_ERROR(0x0000173d);
  static const ERROR_NON_CSV_PATH = WIN32_ERROR(0x0000173e);
  static const ERROR_CSV_VOLUME_NOT_LOCAL = WIN32_ERROR(0x0000173f);
  static const ERROR_CLUSTER_WATCHDOG_TERMINATING = WIN32_ERROR(0x00001740);
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES =
      WIN32_ERROR(0x00001741);
  static const ERROR_CLUSTER_INVALID_NODE_WEIGHT = WIN32_ERROR(0x00001742);
  static const ERROR_CLUSTER_RESOURCE_VETOED_CALL = WIN32_ERROR(0x00001743);
  static const ERROR_RESMON_SYSTEM_RESOURCES_LACKING = WIN32_ERROR(0x00001744);
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION =
      WIN32_ERROR(0x00001745);
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE =
      WIN32_ERROR(0x00001746);
  static const ERROR_CLUSTER_GROUP_QUEUED = WIN32_ERROR(0x00001747);
  static const ERROR_CLUSTER_RESOURCE_LOCKED_STATUS = WIN32_ERROR(0x00001748);
  static const ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED =
      WIN32_ERROR(0x00001749);
  static const ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS = WIN32_ERROR(0x0000174a);
  static const ERROR_CLUSTER_DISK_NOT_CONNECTED = WIN32_ERROR(0x0000174b);
  static const ERROR_DISK_NOT_CSV_CAPABLE = WIN32_ERROR(0x0000174c);
  static const ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE =
      WIN32_ERROR(0x0000174d);
  static const ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED = WIN32_ERROR(0x0000174e);
  static const ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED =
      WIN32_ERROR(0x0000174f);
  static const ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES = WIN32_ERROR(0x00001750);
  static const ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES =
      WIN32_ERROR(0x00001751);
  static const ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE =
      WIN32_ERROR(0x00001752);
  static const ERROR_CLUSTER_AFFINITY_CONFLICT = WIN32_ERROR(0x00001753);
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE =
      WIN32_ERROR(0x00001754);
  static const ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS =
      WIN32_ERROR(0x00001755);
  static const ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED =
      WIN32_ERROR(0x00001756);
  static const ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED = WIN32_ERROR(0x00001757);
  static const ERROR_CLUSTER_UPGRADE_IN_PROGRESS = WIN32_ERROR(0x00001758);
  static const ERROR_CLUSTER_UPGRADE_INCOMPLETE = WIN32_ERROR(0x00001759);
  static const ERROR_CLUSTER_NODE_IN_GRACE_PERIOD = WIN32_ERROR(0x0000175a);
  static const ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT = WIN32_ERROR(0x0000175b);
  static const ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER = WIN32_ERROR(0x0000175c);
  static const ERROR_CLUSTER_RESOURCE_NOT_MONITORED = WIN32_ERROR(0x0000175d);
  static const ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED =
      WIN32_ERROR(0x0000175e);
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICATED = WIN32_ERROR(0x0000175f);
  static const ERROR_CLUSTER_NODE_ISOLATED = WIN32_ERROR(0x00001760);
  static const ERROR_CLUSTER_NODE_QUARANTINED = WIN32_ERROR(0x00001761);
  static const ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED =
      WIN32_ERROR(0x00001762);
  static const ERROR_CLUSTER_SPACE_DEGRADED = WIN32_ERROR(0x00001763);
  static const ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED =
      WIN32_ERROR(0x00001764);
  static const ERROR_CLUSTER_CSV_INVALID_HANDLE = WIN32_ERROR(0x00001765);
  static const ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR =
      WIN32_ERROR(0x00001766);
  static const ERROR_GROUPSET_NOT_AVAILABLE = WIN32_ERROR(0x00001767);
  static const ERROR_GROUPSET_NOT_FOUND = WIN32_ERROR(0x00001768);
  static const ERROR_GROUPSET_CANT_PROVIDE = WIN32_ERROR(0x00001769);
  static const ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND =
      WIN32_ERROR(0x0000176a);
  static const ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY =
      WIN32_ERROR(0x0000176b);
  static const ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION =
      WIN32_ERROR(0x0000176c);
  static const ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS =
      WIN32_ERROR(0x0000176d);
  static const ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME =
      WIN32_ERROR(0x0000176e);
  static const ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE =
      WIN32_ERROR(0x0000176f);
  static const ERROR_ENCRYPTION_FAILED = WIN32_ERROR(0x00001770);
  static const ERROR_DECRYPTION_FAILED = WIN32_ERROR(0x00001771);
  static const ERROR_FILE_ENCRYPTED = WIN32_ERROR(0x00001772);
  static const ERROR_NO_RECOVERY_POLICY = WIN32_ERROR(0x00001773);
  static const ERROR_NO_EFS = WIN32_ERROR(0x00001774);
  static const ERROR_WRONG_EFS = WIN32_ERROR(0x00001775);
  static const ERROR_NO_USER_KEYS = WIN32_ERROR(0x00001776);
  static const ERROR_FILE_NOT_ENCRYPTED = WIN32_ERROR(0x00001777);
  static const ERROR_NOT_EXPORT_FORMAT = WIN32_ERROR(0x00001778);
  static const ERROR_FILE_READ_ONLY = WIN32_ERROR(0x00001779);
  static const ERROR_DIR_EFS_DISALLOWED = WIN32_ERROR(0x0000177a);
  static const ERROR_EFS_SERVER_NOT_TRUSTED = WIN32_ERROR(0x0000177b);
  static const ERROR_BAD_RECOVERY_POLICY = WIN32_ERROR(0x0000177c);
  static const ERROR_EFS_ALG_BLOB_TOO_BIG = WIN32_ERROR(0x0000177d);
  static const ERROR_VOLUME_NOT_SUPPORT_EFS = WIN32_ERROR(0x0000177e);
  static const ERROR_EFS_DISABLED = WIN32_ERROR(0x0000177f);
  static const ERROR_EFS_VERSION_NOT_SUPPORT = WIN32_ERROR(0x00001780);
  static const ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE =
      WIN32_ERROR(0x00001781);
  static const ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER = WIN32_ERROR(0x00001782);
  static const ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE =
      WIN32_ERROR(0x00001783);
  static const ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE = WIN32_ERROR(0x00001784);
  static const ERROR_CS_ENCRYPTION_FILE_NOT_CSE = WIN32_ERROR(0x00001785);
  static const ERROR_ENCRYPTION_POLICY_DENIES_OPERATION =
      WIN32_ERROR(0x00001786);
  static const ERROR_WIP_ENCRYPTION_FAILED = WIN32_ERROR(0x00001787);
  static const ERROR_NO_BROWSER_SERVERS_FOUND = WIN32_ERROR(0x000017e6);
  static const ERROR_CLUSTER_OBJECT_IS_CLUSTER_SET_VM = WIN32_ERROR(0x0000186a);
  static const ERROR_LOG_SECTOR_INVALID = WIN32_ERROR(0x000019c8);
  static const ERROR_LOG_SECTOR_PARITY_INVALID = WIN32_ERROR(0x000019c9);
  static const ERROR_LOG_SECTOR_REMAPPED = WIN32_ERROR(0x000019ca);
  static const ERROR_LOG_BLOCK_INCOMPLETE = WIN32_ERROR(0x000019cb);
  static const ERROR_LOG_INVALID_RANGE = WIN32_ERROR(0x000019cc);
  static const ERROR_LOG_BLOCKS_EXHAUSTED = WIN32_ERROR(0x000019cd);
  static const ERROR_LOG_READ_CONTEXT_INVALID = WIN32_ERROR(0x000019ce);
  static const ERROR_LOG_RESTART_INVALID = WIN32_ERROR(0x000019cf);
  static const ERROR_LOG_BLOCK_VERSION = WIN32_ERROR(0x000019d0);
  static const ERROR_LOG_BLOCK_INVALID = WIN32_ERROR(0x000019d1);
  static const ERROR_LOG_READ_MODE_INVALID = WIN32_ERROR(0x000019d2);
  static const ERROR_LOG_NO_RESTART = WIN32_ERROR(0x000019d3);
  static const ERROR_LOG_METADATA_CORRUPT = WIN32_ERROR(0x000019d4);
  static const ERROR_LOG_METADATA_INVALID = WIN32_ERROR(0x000019d5);
  static const ERROR_LOG_METADATA_INCONSISTENT = WIN32_ERROR(0x000019d6);
  static const ERROR_LOG_RESERVATION_INVALID = WIN32_ERROR(0x000019d7);
  static const ERROR_LOG_CANT_DELETE = WIN32_ERROR(0x000019d8);
  static const ERROR_LOG_CONTAINER_LIMIT_EXCEEDED = WIN32_ERROR(0x000019d9);
  static const ERROR_LOG_START_OF_LOG = WIN32_ERROR(0x000019da);
  static const ERROR_LOG_POLICY_ALREADY_INSTALLED = WIN32_ERROR(0x000019db);
  static const ERROR_LOG_POLICY_NOT_INSTALLED = WIN32_ERROR(0x000019dc);
  static const ERROR_LOG_POLICY_INVALID = WIN32_ERROR(0x000019dd);
  static const ERROR_LOG_POLICY_CONFLICT = WIN32_ERROR(0x000019de);
  static const ERROR_LOG_PINNED_ARCHIVE_TAIL = WIN32_ERROR(0x000019df);
  static const ERROR_LOG_RECORD_NONEXISTENT = WIN32_ERROR(0x000019e0);
  static const ERROR_LOG_RECORDS_RESERVED_INVALID = WIN32_ERROR(0x000019e1);
  static const ERROR_LOG_SPACE_RESERVED_INVALID = WIN32_ERROR(0x000019e2);
  static const ERROR_LOG_TAIL_INVALID = WIN32_ERROR(0x000019e3);
  static const ERROR_LOG_FULL = WIN32_ERROR(0x000019e4);
  static const ERROR_COULD_NOT_RESIZE_LOG = WIN32_ERROR(0x000019e5);
  static const ERROR_LOG_MULTIPLEXED = WIN32_ERROR(0x000019e6);
  static const ERROR_LOG_DEDICATED = WIN32_ERROR(0x000019e7);
  static const ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS = WIN32_ERROR(0x000019e8);
  static const ERROR_LOG_ARCHIVE_IN_PROGRESS = WIN32_ERROR(0x000019e9);
  static const ERROR_LOG_EPHEMERAL = WIN32_ERROR(0x000019ea);
  static const ERROR_LOG_NOT_ENOUGH_CONTAINERS = WIN32_ERROR(0x000019eb);
  static const ERROR_LOG_CLIENT_ALREADY_REGISTERED = WIN32_ERROR(0x000019ec);
  static const ERROR_LOG_CLIENT_NOT_REGISTERED = WIN32_ERROR(0x000019ed);
  static const ERROR_LOG_FULL_HANDLER_IN_PROGRESS = WIN32_ERROR(0x000019ee);
  static const ERROR_LOG_CONTAINER_READ_FAILED = WIN32_ERROR(0x000019ef);
  static const ERROR_LOG_CONTAINER_WRITE_FAILED = WIN32_ERROR(0x000019f0);
  static const ERROR_LOG_CONTAINER_OPEN_FAILED = WIN32_ERROR(0x000019f1);
  static const ERROR_LOG_CONTAINER_STATE_INVALID = WIN32_ERROR(0x000019f2);
  static const ERROR_LOG_STATE_INVALID = WIN32_ERROR(0x000019f3);
  static const ERROR_LOG_PINNED = WIN32_ERROR(0x000019f4);
  static const ERROR_LOG_METADATA_FLUSH_FAILED = WIN32_ERROR(0x000019f5);
  static const ERROR_LOG_INCONSISTENT_SECURITY = WIN32_ERROR(0x000019f6);
  static const ERROR_LOG_APPENDED_FLUSH_FAILED = WIN32_ERROR(0x000019f7);
  static const ERROR_LOG_PINNED_RESERVATION = WIN32_ERROR(0x000019f8);
  static const ERROR_INVALID_TRANSACTION = WIN32_ERROR(0x00001a2c);
  static const ERROR_TRANSACTION_NOT_ACTIVE = WIN32_ERROR(0x00001a2d);
  static const ERROR_TRANSACTION_REQUEST_NOT_VALID = WIN32_ERROR(0x00001a2e);
  static const ERROR_TRANSACTION_NOT_REQUESTED = WIN32_ERROR(0x00001a2f);
  static const ERROR_TRANSACTION_ALREADY_ABORTED = WIN32_ERROR(0x00001a30);
  static const ERROR_TRANSACTION_ALREADY_COMMITTED = WIN32_ERROR(0x00001a31);
  static const ERROR_TM_INITIALIZATION_FAILED = WIN32_ERROR(0x00001a32);
  static const ERROR_RESOURCEMANAGER_READ_ONLY = WIN32_ERROR(0x00001a33);
  static const ERROR_TRANSACTION_NOT_JOINED = WIN32_ERROR(0x00001a34);
  static const ERROR_TRANSACTION_SUPERIOR_EXISTS = WIN32_ERROR(0x00001a35);
  static const ERROR_CRM_PROTOCOL_ALREADY_EXISTS = WIN32_ERROR(0x00001a36);
  static const ERROR_TRANSACTION_PROPAGATION_FAILED = WIN32_ERROR(0x00001a37);
  static const ERROR_CRM_PROTOCOL_NOT_FOUND = WIN32_ERROR(0x00001a38);
  static const ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER =
      WIN32_ERROR(0x00001a39);
  static const ERROR_CURRENT_TRANSACTION_NOT_VALID = WIN32_ERROR(0x00001a3a);
  static const ERROR_TRANSACTION_NOT_FOUND = WIN32_ERROR(0x00001a3b);
  static const ERROR_RESOURCEMANAGER_NOT_FOUND = WIN32_ERROR(0x00001a3c);
  static const ERROR_ENLISTMENT_NOT_FOUND = WIN32_ERROR(0x00001a3d);
  static const ERROR_TRANSACTIONMANAGER_NOT_FOUND = WIN32_ERROR(0x00001a3e);
  static const ERROR_TRANSACTIONMANAGER_NOT_ONLINE = WIN32_ERROR(0x00001a3f);
  static const ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION =
      WIN32_ERROR(0x00001a40);
  static const ERROR_TRANSACTION_NOT_ROOT = WIN32_ERROR(0x00001a41);
  static const ERROR_TRANSACTION_OBJECT_EXPIRED = WIN32_ERROR(0x00001a42);
  static const ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED =
      WIN32_ERROR(0x00001a43);
  static const ERROR_TRANSACTION_RECORD_TOO_LONG = WIN32_ERROR(0x00001a44);
  static const ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED =
      WIN32_ERROR(0x00001a45);
  static const ERROR_TRANSACTION_INTEGRITY_VIOLATED = WIN32_ERROR(0x00001a46);
  static const ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH =
      WIN32_ERROR(0x00001a47);
  static const ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = WIN32_ERROR(0x00001a48);
  static const ERROR_TRANSACTION_MUST_WRITETHROUGH = WIN32_ERROR(0x00001a49);
  static const ERROR_TRANSACTION_NO_SUPERIOR = WIN32_ERROR(0x00001a4a);
  static const ERROR_HEURISTIC_DAMAGE_POSSIBLE = WIN32_ERROR(0x00001a4b);
  static const ERROR_TRANSACTIONAL_CONFLICT = WIN32_ERROR(0x00001a90);
  static const ERROR_RM_NOT_ACTIVE = WIN32_ERROR(0x00001a91);
  static const ERROR_RM_METADATA_CORRUPT = WIN32_ERROR(0x00001a92);
  static const ERROR_DIRECTORY_NOT_RM = WIN32_ERROR(0x00001a93);
  static const ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE = WIN32_ERROR(0x00001a95);
  static const ERROR_LOG_RESIZE_INVALID_SIZE = WIN32_ERROR(0x00001a96);
  static const ERROR_OBJECT_NO_LONGER_EXISTS = WIN32_ERROR(0x00001a97);
  static const ERROR_STREAM_MINIVERSION_NOT_FOUND = WIN32_ERROR(0x00001a98);
  static const ERROR_STREAM_MINIVERSION_NOT_VALID = WIN32_ERROR(0x00001a99);
  static const ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION =
      WIN32_ERROR(0x00001a9a);
  static const ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT =
      WIN32_ERROR(0x00001a9b);
  static const ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS =
      WIN32_ERROR(0x00001a9c);
  static const ERROR_REMOTE_FILE_VERSION_MISMATCH = WIN32_ERROR(0x00001a9e);
  static const ERROR_HANDLE_NO_LONGER_VALID = WIN32_ERROR(0x00001a9f);
  static const ERROR_NO_TXF_METADATA = WIN32_ERROR(0x00001aa0);
  static const ERROR_LOG_CORRUPTION_DETECTED = WIN32_ERROR(0x00001aa1);
  static const ERROR_CANT_RECOVER_WITH_HANDLE_OPEN = WIN32_ERROR(0x00001aa2);
  static const ERROR_RM_DISCONNECTED = WIN32_ERROR(0x00001aa3);
  static const ERROR_ENLISTMENT_NOT_SUPERIOR = WIN32_ERROR(0x00001aa4);
  static const ERROR_RECOVERY_NOT_NEEDED = WIN32_ERROR(0x00001aa5);
  static const ERROR_RM_ALREADY_STARTED = WIN32_ERROR(0x00001aa6);
  static const ERROR_FILE_IDENTITY_NOT_PERSISTENT = WIN32_ERROR(0x00001aa7);
  static const ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY =
      WIN32_ERROR(0x00001aa8);
  static const ERROR_CANT_CROSS_RM_BOUNDARY = WIN32_ERROR(0x00001aa9);
  static const ERROR_TXF_DIR_NOT_EMPTY = WIN32_ERROR(0x00001aaa);
  static const ERROR_INDOUBT_TRANSACTIONS_EXIST = WIN32_ERROR(0x00001aab);
  static const ERROR_TM_VOLATILE = WIN32_ERROR(0x00001aac);
  static const ERROR_ROLLBACK_TIMER_EXPIRED = WIN32_ERROR(0x00001aad);
  static const ERROR_TXF_ATTRIBUTE_CORRUPT = WIN32_ERROR(0x00001aae);
  static const ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION = WIN32_ERROR(0x00001aaf);
  static const ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED = WIN32_ERROR(0x00001ab0);
  static const ERROR_LOG_GROWTH_FAILED = WIN32_ERROR(0x00001ab1);
  static const ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE =
      WIN32_ERROR(0x00001ab2);
  static const ERROR_TXF_METADATA_ALREADY_PRESENT = WIN32_ERROR(0x00001ab3);
  static const ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET =
      WIN32_ERROR(0x00001ab4);
  static const ERROR_TRANSACTION_REQUIRED_PROMOTION = WIN32_ERROR(0x00001ab5);
  static const ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION =
      WIN32_ERROR(0x00001ab6);
  static const ERROR_TRANSACTIONS_NOT_FROZEN = WIN32_ERROR(0x00001ab7);
  static const ERROR_TRANSACTION_FREEZE_IN_PROGRESS = WIN32_ERROR(0x00001ab8);
  static const ERROR_NOT_SNAPSHOT_VOLUME = WIN32_ERROR(0x00001ab9);
  static const ERROR_NO_SAVEPOINT_WITH_OPEN_FILES = WIN32_ERROR(0x00001aba);
  static const ERROR_DATA_LOST_REPAIR = WIN32_ERROR(0x00001abb);
  static const ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION =
      WIN32_ERROR(0x00001abc);
  static const ERROR_TM_IDENTITY_MISMATCH = WIN32_ERROR(0x00001abd);
  static const ERROR_FLOATED_SECTION = WIN32_ERROR(0x00001abe);
  static const ERROR_CANNOT_ACCEPT_TRANSACTED_WORK = WIN32_ERROR(0x00001abf);
  static const ERROR_CANNOT_ABORT_TRANSACTIONS = WIN32_ERROR(0x00001ac0);
  static const ERROR_BAD_CLUSTERS = WIN32_ERROR(0x00001ac1);
  static const ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION =
      WIN32_ERROR(0x00001ac2);
  static const ERROR_VOLUME_DIRTY = WIN32_ERROR(0x00001ac3);
  static const ERROR_NO_LINK_TRACKING_IN_TRANSACTION = WIN32_ERROR(0x00001ac4);
  static const ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION =
      WIN32_ERROR(0x00001ac5);
  static const ERROR_EXPIRED_HANDLE = WIN32_ERROR(0x00001ac6);
  static const ERROR_TRANSACTION_NOT_ENLISTED = WIN32_ERROR(0x00001ac7);
  static const ERROR_CTX_WINSTATION_NAME_INVALID = WIN32_ERROR(0x00001b59);
  static const ERROR_CTX_INVALID_PD = WIN32_ERROR(0x00001b5a);
  static const ERROR_CTX_PD_NOT_FOUND = WIN32_ERROR(0x00001b5b);
  static const ERROR_CTX_WD_NOT_FOUND = WIN32_ERROR(0x00001b5c);
  static const ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY = WIN32_ERROR(0x00001b5d);
  static const ERROR_CTX_SERVICE_NAME_COLLISION = WIN32_ERROR(0x00001b5e);
  static const ERROR_CTX_CLOSE_PENDING = WIN32_ERROR(0x00001b5f);
  static const ERROR_CTX_NO_OUTBUF = WIN32_ERROR(0x00001b60);
  static const ERROR_CTX_MODEM_INF_NOT_FOUND = WIN32_ERROR(0x00001b61);
  static const ERROR_CTX_INVALID_MODEMNAME = WIN32_ERROR(0x00001b62);
  static const ERROR_CTX_MODEM_RESPONSE_ERROR = WIN32_ERROR(0x00001b63);
  static const ERROR_CTX_MODEM_RESPONSE_TIMEOUT = WIN32_ERROR(0x00001b64);
  static const ERROR_CTX_MODEM_RESPONSE_NO_CARRIER = WIN32_ERROR(0x00001b65);
  static const ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE = WIN32_ERROR(0x00001b66);
  static const ERROR_CTX_MODEM_RESPONSE_BUSY = WIN32_ERROR(0x00001b67);
  static const ERROR_CTX_MODEM_RESPONSE_VOICE = WIN32_ERROR(0x00001b68);
  static const ERROR_CTX_TD_ERROR = WIN32_ERROR(0x00001b69);
  static const ERROR_CTX_WINSTATION_NOT_FOUND = WIN32_ERROR(0x00001b6e);
  static const ERROR_CTX_WINSTATION_ALREADY_EXISTS = WIN32_ERROR(0x00001b6f);
  static const ERROR_CTX_WINSTATION_BUSY = WIN32_ERROR(0x00001b70);
  static const ERROR_CTX_BAD_VIDEO_MODE = WIN32_ERROR(0x00001b71);
  static const ERROR_CTX_GRAPHICS_INVALID = WIN32_ERROR(0x00001b7b);
  static const ERROR_CTX_LOGON_DISABLED = WIN32_ERROR(0x00001b7d);
  static const ERROR_CTX_NOT_CONSOLE = WIN32_ERROR(0x00001b7e);
  static const ERROR_CTX_CLIENT_QUERY_TIMEOUT = WIN32_ERROR(0x00001b80);
  static const ERROR_CTX_CONSOLE_DISCONNECT = WIN32_ERROR(0x00001b81);
  static const ERROR_CTX_CONSOLE_CONNECT = WIN32_ERROR(0x00001b82);
  static const ERROR_CTX_SHADOW_DENIED = WIN32_ERROR(0x00001b84);
  static const ERROR_CTX_WINSTATION_ACCESS_DENIED = WIN32_ERROR(0x00001b85);
  static const ERROR_CTX_INVALID_WD = WIN32_ERROR(0x00001b89);
  static const ERROR_CTX_SHADOW_INVALID = WIN32_ERROR(0x00001b8a);
  static const ERROR_CTX_SHADOW_DISABLED = WIN32_ERROR(0x00001b8b);
  static const ERROR_CTX_CLIENT_LICENSE_IN_USE = WIN32_ERROR(0x00001b8c);
  static const ERROR_CTX_CLIENT_LICENSE_NOT_SET = WIN32_ERROR(0x00001b8d);
  static const ERROR_CTX_LICENSE_NOT_AVAILABLE = WIN32_ERROR(0x00001b8e);
  static const ERROR_CTX_LICENSE_CLIENT_INVALID = WIN32_ERROR(0x00001b8f);
  static const ERROR_CTX_LICENSE_EXPIRED = WIN32_ERROR(0x00001b90);
  static const ERROR_CTX_SHADOW_NOT_RUNNING = WIN32_ERROR(0x00001b91);
  static const ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE = WIN32_ERROR(0x00001b92);
  static const ERROR_ACTIVATION_COUNT_EXCEEDED = WIN32_ERROR(0x00001b93);
  static const ERROR_CTX_WINSTATIONS_DISABLED = WIN32_ERROR(0x00001b94);
  static const ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED = WIN32_ERROR(0x00001b95);
  static const ERROR_CTX_SESSION_IN_USE = WIN32_ERROR(0x00001b96);
  static const ERROR_CTX_NO_FORCE_LOGOFF = WIN32_ERROR(0x00001b97);
  static const ERROR_CTX_ACCOUNT_RESTRICTION = WIN32_ERROR(0x00001b98);
  static const ERROR_RDP_PROTOCOL_ERROR = WIN32_ERROR(0x00001b99);
  static const ERROR_CTX_CDM_CONNECT = WIN32_ERROR(0x00001b9a);
  static const ERROR_CTX_CDM_DISCONNECT = WIN32_ERROR(0x00001b9b);
  static const ERROR_CTX_SECURITY_LAYER_ERROR = WIN32_ERROR(0x00001b9c);
  static const ERROR_TS_INCOMPATIBLE_SESSIONS = WIN32_ERROR(0x00001b9d);
  static const ERROR_TS_VIDEO_SUBSYSTEM_ERROR = WIN32_ERROR(0x00001b9e);
  static const ERROR_DS_NOT_INSTALLED = WIN32_ERROR(0x00002008);
  static const ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY = WIN32_ERROR(0x00002009);
  static const ERROR_DS_NO_ATTRIBUTE_OR_VALUE = WIN32_ERROR(0x0000200a);
  static const ERROR_DS_INVALID_ATTRIBUTE_SYNTAX = WIN32_ERROR(0x0000200b);
  static const ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED = WIN32_ERROR(0x0000200c);
  static const ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS = WIN32_ERROR(0x0000200d);
  static const ERROR_DS_BUSY = WIN32_ERROR(0x0000200e);
  static const ERROR_DS_UNAVAILABLE = WIN32_ERROR(0x0000200f);
  static const ERROR_DS_NO_RIDS_ALLOCATED = WIN32_ERROR(0x00002010);
  static const ERROR_DS_NO_MORE_RIDS = WIN32_ERROR(0x00002011);
  static const ERROR_DS_INCORRECT_ROLE_OWNER = WIN32_ERROR(0x00002012);
  static const ERROR_DS_RIDMGR_INIT_ERROR = WIN32_ERROR(0x00002013);
  static const ERROR_DS_OBJ_CLASS_VIOLATION = WIN32_ERROR(0x00002014);
  static const ERROR_DS_CANT_ON_NON_LEAF = WIN32_ERROR(0x00002015);
  static const ERROR_DS_CANT_ON_RDN = WIN32_ERROR(0x00002016);
  static const ERROR_DS_CANT_MOD_OBJ_CLASS = WIN32_ERROR(0x00002017);
  static const ERROR_DS_CROSS_DOM_MOVE_ERROR = WIN32_ERROR(0x00002018);
  static const ERROR_DS_GC_NOT_AVAILABLE = WIN32_ERROR(0x00002019);
  static const ERROR_SHARED_POLICY = WIN32_ERROR(0x0000201a);
  static const ERROR_POLICY_OBJECT_NOT_FOUND = WIN32_ERROR(0x0000201b);
  static const ERROR_POLICY_ONLY_IN_DS = WIN32_ERROR(0x0000201c);
  static const ERROR_PROMOTION_ACTIVE = WIN32_ERROR(0x0000201d);
  static const ERROR_NO_PROMOTION_ACTIVE = WIN32_ERROR(0x0000201e);
  static const ERROR_DS_OPERATIONS_ERROR = WIN32_ERROR(0x00002020);
  static const ERROR_DS_PROTOCOL_ERROR = WIN32_ERROR(0x00002021);
  static const ERROR_DS_TIMELIMIT_EXCEEDED = WIN32_ERROR(0x00002022);
  static const ERROR_DS_SIZELIMIT_EXCEEDED = WIN32_ERROR(0x00002023);
  static const ERROR_DS_ADMIN_LIMIT_EXCEEDED = WIN32_ERROR(0x00002024);
  static const ERROR_DS_COMPARE_FALSE = WIN32_ERROR(0x00002025);
  static const ERROR_DS_COMPARE_TRUE = WIN32_ERROR(0x00002026);
  static const ERROR_DS_AUTH_METHOD_NOT_SUPPORTED = WIN32_ERROR(0x00002027);
  static const ERROR_DS_STRONG_AUTH_REQUIRED = WIN32_ERROR(0x00002028);
  static const ERROR_DS_INAPPROPRIATE_AUTH = WIN32_ERROR(0x00002029);
  static const ERROR_DS_AUTH_UNKNOWN = WIN32_ERROR(0x0000202a);
  static const ERROR_DS_REFERRAL = WIN32_ERROR(0x0000202b);
  static const ERROR_DS_UNAVAILABLE_CRIT_EXTENSION = WIN32_ERROR(0x0000202c);
  static const ERROR_DS_CONFIDENTIALITY_REQUIRED = WIN32_ERROR(0x0000202d);
  static const ERROR_DS_INAPPROPRIATE_MATCHING = WIN32_ERROR(0x0000202e);
  static const ERROR_DS_CONSTRAINT_VIOLATION = WIN32_ERROR(0x0000202f);
  static const ERROR_DS_NO_SUCH_OBJECT = WIN32_ERROR(0x00002030);
  static const ERROR_DS_ALIAS_PROBLEM = WIN32_ERROR(0x00002031);
  static const ERROR_DS_INVALID_DN_SYNTAX = WIN32_ERROR(0x00002032);
  static const ERROR_DS_IS_LEAF = WIN32_ERROR(0x00002033);
  static const ERROR_DS_ALIAS_DEREF_PROBLEM = WIN32_ERROR(0x00002034);
  static const ERROR_DS_UNWILLING_TO_PERFORM = WIN32_ERROR(0x00002035);
  static const ERROR_DS_LOOP_DETECT = WIN32_ERROR(0x00002036);
  static const ERROR_DS_NAMING_VIOLATION = WIN32_ERROR(0x00002037);
  static const ERROR_DS_OBJECT_RESULTS_TOO_LARGE = WIN32_ERROR(0x00002038);
  static const ERROR_DS_AFFECTS_MULTIPLE_DSAS = WIN32_ERROR(0x00002039);
  static const ERROR_DS_SERVER_DOWN = WIN32_ERROR(0x0000203a);
  static const ERROR_DS_LOCAL_ERROR = WIN32_ERROR(0x0000203b);
  static const ERROR_DS_ENCODING_ERROR = WIN32_ERROR(0x0000203c);
  static const ERROR_DS_DECODING_ERROR = WIN32_ERROR(0x0000203d);
  static const ERROR_DS_FILTER_UNKNOWN = WIN32_ERROR(0x0000203e);
  static const ERROR_DS_PARAM_ERROR = WIN32_ERROR(0x0000203f);
  static const ERROR_DS_NOT_SUPPORTED = WIN32_ERROR(0x00002040);
  static const ERROR_DS_NO_RESULTS_RETURNED = WIN32_ERROR(0x00002041);
  static const ERROR_DS_CONTROL_NOT_FOUND = WIN32_ERROR(0x00002042);
  static const ERROR_DS_CLIENT_LOOP = WIN32_ERROR(0x00002043);
  static const ERROR_DS_REFERRAL_LIMIT_EXCEEDED = WIN32_ERROR(0x00002044);
  static const ERROR_DS_SORT_CONTROL_MISSING = WIN32_ERROR(0x00002045);
  static const ERROR_DS_OFFSET_RANGE_ERROR = WIN32_ERROR(0x00002046);
  static const ERROR_DS_RIDMGR_DISABLED = WIN32_ERROR(0x00002047);
  static const ERROR_DS_ROOT_MUST_BE_NC = WIN32_ERROR(0x0000206d);
  static const ERROR_DS_ADD_REPLICA_INHIBITED = WIN32_ERROR(0x0000206e);
  static const ERROR_DS_ATT_NOT_DEF_IN_SCHEMA = WIN32_ERROR(0x0000206f);
  static const ERROR_DS_MAX_OBJ_SIZE_EXCEEDED = WIN32_ERROR(0x00002070);
  static const ERROR_DS_OBJ_STRING_NAME_EXISTS = WIN32_ERROR(0x00002071);
  static const ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA = WIN32_ERROR(0x00002072);
  static const ERROR_DS_RDN_DOESNT_MATCH_SCHEMA = WIN32_ERROR(0x00002073);
  static const ERROR_DS_NO_REQUESTED_ATTS_FOUND = WIN32_ERROR(0x00002074);
  static const ERROR_DS_USER_BUFFER_TO_SMALL = WIN32_ERROR(0x00002075);
  static const ERROR_DS_ATT_IS_NOT_ON_OBJ = WIN32_ERROR(0x00002076);
  static const ERROR_DS_ILLEGAL_MOD_OPERATION = WIN32_ERROR(0x00002077);
  static const ERROR_DS_OBJ_TOO_LARGE = WIN32_ERROR(0x00002078);
  static const ERROR_DS_BAD_INSTANCE_TYPE = WIN32_ERROR(0x00002079);
  static const ERROR_DS_MASTERDSA_REQUIRED = WIN32_ERROR(0x0000207a);
  static const ERROR_DS_OBJECT_CLASS_REQUIRED = WIN32_ERROR(0x0000207b);
  static const ERROR_DS_MISSING_REQUIRED_ATT = WIN32_ERROR(0x0000207c);
  static const ERROR_DS_ATT_NOT_DEF_FOR_CLASS = WIN32_ERROR(0x0000207d);
  static const ERROR_DS_ATT_ALREADY_EXISTS = WIN32_ERROR(0x0000207e);
  static const ERROR_DS_CANT_ADD_ATT_VALUES = WIN32_ERROR(0x00002080);
  static const ERROR_DS_SINGLE_VALUE_CONSTRAINT = WIN32_ERROR(0x00002081);
  static const ERROR_DS_RANGE_CONSTRAINT = WIN32_ERROR(0x00002082);
  static const ERROR_DS_ATT_VAL_ALREADY_EXISTS = WIN32_ERROR(0x00002083);
  static const ERROR_DS_CANT_REM_MISSING_ATT = WIN32_ERROR(0x00002084);
  static const ERROR_DS_CANT_REM_MISSING_ATT_VAL = WIN32_ERROR(0x00002085);
  static const ERROR_DS_ROOT_CANT_BE_SUBREF = WIN32_ERROR(0x00002086);
  static const ERROR_DS_NO_CHAINING = WIN32_ERROR(0x00002087);
  static const ERROR_DS_NO_CHAINED_EVAL = WIN32_ERROR(0x00002088);
  static const ERROR_DS_NO_PARENT_OBJECT = WIN32_ERROR(0x00002089);
  static const ERROR_DS_PARENT_IS_AN_ALIAS = WIN32_ERROR(0x0000208a);
  static const ERROR_DS_CANT_MIX_MASTER_AND_REPS = WIN32_ERROR(0x0000208b);
  static const ERROR_DS_CHILDREN_EXIST = WIN32_ERROR(0x0000208c);
  static const ERROR_DS_OBJ_NOT_FOUND = WIN32_ERROR(0x0000208d);
  static const ERROR_DS_ALIASED_OBJ_MISSING = WIN32_ERROR(0x0000208e);
  static const ERROR_DS_BAD_NAME_SYNTAX = WIN32_ERROR(0x0000208f);
  static const ERROR_DS_ALIAS_POINTS_TO_ALIAS = WIN32_ERROR(0x00002090);
  static const ERROR_DS_CANT_DEREF_ALIAS = WIN32_ERROR(0x00002091);
  static const ERROR_DS_OUT_OF_SCOPE = WIN32_ERROR(0x00002092);
  static const ERROR_DS_OBJECT_BEING_REMOVED = WIN32_ERROR(0x00002093);
  static const ERROR_DS_CANT_DELETE_DSA_OBJ = WIN32_ERROR(0x00002094);
  static const ERROR_DS_GENERIC_ERROR = WIN32_ERROR(0x00002095);
  static const ERROR_DS_DSA_MUST_BE_INT_MASTER = WIN32_ERROR(0x00002096);
  static const ERROR_DS_CLASS_NOT_DSA = WIN32_ERROR(0x00002097);
  static const ERROR_DS_INSUFF_ACCESS_RIGHTS = WIN32_ERROR(0x00002098);
  static const ERROR_DS_ILLEGAL_SUPERIOR = WIN32_ERROR(0x00002099);
  static const ERROR_DS_ATTRIBUTE_OWNED_BY_SAM = WIN32_ERROR(0x0000209a);
  static const ERROR_DS_NAME_TOO_MANY_PARTS = WIN32_ERROR(0x0000209b);
  static const ERROR_DS_NAME_TOO_LONG = WIN32_ERROR(0x0000209c);
  static const ERROR_DS_NAME_VALUE_TOO_LONG = WIN32_ERROR(0x0000209d);
  static const ERROR_DS_NAME_UNPARSEABLE = WIN32_ERROR(0x0000209e);
  static const ERROR_DS_NAME_TYPE_UNKNOWN = WIN32_ERROR(0x0000209f);
  static const ERROR_DS_NOT_AN_OBJECT = WIN32_ERROR(0x000020a0);
  static const ERROR_DS_SEC_DESC_TOO_SHORT = WIN32_ERROR(0x000020a1);
  static const ERROR_DS_SEC_DESC_INVALID = WIN32_ERROR(0x000020a2);
  static const ERROR_DS_NO_DELETED_NAME = WIN32_ERROR(0x000020a3);
  static const ERROR_DS_SUBREF_MUST_HAVE_PARENT = WIN32_ERROR(0x000020a4);
  static const ERROR_DS_NCNAME_MUST_BE_NC = WIN32_ERROR(0x000020a5);
  static const ERROR_DS_CANT_ADD_SYSTEM_ONLY = WIN32_ERROR(0x000020a6);
  static const ERROR_DS_CLASS_MUST_BE_CONCRETE = WIN32_ERROR(0x000020a7);
  static const ERROR_DS_INVALID_DMD = WIN32_ERROR(0x000020a8);
  static const ERROR_DS_OBJ_GUID_EXISTS = WIN32_ERROR(0x000020a9);
  static const ERROR_DS_NOT_ON_BACKLINK = WIN32_ERROR(0x000020aa);
  static const ERROR_DS_NO_CROSSREF_FOR_NC = WIN32_ERROR(0x000020ab);
  static const ERROR_DS_SHUTTING_DOWN = WIN32_ERROR(0x000020ac);
  static const ERROR_DS_UNKNOWN_OPERATION = WIN32_ERROR(0x000020ad);
  static const ERROR_DS_INVALID_ROLE_OWNER = WIN32_ERROR(0x000020ae);
  static const ERROR_DS_COULDNT_CONTACT_FSMO = WIN32_ERROR(0x000020af);
  static const ERROR_DS_CROSS_NC_DN_RENAME = WIN32_ERROR(0x000020b0);
  static const ERROR_DS_CANT_MOD_SYSTEM_ONLY = WIN32_ERROR(0x000020b1);
  static const ERROR_DS_REPLICATOR_ONLY = WIN32_ERROR(0x000020b2);
  static const ERROR_DS_OBJ_CLASS_NOT_DEFINED = WIN32_ERROR(0x000020b3);
  static const ERROR_DS_OBJ_CLASS_NOT_SUBCLASS = WIN32_ERROR(0x000020b4);
  static const ERROR_DS_NAME_REFERENCE_INVALID = WIN32_ERROR(0x000020b5);
  static const ERROR_DS_CROSS_REF_EXISTS = WIN32_ERROR(0x000020b6);
  static const ERROR_DS_CANT_DEL_MASTER_CROSSREF = WIN32_ERROR(0x000020b7);
  static const ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD = WIN32_ERROR(0x000020b8);
  static const ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX = WIN32_ERROR(0x000020b9);
  static const ERROR_DS_DUP_RDN = WIN32_ERROR(0x000020ba);
  static const ERROR_DS_DUP_OID = WIN32_ERROR(0x000020bb);
  static const ERROR_DS_DUP_MAPI_ID = WIN32_ERROR(0x000020bc);
  static const ERROR_DS_DUP_SCHEMA_ID_GUID = WIN32_ERROR(0x000020bd);
  static const ERROR_DS_DUP_LDAP_DISPLAY_NAME = WIN32_ERROR(0x000020be);
  static const ERROR_DS_SEMANTIC_ATT_TEST = WIN32_ERROR(0x000020bf);
  static const ERROR_DS_SYNTAX_MISMATCH = WIN32_ERROR(0x000020c0);
  static const ERROR_DS_EXISTS_IN_MUST_HAVE = WIN32_ERROR(0x000020c1);
  static const ERROR_DS_EXISTS_IN_MAY_HAVE = WIN32_ERROR(0x000020c2);
  static const ERROR_DS_NONEXISTENT_MAY_HAVE = WIN32_ERROR(0x000020c3);
  static const ERROR_DS_NONEXISTENT_MUST_HAVE = WIN32_ERROR(0x000020c4);
  static const ERROR_DS_AUX_CLS_TEST_FAIL = WIN32_ERROR(0x000020c5);
  static const ERROR_DS_NONEXISTENT_POSS_SUP = WIN32_ERROR(0x000020c6);
  static const ERROR_DS_SUB_CLS_TEST_FAIL = WIN32_ERROR(0x000020c7);
  static const ERROR_DS_BAD_RDN_ATT_ID_SYNTAX = WIN32_ERROR(0x000020c8);
  static const ERROR_DS_EXISTS_IN_AUX_CLS = WIN32_ERROR(0x000020c9);
  static const ERROR_DS_EXISTS_IN_SUB_CLS = WIN32_ERROR(0x000020ca);
  static const ERROR_DS_EXISTS_IN_POSS_SUP = WIN32_ERROR(0x000020cb);
  static const ERROR_DS_RECALCSCHEMA_FAILED = WIN32_ERROR(0x000020cc);
  static const ERROR_DS_TREE_DELETE_NOT_FINISHED = WIN32_ERROR(0x000020cd);
  static const ERROR_DS_CANT_DELETE = WIN32_ERROR(0x000020ce);
  static const ERROR_DS_ATT_SCHEMA_REQ_ID = WIN32_ERROR(0x000020cf);
  static const ERROR_DS_BAD_ATT_SCHEMA_SYNTAX = WIN32_ERROR(0x000020d0);
  static const ERROR_DS_CANT_CACHE_ATT = WIN32_ERROR(0x000020d1);
  static const ERROR_DS_CANT_CACHE_CLASS = WIN32_ERROR(0x000020d2);
  static const ERROR_DS_CANT_REMOVE_ATT_CACHE = WIN32_ERROR(0x000020d3);
  static const ERROR_DS_CANT_REMOVE_CLASS_CACHE = WIN32_ERROR(0x000020d4);
  static const ERROR_DS_CANT_RETRIEVE_DN = WIN32_ERROR(0x000020d5);
  static const ERROR_DS_MISSING_SUPREF = WIN32_ERROR(0x000020d6);
  static const ERROR_DS_CANT_RETRIEVE_INSTANCE = WIN32_ERROR(0x000020d7);
  static const ERROR_DS_CODE_INCONSISTENCY = WIN32_ERROR(0x000020d8);
  static const ERROR_DS_DATABASE_ERROR = WIN32_ERROR(0x000020d9);
  static const ERROR_DS_GOVERNSID_MISSING = WIN32_ERROR(0x000020da);
  static const ERROR_DS_MISSING_EXPECTED_ATT = WIN32_ERROR(0x000020db);
  static const ERROR_DS_NCNAME_MISSING_CR_REF = WIN32_ERROR(0x000020dc);
  static const ERROR_DS_SECURITY_CHECKING_ERROR = WIN32_ERROR(0x000020dd);
  static const ERROR_DS_SCHEMA_NOT_LOADED = WIN32_ERROR(0x000020de);
  static const ERROR_DS_SCHEMA_ALLOC_FAILED = WIN32_ERROR(0x000020df);
  static const ERROR_DS_ATT_SCHEMA_REQ_SYNTAX = WIN32_ERROR(0x000020e0);
  static const ERROR_DS_GCVERIFY_ERROR = WIN32_ERROR(0x000020e1);
  static const ERROR_DS_DRA_SCHEMA_MISMATCH = WIN32_ERROR(0x000020e2);
  static const ERROR_DS_CANT_FIND_DSA_OBJ = WIN32_ERROR(0x000020e3);
  static const ERROR_DS_CANT_FIND_EXPECTED_NC = WIN32_ERROR(0x000020e4);
  static const ERROR_DS_CANT_FIND_NC_IN_CACHE = WIN32_ERROR(0x000020e5);
  static const ERROR_DS_CANT_RETRIEVE_CHILD = WIN32_ERROR(0x000020e6);
  static const ERROR_DS_SECURITY_ILLEGAL_MODIFY = WIN32_ERROR(0x000020e7);
  static const ERROR_DS_CANT_REPLACE_HIDDEN_REC = WIN32_ERROR(0x000020e8);
  static const ERROR_DS_BAD_HIERARCHY_FILE = WIN32_ERROR(0x000020e9);
  static const ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED = WIN32_ERROR(0x000020ea);
  static const ERROR_DS_CONFIG_PARAM_MISSING = WIN32_ERROR(0x000020eb);
  static const ERROR_DS_COUNTING_AB_INDICES_FAILED = WIN32_ERROR(0x000020ec);
  static const ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED = WIN32_ERROR(0x000020ed);
  static const ERROR_DS_INTERNAL_FAILURE = WIN32_ERROR(0x000020ee);
  static const ERROR_DS_UNKNOWN_ERROR = WIN32_ERROR(0x000020ef);
  static const ERROR_DS_ROOT_REQUIRES_CLASS_TOP = WIN32_ERROR(0x000020f0);
  static const ERROR_DS_REFUSING_FSMO_ROLES = WIN32_ERROR(0x000020f1);
  static const ERROR_DS_MISSING_FSMO_SETTINGS = WIN32_ERROR(0x000020f2);
  static const ERROR_DS_UNABLE_TO_SURRENDER_ROLES = WIN32_ERROR(0x000020f3);
  static const ERROR_DS_DRA_GENERIC = WIN32_ERROR(0x000020f4);
  static const ERROR_DS_DRA_INVALID_PARAMETER = WIN32_ERROR(0x000020f5);
  static const ERROR_DS_DRA_BUSY = WIN32_ERROR(0x000020f6);
  static const ERROR_DS_DRA_BAD_DN = WIN32_ERROR(0x000020f7);
  static const ERROR_DS_DRA_BAD_NC = WIN32_ERROR(0x000020f8);
  static const ERROR_DS_DRA_DN_EXISTS = WIN32_ERROR(0x000020f9);
  static const ERROR_DS_DRA_INTERNAL_ERROR = WIN32_ERROR(0x000020fa);
  static const ERROR_DS_DRA_INCONSISTENT_DIT = WIN32_ERROR(0x000020fb);
  static const ERROR_DS_DRA_CONNECTION_FAILED = WIN32_ERROR(0x000020fc);
  static const ERROR_DS_DRA_BAD_INSTANCE_TYPE = WIN32_ERROR(0x000020fd);
  static const ERROR_DS_DRA_OUT_OF_MEM = WIN32_ERROR(0x000020fe);
  static const ERROR_DS_DRA_MAIL_PROBLEM = WIN32_ERROR(0x000020ff);
  static const ERROR_DS_DRA_REF_ALREADY_EXISTS = WIN32_ERROR(0x00002100);
  static const ERROR_DS_DRA_REF_NOT_FOUND = WIN32_ERROR(0x00002101);
  static const ERROR_DS_DRA_OBJ_IS_REP_SOURCE = WIN32_ERROR(0x00002102);
  static const ERROR_DS_DRA_DB_ERROR = WIN32_ERROR(0x00002103);
  static const ERROR_DS_DRA_NO_REPLICA = WIN32_ERROR(0x00002104);
  static const ERROR_DS_DRA_ACCESS_DENIED = WIN32_ERROR(0x00002105);
  static const ERROR_DS_DRA_NOT_SUPPORTED = WIN32_ERROR(0x00002106);
  static const ERROR_DS_DRA_RPC_CANCELLED = WIN32_ERROR(0x00002107);
  static const ERROR_DS_DRA_SOURCE_DISABLED = WIN32_ERROR(0x00002108);
  static const ERROR_DS_DRA_SINK_DISABLED = WIN32_ERROR(0x00002109);
  static const ERROR_DS_DRA_NAME_COLLISION = WIN32_ERROR(0x0000210a);
  static const ERROR_DS_DRA_SOURCE_REINSTALLED = WIN32_ERROR(0x0000210b);
  static const ERROR_DS_DRA_MISSING_PARENT = WIN32_ERROR(0x0000210c);
  static const ERROR_DS_DRA_PREEMPTED = WIN32_ERROR(0x0000210d);
  static const ERROR_DS_DRA_ABANDON_SYNC = WIN32_ERROR(0x0000210e);
  static const ERROR_DS_DRA_SHUTDOWN = WIN32_ERROR(0x0000210f);
  static const ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET = WIN32_ERROR(0x00002110);
  static const ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA = WIN32_ERROR(0x00002111);
  static const ERROR_DS_DRA_EXTN_CONNECTION_FAILED = WIN32_ERROR(0x00002112);
  static const ERROR_DS_INSTALL_SCHEMA_MISMATCH = WIN32_ERROR(0x00002113);
  static const ERROR_DS_DUP_LINK_ID = WIN32_ERROR(0x00002114);
  static const ERROR_DS_NAME_ERROR_RESOLVING = WIN32_ERROR(0x00002115);
  static const ERROR_DS_NAME_ERROR_NOT_FOUND = WIN32_ERROR(0x00002116);
  static const ERROR_DS_NAME_ERROR_NOT_UNIQUE = WIN32_ERROR(0x00002117);
  static const ERROR_DS_NAME_ERROR_NO_MAPPING = WIN32_ERROR(0x00002118);
  static const ERROR_DS_NAME_ERROR_DOMAIN_ONLY = WIN32_ERROR(0x00002119);
  static const ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING =
      WIN32_ERROR(0x0000211a);
  static const ERROR_DS_CONSTRUCTED_ATT_MOD = WIN32_ERROR(0x0000211b);
  static const ERROR_DS_WRONG_OM_OBJ_CLASS = WIN32_ERROR(0x0000211c);
  static const ERROR_DS_DRA_REPL_PENDING = WIN32_ERROR(0x0000211d);
  static const ERROR_DS_DS_REQUIRED = WIN32_ERROR(0x0000211e);
  static const ERROR_DS_INVALID_LDAP_DISPLAY_NAME = WIN32_ERROR(0x0000211f);
  static const ERROR_DS_NON_BASE_SEARCH = WIN32_ERROR(0x00002120);
  static const ERROR_DS_CANT_RETRIEVE_ATTS = WIN32_ERROR(0x00002121);
  static const ERROR_DS_BACKLINK_WITHOUT_LINK = WIN32_ERROR(0x00002122);
  static const ERROR_DS_EPOCH_MISMATCH = WIN32_ERROR(0x00002123);
  static const ERROR_DS_SRC_NAME_MISMATCH = WIN32_ERROR(0x00002124);
  static const ERROR_DS_SRC_AND_DST_NC_IDENTICAL = WIN32_ERROR(0x00002125);
  static const ERROR_DS_DST_NC_MISMATCH = WIN32_ERROR(0x00002126);
  static const ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC = WIN32_ERROR(0x00002127);
  static const ERROR_DS_SRC_GUID_MISMATCH = WIN32_ERROR(0x00002128);
  static const ERROR_DS_CANT_MOVE_DELETED_OBJECT = WIN32_ERROR(0x00002129);
  static const ERROR_DS_PDC_OPERATION_IN_PROGRESS = WIN32_ERROR(0x0000212a);
  static const ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD = WIN32_ERROR(0x0000212b);
  static const ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION = WIN32_ERROR(0x0000212c);
  static const ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS =
      WIN32_ERROR(0x0000212d);
  static const ERROR_DS_NC_MUST_HAVE_NC_PARENT = WIN32_ERROR(0x0000212e);
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE = WIN32_ERROR(0x0000212f);
  static const ERROR_DS_DST_DOMAIN_NOT_NATIVE = WIN32_ERROR(0x00002130);
  static const ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER =
      WIN32_ERROR(0x00002131);
  static const ERROR_DS_CANT_MOVE_ACCOUNT_GROUP = WIN32_ERROR(0x00002132);
  static const ERROR_DS_CANT_MOVE_RESOURCE_GROUP = WIN32_ERROR(0x00002133);
  static const ERROR_DS_INVALID_SEARCH_FLAG = WIN32_ERROR(0x00002134);
  static const ERROR_DS_NO_TREE_DELETE_ABOVE_NC = WIN32_ERROR(0x00002135);
  static const ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE = WIN32_ERROR(0x00002136);
  static const ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE =
      WIN32_ERROR(0x00002137);
  static const ERROR_DS_SAM_INIT_FAILURE = WIN32_ERROR(0x00002138);
  static const ERROR_DS_SENSITIVE_GROUP_VIOLATION = WIN32_ERROR(0x00002139);
  static const ERROR_DS_CANT_MOD_PRIMARYGROUPID = WIN32_ERROR(0x0000213a);
  static const ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD = WIN32_ERROR(0x0000213b);
  static const ERROR_DS_NONSAFE_SCHEMA_CHANGE = WIN32_ERROR(0x0000213c);
  static const ERROR_DS_SCHEMA_UPDATE_DISALLOWED = WIN32_ERROR(0x0000213d);
  static const ERROR_DS_CANT_CREATE_UNDER_SCHEMA = WIN32_ERROR(0x0000213e);
  static const ERROR_DS_INSTALL_NO_SRC_SCH_VERSION = WIN32_ERROR(0x0000213f);
  static const ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE =
      WIN32_ERROR(0x00002140);
  static const ERROR_DS_INVALID_GROUP_TYPE = WIN32_ERROR(0x00002141);
  static const ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN =
      WIN32_ERROR(0x00002142);
  static const ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN =
      WIN32_ERROR(0x00002143);
  static const ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER = WIN32_ERROR(0x00002144);
  static const ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER =
      WIN32_ERROR(0x00002145);
  static const ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER =
      WIN32_ERROR(0x00002146);
  static const ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER =
      WIN32_ERROR(0x00002147);
  static const ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER =
      WIN32_ERROR(0x00002148);
  static const ERROR_DS_HAVE_PRIMARY_MEMBERS = WIN32_ERROR(0x00002149);
  static const ERROR_DS_STRING_SD_CONVERSION_FAILED = WIN32_ERROR(0x0000214a);
  static const ERROR_DS_NAMING_MASTER_GC = WIN32_ERROR(0x0000214b);
  static const ERROR_DS_DNS_LOOKUP_FAILURE = WIN32_ERROR(0x0000214c);
  static const ERROR_DS_COULDNT_UPDATE_SPNS = WIN32_ERROR(0x0000214d);
  static const ERROR_DS_CANT_RETRIEVE_SD = WIN32_ERROR(0x0000214e);
  static const ERROR_DS_KEY_NOT_UNIQUE = WIN32_ERROR(0x0000214f);
  static const ERROR_DS_WRONG_LINKED_ATT_SYNTAX = WIN32_ERROR(0x00002150);
  static const ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD = WIN32_ERROR(0x00002151);
  static const ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY = WIN32_ERROR(0x00002152);
  static const ERROR_DS_CANT_START = WIN32_ERROR(0x00002153);
  static const ERROR_DS_INIT_FAILURE = WIN32_ERROR(0x00002154);
  static const ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION = WIN32_ERROR(0x00002155);
  static const ERROR_DS_SOURCE_DOMAIN_IN_FOREST = WIN32_ERROR(0x00002156);
  static const ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST =
      WIN32_ERROR(0x00002157);
  static const ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED =
      WIN32_ERROR(0x00002158);
  static const ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN = WIN32_ERROR(0x00002159);
  static const ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER = WIN32_ERROR(0x0000215a);
  static const ERROR_DS_SRC_SID_EXISTS_IN_FOREST = WIN32_ERROR(0x0000215b);
  static const ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH =
      WIN32_ERROR(0x0000215c);
  static const ERROR_SAM_INIT_FAILURE = WIN32_ERROR(0x0000215d);
  static const ERROR_DS_DRA_SCHEMA_INFO_SHIP = WIN32_ERROR(0x0000215e);
  static const ERROR_DS_DRA_SCHEMA_CONFLICT = WIN32_ERROR(0x0000215f);
  static const ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT = WIN32_ERROR(0x00002160);
  static const ERROR_DS_DRA_OBJ_NC_MISMATCH = WIN32_ERROR(0x00002161);
  static const ERROR_DS_NC_STILL_HAS_DSAS = WIN32_ERROR(0x00002162);
  static const ERROR_DS_GC_REQUIRED = WIN32_ERROR(0x00002163);
  static const ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY = WIN32_ERROR(0x00002164);
  static const ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS = WIN32_ERROR(0x00002165);
  static const ERROR_DS_CANT_ADD_TO_GC = WIN32_ERROR(0x00002166);
  static const ERROR_DS_NO_CHECKPOINT_WITH_PDC = WIN32_ERROR(0x00002167);
  static const ERROR_DS_SOURCE_AUDITING_NOT_ENABLED = WIN32_ERROR(0x00002168);
  static const ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC = WIN32_ERROR(0x00002169);
  static const ERROR_DS_INVALID_NAME_FOR_SPN = WIN32_ERROR(0x0000216a);
  static const ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS = WIN32_ERROR(0x0000216b);
  static const ERROR_DS_UNICODEPWD_NOT_IN_QUOTES = WIN32_ERROR(0x0000216c);
  static const ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED =
      WIN32_ERROR(0x0000216d);
  static const ERROR_DS_MUST_BE_RUN_ON_DST_DC = WIN32_ERROR(0x0000216e);
  static const ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER = WIN32_ERROR(0x0000216f);
  static const ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ = WIN32_ERROR(0x00002170);
  static const ERROR_DS_INIT_FAILURE_CONSOLE = WIN32_ERROR(0x00002171);
  static const ERROR_DS_SAM_INIT_FAILURE_CONSOLE = WIN32_ERROR(0x00002172);
  static const ERROR_DS_FOREST_VERSION_TOO_HIGH = WIN32_ERROR(0x00002173);
  static const ERROR_DS_DOMAIN_VERSION_TOO_HIGH = WIN32_ERROR(0x00002174);
  static const ERROR_DS_FOREST_VERSION_TOO_LOW = WIN32_ERROR(0x00002175);
  static const ERROR_DS_DOMAIN_VERSION_TOO_LOW = WIN32_ERROR(0x00002176);
  static const ERROR_DS_INCOMPATIBLE_VERSION = WIN32_ERROR(0x00002177);
  static const ERROR_DS_LOW_DSA_VERSION = WIN32_ERROR(0x00002178);
  static const ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN =
      WIN32_ERROR(0x00002179);
  static const ERROR_DS_NOT_SUPPORTED_SORT_ORDER = WIN32_ERROR(0x0000217a);
  static const ERROR_DS_NAME_NOT_UNIQUE = WIN32_ERROR(0x0000217b);
  static const ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 =
      WIN32_ERROR(0x0000217c);
  static const ERROR_DS_OUT_OF_VERSION_STORE = WIN32_ERROR(0x0000217d);
  static const ERROR_DS_INCOMPATIBLE_CONTROLS_USED = WIN32_ERROR(0x0000217e);
  static const ERROR_DS_NO_REF_DOMAIN = WIN32_ERROR(0x0000217f);
  static const ERROR_DS_RESERVED_LINK_ID = WIN32_ERROR(0x00002180);
  static const ERROR_DS_LINK_ID_NOT_AVAILABLE = WIN32_ERROR(0x00002181);
  static const ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER = WIN32_ERROR(0x00002182);
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE =
      WIN32_ERROR(0x00002183);
  static const ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC = WIN32_ERROR(0x00002184);
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG = WIN32_ERROR(0x00002185);
  static const ERROR_DS_MODIFYDN_WRONG_GRANDPARENT = WIN32_ERROR(0x00002186);
  static const ERROR_DS_NAME_ERROR_TRUST_REFERRAL = WIN32_ERROR(0x00002187);
  static const ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER = WIN32_ERROR(0x00002188);
  static const ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD = WIN32_ERROR(0x00002189);
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 = WIN32_ERROR(0x0000218a);
  static const ERROR_DS_THREAD_LIMIT_EXCEEDED = WIN32_ERROR(0x0000218b);
  static const ERROR_DS_NOT_CLOSEST = WIN32_ERROR(0x0000218c);
  static const ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF =
      WIN32_ERROR(0x0000218d);
  static const ERROR_DS_SINGLE_USER_MODE_FAILED = WIN32_ERROR(0x0000218e);
  static const ERROR_DS_NTDSCRIPT_SYNTAX_ERROR = WIN32_ERROR(0x0000218f);
  static const ERROR_DS_NTDSCRIPT_PROCESS_ERROR = WIN32_ERROR(0x00002190);
  static const ERROR_DS_DIFFERENT_REPL_EPOCHS = WIN32_ERROR(0x00002191);
  static const ERROR_DS_DRS_EXTENSIONS_CHANGED = WIN32_ERROR(0x00002192);
  static const ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR =
      WIN32_ERROR(0x00002193);
  static const ERROR_DS_NO_MSDS_INTID = WIN32_ERROR(0x00002194);
  static const ERROR_DS_DUP_MSDS_INTID = WIN32_ERROR(0x00002195);
  static const ERROR_DS_EXISTS_IN_RDNATTID = WIN32_ERROR(0x00002196);
  static const ERROR_DS_AUTHORIZATION_FAILED = WIN32_ERROR(0x00002197);
  static const ERROR_DS_INVALID_SCRIPT = WIN32_ERROR(0x00002198);
  static const ERROR_DS_REMOTE_CROSSREF_OP_FAILED = WIN32_ERROR(0x00002199);
  static const ERROR_DS_CROSS_REF_BUSY = WIN32_ERROR(0x0000219a);
  static const ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN =
      WIN32_ERROR(0x0000219b);
  static const ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC = WIN32_ERROR(0x0000219c);
  static const ERROR_DS_DUPLICATE_ID_FOUND = WIN32_ERROR(0x0000219d);
  static const ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT =
      WIN32_ERROR(0x0000219e);
  static const ERROR_DS_GROUP_CONVERSION_ERROR = WIN32_ERROR(0x0000219f);
  static const ERROR_DS_CANT_MOVE_APP_BASIC_GROUP = WIN32_ERROR(0x000021a0);
  static const ERROR_DS_CANT_MOVE_APP_QUERY_GROUP = WIN32_ERROR(0x000021a1);
  static const ERROR_DS_ROLE_NOT_VERIFIED = WIN32_ERROR(0x000021a2);
  static const ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL =
      WIN32_ERROR(0x000021a3);
  static const ERROR_DS_DOMAIN_RENAME_IN_PROGRESS = WIN32_ERROR(0x000021a4);
  static const ERROR_DS_EXISTING_AD_CHILD_NC = WIN32_ERROR(0x000021a5);
  static const ERROR_DS_REPL_LIFETIME_EXCEEDED = WIN32_ERROR(0x000021a6);
  static const ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER =
      WIN32_ERROR(0x000021a7);
  static const ERROR_DS_LDAP_SEND_QUEUE_FULL = WIN32_ERROR(0x000021a8);
  static const ERROR_DS_DRA_OUT_SCHEDULE_WINDOW = WIN32_ERROR(0x000021a9);
  static const ERROR_DS_POLICY_NOT_KNOWN = WIN32_ERROR(0x000021aa);
  static const ERROR_NO_SITE_SETTINGS_OBJECT = WIN32_ERROR(0x000021ab);
  static const ERROR_NO_SECRETS = WIN32_ERROR(0x000021ac);
  static const ERROR_NO_WRITABLE_DC_FOUND = WIN32_ERROR(0x000021ad);
  static const ERROR_DS_NO_SERVER_OBJECT = WIN32_ERROR(0x000021ae);
  static const ERROR_DS_NO_NTDSA_OBJECT = WIN32_ERROR(0x000021af);
  static const ERROR_DS_NON_ASQ_SEARCH = WIN32_ERROR(0x000021b0);
  static const ERROR_DS_AUDIT_FAILURE = WIN32_ERROR(0x000021b1);
  static const ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE = WIN32_ERROR(0x000021b2);
  static const ERROR_DS_INVALID_SEARCH_FLAG_TUPLE = WIN32_ERROR(0x000021b3);
  static const ERROR_DS_HIERARCHY_TABLE_TOO_DEEP = WIN32_ERROR(0x000021b4);
  static const ERROR_DS_DRA_CORRUPT_UTD_VECTOR = WIN32_ERROR(0x000021b5);
  static const ERROR_DS_DRA_SECRETS_DENIED = WIN32_ERROR(0x000021b6);
  static const ERROR_DS_RESERVED_MAPI_ID = WIN32_ERROR(0x000021b7);
  static const ERROR_DS_MAPI_ID_NOT_AVAILABLE = WIN32_ERROR(0x000021b8);
  static const ERROR_DS_DRA_MISSING_KRBTGT_SECRET = WIN32_ERROR(0x000021b9);
  static const ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST = WIN32_ERROR(0x000021ba);
  static const ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST = WIN32_ERROR(0x000021bb);
  static const ERROR_INVALID_USER_PRINCIPAL_NAME = WIN32_ERROR(0x000021bc);
  static const ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS =
      WIN32_ERROR(0x000021bd);
  static const ERROR_DS_OID_NOT_FOUND = WIN32_ERROR(0x000021be);
  static const ERROR_DS_DRA_RECYCLED_TARGET = WIN32_ERROR(0x000021bf);
  static const ERROR_DS_DISALLOWED_NC_REDIRECT = WIN32_ERROR(0x000021c0);
  static const ERROR_DS_HIGH_ADLDS_FFL = WIN32_ERROR(0x000021c1);
  static const ERROR_DS_HIGH_DSA_VERSION = WIN32_ERROR(0x000021c2);
  static const ERROR_DS_LOW_ADLDS_FFL = WIN32_ERROR(0x000021c3);
  static const ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION =
      WIN32_ERROR(0x000021c4);
  static const ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED =
      WIN32_ERROR(0x000021c5);
  static const ERROR_INCORRECT_ACCOUNT_TYPE = WIN32_ERROR(0x000021c6);
  static const ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST =
      WIN32_ERROR(0x000021c7);
  static const ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST =
      WIN32_ERROR(0x000021c8);
  static const ERROR_DS_MISSING_FOREST_TRUST = WIN32_ERROR(0x000021c9);
  static const ERROR_DS_VALUE_KEY_NOT_UNIQUE = WIN32_ERROR(0x000021ca);
  static const ERROR_WEAK_WHFBKEY_BLOCKED = WIN32_ERROR(0x000021cb);
  static const ERROR_DS_PER_ATTRIBUTE_AUTHZ_FAILED_DURING_ADD =
      WIN32_ERROR(0x000021cc);
  static const ERROR_LOCAL_POLICY_MODIFICATION_NOT_SUPPORTED =
      WIN32_ERROR(0x000021cd);
  static const ERROR_POLICY_CONTROLLED_ACCOUNT = WIN32_ERROR(0x000021ce);
  static const ERROR_LAPS_LEGACY_SCHEMA_MISSING = WIN32_ERROR(0x000021cf);
  static const ERROR_LAPS_SCHEMA_MISSING = WIN32_ERROR(0x000021d0);
  static const ERROR_LAPS_ENCRYPTION_REQUIRES_2016_DFL =
      WIN32_ERROR(0x000021d1);
  static const DNS_ERROR_RESPONSE_CODES_BASE = WIN32_ERROR(0x00002328);
  static const DNS_ERROR_RCODE_NO_ERROR = WIN32_ERROR(0x00000000);
  static const DNS_ERROR_MASK = WIN32_ERROR(0x00002328);
  static const DNS_ERROR_RCODE_FORMAT_ERROR = WIN32_ERROR(0x00002329);
  static const DNS_ERROR_RCODE_SERVER_FAILURE = WIN32_ERROR(0x0000232a);
  static const DNS_ERROR_RCODE_NAME_ERROR = WIN32_ERROR(0x0000232b);
  static const DNS_ERROR_RCODE_NOT_IMPLEMENTED = WIN32_ERROR(0x0000232c);
  static const DNS_ERROR_RCODE_REFUSED = WIN32_ERROR(0x0000232d);
  static const DNS_ERROR_RCODE_YXDOMAIN = WIN32_ERROR(0x0000232e);
  static const DNS_ERROR_RCODE_YXRRSET = WIN32_ERROR(0x0000232f);
  static const DNS_ERROR_RCODE_NXRRSET = WIN32_ERROR(0x00002330);
  static const DNS_ERROR_RCODE_NOTAUTH = WIN32_ERROR(0x00002331);
  static const DNS_ERROR_RCODE_NOTZONE = WIN32_ERROR(0x00002332);
  static const DNS_ERROR_RCODE_BADSIG = WIN32_ERROR(0x00002338);
  static const DNS_ERROR_RCODE_BADKEY = WIN32_ERROR(0x00002339);
  static const DNS_ERROR_RCODE_BADTIME = WIN32_ERROR(0x0000233a);
  static const DNS_ERROR_RCODE_LAST = WIN32_ERROR(0x0000233a);
  static const DNS_ERROR_DNSSEC_BASE = WIN32_ERROR(0x0000238c);
  static const DNS_ERROR_KEYMASTER_REQUIRED = WIN32_ERROR(0x0000238d);
  static const DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE = WIN32_ERROR(0x0000238e);
  static const DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 =
      WIN32_ERROR(0x0000238f);
  static const DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS =
      WIN32_ERROR(0x00002390);
  static const DNS_ERROR_UNSUPPORTED_ALGORITHM = WIN32_ERROR(0x00002391);
  static const DNS_ERROR_INVALID_KEY_SIZE = WIN32_ERROR(0x00002392);
  static const DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE = WIN32_ERROR(0x00002393);
  static const DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION =
      WIN32_ERROR(0x00002394);
  static const DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR =
      WIN32_ERROR(0x00002395);
  static const DNS_ERROR_UNEXPECTED_CNG_ERROR = WIN32_ERROR(0x00002396);
  static const DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION =
      WIN32_ERROR(0x00002397);
  static const DNS_ERROR_KSP_NOT_ACCESSIBLE = WIN32_ERROR(0x00002398);
  static const DNS_ERROR_TOO_MANY_SKDS = WIN32_ERROR(0x00002399);
  static const DNS_ERROR_INVALID_ROLLOVER_PERIOD = WIN32_ERROR(0x0000239a);
  static const DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET =
      WIN32_ERROR(0x0000239b);
  static const DNS_ERROR_ROLLOVER_IN_PROGRESS = WIN32_ERROR(0x0000239c);
  static const DNS_ERROR_STANDBY_KEY_NOT_PRESENT = WIN32_ERROR(0x0000239d);
  static const DNS_ERROR_NOT_ALLOWED_ON_ZSK = WIN32_ERROR(0x0000239e);
  static const DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD = WIN32_ERROR(0x0000239f);
  static const DNS_ERROR_ROLLOVER_ALREADY_QUEUED = WIN32_ERROR(0x000023a0);
  static const DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE = WIN32_ERROR(0x000023a1);
  static const DNS_ERROR_BAD_KEYMASTER = WIN32_ERROR(0x000023a2);
  static const DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD =
      WIN32_ERROR(0x000023a3);
  static const DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT =
      WIN32_ERROR(0x000023a4);
  static const DNS_ERROR_DNSSEC_IS_DISABLED = WIN32_ERROR(0x000023a5);
  static const DNS_ERROR_INVALID_XML = WIN32_ERROR(0x000023a6);
  static const DNS_ERROR_NO_VALID_TRUST_ANCHORS = WIN32_ERROR(0x000023a7);
  static const DNS_ERROR_ROLLOVER_NOT_POKEABLE = WIN32_ERROR(0x000023a8);
  static const DNS_ERROR_NSEC3_NAME_COLLISION = WIN32_ERROR(0x000023a9);
  static const DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 =
      WIN32_ERROR(0x000023aa);
  static const DNS_ERROR_PACKET_FMT_BASE = WIN32_ERROR(0x0000251c);
  static const DNS_ERROR_BAD_PACKET = WIN32_ERROR(0x0000251e);
  static const DNS_ERROR_NO_PACKET = WIN32_ERROR(0x0000251f);
  static const DNS_ERROR_RCODE = WIN32_ERROR(0x00002520);
  static const DNS_ERROR_UNSECURE_PACKET = WIN32_ERROR(0x00002521);
  static const DNS_ERROR_NO_MEMORY = WIN32_ERROR(0x0000000e);
  static const DNS_ERROR_INVALID_NAME = WIN32_ERROR(0x0000007b);
  static const DNS_ERROR_INVALID_DATA = WIN32_ERROR(0x0000000d);
  static const DNS_ERROR_GENERAL_API_BASE = WIN32_ERROR(0x0000254e);
  static const DNS_ERROR_INVALID_TYPE = WIN32_ERROR(0x0000254f);
  static const DNS_ERROR_INVALID_IP_ADDRESS = WIN32_ERROR(0x00002550);
  static const DNS_ERROR_INVALID_PROPERTY = WIN32_ERROR(0x00002551);
  static const DNS_ERROR_TRY_AGAIN_LATER = WIN32_ERROR(0x00002552);
  static const DNS_ERROR_NOT_UNIQUE = WIN32_ERROR(0x00002553);
  static const DNS_ERROR_NON_RFC_NAME = WIN32_ERROR(0x00002554);
  static const DNS_ERROR_INVALID_NAME_CHAR = WIN32_ERROR(0x00002558);
  static const DNS_ERROR_NUMERIC_NAME = WIN32_ERROR(0x00002559);
  static const DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER = WIN32_ERROR(0x0000255a);
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION = WIN32_ERROR(0x0000255b);
  static const DNS_ERROR_CANNOT_FIND_ROOT_HINTS = WIN32_ERROR(0x0000255c);
  static const DNS_ERROR_INCONSISTENT_ROOT_HINTS = WIN32_ERROR(0x0000255d);
  static const DNS_ERROR_DWORD_VALUE_TOO_SMALL = WIN32_ERROR(0x0000255e);
  static const DNS_ERROR_DWORD_VALUE_TOO_LARGE = WIN32_ERROR(0x0000255f);
  static const DNS_ERROR_BACKGROUND_LOADING = WIN32_ERROR(0x00002560);
  static const DNS_ERROR_NOT_ALLOWED_ON_RODC = WIN32_ERROR(0x00002561);
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DNAME = WIN32_ERROR(0x00002562);
  static const DNS_ERROR_DELEGATION_REQUIRED = WIN32_ERROR(0x00002563);
  static const DNS_ERROR_INVALID_POLICY_TABLE = WIN32_ERROR(0x00002564);
  static const DNS_ERROR_ADDRESS_REQUIRED = WIN32_ERROR(0x00002565);
  static const DNS_ERROR_ZONE_BASE = WIN32_ERROR(0x00002580);
  static const DNS_ERROR_ZONE_DOES_NOT_EXIST = WIN32_ERROR(0x00002581);
  static const DNS_ERROR_NO_ZONE_INFO = WIN32_ERROR(0x00002582);
  static const DNS_ERROR_INVALID_ZONE_OPERATION = WIN32_ERROR(0x00002583);
  static const DNS_ERROR_ZONE_CONFIGURATION_ERROR = WIN32_ERROR(0x00002584);
  static const DNS_ERROR_ZONE_HAS_NO_SOA_RECORD = WIN32_ERROR(0x00002585);
  static const DNS_ERROR_ZONE_HAS_NO_NS_RECORDS = WIN32_ERROR(0x00002586);
  static const DNS_ERROR_ZONE_LOCKED = WIN32_ERROR(0x00002587);
  static const DNS_ERROR_ZONE_CREATION_FAILED = WIN32_ERROR(0x00002588);
  static const DNS_ERROR_ZONE_ALREADY_EXISTS = WIN32_ERROR(0x00002589);
  static const DNS_ERROR_AUTOZONE_ALREADY_EXISTS = WIN32_ERROR(0x0000258a);
  static const DNS_ERROR_INVALID_ZONE_TYPE = WIN32_ERROR(0x0000258b);
  static const DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP = WIN32_ERROR(0x0000258c);
  static const DNS_ERROR_ZONE_NOT_SECONDARY = WIN32_ERROR(0x0000258d);
  static const DNS_ERROR_NEED_SECONDARY_ADDRESSES = WIN32_ERROR(0x0000258e);
  static const DNS_ERROR_WINS_INIT_FAILED = WIN32_ERROR(0x0000258f);
  static const DNS_ERROR_NEED_WINS_SERVERS = WIN32_ERROR(0x00002590);
  static const DNS_ERROR_NBSTAT_INIT_FAILED = WIN32_ERROR(0x00002591);
  static const DNS_ERROR_SOA_DELETE_INVALID = WIN32_ERROR(0x00002592);
  static const DNS_ERROR_FORWARDER_ALREADY_EXISTS = WIN32_ERROR(0x00002593);
  static const DNS_ERROR_ZONE_REQUIRES_MASTER_IP = WIN32_ERROR(0x00002594);
  static const DNS_ERROR_ZONE_IS_SHUTDOWN = WIN32_ERROR(0x00002595);
  static const DNS_ERROR_ZONE_LOCKED_FOR_SIGNING = WIN32_ERROR(0x00002596);
  static const DNS_ERROR_DATAFILE_BASE = WIN32_ERROR(0x000025b2);
  static const DNS_ERROR_PRIMARY_REQUIRES_DATAFILE = WIN32_ERROR(0x000025b3);
  static const DNS_ERROR_INVALID_DATAFILE_NAME = WIN32_ERROR(0x000025b4);
  static const DNS_ERROR_DATAFILE_OPEN_FAILURE = WIN32_ERROR(0x000025b5);
  static const DNS_ERROR_FILE_WRITEBACK_FAILED = WIN32_ERROR(0x000025b6);
  static const DNS_ERROR_DATAFILE_PARSING = WIN32_ERROR(0x000025b7);
  static const DNS_ERROR_DATABASE_BASE = WIN32_ERROR(0x000025e4);
  static const DNS_ERROR_RECORD_DOES_NOT_EXIST = WIN32_ERROR(0x000025e5);
  static const DNS_ERROR_RECORD_FORMAT = WIN32_ERROR(0x000025e6);
  static const DNS_ERROR_NODE_CREATION_FAILED = WIN32_ERROR(0x000025e7);
  static const DNS_ERROR_UNKNOWN_RECORD_TYPE = WIN32_ERROR(0x000025e8);
  static const DNS_ERROR_RECORD_TIMED_OUT = WIN32_ERROR(0x000025e9);
  static const DNS_ERROR_NAME_NOT_IN_ZONE = WIN32_ERROR(0x000025ea);
  static const DNS_ERROR_CNAME_LOOP = WIN32_ERROR(0x000025eb);
  static const DNS_ERROR_NODE_IS_CNAME = WIN32_ERROR(0x000025ec);
  static const DNS_ERROR_CNAME_COLLISION = WIN32_ERROR(0x000025ed);
  static const DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT = WIN32_ERROR(0x000025ee);
  static const DNS_ERROR_RECORD_ALREADY_EXISTS = WIN32_ERROR(0x000025ef);
  static const DNS_ERROR_SECONDARY_DATA = WIN32_ERROR(0x000025f0);
  static const DNS_ERROR_NO_CREATE_CACHE_DATA = WIN32_ERROR(0x000025f1);
  static const DNS_ERROR_NAME_DOES_NOT_EXIST = WIN32_ERROR(0x000025f2);
  static const DNS_ERROR_DS_UNAVAILABLE = WIN32_ERROR(0x000025f5);
  static const DNS_ERROR_DS_ZONE_ALREADY_EXISTS = WIN32_ERROR(0x000025f6);
  static const DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE = WIN32_ERROR(0x000025f7);
  static const DNS_ERROR_NODE_IS_DNAME = WIN32_ERROR(0x000025f8);
  static const DNS_ERROR_DNAME_COLLISION = WIN32_ERROR(0x000025f9);
  static const DNS_ERROR_ALIAS_LOOP = WIN32_ERROR(0x000025fa);
  static const DNS_ERROR_OPERATION_BASE = WIN32_ERROR(0x00002616);
  static const DNS_ERROR_AXFR = WIN32_ERROR(0x00002618);
  static const DNS_ERROR_SECURE_BASE = WIN32_ERROR(0x00002648);
  static const DNS_ERROR_SETUP_BASE = WIN32_ERROR(0x0000267a);
  static const DNS_ERROR_NO_TCPIP = WIN32_ERROR(0x0000267b);
  static const DNS_ERROR_NO_DNS_SERVERS = WIN32_ERROR(0x0000267c);
  static const DNS_ERROR_DP_BASE = WIN32_ERROR(0x000026ac);
  static const DNS_ERROR_DP_DOES_NOT_EXIST = WIN32_ERROR(0x000026ad);
  static const DNS_ERROR_DP_ALREADY_EXISTS = WIN32_ERROR(0x000026ae);
  static const DNS_ERROR_DP_NOT_ENLISTED = WIN32_ERROR(0x000026af);
  static const DNS_ERROR_DP_ALREADY_ENLISTED = WIN32_ERROR(0x000026b0);
  static const DNS_ERROR_DP_NOT_AVAILABLE = WIN32_ERROR(0x000026b1);
  static const DNS_ERROR_DP_FSMO_ERROR = WIN32_ERROR(0x000026b2);
  static const DNS_ERROR_RRL_NOT_ENABLED = WIN32_ERROR(0x000026b7);
  static const DNS_ERROR_RRL_INVALID_WINDOW_SIZE = WIN32_ERROR(0x000026b8);
  static const DNS_ERROR_RRL_INVALID_IPV4_PREFIX = WIN32_ERROR(0x000026b9);
  static const DNS_ERROR_RRL_INVALID_IPV6_PREFIX = WIN32_ERROR(0x000026ba);
  static const DNS_ERROR_RRL_INVALID_TC_RATE = WIN32_ERROR(0x000026bb);
  static const DNS_ERROR_RRL_INVALID_LEAK_RATE = WIN32_ERROR(0x000026bc);
  static const DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE =
      WIN32_ERROR(0x000026bd);
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS =
      WIN32_ERROR(0x000026c1);
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST =
      WIN32_ERROR(0x000026c2);
  static const DNS_ERROR_VIRTUALIZATION_TREE_LOCKED = WIN32_ERROR(0x000026c3);
  static const DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME =
      WIN32_ERROR(0x000026c4);
  static const DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE =
      WIN32_ERROR(0x000026c5);
  static const DNS_ERROR_ZONESCOPE_ALREADY_EXISTS = WIN32_ERROR(0x000026df);
  static const DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST = WIN32_ERROR(0x000026e0);
  static const DNS_ERROR_DEFAULT_ZONESCOPE = WIN32_ERROR(0x000026e1);
  static const DNS_ERROR_INVALID_ZONESCOPE_NAME = WIN32_ERROR(0x000026e2);
  static const DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES = WIN32_ERROR(0x000026e3);
  static const DNS_ERROR_LOAD_ZONESCOPE_FAILED = WIN32_ERROR(0x000026e4);
  static const DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED =
      WIN32_ERROR(0x000026e5);
  static const DNS_ERROR_INVALID_SCOPE_NAME = WIN32_ERROR(0x000026e6);
  static const DNS_ERROR_SCOPE_DOES_NOT_EXIST = WIN32_ERROR(0x000026e7);
  static const DNS_ERROR_DEFAULT_SCOPE = WIN32_ERROR(0x000026e8);
  static const DNS_ERROR_INVALID_SCOPE_OPERATION = WIN32_ERROR(0x000026e9);
  static const DNS_ERROR_SCOPE_LOCKED = WIN32_ERROR(0x000026ea);
  static const DNS_ERROR_SCOPE_ALREADY_EXISTS = WIN32_ERROR(0x000026eb);
  static const DNS_ERROR_POLICY_ALREADY_EXISTS = WIN32_ERROR(0x000026f3);
  static const DNS_ERROR_POLICY_DOES_NOT_EXIST = WIN32_ERROR(0x000026f4);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA = WIN32_ERROR(0x000026f5);
  static const DNS_ERROR_POLICY_INVALID_SETTINGS = WIN32_ERROR(0x000026f6);
  static const DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED = WIN32_ERROR(0x000026f7);
  static const DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST = WIN32_ERROR(0x000026f8);
  static const DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS = WIN32_ERROR(0x000026f9);
  static const DNS_ERROR_SUBNET_DOES_NOT_EXIST = WIN32_ERROR(0x000026fa);
  static const DNS_ERROR_SUBNET_ALREADY_EXISTS = WIN32_ERROR(0x000026fb);
  static const DNS_ERROR_POLICY_LOCKED = WIN32_ERROR(0x000026fc);
  static const DNS_ERROR_POLICY_INVALID_WEIGHT = WIN32_ERROR(0x000026fd);
  static const DNS_ERROR_POLICY_INVALID_NAME = WIN32_ERROR(0x000026fe);
  static const DNS_ERROR_POLICY_MISSING_CRITERIA = WIN32_ERROR(0x000026ff);
  static const DNS_ERROR_INVALID_CLIENT_SUBNET_NAME = WIN32_ERROR(0x00002700);
  static const DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID =
      WIN32_ERROR(0x00002701);
  static const DNS_ERROR_POLICY_SCOPE_MISSING = WIN32_ERROR(0x00002702);
  static const DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED = WIN32_ERROR(0x00002703);
  static const DNS_ERROR_SERVERSCOPE_IS_REFERENCED = WIN32_ERROR(0x00002704);
  static const DNS_ERROR_ZONESCOPE_IS_REFERENCED = WIN32_ERROR(0x00002705);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET =
      WIN32_ERROR(0x00002706);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL =
      WIN32_ERROR(0x00002707);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL =
      WIN32_ERROR(0x00002708);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE =
      WIN32_ERROR(0x00002709);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN = WIN32_ERROR(0x0000270a);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE =
      WIN32_ERROR(0x0000270b);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY =
      WIN32_ERROR(0x0000270c);
  static const ERROR_IPSEC_QM_POLICY_EXISTS = WIN32_ERROR(0x000032c8);
  static const ERROR_IPSEC_QM_POLICY_NOT_FOUND = WIN32_ERROR(0x000032c9);
  static const ERROR_IPSEC_QM_POLICY_IN_USE = WIN32_ERROR(0x000032ca);
  static const ERROR_IPSEC_MM_POLICY_EXISTS = WIN32_ERROR(0x000032cb);
  static const ERROR_IPSEC_MM_POLICY_NOT_FOUND = WIN32_ERROR(0x000032cc);
  static const ERROR_IPSEC_MM_POLICY_IN_USE = WIN32_ERROR(0x000032cd);
  static const ERROR_IPSEC_MM_FILTER_EXISTS = WIN32_ERROR(0x000032ce);
  static const ERROR_IPSEC_MM_FILTER_NOT_FOUND = WIN32_ERROR(0x000032cf);
  static const ERROR_IPSEC_TRANSPORT_FILTER_EXISTS = WIN32_ERROR(0x000032d0);
  static const ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND = WIN32_ERROR(0x000032d1);
  static const ERROR_IPSEC_MM_AUTH_EXISTS = WIN32_ERROR(0x000032d2);
  static const ERROR_IPSEC_MM_AUTH_NOT_FOUND = WIN32_ERROR(0x000032d3);
  static const ERROR_IPSEC_MM_AUTH_IN_USE = WIN32_ERROR(0x000032d4);
  static const ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND =
      WIN32_ERROR(0x000032d5);
  static const ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND = WIN32_ERROR(0x000032d6);
  static const ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND =
      WIN32_ERROR(0x000032d7);
  static const ERROR_IPSEC_TUNNEL_FILTER_EXISTS = WIN32_ERROR(0x000032d8);
  static const ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND = WIN32_ERROR(0x000032d9);
  static const ERROR_IPSEC_MM_FILTER_PENDING_DELETION = WIN32_ERROR(0x000032da);
  static const ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION =
      WIN32_ERROR(0x000032db);
  static const ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION =
      WIN32_ERROR(0x000032dc);
  static const ERROR_IPSEC_MM_POLICY_PENDING_DELETION = WIN32_ERROR(0x000032dd);
  static const ERROR_IPSEC_MM_AUTH_PENDING_DELETION = WIN32_ERROR(0x000032de);
  static const ERROR_IPSEC_QM_POLICY_PENDING_DELETION = WIN32_ERROR(0x000032df);
  static const ERROR_IPSEC_IKE_NEG_STATUS_BEGIN = WIN32_ERROR(0x000035e8);
  static const ERROR_IPSEC_IKE_AUTH_FAIL = WIN32_ERROR(0x000035e9);
  static const ERROR_IPSEC_IKE_ATTRIB_FAIL = WIN32_ERROR(0x000035ea);
  static const ERROR_IPSEC_IKE_NEGOTIATION_PENDING = WIN32_ERROR(0x000035eb);
  static const ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR =
      WIN32_ERROR(0x000035ec);
  static const ERROR_IPSEC_IKE_TIMED_OUT = WIN32_ERROR(0x000035ed);
  static const ERROR_IPSEC_IKE_NO_CERT = WIN32_ERROR(0x000035ee);
  static const ERROR_IPSEC_IKE_SA_DELETED = WIN32_ERROR(0x000035ef);
  static const ERROR_IPSEC_IKE_SA_REAPED = WIN32_ERROR(0x000035f0);
  static const ERROR_IPSEC_IKE_MM_ACQUIRE_DROP = WIN32_ERROR(0x000035f1);
  static const ERROR_IPSEC_IKE_QM_ACQUIRE_DROP = WIN32_ERROR(0x000035f2);
  static const ERROR_IPSEC_IKE_QUEUE_DROP_MM = WIN32_ERROR(0x000035f3);
  static const ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM = WIN32_ERROR(0x000035f4);
  static const ERROR_IPSEC_IKE_DROP_NO_RESPONSE = WIN32_ERROR(0x000035f5);
  static const ERROR_IPSEC_IKE_MM_DELAY_DROP = WIN32_ERROR(0x000035f6);
  static const ERROR_IPSEC_IKE_QM_DELAY_DROP = WIN32_ERROR(0x000035f7);
  static const ERROR_IPSEC_IKE_ERROR = WIN32_ERROR(0x000035f8);
  static const ERROR_IPSEC_IKE_CRL_FAILED = WIN32_ERROR(0x000035f9);
  static const ERROR_IPSEC_IKE_INVALID_KEY_USAGE = WIN32_ERROR(0x000035fa);
  static const ERROR_IPSEC_IKE_INVALID_CERT_TYPE = WIN32_ERROR(0x000035fb);
  static const ERROR_IPSEC_IKE_NO_PRIVATE_KEY = WIN32_ERROR(0x000035fc);
  static const ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY = WIN32_ERROR(0x000035fd);
  static const ERROR_IPSEC_IKE_DH_FAIL = WIN32_ERROR(0x000035fe);
  static const ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED =
      WIN32_ERROR(0x000035ff);
  static const ERROR_IPSEC_IKE_INVALID_HEADER = WIN32_ERROR(0x00003600);
  static const ERROR_IPSEC_IKE_NO_POLICY = WIN32_ERROR(0x00003601);
  static const ERROR_IPSEC_IKE_INVALID_SIGNATURE = WIN32_ERROR(0x00003602);
  static const ERROR_IPSEC_IKE_KERBEROS_ERROR = WIN32_ERROR(0x00003603);
  static const ERROR_IPSEC_IKE_NO_PUBLIC_KEY = WIN32_ERROR(0x00003604);
  static const ERROR_IPSEC_IKE_PROCESS_ERR = WIN32_ERROR(0x00003605);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SA = WIN32_ERROR(0x00003606);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_PROP = WIN32_ERROR(0x00003607);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_TRANS = WIN32_ERROR(0x00003608);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_KE = WIN32_ERROR(0x00003609);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_ID = WIN32_ERROR(0x0000360a);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT = WIN32_ERROR(0x0000360b);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ = WIN32_ERROR(0x0000360c);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_HASH = WIN32_ERROR(0x0000360d);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SIG = WIN32_ERROR(0x0000360e);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NONCE = WIN32_ERROR(0x0000360f);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY = WIN32_ERROR(0x00003610);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_DELETE = WIN32_ERROR(0x00003611);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR = WIN32_ERROR(0x00003612);
  static const ERROR_IPSEC_IKE_INVALID_PAYLOAD = WIN32_ERROR(0x00003613);
  static const ERROR_IPSEC_IKE_LOAD_SOFT_SA = WIN32_ERROR(0x00003614);
  static const ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN = WIN32_ERROR(0x00003615);
  static const ERROR_IPSEC_IKE_INVALID_COOKIE = WIN32_ERROR(0x00003616);
  static const ERROR_IPSEC_IKE_NO_PEER_CERT = WIN32_ERROR(0x00003617);
  static const ERROR_IPSEC_IKE_PEER_CRL_FAILED = WIN32_ERROR(0x00003618);
  static const ERROR_IPSEC_IKE_POLICY_CHANGE = WIN32_ERROR(0x00003619);
  static const ERROR_IPSEC_IKE_NO_MM_POLICY = WIN32_ERROR(0x0000361a);
  static const ERROR_IPSEC_IKE_NOTCBPRIV = WIN32_ERROR(0x0000361b);
  static const ERROR_IPSEC_IKE_SECLOADFAIL = WIN32_ERROR(0x0000361c);
  static const ERROR_IPSEC_IKE_FAILSSPINIT = WIN32_ERROR(0x0000361d);
  static const ERROR_IPSEC_IKE_FAILQUERYSSP = WIN32_ERROR(0x0000361e);
  static const ERROR_IPSEC_IKE_SRVACQFAIL = WIN32_ERROR(0x0000361f);
  static const ERROR_IPSEC_IKE_SRVQUERYCRED = WIN32_ERROR(0x00003620);
  static const ERROR_IPSEC_IKE_GETSPIFAIL = WIN32_ERROR(0x00003621);
  static const ERROR_IPSEC_IKE_INVALID_FILTER = WIN32_ERROR(0x00003622);
  static const ERROR_IPSEC_IKE_OUT_OF_MEMORY = WIN32_ERROR(0x00003623);
  static const ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED = WIN32_ERROR(0x00003624);
  static const ERROR_IPSEC_IKE_INVALID_POLICY = WIN32_ERROR(0x00003625);
  static const ERROR_IPSEC_IKE_UNKNOWN_DOI = WIN32_ERROR(0x00003626);
  static const ERROR_IPSEC_IKE_INVALID_SITUATION = WIN32_ERROR(0x00003627);
  static const ERROR_IPSEC_IKE_DH_FAILURE = WIN32_ERROR(0x00003628);
  static const ERROR_IPSEC_IKE_INVALID_GROUP = WIN32_ERROR(0x00003629);
  static const ERROR_IPSEC_IKE_ENCRYPT = WIN32_ERROR(0x0000362a);
  static const ERROR_IPSEC_IKE_DECRYPT = WIN32_ERROR(0x0000362b);
  static const ERROR_IPSEC_IKE_POLICY_MATCH = WIN32_ERROR(0x0000362c);
  static const ERROR_IPSEC_IKE_UNSUPPORTED_ID = WIN32_ERROR(0x0000362d);
  static const ERROR_IPSEC_IKE_INVALID_HASH = WIN32_ERROR(0x0000362e);
  static const ERROR_IPSEC_IKE_INVALID_HASH_ALG = WIN32_ERROR(0x0000362f);
  static const ERROR_IPSEC_IKE_INVALID_HASH_SIZE = WIN32_ERROR(0x00003630);
  static const ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG = WIN32_ERROR(0x00003631);
  static const ERROR_IPSEC_IKE_INVALID_AUTH_ALG = WIN32_ERROR(0x00003632);
  static const ERROR_IPSEC_IKE_INVALID_SIG = WIN32_ERROR(0x00003633);
  static const ERROR_IPSEC_IKE_LOAD_FAILED = WIN32_ERROR(0x00003634);
  static const ERROR_IPSEC_IKE_RPC_DELETE = WIN32_ERROR(0x00003635);
  static const ERROR_IPSEC_IKE_BENIGN_REINIT = WIN32_ERROR(0x00003636);
  static const ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY =
      WIN32_ERROR(0x00003637);
  static const ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION = WIN32_ERROR(0x00003638);
  static const ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN = WIN32_ERROR(0x00003639);
  static const ERROR_IPSEC_IKE_MM_LIMIT = WIN32_ERROR(0x0000363a);
  static const ERROR_IPSEC_IKE_NEGOTIATION_DISABLED = WIN32_ERROR(0x0000363b);
  static const ERROR_IPSEC_IKE_QM_LIMIT = WIN32_ERROR(0x0000363c);
  static const ERROR_IPSEC_IKE_MM_EXPIRED = WIN32_ERROR(0x0000363d);
  static const ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID =
      WIN32_ERROR(0x0000363e);
  static const ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH =
      WIN32_ERROR(0x0000363f);
  static const ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID = WIN32_ERROR(0x00003640);
  static const ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD = WIN32_ERROR(0x00003641);
  static const ERROR_IPSEC_IKE_DOS_COOKIE_SENT = WIN32_ERROR(0x00003642);
  static const ERROR_IPSEC_IKE_SHUTTING_DOWN = WIN32_ERROR(0x00003643);
  static const ERROR_IPSEC_IKE_CGA_AUTH_FAILED = WIN32_ERROR(0x00003644);
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NATOA = WIN32_ERROR(0x00003645);
  static const ERROR_IPSEC_IKE_INVALID_MM_FOR_QM = WIN32_ERROR(0x00003646);
  static const ERROR_IPSEC_IKE_QM_EXPIRED = WIN32_ERROR(0x00003647);
  static const ERROR_IPSEC_IKE_TOO_MANY_FILTERS = WIN32_ERROR(0x00003648);
  static const ERROR_IPSEC_IKE_NEG_STATUS_END = WIN32_ERROR(0x00003649);
  static const ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL = WIN32_ERROR(0x0000364a);
  static const ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE =
      WIN32_ERROR(0x0000364b);
  static const ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING =
      WIN32_ERROR(0x0000364c);
  static const ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING =
      WIN32_ERROR(0x0000364d);
  static const ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS = WIN32_ERROR(0x0000364e);
  static const ERROR_IPSEC_IKE_RATELIMIT_DROP = WIN32_ERROR(0x0000364f);
  static const ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE =
      WIN32_ERROR(0x00003650);
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE = WIN32_ERROR(0x00003651);
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE =
      WIN32_ERROR(0x00003652);
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY =
      WIN32_ERROR(0x00003653);
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE =
      WIN32_ERROR(0x00003654);
  static const ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END =
      WIN32_ERROR(0x00003655);
  static const ERROR_IPSEC_BAD_SPI = WIN32_ERROR(0x00003656);
  static const ERROR_IPSEC_SA_LIFETIME_EXPIRED = WIN32_ERROR(0x00003657);
  static const ERROR_IPSEC_WRONG_SA = WIN32_ERROR(0x00003658);
  static const ERROR_IPSEC_REPLAY_CHECK_FAILED = WIN32_ERROR(0x00003659);
  static const ERROR_IPSEC_INVALID_PACKET = WIN32_ERROR(0x0000365a);
  static const ERROR_IPSEC_INTEGRITY_CHECK_FAILED = WIN32_ERROR(0x0000365b);
  static const ERROR_IPSEC_CLEAR_TEXT_DROP = WIN32_ERROR(0x0000365c);
  static const ERROR_IPSEC_AUTH_FIREWALL_DROP = WIN32_ERROR(0x0000365d);
  static const ERROR_IPSEC_THROTTLE_DROP = WIN32_ERROR(0x0000365e);
  static const ERROR_IPSEC_DOSP_BLOCK = WIN32_ERROR(0x00003665);
  static const ERROR_IPSEC_DOSP_RECEIVED_MULTICAST = WIN32_ERROR(0x00003666);
  static const ERROR_IPSEC_DOSP_INVALID_PACKET = WIN32_ERROR(0x00003667);
  static const ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED = WIN32_ERROR(0x00003668);
  static const ERROR_IPSEC_DOSP_MAX_ENTRIES = WIN32_ERROR(0x00003669);
  static const ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED = WIN32_ERROR(0x0000366a);
  static const ERROR_IPSEC_DOSP_NOT_INSTALLED = WIN32_ERROR(0x0000366b);
  static const ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES =
      WIN32_ERROR(0x0000366c);
  static const ERROR_SXS_SECTION_NOT_FOUND = WIN32_ERROR(0x000036b0);
  static const ERROR_SXS_CANT_GEN_ACTCTX = WIN32_ERROR(0x000036b1);
  static const ERROR_SXS_INVALID_ACTCTXDATA_FORMAT = WIN32_ERROR(0x000036b2);
  static const ERROR_SXS_ASSEMBLY_NOT_FOUND = WIN32_ERROR(0x000036b3);
  static const ERROR_SXS_MANIFEST_FORMAT_ERROR = WIN32_ERROR(0x000036b4);
  static const ERROR_SXS_MANIFEST_PARSE_ERROR = WIN32_ERROR(0x000036b5);
  static const ERROR_SXS_ACTIVATION_CONTEXT_DISABLED = WIN32_ERROR(0x000036b6);
  static const ERROR_SXS_KEY_NOT_FOUND = WIN32_ERROR(0x000036b7);
  static const ERROR_SXS_VERSION_CONFLICT = WIN32_ERROR(0x000036b8);
  static const ERROR_SXS_WRONG_SECTION_TYPE = WIN32_ERROR(0x000036b9);
  static const ERROR_SXS_THREAD_QUERIES_DISABLED = WIN32_ERROR(0x000036ba);
  static const ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET = WIN32_ERROR(0x000036bb);
  static const ERROR_SXS_UNKNOWN_ENCODING_GROUP = WIN32_ERROR(0x000036bc);
  static const ERROR_SXS_UNKNOWN_ENCODING = WIN32_ERROR(0x000036bd);
  static const ERROR_SXS_INVALID_XML_NAMESPACE_URI = WIN32_ERROR(0x000036be);
  static const ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED =
      WIN32_ERROR(0x000036bf);
  static const ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED =
      WIN32_ERROR(0x000036c0);
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE =
      WIN32_ERROR(0x000036c1);
  static const ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(0x000036c2);
  static const ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(0x000036c3);
  static const ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT =
      WIN32_ERROR(0x000036c4);
  static const ERROR_SXS_DUPLICATE_DLL_NAME = WIN32_ERROR(0x000036c5);
  static const ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME = WIN32_ERROR(0x000036c6);
  static const ERROR_SXS_DUPLICATE_CLSID = WIN32_ERROR(0x000036c7);
  static const ERROR_SXS_DUPLICATE_IID = WIN32_ERROR(0x000036c8);
  static const ERROR_SXS_DUPLICATE_TLBID = WIN32_ERROR(0x000036c9);
  static const ERROR_SXS_DUPLICATE_PROGID = WIN32_ERROR(0x000036ca);
  static const ERROR_SXS_DUPLICATE_ASSEMBLY_NAME = WIN32_ERROR(0x000036cb);
  static const ERROR_SXS_FILE_HASH_MISMATCH = WIN32_ERROR(0x000036cc);
  static const ERROR_SXS_POLICY_PARSE_ERROR = WIN32_ERROR(0x000036cd);
  static const ERROR_SXS_XML_E_MISSINGQUOTE = WIN32_ERROR(0x000036ce);
  static const ERROR_SXS_XML_E_COMMENTSYNTAX = WIN32_ERROR(0x000036cf);
  static const ERROR_SXS_XML_E_BADSTARTNAMECHAR = WIN32_ERROR(0x000036d0);
  static const ERROR_SXS_XML_E_BADNAMECHAR = WIN32_ERROR(0x000036d1);
  static const ERROR_SXS_XML_E_BADCHARINSTRING = WIN32_ERROR(0x000036d2);
  static const ERROR_SXS_XML_E_XMLDECLSYNTAX = WIN32_ERROR(0x000036d3);
  static const ERROR_SXS_XML_E_BADCHARDATA = WIN32_ERROR(0x000036d4);
  static const ERROR_SXS_XML_E_MISSINGWHITESPACE = WIN32_ERROR(0x000036d5);
  static const ERROR_SXS_XML_E_EXPECTINGTAGEND = WIN32_ERROR(0x000036d6);
  static const ERROR_SXS_XML_E_MISSINGSEMICOLON = WIN32_ERROR(0x000036d7);
  static const ERROR_SXS_XML_E_UNBALANCEDPAREN = WIN32_ERROR(0x000036d8);
  static const ERROR_SXS_XML_E_INTERNALERROR = WIN32_ERROR(0x000036d9);
  static const ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE = WIN32_ERROR(0x000036da);
  static const ERROR_SXS_XML_E_INCOMPLETE_ENCODING = WIN32_ERROR(0x000036db);
  static const ERROR_SXS_XML_E_MISSING_PAREN = WIN32_ERROR(0x000036dc);
  static const ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE = WIN32_ERROR(0x000036dd);
  static const ERROR_SXS_XML_E_MULTIPLE_COLONS = WIN32_ERROR(0x000036de);
  static const ERROR_SXS_XML_E_INVALID_DECIMAL = WIN32_ERROR(0x000036df);
  static const ERROR_SXS_XML_E_INVALID_HEXIDECIMAL = WIN32_ERROR(0x000036e0);
  static const ERROR_SXS_XML_E_INVALID_UNICODE = WIN32_ERROR(0x000036e1);
  static const ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK =
      WIN32_ERROR(0x000036e2);
  static const ERROR_SXS_XML_E_UNEXPECTEDENDTAG = WIN32_ERROR(0x000036e3);
  static const ERROR_SXS_XML_E_UNCLOSEDTAG = WIN32_ERROR(0x000036e4);
  static const ERROR_SXS_XML_E_DUPLICATEATTRIBUTE = WIN32_ERROR(0x000036e5);
  static const ERROR_SXS_XML_E_MULTIPLEROOTS = WIN32_ERROR(0x000036e6);
  static const ERROR_SXS_XML_E_INVALIDATROOTLEVEL = WIN32_ERROR(0x000036e7);
  static const ERROR_SXS_XML_E_BADXMLDECL = WIN32_ERROR(0x000036e8);
  static const ERROR_SXS_XML_E_MISSINGROOT = WIN32_ERROR(0x000036e9);
  static const ERROR_SXS_XML_E_UNEXPECTEDEOF = WIN32_ERROR(0x000036ea);
  static const ERROR_SXS_XML_E_BADPEREFINSUBSET = WIN32_ERROR(0x000036eb);
  static const ERROR_SXS_XML_E_UNCLOSEDSTARTTAG = WIN32_ERROR(0x000036ec);
  static const ERROR_SXS_XML_E_UNCLOSEDENDTAG = WIN32_ERROR(0x000036ed);
  static const ERROR_SXS_XML_E_UNCLOSEDSTRING = WIN32_ERROR(0x000036ee);
  static const ERROR_SXS_XML_E_UNCLOSEDCOMMENT = WIN32_ERROR(0x000036ef);
  static const ERROR_SXS_XML_E_UNCLOSEDDECL = WIN32_ERROR(0x000036f0);
  static const ERROR_SXS_XML_E_UNCLOSEDCDATA = WIN32_ERROR(0x000036f1);
  static const ERROR_SXS_XML_E_RESERVEDNAMESPACE = WIN32_ERROR(0x000036f2);
  static const ERROR_SXS_XML_E_INVALIDENCODING = WIN32_ERROR(0x000036f3);
  static const ERROR_SXS_XML_E_INVALIDSWITCH = WIN32_ERROR(0x000036f4);
  static const ERROR_SXS_XML_E_BADXMLCASE = WIN32_ERROR(0x000036f5);
  static const ERROR_SXS_XML_E_INVALID_STANDALONE = WIN32_ERROR(0x000036f6);
  static const ERROR_SXS_XML_E_UNEXPECTED_STANDALONE = WIN32_ERROR(0x000036f7);
  static const ERROR_SXS_XML_E_INVALID_VERSION = WIN32_ERROR(0x000036f8);
  static const ERROR_SXS_XML_E_MISSINGEQUALS = WIN32_ERROR(0x000036f9);
  static const ERROR_SXS_PROTECTION_RECOVERY_FAILED = WIN32_ERROR(0x000036fa);
  static const ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT =
      WIN32_ERROR(0x000036fb);
  static const ERROR_SXS_PROTECTION_CATALOG_NOT_VALID = WIN32_ERROR(0x000036fc);
  static const ERROR_SXS_UNTRANSLATABLE_HRESULT = WIN32_ERROR(0x000036fd);
  static const ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING =
      WIN32_ERROR(0x000036fe);
  static const ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE =
      WIN32_ERROR(0x000036ff);
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME =
      WIN32_ERROR(0x00003700);
  static const ERROR_SXS_ASSEMBLY_MISSING = WIN32_ERROR(0x00003701);
  static const ERROR_SXS_CORRUPT_ACTIVATION_STACK = WIN32_ERROR(0x00003702);
  static const ERROR_SXS_CORRUPTION = WIN32_ERROR(0x00003703);
  static const ERROR_SXS_EARLY_DEACTIVATION = WIN32_ERROR(0x00003704);
  static const ERROR_SXS_INVALID_DEACTIVATION = WIN32_ERROR(0x00003705);
  static const ERROR_SXS_MULTIPLE_DEACTIVATION = WIN32_ERROR(0x00003706);
  static const ERROR_SXS_PROCESS_TERMINATION_REQUESTED =
      WIN32_ERROR(0x00003707);
  static const ERROR_SXS_RELEASE_ACTIVATION_CONTEXT = WIN32_ERROR(0x00003708);
  static const ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY =
      WIN32_ERROR(0x00003709);
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE =
      WIN32_ERROR(0x0000370a);
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME =
      WIN32_ERROR(0x0000370b);
  static const ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE = WIN32_ERROR(0x0000370c);
  static const ERROR_SXS_IDENTITY_PARSE_ERROR = WIN32_ERROR(0x0000370d);
  static const ERROR_MALFORMED_SUBSTITUTION_STRING = WIN32_ERROR(0x0000370e);
  static const ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN = WIN32_ERROR(0x0000370f);
  static const ERROR_UNMAPPED_SUBSTITUTION_STRING = WIN32_ERROR(0x00003710);
  static const ERROR_SXS_ASSEMBLY_NOT_LOCKED = WIN32_ERROR(0x00003711);
  static const ERROR_SXS_COMPONENT_STORE_CORRUPT = WIN32_ERROR(0x00003712);
  static const ERROR_ADVANCED_INSTALLER_FAILED = WIN32_ERROR(0x00003713);
  static const ERROR_XML_ENCODING_MISMATCH = WIN32_ERROR(0x00003714);
  static const ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT =
      WIN32_ERROR(0x00003715);
  static const ERROR_SXS_IDENTITIES_DIFFERENT = WIN32_ERROR(0x00003716);
  static const ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT = WIN32_ERROR(0x00003717);
  static const ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY = WIN32_ERROR(0x00003718);
  static const ERROR_SXS_MANIFEST_TOO_BIG = WIN32_ERROR(0x00003719);
  static const ERROR_SXS_SETTING_NOT_REGISTERED = WIN32_ERROR(0x0000371a);
  static const ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE =
      WIN32_ERROR(0x0000371b);
  static const ERROR_SMI_PRIMITIVE_INSTALLER_FAILED = WIN32_ERROR(0x0000371c);
  static const ERROR_GENERIC_COMMAND_FAILED = WIN32_ERROR(0x0000371d);
  static const ERROR_SXS_FILE_HASH_MISSING = WIN32_ERROR(0x0000371e);
  static const ERROR_SXS_DUPLICATE_ACTIVATABLE_CLASS = WIN32_ERROR(0x0000371f);
  static const ERROR_EVT_INVALID_CHANNEL_PATH = WIN32_ERROR(0x00003a98);
  static const ERROR_EVT_INVALID_QUERY = WIN32_ERROR(0x00003a99);
  static const ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND = WIN32_ERROR(0x00003a9a);
  static const ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND = WIN32_ERROR(0x00003a9b);
  static const ERROR_EVT_INVALID_PUBLISHER_NAME = WIN32_ERROR(0x00003a9c);
  static const ERROR_EVT_INVALID_EVENT_DATA = WIN32_ERROR(0x00003a9d);
  static const ERROR_EVT_CHANNEL_NOT_FOUND = WIN32_ERROR(0x00003a9f);
  static const ERROR_EVT_MALFORMED_XML_TEXT = WIN32_ERROR(0x00003aa0);
  static const ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL =
      WIN32_ERROR(0x00003aa1);
  static const ERROR_EVT_CONFIGURATION_ERROR = WIN32_ERROR(0x00003aa2);
  static const ERROR_EVT_QUERY_RESULT_STALE = WIN32_ERROR(0x00003aa3);
  static const ERROR_EVT_QUERY_RESULT_INVALID_POSITION =
      WIN32_ERROR(0x00003aa4);
  static const ERROR_EVT_NON_VALIDATING_MSXML = WIN32_ERROR(0x00003aa5);
  static const ERROR_EVT_FILTER_ALREADYSCOPED = WIN32_ERROR(0x00003aa6);
  static const ERROR_EVT_FILTER_NOTELTSET = WIN32_ERROR(0x00003aa7);
  static const ERROR_EVT_FILTER_INVARG = WIN32_ERROR(0x00003aa8);
  static const ERROR_EVT_FILTER_INVTEST = WIN32_ERROR(0x00003aa9);
  static const ERROR_EVT_FILTER_INVTYPE = WIN32_ERROR(0x00003aaa);
  static const ERROR_EVT_FILTER_PARSEERR = WIN32_ERROR(0x00003aab);
  static const ERROR_EVT_FILTER_UNSUPPORTEDOP = WIN32_ERROR(0x00003aac);
  static const ERROR_EVT_FILTER_UNEXPECTEDTOKEN = WIN32_ERROR(0x00003aad);
  static const ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL =
      WIN32_ERROR(0x00003aae);
  static const ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE =
      WIN32_ERROR(0x00003aaf);
  static const ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE =
      WIN32_ERROR(0x00003ab0);
  static const ERROR_EVT_CHANNEL_CANNOT_ACTIVATE = WIN32_ERROR(0x00003ab1);
  static const ERROR_EVT_FILTER_TOO_COMPLEX = WIN32_ERROR(0x00003ab2);
  static const ERROR_EVT_MESSAGE_NOT_FOUND = WIN32_ERROR(0x00003ab3);
  static const ERROR_EVT_MESSAGE_ID_NOT_FOUND = WIN32_ERROR(0x00003ab4);
  static const ERROR_EVT_UNRESOLVED_VALUE_INSERT = WIN32_ERROR(0x00003ab5);
  static const ERROR_EVT_UNRESOLVED_PARAMETER_INSERT = WIN32_ERROR(0x00003ab6);
  static const ERROR_EVT_MAX_INSERTS_REACHED = WIN32_ERROR(0x00003ab7);
  static const ERROR_EVT_EVENT_DEFINITION_NOT_FOUND = WIN32_ERROR(0x00003ab8);
  static const ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND = WIN32_ERROR(0x00003ab9);
  static const ERROR_EVT_VERSION_TOO_OLD = WIN32_ERROR(0x00003aba);
  static const ERROR_EVT_VERSION_TOO_NEW = WIN32_ERROR(0x00003abb);
  static const ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY = WIN32_ERROR(0x00003abc);
  static const ERROR_EVT_PUBLISHER_DISABLED = WIN32_ERROR(0x00003abd);
  static const ERROR_EVT_FILTER_OUT_OF_RANGE = WIN32_ERROR(0x00003abe);
  static const ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE = WIN32_ERROR(0x00003ae8);
  static const ERROR_EC_LOG_DISABLED = WIN32_ERROR(0x00003ae9);
  static const ERROR_EC_CIRCULAR_FORWARDING = WIN32_ERROR(0x00003aea);
  static const ERROR_EC_CREDSTORE_FULL = WIN32_ERROR(0x00003aeb);
  static const ERROR_EC_CRED_NOT_FOUND = WIN32_ERROR(0x00003aec);
  static const ERROR_EC_NO_ACTIVE_CHANNEL = WIN32_ERROR(0x00003aed);
  static const ERROR_MUI_FILE_NOT_FOUND = WIN32_ERROR(0x00003afc);
  static const ERROR_MUI_INVALID_FILE = WIN32_ERROR(0x00003afd);
  static const ERROR_MUI_INVALID_RC_CONFIG = WIN32_ERROR(0x00003afe);
  static const ERROR_MUI_INVALID_LOCALE_NAME = WIN32_ERROR(0x00003aff);
  static const ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME =
      WIN32_ERROR(0x00003b00);
  static const ERROR_MUI_FILE_NOT_LOADED = WIN32_ERROR(0x00003b01);
  static const ERROR_RESOURCE_ENUM_USER_STOP = WIN32_ERROR(0x00003b02);
  static const ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED =
      WIN32_ERROR(0x00003b03);
  static const ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME =
      WIN32_ERROR(0x00003b04);
  static const ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE =
      WIN32_ERROR(0x00003b06);
  static const ERROR_MRM_INVALID_PRICONFIG = WIN32_ERROR(0x00003b07);
  static const ERROR_MRM_INVALID_FILE_TYPE = WIN32_ERROR(0x00003b08);
  static const ERROR_MRM_UNKNOWN_QUALIFIER = WIN32_ERROR(0x00003b09);
  static const ERROR_MRM_INVALID_QUALIFIER_VALUE = WIN32_ERROR(0x00003b0a);
  static const ERROR_MRM_NO_CANDIDATE = WIN32_ERROR(0x00003b0b);
  static const ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE =
      WIN32_ERROR(0x00003b0c);
  static const ERROR_MRM_RESOURCE_TYPE_MISMATCH = WIN32_ERROR(0x00003b0d);
  static const ERROR_MRM_DUPLICATE_MAP_NAME = WIN32_ERROR(0x00003b0e);
  static const ERROR_MRM_DUPLICATE_ENTRY = WIN32_ERROR(0x00003b0f);
  static const ERROR_MRM_INVALID_RESOURCE_IDENTIFIER = WIN32_ERROR(0x00003b10);
  static const ERROR_MRM_FILEPATH_TOO_LONG = WIN32_ERROR(0x00003b11);
  static const ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE = WIN32_ERROR(0x00003b12);
  static const ERROR_MRM_INVALID_PRI_FILE = WIN32_ERROR(0x00003b16);
  static const ERROR_MRM_NAMED_RESOURCE_NOT_FOUND = WIN32_ERROR(0x00003b17);
  static const ERROR_MRM_MAP_NOT_FOUND = WIN32_ERROR(0x00003b1f);
  static const ERROR_MRM_UNSUPPORTED_PROFILE_TYPE = WIN32_ERROR(0x00003b20);
  static const ERROR_MRM_INVALID_QUALIFIER_OPERATOR = WIN32_ERROR(0x00003b21);
  static const ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE =
      WIN32_ERROR(0x00003b22);
  static const ERROR_MRM_AUTOMERGE_ENABLED = WIN32_ERROR(0x00003b23);
  static const ERROR_MRM_TOO_MANY_RESOURCES = WIN32_ERROR(0x00003b24);
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE =
      WIN32_ERROR(0x00003b25);
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE =
      WIN32_ERROR(0x00003b26);
  static const ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD = WIN32_ERROR(0x00003b27);
  static const ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST =
      WIN32_ERROR(0x00003b28);
  static const ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT =
      WIN32_ERROR(0x00003b29);
  static const ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE =
      WIN32_ERROR(0x00003b2a);
  static const ERROR_MRM_GENERATION_COUNT_MISMATCH = WIN32_ERROR(0x00003b2b);
  static const ERROR_PRI_MERGE_VERSION_MISMATCH = WIN32_ERROR(0x00003b2c);
  static const ERROR_PRI_MERGE_MISSING_SCHEMA = WIN32_ERROR(0x00003b2d);
  static const ERROR_PRI_MERGE_LOAD_FILE_FAILED = WIN32_ERROR(0x00003b2e);
  static const ERROR_PRI_MERGE_ADD_FILE_FAILED = WIN32_ERROR(0x00003b2f);
  static const ERROR_PRI_MERGE_WRITE_FILE_FAILED = WIN32_ERROR(0x00003b30);
  static const ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED =
      WIN32_ERROR(0x00003b31);
  static const ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED =
      WIN32_ERROR(0x00003b32);
  static const ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED =
      WIN32_ERROR(0x00003b33);
  static const ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED = WIN32_ERROR(0x00003b34);
  static const ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED =
      WIN32_ERROR(0x00003b35);
  static const ERROR_PRI_MERGE_INVALID_FILE_NAME = WIN32_ERROR(0x00003b36);
  static const ERROR_MRM_PACKAGE_NOT_FOUND = WIN32_ERROR(0x00003b37);
  static const ERROR_MRM_MISSING_DEFAULT_LANGUAGE = WIN32_ERROR(0x00003b38);
  static const ERROR_MRM_SCOPE_ITEM_CONFLICT = WIN32_ERROR(0x00003b39);
  static const ERROR_MCA_INVALID_CAPABILITIES_STRING = WIN32_ERROR(0x00003b60);
  static const ERROR_MCA_INVALID_VCP_VERSION = WIN32_ERROR(0x00003b61);
  static const ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION =
      WIN32_ERROR(0x00003b62);
  static const ERROR_MCA_MCCS_VERSION_MISMATCH = WIN32_ERROR(0x00003b63);
  static const ERROR_MCA_UNSUPPORTED_MCCS_VERSION = WIN32_ERROR(0x00003b64);
  static const ERROR_MCA_INTERNAL_ERROR = WIN32_ERROR(0x00003b65);
  static const ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED =
      WIN32_ERROR(0x00003b66);
  static const ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE =
      WIN32_ERROR(0x00003b67);
  static const ERROR_AMBIGUOUS_SYSTEM_DEVICE = WIN32_ERROR(0x00003b92);
  static const ERROR_SYSTEM_DEVICE_NOT_FOUND = WIN32_ERROR(0x00003bc3);
  static const ERROR_HASH_NOT_SUPPORTED = WIN32_ERROR(0x00003bc4);
  static const ERROR_HASH_NOT_PRESENT = WIN32_ERROR(0x00003bc5);
  static const ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED =
      WIN32_ERROR(0x00003bd9);
  static const ERROR_GPIO_CLIENT_INFORMATION_INVALID = WIN32_ERROR(0x00003bda);
  static const ERROR_GPIO_VERSION_NOT_SUPPORTED = WIN32_ERROR(0x00003bdb);
  static const ERROR_GPIO_INVALID_REGISTRATION_PACKET = WIN32_ERROR(0x00003bdc);
  static const ERROR_GPIO_OPERATION_DENIED = WIN32_ERROR(0x00003bdd);
  static const ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE = WIN32_ERROR(0x00003bde);
  static const ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED = WIN32_ERROR(0x00003bdf);
  static const ERROR_CANNOT_SWITCH_RUNLEVEL = WIN32_ERROR(0x00003c28);
  static const ERROR_INVALID_RUNLEVEL_SETTING = WIN32_ERROR(0x00003c29);
  static const ERROR_RUNLEVEL_SWITCH_TIMEOUT = WIN32_ERROR(0x00003c2a);
  static const ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT = WIN32_ERROR(0x00003c2b);
  static const ERROR_RUNLEVEL_SWITCH_IN_PROGRESS = WIN32_ERROR(0x00003c2c);
  static const ERROR_SERVICES_FAILED_AUTOSTART = WIN32_ERROR(0x00003c2d);
  static const ERROR_COM_TASK_STOP_PENDING = WIN32_ERROR(0x00003c8d);
  static const ERROR_INSTALL_OPEN_PACKAGE_FAILED = WIN32_ERROR(0x00003cf0);
  static const ERROR_INSTALL_PACKAGE_NOT_FOUND = WIN32_ERROR(0x00003cf1);
  static const ERROR_INSTALL_INVALID_PACKAGE = WIN32_ERROR(0x00003cf2);
  static const ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED =
      WIN32_ERROR(0x00003cf3);
  static const ERROR_INSTALL_OUT_OF_DISK_SPACE = WIN32_ERROR(0x00003cf4);
  static const ERROR_INSTALL_NETWORK_FAILURE = WIN32_ERROR(0x00003cf5);
  static const ERROR_INSTALL_REGISTRATION_FAILURE = WIN32_ERROR(0x00003cf6);
  static const ERROR_INSTALL_DEREGISTRATION_FAILURE = WIN32_ERROR(0x00003cf7);
  static const ERROR_INSTALL_CANCEL = WIN32_ERROR(0x00003cf8);
  static const ERROR_INSTALL_FAILED = WIN32_ERROR(0x00003cf9);
  static const ERROR_REMOVE_FAILED = WIN32_ERROR(0x00003cfa);
  static const ERROR_PACKAGE_ALREADY_EXISTS = WIN32_ERROR(0x00003cfb);
  static const ERROR_NEEDS_REMEDIATION = WIN32_ERROR(0x00003cfc);
  static const ERROR_INSTALL_PREREQUISITE_FAILED = WIN32_ERROR(0x00003cfd);
  static const ERROR_PACKAGE_REPOSITORY_CORRUPTED = WIN32_ERROR(0x00003cfe);
  static const ERROR_INSTALL_POLICY_FAILURE = WIN32_ERROR(0x00003cff);
  static const ERROR_PACKAGE_UPDATING = WIN32_ERROR(0x00003d00);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_POLICY = WIN32_ERROR(0x00003d01);
  static const ERROR_PACKAGES_IN_USE = WIN32_ERROR(0x00003d02);
  static const ERROR_RECOVERY_FILE_CORRUPT = WIN32_ERROR(0x00003d03);
  static const ERROR_INVALID_STAGED_SIGNATURE = WIN32_ERROR(0x00003d04);
  static const ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED =
      WIN32_ERROR(0x00003d05);
  static const ERROR_INSTALL_PACKAGE_DOWNGRADE = WIN32_ERROR(0x00003d06);
  static const ERROR_SYSTEM_NEEDS_REMEDIATION = WIN32_ERROR(0x00003d07);
  static const ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN = WIN32_ERROR(0x00003d08);
  static const ERROR_RESILIENCY_FILE_CORRUPT = WIN32_ERROR(0x00003d09);
  static const ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING =
      WIN32_ERROR(0x00003d0a);
  static const ERROR_PACKAGE_MOVE_FAILED = WIN32_ERROR(0x00003d0b);
  static const ERROR_INSTALL_VOLUME_NOT_EMPTY = WIN32_ERROR(0x00003d0c);
  static const ERROR_INSTALL_VOLUME_OFFLINE = WIN32_ERROR(0x00003d0d);
  static const ERROR_INSTALL_VOLUME_CORRUPT = WIN32_ERROR(0x00003d0e);
  static const ERROR_NEEDS_REGISTRATION = WIN32_ERROR(0x00003d0f);
  static const ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE =
      WIN32_ERROR(0x00003d10);
  static const ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED = WIN32_ERROR(0x00003d11);
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE =
      WIN32_ERROR(0x00003d12);
  static const ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM =
      WIN32_ERROR(0x00003d13);
  static const ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING =
      WIN32_ERROR(0x00003d14);
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE =
      WIN32_ERROR(0x00003d15);
  static const ERROR_PACKAGE_STAGING_ONHOLD = WIN32_ERROR(0x00003d16);
  static const ERROR_INSTALL_INVALID_RELATED_SET_UPDATE =
      WIN32_ERROR(0x00003d17);
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(0x00003d18);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF =
      WIN32_ERROR(0x00003d19);
  static const ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED =
      WIN32_ERROR(0x00003d1a);
  static const ERROR_PACKAGES_REPUTATION_CHECK_FAILED = WIN32_ERROR(0x00003d1b);
  static const ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT =
      WIN32_ERROR(0x00003d1c);
  static const ERROR_DEPLOYMENT_OPTION_NOT_SUPPORTED = WIN32_ERROR(0x00003d1d);
  static const ERROR_APPINSTALLER_ACTIVATION_BLOCKED = WIN32_ERROR(0x00003d1e);
  static const ERROR_REGISTRATION_FROM_REMOTE_DRIVE_NOT_SUPPORTED =
      WIN32_ERROR(0x00003d1f);
  static const ERROR_APPX_RAW_DATA_WRITE_FAILED = WIN32_ERROR(0x00003d20);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_PACKAGE =
      WIN32_ERROR(0x00003d21);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_MACHINE =
      WIN32_ERROR(0x00003d22);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_PROFILE_POLICY =
      WIN32_ERROR(0x00003d23);
  static const ERROR_DEPLOYMENT_FAILED_CONFLICTING_MUTABLE_PACKAGE_DIRECTORY =
      WIN32_ERROR(0x00003d24);
  static const ERROR_SINGLETON_RESOURCE_INSTALLED_IN_ACTIVE_USER =
      WIN32_ERROR(0x00003d25);
  static const ERROR_DIFFERENT_VERSION_OF_PACKAGED_SERVICE_INSTALLED =
      WIN32_ERROR(0x00003d26);
  static const ERROR_SERVICE_EXISTS_AS_NON_PACKAGED_SERVICE =
      WIN32_ERROR(0x00003d27);
  static const ERROR_PACKAGED_SERVICE_REQUIRES_ADMIN_PRIVILEGES =
      WIN32_ERROR(0x00003d28);
  static const ERROR_REDIRECTION_TO_DEFAULT_ACCOUNT_NOT_ALLOWED =
      WIN32_ERROR(0x00003d29);
  static const ERROR_PACKAGE_LACKS_CAPABILITY_TO_DEPLOY_ON_HOST =
      WIN32_ERROR(0x00003d2a);
  static const ERROR_UNSIGNED_PACKAGE_INVALID_CONTENT = WIN32_ERROR(0x00003d2b);
  static const ERROR_UNSIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE =
      WIN32_ERROR(0x00003d2c);
  static const ERROR_SIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE =
      WIN32_ERROR(0x00003d2d);
  static const ERROR_PACKAGE_EXTERNAL_LOCATION_NOT_ALLOWED =
      WIN32_ERROR(0x00003d2e);
  static const ERROR_INSTALL_FULLTRUST_HOSTRUNTIME_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(0x00003d2f);
  static const ERROR_PACKAGE_LACKS_CAPABILITY_FOR_MANDATORY_STARTUPTASKS =
      WIN32_ERROR(0x00003d30);
  static const ERROR_INSTALL_RESOLVE_HOSTRUNTIME_DEPENDENCY_FAILED =
      WIN32_ERROR(0x00003d31);
  static const ERROR_MACHINE_SCOPE_NOT_ALLOWED = WIN32_ERROR(0x00003d32);
  static const ERROR_CLASSIC_COMPAT_MODE_NOT_ALLOWED = WIN32_ERROR(0x00003d33);
  static const ERROR_STAGEFROMUPDATEAGENT_PACKAGE_NOT_APPLICABLE =
      WIN32_ERROR(0x00003d34);
  static const ERROR_PACKAGE_NOT_REGISTERED_FOR_USER = WIN32_ERROR(0x00003d35);
  static const ERROR_PACKAGE_NAME_MISMATCH = WIN32_ERROR(0x00003d36);
  static const ERROR_APPINSTALLER_URI_IN_USE = WIN32_ERROR(0x00003d37);
  static const ERROR_APPINSTALLER_IS_MANAGED_BY_SYSTEM =
      WIN32_ERROR(0x00003d38);
  static const APPMODEL_ERROR_NO_PACKAGE = WIN32_ERROR(0x00003d54);
  static const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = WIN32_ERROR(0x00003d55);
  static const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT =
      WIN32_ERROR(0x00003d56);
  static const APPMODEL_ERROR_NO_APPLICATION = WIN32_ERROR(0x00003d57);
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED =
      WIN32_ERROR(0x00003d58);
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID =
      WIN32_ERROR(0x00003d59);
  static const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = WIN32_ERROR(0x00003d5a);
  static const APPMODEL_ERROR_NO_MUTABLE_DIRECTORY = WIN32_ERROR(0x00003d5b);
  static const ERROR_STATE_LOAD_STORE_FAILED = WIN32_ERROR(0x00003db8);
  static const ERROR_STATE_GET_VERSION_FAILED = WIN32_ERROR(0x00003db9);
  static const ERROR_STATE_SET_VERSION_FAILED = WIN32_ERROR(0x00003dba);
  static const ERROR_STATE_STRUCTURED_RESET_FAILED = WIN32_ERROR(0x00003dbb);
  static const ERROR_STATE_OPEN_CONTAINER_FAILED = WIN32_ERROR(0x00003dbc);
  static const ERROR_STATE_CREATE_CONTAINER_FAILED = WIN32_ERROR(0x00003dbd);
  static const ERROR_STATE_DELETE_CONTAINER_FAILED = WIN32_ERROR(0x00003dbe);
  static const ERROR_STATE_READ_SETTING_FAILED = WIN32_ERROR(0x00003dbf);
  static const ERROR_STATE_WRITE_SETTING_FAILED = WIN32_ERROR(0x00003dc0);
  static const ERROR_STATE_DELETE_SETTING_FAILED = WIN32_ERROR(0x00003dc1);
  static const ERROR_STATE_QUERY_SETTING_FAILED = WIN32_ERROR(0x00003dc2);
  static const ERROR_STATE_READ_COMPOSITE_SETTING_FAILED =
      WIN32_ERROR(0x00003dc3);
  static const ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED =
      WIN32_ERROR(0x00003dc4);
  static const ERROR_STATE_ENUMERATE_CONTAINER_FAILED = WIN32_ERROR(0x00003dc5);
  static const ERROR_STATE_ENUMERATE_SETTINGS_FAILED = WIN32_ERROR(0x00003dc6);
  static const ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(0x00003dc7);
  static const ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(0x00003dc8);
  static const ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(0x00003dc9);
  static const ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(0x00003dca);
  static const ERROR_API_UNAVAILABLE = WIN32_ERROR(0x00003de1);
  static const ERROR_NDIS_INTERFACE_CLOSING = WIN32_ERROR(0x80340002);
  static const ERROR_NDIS_BAD_VERSION = WIN32_ERROR(0x80340004);
  static const ERROR_NDIS_BAD_CHARACTERISTICS = WIN32_ERROR(0x80340005);
  static const ERROR_NDIS_ADAPTER_NOT_FOUND = WIN32_ERROR(0x80340006);
  static const ERROR_NDIS_OPEN_FAILED = WIN32_ERROR(0x80340007);
  static const ERROR_NDIS_DEVICE_FAILED = WIN32_ERROR(0x80340008);
  static const ERROR_NDIS_MULTICAST_FULL = WIN32_ERROR(0x80340009);
  static const ERROR_NDIS_MULTICAST_EXISTS = WIN32_ERROR(0x8034000a);
  static const ERROR_NDIS_MULTICAST_NOT_FOUND = WIN32_ERROR(0x8034000b);
  static const ERROR_NDIS_REQUEST_ABORTED = WIN32_ERROR(0x8034000c);
  static const ERROR_NDIS_RESET_IN_PROGRESS = WIN32_ERROR(0x8034000d);
  static const ERROR_NDIS_NOT_SUPPORTED = WIN32_ERROR(0x803400bb);
  static const ERROR_NDIS_INVALID_PACKET = WIN32_ERROR(0x8034000f);
  static const ERROR_NDIS_ADAPTER_NOT_READY = WIN32_ERROR(0x80340011);
  static const ERROR_NDIS_INVALID_LENGTH = WIN32_ERROR(0x80340014);
  static const ERROR_NDIS_INVALID_DATA = WIN32_ERROR(0x80340015);
  static const ERROR_NDIS_BUFFER_TOO_SHORT = WIN32_ERROR(0x80340016);
  static const ERROR_NDIS_INVALID_OID = WIN32_ERROR(0x80340017);
  static const ERROR_NDIS_ADAPTER_REMOVED = WIN32_ERROR(0x80340018);
  static const ERROR_NDIS_UNSUPPORTED_MEDIA = WIN32_ERROR(0x80340019);
  static const ERROR_NDIS_GROUP_ADDRESS_IN_USE = WIN32_ERROR(0x8034001a);
  static const ERROR_NDIS_FILE_NOT_FOUND = WIN32_ERROR(0x8034001b);
  static const ERROR_NDIS_ERROR_READING_FILE = WIN32_ERROR(0x8034001c);
  static const ERROR_NDIS_ALREADY_MAPPED = WIN32_ERROR(0x8034001d);
  static const ERROR_NDIS_RESOURCE_CONFLICT = WIN32_ERROR(0x8034001e);
  static const ERROR_NDIS_MEDIA_DISCONNECTED = WIN32_ERROR(0x8034001f);
  static const ERROR_NDIS_INVALID_ADDRESS = WIN32_ERROR(0x80340022);
  static const ERROR_NDIS_INVALID_DEVICE_REQUEST = WIN32_ERROR(0x80340010);
  static const ERROR_NDIS_PAUSED = WIN32_ERROR(0x8034002a);
  static const ERROR_NDIS_INTERFACE_NOT_FOUND = WIN32_ERROR(0x8034002b);
  static const ERROR_NDIS_UNSUPPORTED_REVISION = WIN32_ERROR(0x8034002c);
  static const ERROR_NDIS_INVALID_PORT = WIN32_ERROR(0x8034002d);
  static const ERROR_NDIS_INVALID_PORT_STATE = WIN32_ERROR(0x8034002e);
  static const ERROR_NDIS_LOW_POWER_STATE = WIN32_ERROR(0x8034002f);
  static const ERROR_NDIS_REINIT_REQUIRED = WIN32_ERROR(0x80340030);
  static const ERROR_NDIS_NO_QUEUES = WIN32_ERROR(0x80340031);
  static const ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED = WIN32_ERROR(0x80342000);
  static const ERROR_NDIS_DOT11_MEDIA_IN_USE = WIN32_ERROR(0x80342001);
  static const ERROR_NDIS_DOT11_POWER_STATE_INVALID = WIN32_ERROR(0x80342002);
  static const ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL = WIN32_ERROR(0x80342003);
  static const ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL =
      WIN32_ERROR(0x80342004);
  static const ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE =
      WIN32_ERROR(0x80342005);
  static const ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE =
      WIN32_ERROR(0x80342006);
  static const ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED =
      WIN32_ERROR(0x80342007);
  static const ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED = WIN32_ERROR(0x80342008);
  static const ERROR_NDIS_INDICATION_REQUIRED = WIN32_ERROR(0x00340001);
  static const ERROR_NDIS_OFFLOAD_POLICY = WIN32_ERROR(0xc034100f);
  static const ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED = WIN32_ERROR(0xc0341012);
  static const ERROR_NDIS_OFFLOAD_PATH_REJECTED = WIN32_ERROR(0xc0341013);
  static const ERROR_HV_INVALID_HYPERCALL_CODE = WIN32_ERROR(0xc0350002);
  static const ERROR_HV_INVALID_HYPERCALL_INPUT = WIN32_ERROR(0xc0350003);
  static const ERROR_HV_INVALID_ALIGNMENT = WIN32_ERROR(0xc0350004);
  static const ERROR_HV_INVALID_PARAMETER = WIN32_ERROR(0xc0350005);
  static const ERROR_HV_ACCESS_DENIED = WIN32_ERROR(0xc0350006);
  static const ERROR_HV_INVALID_PARTITION_STATE = WIN32_ERROR(0xc0350007);
  static const ERROR_HV_OPERATION_DENIED = WIN32_ERROR(0xc0350008);
  static const ERROR_HV_UNKNOWN_PROPERTY = WIN32_ERROR(0xc0350009);
  static const ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE = WIN32_ERROR(0xc035000a);
  static const ERROR_HV_INSUFFICIENT_MEMORY = WIN32_ERROR(0xc035000b);
  static const ERROR_HV_PARTITION_TOO_DEEP = WIN32_ERROR(0xc035000c);
  static const ERROR_HV_INVALID_PARTITION_ID = WIN32_ERROR(0xc035000d);
  static const ERROR_HV_INVALID_VP_INDEX = WIN32_ERROR(0xc035000e);
  static const ERROR_HV_INVALID_PORT_ID = WIN32_ERROR(0xc0350011);
  static const ERROR_HV_INVALID_CONNECTION_ID = WIN32_ERROR(0xc0350012);
  static const ERROR_HV_INSUFFICIENT_BUFFERS = WIN32_ERROR(0xc0350013);
  static const ERROR_HV_NOT_ACKNOWLEDGED = WIN32_ERROR(0xc0350014);
  static const ERROR_HV_INVALID_VP_STATE = WIN32_ERROR(0xc0350015);
  static const ERROR_HV_ACKNOWLEDGED = WIN32_ERROR(0xc0350016);
  static const ERROR_HV_INVALID_SAVE_RESTORE_STATE = WIN32_ERROR(0xc0350017);
  static const ERROR_HV_INVALID_SYNIC_STATE = WIN32_ERROR(0xc0350018);
  static const ERROR_HV_OBJECT_IN_USE = WIN32_ERROR(0xc0350019);
  static const ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO = WIN32_ERROR(0xc035001a);
  static const ERROR_HV_NO_DATA = WIN32_ERROR(0xc035001b);
  static const ERROR_HV_INACTIVE = WIN32_ERROR(0xc035001c);
  static const ERROR_HV_NO_RESOURCES = WIN32_ERROR(0xc035001d);
  static const ERROR_HV_FEATURE_UNAVAILABLE = WIN32_ERROR(0xc035001e);
  static const ERROR_HV_INSUFFICIENT_BUFFER = WIN32_ERROR(0xc0350033);
  static const ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS = WIN32_ERROR(0xc0350038);
  static const ERROR_HV_CPUID_FEATURE_VALIDATION = WIN32_ERROR(0xc035003c);
  static const ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION =
      WIN32_ERROR(0xc035003d);
  static const ERROR_HV_PROCESSOR_STARTUP_TIMEOUT = WIN32_ERROR(0xc035003e);
  static const ERROR_HV_SMX_ENABLED = WIN32_ERROR(0xc035003f);
  static const ERROR_HV_INVALID_LP_INDEX = WIN32_ERROR(0xc0350041);
  static const ERROR_HV_INVALID_REGISTER_VALUE = WIN32_ERROR(0xc0350050);
  static const ERROR_HV_INVALID_VTL_STATE = WIN32_ERROR(0xc0350051);
  static const ERROR_HV_NX_NOT_DETECTED = WIN32_ERROR(0xc0350055);
  static const ERROR_HV_INVALID_DEVICE_ID = WIN32_ERROR(0xc0350057);
  static const ERROR_HV_INVALID_DEVICE_STATE = WIN32_ERROR(0xc0350058);
  static const ERROR_HV_PENDING_PAGE_REQUESTS = WIN32_ERROR(0x00350059);
  static const ERROR_HV_PAGE_REQUEST_INVALID = WIN32_ERROR(0xc0350060);
  static const ERROR_HV_INVALID_CPU_GROUP_ID = WIN32_ERROR(0xc035006f);
  static const ERROR_HV_INVALID_CPU_GROUP_STATE = WIN32_ERROR(0xc0350070);
  static const ERROR_HV_OPERATION_FAILED = WIN32_ERROR(0xc0350071);
  static const ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE =
      WIN32_ERROR(0xc0350072);
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY = WIN32_ERROR(0xc0350073);
  static const ERROR_HV_EVENT_BUFFER_ALREADY_FREED = WIN32_ERROR(0xc0350074);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY =
      WIN32_ERROR(0xc0350075);
  static const ERROR_HV_DEVICE_NOT_IN_DOMAIN = WIN32_ERROR(0xc0350076);
  static const ERROR_HV_NESTED_VM_EXIT = WIN32_ERROR(0xc0350077);
  static const ERROR_HV_MSR_ACCESS_FAILED = WIN32_ERROR(0xc0350080);
  static const ERROR_HV_INSUFFICIENT_MEMORY_MIRRORING = WIN32_ERROR(0xc0350081);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY_MIRRORING =
      WIN32_ERROR(0xc0350082);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY =
      WIN32_ERROR(0xc0350083);
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY_MIRRORING =
      WIN32_ERROR(0xc0350084);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY_MIRRORING =
      WIN32_ERROR(0xc0350085);
  static const ERROR_HV_NOT_PRESENT = WIN32_ERROR(0xc0351000);
  static const ERROR_VID_DUPLICATE_HANDLER = WIN32_ERROR(0xc0370001);
  static const ERROR_VID_TOO_MANY_HANDLERS = WIN32_ERROR(0xc0370002);
  static const ERROR_VID_QUEUE_FULL = WIN32_ERROR(0xc0370003);
  static const ERROR_VID_HANDLER_NOT_PRESENT = WIN32_ERROR(0xc0370004);
  static const ERROR_VID_INVALID_OBJECT_NAME = WIN32_ERROR(0xc0370005);
  static const ERROR_VID_PARTITION_NAME_TOO_LONG = WIN32_ERROR(0xc0370006);
  static const ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG = WIN32_ERROR(0xc0370007);
  static const ERROR_VID_PARTITION_ALREADY_EXISTS = WIN32_ERROR(0xc0370008);
  static const ERROR_VID_PARTITION_DOES_NOT_EXIST = WIN32_ERROR(0xc0370009);
  static const ERROR_VID_PARTITION_NAME_NOT_FOUND = WIN32_ERROR(0xc037000a);
  static const ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS = WIN32_ERROR(0xc037000b);
  static const ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT = WIN32_ERROR(0xc037000c);
  static const ERROR_VID_MB_STILL_REFERENCED = WIN32_ERROR(0xc037000d);
  static const ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED = WIN32_ERROR(0xc037000e);
  static const ERROR_VID_INVALID_NUMA_SETTINGS = WIN32_ERROR(0xc037000f);
  static const ERROR_VID_INVALID_NUMA_NODE_INDEX = WIN32_ERROR(0xc0370010);
  static const ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED =
      WIN32_ERROR(0xc0370011);
  static const ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE = WIN32_ERROR(0xc0370012);
  static const ERROR_VID_PAGE_RANGE_OVERFLOW = WIN32_ERROR(0xc0370013);
  static const ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE = WIN32_ERROR(0xc0370014);
  static const ERROR_VID_INVALID_GPA_RANGE_HANDLE = WIN32_ERROR(0xc0370015);
  static const ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE =
      WIN32_ERROR(0xc0370016);
  static const ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED =
      WIN32_ERROR(0xc0370017);
  static const ERROR_VID_INVALID_PPM_HANDLE = WIN32_ERROR(0xc0370018);
  static const ERROR_VID_MBPS_ARE_LOCKED = WIN32_ERROR(0xc0370019);
  static const ERROR_VID_MESSAGE_QUEUE_CLOSED = WIN32_ERROR(0xc037001a);
  static const ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED =
      WIN32_ERROR(0xc037001b);
  static const ERROR_VID_STOP_PENDING = WIN32_ERROR(0xc037001c);
  static const ERROR_VID_INVALID_PROCESSOR_STATE = WIN32_ERROR(0xc037001d);
  static const ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT =
      WIN32_ERROR(0xc037001e);
  static const ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED =
      WIN32_ERROR(0xc037001f);
  static const ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET =
      WIN32_ERROR(0xc0370020);
  static const ERROR_VID_MMIO_RANGE_DESTROYED = WIN32_ERROR(0xc0370021);
  static const ERROR_VID_INVALID_CHILD_GPA_PAGE_SET = WIN32_ERROR(0xc0370022);
  static const ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED =
      WIN32_ERROR(0xc0370023);
  static const ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL = WIN32_ERROR(0xc0370024);
  static const ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE =
      WIN32_ERROR(0xc0370025);
  static const ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT = WIN32_ERROR(0xc0370026);
  static const ERROR_VID_SAVED_STATE_CORRUPT = WIN32_ERROR(0xc0370027);
  static const ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM =
      WIN32_ERROR(0xc0370028);
  static const ERROR_VID_SAVED_STATE_INCOMPATIBLE = WIN32_ERROR(0xc0370029);
  static const ERROR_VID_VTL_ACCESS_DENIED = WIN32_ERROR(0xc037002a);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_RESERVE =
      WIN32_ERROR(0xc037002b);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_PHYSICAL_BUFFER =
      WIN32_ERROR(0xc037002c);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_HV_DEPOSIT =
      WIN32_ERROR(0xc037002d);
  static const ERROR_VID_MEMORY_TYPE_NOT_SUPPORTED = WIN32_ERROR(0xc037002e);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_WITHDRAW =
      WIN32_ERROR(0xc037002f);
  static const ERROR_VID_PROCESS_ALREADY_SET = WIN32_ERROR(0xc0370030);
  static const ERROR_VMCOMPUTE_TERMINATED_DURING_START =
      WIN32_ERROR(0xc0370100);
  static const ERROR_VMCOMPUTE_IMAGE_MISMATCH = WIN32_ERROR(0xc0370101);
  static const ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED = WIN32_ERROR(0xc0370102);
  static const ERROR_VMCOMPUTE_OPERATION_PENDING = WIN32_ERROR(0xc0370103);
  static const ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS = WIN32_ERROR(0xc0370104);
  static const ERROR_VMCOMPUTE_INVALID_STATE = WIN32_ERROR(0xc0370105);
  static const ERROR_VMCOMPUTE_UNEXPECTED_EXIT = WIN32_ERROR(0xc0370106);
  static const ERROR_VMCOMPUTE_TERMINATED = WIN32_ERROR(0xc0370107);
  static const ERROR_VMCOMPUTE_CONNECT_FAILED = WIN32_ERROR(0xc0370108);
  static const ERROR_VMCOMPUTE_TIMEOUT = WIN32_ERROR(0xc0370109);
  static const ERROR_VMCOMPUTE_CONNECTION_CLOSED = WIN32_ERROR(0xc037010a);
  static const ERROR_VMCOMPUTE_UNKNOWN_MESSAGE = WIN32_ERROR(0xc037010b);
  static const ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION =
      WIN32_ERROR(0xc037010c);
  static const ERROR_VMCOMPUTE_INVALID_JSON = WIN32_ERROR(0xc037010d);
  static const ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND = WIN32_ERROR(0xc037010e);
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS = WIN32_ERROR(0xc037010f);
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED = WIN32_ERROR(0xc0370110);
  static const ERROR_VMCOMPUTE_PROTOCOL_ERROR = WIN32_ERROR(0xc0370111);
  static const ERROR_VMCOMPUTE_INVALID_LAYER = WIN32_ERROR(0xc0370112);
  static const ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED =
      WIN32_ERROR(0xc0370113);
  static const ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND =
      WIN32_ERROR(0xc0370200);
  static const ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED =
      WIN32_ERROR(0x80370001);
  static const ERROR_VSMB_SAVED_STATE_FILE_NOT_FOUND = WIN32_ERROR(0xc0370400);
  static const ERROR_VSMB_SAVED_STATE_CORRUPT = WIN32_ERROR(0xc0370401);
  static const ERROR_VOLMGR_INCOMPLETE_REGENERATION = WIN32_ERROR(0x80380001);
  static const ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION = WIN32_ERROR(0x80380002);
  static const ERROR_VOLMGR_DATABASE_FULL = WIN32_ERROR(0xc0380001);
  static const ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED =
      WIN32_ERROR(0xc0380002);
  static const ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC =
      WIN32_ERROR(0xc0380003);
  static const ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED = WIN32_ERROR(0xc0380004);
  static const ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME =
      WIN32_ERROR(0xc0380005);
  static const ERROR_VOLMGR_DISK_DUPLICATE = WIN32_ERROR(0xc0380006);
  static const ERROR_VOLMGR_DISK_DYNAMIC = WIN32_ERROR(0xc0380007);
  static const ERROR_VOLMGR_DISK_ID_INVALID = WIN32_ERROR(0xc0380008);
  static const ERROR_VOLMGR_DISK_INVALID = WIN32_ERROR(0xc0380009);
  static const ERROR_VOLMGR_DISK_LAST_VOTER = WIN32_ERROR(0xc038000a);
  static const ERROR_VOLMGR_DISK_LAYOUT_INVALID = WIN32_ERROR(0xc038000b);
  static const ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS =
      WIN32_ERROR(0xc038000c);
  static const ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED =
      WIN32_ERROR(0xc038000d);
  static const ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL =
      WIN32_ERROR(0xc038000e);
  static const ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS =
      WIN32_ERROR(0xc038000f);
  static const ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS =
      WIN32_ERROR(0xc0380010);
  static const ERROR_VOLMGR_DISK_MISSING = WIN32_ERROR(0xc0380011);
  static const ERROR_VOLMGR_DISK_NOT_EMPTY = WIN32_ERROR(0xc0380012);
  static const ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE = WIN32_ERROR(0xc0380013);
  static const ERROR_VOLMGR_DISK_REVECTORING_FAILED = WIN32_ERROR(0xc0380014);
  static const ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID = WIN32_ERROR(0xc0380015);
  static const ERROR_VOLMGR_DISK_SET_NOT_CONTAINED = WIN32_ERROR(0xc0380016);
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS =
      WIN32_ERROR(0xc0380017);
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES =
      WIN32_ERROR(0xc0380018);
  static const ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED =
      WIN32_ERROR(0xc0380019);
  static const ERROR_VOLMGR_EXTENT_ALREADY_USED = WIN32_ERROR(0xc038001a);
  static const ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS = WIN32_ERROR(0xc038001b);
  static const ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION =
      WIN32_ERROR(0xc038001c);
  static const ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED = WIN32_ERROR(0xc038001d);
  static const ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION =
      WIN32_ERROR(0xc038001e);
  static const ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH =
      WIN32_ERROR(0xc038001f);
  static const ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED =
      WIN32_ERROR(0xc0380020);
  static const ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID = WIN32_ERROR(0xc0380021);
  static const ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS = WIN32_ERROR(0xc0380022);
  static const ERROR_VOLMGR_MEMBER_IN_SYNC = WIN32_ERROR(0xc0380023);
  static const ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE = WIN32_ERROR(0xc0380024);
  static const ERROR_VOLMGR_MEMBER_INDEX_INVALID = WIN32_ERROR(0xc0380025);
  static const ERROR_VOLMGR_MEMBER_MISSING = WIN32_ERROR(0xc0380026);
  static const ERROR_VOLMGR_MEMBER_NOT_DETACHED = WIN32_ERROR(0xc0380027);
  static const ERROR_VOLMGR_MEMBER_REGENERATING = WIN32_ERROR(0xc0380028);
  static const ERROR_VOLMGR_ALL_DISKS_FAILED = WIN32_ERROR(0xc0380029);
  static const ERROR_VOLMGR_NO_REGISTERED_USERS = WIN32_ERROR(0xc038002a);
  static const ERROR_VOLMGR_NO_SUCH_USER = WIN32_ERROR(0xc038002b);
  static const ERROR_VOLMGR_NOTIFICATION_RESET = WIN32_ERROR(0xc038002c);
  static const ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID = WIN32_ERROR(0xc038002d);
  static const ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID = WIN32_ERROR(0xc038002e);
  static const ERROR_VOLMGR_PACK_DUPLICATE = WIN32_ERROR(0xc038002f);
  static const ERROR_VOLMGR_PACK_ID_INVALID = WIN32_ERROR(0xc0380030);
  static const ERROR_VOLMGR_PACK_INVALID = WIN32_ERROR(0xc0380031);
  static const ERROR_VOLMGR_PACK_NAME_INVALID = WIN32_ERROR(0xc0380032);
  static const ERROR_VOLMGR_PACK_OFFLINE = WIN32_ERROR(0xc0380033);
  static const ERROR_VOLMGR_PACK_HAS_QUORUM = WIN32_ERROR(0xc0380034);
  static const ERROR_VOLMGR_PACK_WITHOUT_QUORUM = WIN32_ERROR(0xc0380035);
  static const ERROR_VOLMGR_PARTITION_STYLE_INVALID = WIN32_ERROR(0xc0380036);
  static const ERROR_VOLMGR_PARTITION_UPDATE_FAILED = WIN32_ERROR(0xc0380037);
  static const ERROR_VOLMGR_PLEX_IN_SYNC = WIN32_ERROR(0xc0380038);
  static const ERROR_VOLMGR_PLEX_INDEX_DUPLICATE = WIN32_ERROR(0xc0380039);
  static const ERROR_VOLMGR_PLEX_INDEX_INVALID = WIN32_ERROR(0xc038003a);
  static const ERROR_VOLMGR_PLEX_LAST_ACTIVE = WIN32_ERROR(0xc038003b);
  static const ERROR_VOLMGR_PLEX_MISSING = WIN32_ERROR(0xc038003c);
  static const ERROR_VOLMGR_PLEX_REGENERATING = WIN32_ERROR(0xc038003d);
  static const ERROR_VOLMGR_PLEX_TYPE_INVALID = WIN32_ERROR(0xc038003e);
  static const ERROR_VOLMGR_PLEX_NOT_RAID5 = WIN32_ERROR(0xc038003f);
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE = WIN32_ERROR(0xc0380040);
  static const ERROR_VOLMGR_STRUCTURE_SIZE_INVALID = WIN32_ERROR(0xc0380041);
  static const ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS =
      WIN32_ERROR(0xc0380042);
  static const ERROR_VOLMGR_TRANSACTION_IN_PROGRESS = WIN32_ERROR(0xc0380043);
  static const ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE =
      WIN32_ERROR(0xc0380044);
  static const ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK =
      WIN32_ERROR(0xc0380045);
  static const ERROR_VOLMGR_VOLUME_ID_INVALID = WIN32_ERROR(0xc0380046);
  static const ERROR_VOLMGR_VOLUME_LENGTH_INVALID = WIN32_ERROR(0xc0380047);
  static const ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE =
      WIN32_ERROR(0xc0380048);
  static const ERROR_VOLMGR_VOLUME_NOT_MIRRORED = WIN32_ERROR(0xc0380049);
  static const ERROR_VOLMGR_VOLUME_NOT_RETAINED = WIN32_ERROR(0xc038004a);
  static const ERROR_VOLMGR_VOLUME_OFFLINE = WIN32_ERROR(0xc038004b);
  static const ERROR_VOLMGR_VOLUME_RETAINED = WIN32_ERROR(0xc038004c);
  static const ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID = WIN32_ERROR(0xc038004d);
  static const ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE = WIN32_ERROR(0xc038004e);
  static const ERROR_VOLMGR_BAD_BOOT_DISK = WIN32_ERROR(0xc038004f);
  static const ERROR_VOLMGR_PACK_CONFIG_OFFLINE = WIN32_ERROR(0xc0380050);
  static const ERROR_VOLMGR_PACK_CONFIG_ONLINE = WIN32_ERROR(0xc0380051);
  static const ERROR_VOLMGR_NOT_PRIMARY_PACK = WIN32_ERROR(0xc0380052);
  static const ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED = WIN32_ERROR(0xc0380053);
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID =
      WIN32_ERROR(0xc0380054);
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID =
      WIN32_ERROR(0xc0380055);
  static const ERROR_VOLMGR_VOLUME_MIRRORED = WIN32_ERROR(0xc0380056);
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED = WIN32_ERROR(0xc0380057);
  static const ERROR_VOLMGR_NO_VALID_LOG_COPIES = WIN32_ERROR(0xc0380058);
  static const ERROR_VOLMGR_PRIMARY_PACK_PRESENT = WIN32_ERROR(0xc0380059);
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID = WIN32_ERROR(0xc038005a);
  static const ERROR_VOLMGR_MIRROR_NOT_SUPPORTED = WIN32_ERROR(0xc038005b);
  static const ERROR_VOLMGR_RAID5_NOT_SUPPORTED = WIN32_ERROR(0xc038005c);
  static const ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED = WIN32_ERROR(0x80390001);
  static const ERROR_BCD_TOO_MANY_ELEMENTS = WIN32_ERROR(0xc0390002);
  static const ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED = WIN32_ERROR(0x80390003);
  static const ERROR_VHD_DRIVE_FOOTER_MISSING = WIN32_ERROR(0xc03a0001);
  static const ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH =
      WIN32_ERROR(0xc03a0002);
  static const ERROR_VHD_DRIVE_FOOTER_CORRUPT = WIN32_ERROR(0xc03a0003);
  static const ERROR_VHD_FORMAT_UNKNOWN = WIN32_ERROR(0xc03a0004);
  static const ERROR_VHD_FORMAT_UNSUPPORTED_VERSION = WIN32_ERROR(0xc03a0005);
  static const ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH =
      WIN32_ERROR(0xc03a0006);
  static const ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION =
      WIN32_ERROR(0xc03a0007);
  static const ERROR_VHD_SPARSE_HEADER_CORRUPT = WIN32_ERROR(0xc03a0008);
  static const ERROR_VHD_BLOCK_ALLOCATION_FAILURE = WIN32_ERROR(0xc03a0009);
  static const ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT =
      WIN32_ERROR(0xc03a000a);
  static const ERROR_VHD_INVALID_BLOCK_SIZE = WIN32_ERROR(0xc03a000b);
  static const ERROR_VHD_BITMAP_MISMATCH = WIN32_ERROR(0xc03a000c);
  static const ERROR_VHD_PARENT_VHD_NOT_FOUND = WIN32_ERROR(0xc03a000d);
  static const ERROR_VHD_CHILD_PARENT_ID_MISMATCH = WIN32_ERROR(0xc03a000e);
  static const ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH =
      WIN32_ERROR(0xc03a000f);
  static const ERROR_VHD_METADATA_READ_FAILURE = WIN32_ERROR(0xc03a0010);
  static const ERROR_VHD_METADATA_WRITE_FAILURE = WIN32_ERROR(0xc03a0011);
  static const ERROR_VHD_INVALID_SIZE = WIN32_ERROR(0xc03a0012);
  static const ERROR_VHD_INVALID_FILE_SIZE = WIN32_ERROR(0xc03a0013);
  static const ERROR_VIRTDISK_PROVIDER_NOT_FOUND = WIN32_ERROR(0xc03a0014);
  static const ERROR_VIRTDISK_NOT_VIRTUAL_DISK = WIN32_ERROR(0xc03a0015);
  static const ERROR_VHD_PARENT_VHD_ACCESS_DENIED = WIN32_ERROR(0xc03a0016);
  static const ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH = WIN32_ERROR(0xc03a0017);
  static const ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED =
      WIN32_ERROR(0xc03a0018);
  static const ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT =
      WIN32_ERROR(0xc03a0019);
  static const ERROR_VIRTUAL_DISK_LIMITATION = WIN32_ERROR(0xc03a001a);
  static const ERROR_VHD_INVALID_TYPE = WIN32_ERROR(0xc03a001b);
  static const ERROR_VHD_INVALID_STATE = WIN32_ERROR(0xc03a001c);
  static const ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE =
      WIN32_ERROR(0xc03a001d);
  static const ERROR_VIRTDISK_DISK_ALREADY_OWNED = WIN32_ERROR(0xc03a001e);
  static const ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE =
      WIN32_ERROR(0xc03a001f);
  static const ERROR_CTLOG_TRACKING_NOT_INITIALIZED = WIN32_ERROR(0xc03a0020);
  static const ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE =
      WIN32_ERROR(0xc03a0021);
  static const ERROR_CTLOG_VHD_CHANGED_OFFLINE = WIN32_ERROR(0xc03a0022);
  static const ERROR_CTLOG_INVALID_TRACKING_STATE = WIN32_ERROR(0xc03a0023);
  static const ERROR_CTLOG_INCONSISTENT_TRACKING_FILE = WIN32_ERROR(0xc03a0024);
  static const ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA = WIN32_ERROR(0xc03a0025);
  static const ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE =
      WIN32_ERROR(0xc03a0026);
  static const ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE =
      WIN32_ERROR(0xc03a0027);
  static const ERROR_VHD_METADATA_FULL = WIN32_ERROR(0xc03a0028);
  static const ERROR_VHD_INVALID_CHANGE_TRACKING_ID = WIN32_ERROR(0xc03a0029);
  static const ERROR_VHD_CHANGE_TRACKING_DISABLED = WIN32_ERROR(0xc03a002a);
  static const ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION =
      WIN32_ERROR(0xc03a0030);
  static const ERROR_VHD_UNEXPECTED_ID = WIN32_ERROR(0xc03a0034);
  static const ERROR_QUERY_STORAGE_ERROR = WIN32_ERROR(0x803a0001);
}

/// {@category enum}
extension type const WINDOWPLACEMENT_FLAGS(int _) implements int {
  static const WPF_ASYNCWINDOWPLACEMENT = WINDOWPLACEMENT_FLAGS(0x00000004);
  static const WPF_RESTORETOMAXIMIZED = WINDOWPLACEMENT_FLAGS(0x00000002);
  static const WPF_SETMINPOSITION = WINDOWPLACEMENT_FLAGS(0x00000001);
}

/// {@category enum}
extension type const WINDOWS_HOOK_ID(int _) implements int {
  static const WH_CALLWNDPROC = WINDOWS_HOOK_ID(0x00000004);
  static const WH_CALLWNDPROCRET = WINDOWS_HOOK_ID(0x0000000c);
  static const WH_CBT = WINDOWS_HOOK_ID(0x00000005);
  static const WH_DEBUG = WINDOWS_HOOK_ID(0x00000009);
  static const WH_FOREGROUNDIDLE = WINDOWS_HOOK_ID(0x0000000b);
  static const WH_GETMESSAGE = WINDOWS_HOOK_ID(0x00000003);
  static const WH_JOURNALPLAYBACK = WINDOWS_HOOK_ID(0x00000001);
  static const WH_JOURNALRECORD = WINDOWS_HOOK_ID(0x00000000);
  static const WH_KEYBOARD = WINDOWS_HOOK_ID(0x00000002);
  static const WH_KEYBOARD_LL = WINDOWS_HOOK_ID(0x0000000d);
  static const WH_MOUSE = WINDOWS_HOOK_ID(0x00000007);
  static const WH_MOUSE_LL = WINDOWS_HOOK_ID(0x0000000e);
  static const WH_MSGFILTER = WINDOWS_HOOK_ID(0xffffffff);
  static const WH_SHELL = WINDOWS_HOOK_ID(0x0000000a);
  static const WH_SYSMSGFILTER = WINDOWS_HOOK_ID(0x00000006);
}

/// {@category enum}
extension type const WINDOWTHEMEATTRIBUTETYPE(int _) implements int {
  static const WTA_NONCLIENT = WINDOWTHEMEATTRIBUTETYPE(0x00000001);
}

/// {@category enum}
extension type const WINDOW_DISPLAY_AFFINITY(int _) implements int {
  static const WDA_NONE = WINDOW_DISPLAY_AFFINITY(0x00000000);
  static const WDA_MONITOR = WINDOW_DISPLAY_AFFINITY(0x00000001);
  static const WDA_EXCLUDEFROMCAPTURE = WINDOW_DISPLAY_AFFINITY(0x00000011);
}

/// {@category enum}
extension type const WINDOW_EX_STYLE(int _) implements int {
  static const WS_EX_DLGMODALFRAME = WINDOW_EX_STYLE(0x00000001);
  static const WS_EX_NOPARENTNOTIFY = WINDOW_EX_STYLE(0x00000004);
  static const WS_EX_TOPMOST = WINDOW_EX_STYLE(0x00000008);
  static const WS_EX_ACCEPTFILES = WINDOW_EX_STYLE(0x00000010);
  static const WS_EX_TRANSPARENT = WINDOW_EX_STYLE(0x00000020);
  static const WS_EX_MDICHILD = WINDOW_EX_STYLE(0x00000040);
  static const WS_EX_TOOLWINDOW = WINDOW_EX_STYLE(0x00000080);
  static const WS_EX_WINDOWEDGE = WINDOW_EX_STYLE(0x00000100);
  static const WS_EX_CLIENTEDGE = WINDOW_EX_STYLE(0x00000200);
  static const WS_EX_CONTEXTHELP = WINDOW_EX_STYLE(0x00000400);
  static const WS_EX_RIGHT = WINDOW_EX_STYLE(0x00001000);
  static const WS_EX_LEFT = WINDOW_EX_STYLE(0x00000000);
  static const WS_EX_RTLREADING = WINDOW_EX_STYLE(0x00002000);
  static const WS_EX_LTRREADING = WINDOW_EX_STYLE(0x00000000);
  static const WS_EX_LEFTSCROLLBAR = WINDOW_EX_STYLE(0x00004000);
  static const WS_EX_RIGHTSCROLLBAR = WINDOW_EX_STYLE(0x00000000);
  static const WS_EX_CONTROLPARENT = WINDOW_EX_STYLE(0x00010000);
  static const WS_EX_STATICEDGE = WINDOW_EX_STYLE(0x00020000);
  static const WS_EX_APPWINDOW = WINDOW_EX_STYLE(0x00040000);
  static const WS_EX_OVERLAPPEDWINDOW = WINDOW_EX_STYLE(0x00000300);
  static const WS_EX_PALETTEWINDOW = WINDOW_EX_STYLE(0x00000188);
  static const WS_EX_LAYERED = WINDOW_EX_STYLE(0x00080000);
  static const WS_EX_NOINHERITLAYOUT = WINDOW_EX_STYLE(0x00100000);
  static const WS_EX_NOREDIRECTIONBITMAP = WINDOW_EX_STYLE(0x00200000);
  static const WS_EX_LAYOUTRTL = WINDOW_EX_STYLE(0x00400000);
  static const WS_EX_COMPOSITED = WINDOW_EX_STYLE(0x02000000);
  static const WS_EX_NOACTIVATE = WINDOW_EX_STYLE(0x08000000);
}

/// {@category enum}
extension type const WINDOW_LONG_PTR_INDEX(int _) implements int {
  static const GWL_EXSTYLE = WINDOW_LONG_PTR_INDEX(0xffffffec);
  static const GWLP_HINSTANCE = WINDOW_LONG_PTR_INDEX(0xfffffffa);
  static const GWLP_HWNDPARENT = WINDOW_LONG_PTR_INDEX(0xfffffff8);
  static const GWLP_ID = WINDOW_LONG_PTR_INDEX(0xfffffff4);
  static const GWL_STYLE = WINDOW_LONG_PTR_INDEX(0xfffffff0);
  static const GWLP_USERDATA = WINDOW_LONG_PTR_INDEX(0xffffffeb);
  static const GWLP_WNDPROC = WINDOW_LONG_PTR_INDEX(0xfffffffc);
  static const GWL_HINSTANCE = WINDOW_LONG_PTR_INDEX(0xfffffffa);
  static const GWL_ID = WINDOW_LONG_PTR_INDEX(0xfffffff4);
  static const GWL_USERDATA = WINDOW_LONG_PTR_INDEX(0xffffffeb);
  static const GWL_WNDPROC = WINDOW_LONG_PTR_INDEX(0xfffffffc);
  static const GWL_HWNDPARENT = WINDOW_LONG_PTR_INDEX(0xfffffff8);
}

/// {@category enum}
extension type const WINDOW_MESSAGE_FILTER_ACTION(int _) implements int {
  static const MSGFLT_ALLOW = WINDOW_MESSAGE_FILTER_ACTION(0x00000001);
  static const MSGFLT_DISALLOW = WINDOW_MESSAGE_FILTER_ACTION(0x00000002);
  static const MSGFLT_RESET = WINDOW_MESSAGE_FILTER_ACTION(0x00000000);
}

/// {@category enum}
extension type const WINDOW_STYLE(int _) implements int {
  static const WS_OVERLAPPED = WINDOW_STYLE(0x00000000);
  static const WS_POPUP = WINDOW_STYLE(0x80000000);
  static const WS_CHILD = WINDOW_STYLE(0x40000000);
  static const WS_MINIMIZE = WINDOW_STYLE(0x20000000);
  static const WS_VISIBLE = WINDOW_STYLE(0x10000000);
  static const WS_DISABLED = WINDOW_STYLE(0x08000000);
  static const WS_CLIPSIBLINGS = WINDOW_STYLE(0x04000000);
  static const WS_CLIPCHILDREN = WINDOW_STYLE(0x02000000);
  static const WS_MAXIMIZE = WINDOW_STYLE(0x01000000);
  static const WS_CAPTION = WINDOW_STYLE(0x00c00000);
  static const WS_BORDER = WINDOW_STYLE(0x00800000);
  static const WS_DLGFRAME = WINDOW_STYLE(0x00400000);
  static const WS_VSCROLL = WINDOW_STYLE(0x00200000);
  static const WS_HSCROLL = WINDOW_STYLE(0x00100000);
  static const WS_SYSMENU = WINDOW_STYLE(0x00080000);
  static const WS_THICKFRAME = WINDOW_STYLE(0x00040000);
  static const WS_GROUP = WINDOW_STYLE(0x00020000);
  static const WS_TABSTOP = WINDOW_STYLE(0x00010000);
  static const WS_MINIMIZEBOX = WINDOW_STYLE(0x00020000);
  static const WS_MAXIMIZEBOX = WINDOW_STYLE(0x00010000);
  static const WS_TILED = WINDOW_STYLE(0x00000000);
  static const WS_ICONIC = WINDOW_STYLE(0x20000000);
  static const WS_SIZEBOX = WINDOW_STYLE(0x00040000);
  static const WS_TILEDWINDOW = WINDOW_STYLE(0x00cf0000);
  static const WS_OVERLAPPEDWINDOW = WINDOW_STYLE(0x00cf0000);
  static const WS_POPUPWINDOW = WINDOW_STYLE(0x80880000);
  static const WS_CHILDWINDOW = WINDOW_STYLE(0x40000000);
  static const WS_ACTIVECAPTION = WINDOW_STYLE(0x00000001);
}

/// {@category enum}
extension type const WINSOCK_SHUTDOWN_HOW(int _) implements int {
  static const SD_RECEIVE = WINSOCK_SHUTDOWN_HOW(0x00000000);
  static const SD_SEND = WINSOCK_SHUTDOWN_HOW(0x00000001);
  static const SD_BOTH = WINSOCK_SHUTDOWN_HOW(0x00000002);
}

/// {@category enum}
extension type const WINSOCK_SOCKET_TYPE(int _) implements int {
  static const SOCK_STREAM = WINSOCK_SOCKET_TYPE(0x00000001);
  static const SOCK_DGRAM = WINSOCK_SOCKET_TYPE(0x00000002);
  static const SOCK_RAW = WINSOCK_SOCKET_TYPE(0x00000003);
  static const SOCK_RDM = WINSOCK_SOCKET_TYPE(0x00000004);
  static const SOCK_SEQPACKET = WINSOCK_SOCKET_TYPE(0x00000005);
}

/// {@category enum}
extension type const WLAN_AUTOCONF_OPCODE(int _) implements int {
  static const wlan_autoconf_opcode_start = WLAN_AUTOCONF_OPCODE(0x00000000);
  static const wlan_autoconf_opcode_show_denied_networks =
      WLAN_AUTOCONF_OPCODE(0x00000001);
  static const wlan_autoconf_opcode_power_setting =
      WLAN_AUTOCONF_OPCODE(0x00000002);
  static const wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks =
      WLAN_AUTOCONF_OPCODE(0x00000003);
  static const wlan_autoconf_opcode_allow_explicit_creds =
      WLAN_AUTOCONF_OPCODE(0x00000004);
  static const wlan_autoconf_opcode_block_period =
      WLAN_AUTOCONF_OPCODE(0x00000005);
  static const wlan_autoconf_opcode_allow_virtual_station_extensibility =
      WLAN_AUTOCONF_OPCODE(0x00000006);
  static const wlan_autoconf_opcode_end = WLAN_AUTOCONF_OPCODE(0x00000007);
}

/// {@category enum}
extension type const WLAN_CONNECTION_MODE(int _) implements int {
  static const wlan_connection_mode_profile = WLAN_CONNECTION_MODE(0x00000000);
  static const wlan_connection_mode_temporary_profile =
      WLAN_CONNECTION_MODE(0x00000001);
  static const wlan_connection_mode_discovery_secure =
      WLAN_CONNECTION_MODE(0x00000002);
  static const wlan_connection_mode_discovery_unsecure =
      WLAN_CONNECTION_MODE(0x00000003);
  static const wlan_connection_mode_auto = WLAN_CONNECTION_MODE(0x00000004);
  static const wlan_connection_mode_invalid = WLAN_CONNECTION_MODE(0x00000005);
}

/// {@category enum}
extension type const WLAN_CONNECTION_NOTIFICATION_FLAGS(int _) implements int {
  static const WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED =
      WLAN_CONNECTION_NOTIFICATION_FLAGS(0x00000001);
  static const WLAN_CONNECTION_NOTIFICATION_CONSOLE_USER_PROFILE =
      WLAN_CONNECTION_NOTIFICATION_FLAGS(0x00000004);
}

/// {@category enum}
extension type const WLAN_FILTER_LIST_TYPE(int _) implements int {
  static const wlan_filter_list_type_gp_permit =
      WLAN_FILTER_LIST_TYPE(0x00000000);
  static const wlan_filter_list_type_gp_deny =
      WLAN_FILTER_LIST_TYPE(0x00000001);
  static const wlan_filter_list_type_user_permit =
      WLAN_FILTER_LIST_TYPE(0x00000002);
  static const wlan_filter_list_type_user_deny =
      WLAN_FILTER_LIST_TYPE(0x00000003);
}

/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_OPCODE(int _) implements int {
  static const wlan_hosted_network_opcode_connection_settings =
      WLAN_HOSTED_NETWORK_OPCODE(0x00000000);
  static const wlan_hosted_network_opcode_security_settings =
      WLAN_HOSTED_NETWORK_OPCODE(0x00000001);
  static const wlan_hosted_network_opcode_station_profile =
      WLAN_HOSTED_NETWORK_OPCODE(0x00000002);
  static const wlan_hosted_network_opcode_enable =
      WLAN_HOSTED_NETWORK_OPCODE(0x00000003);
}

/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(int _) implements int {
  static const wlan_hosted_network_peer_state_invalid =
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(0x00000000);
  static const wlan_hosted_network_peer_state_authenticated =
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(0x00000001);
}

/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_REASON(int _) implements int {
  static const wlan_hosted_network_reason_success =
      WLAN_HOSTED_NETWORK_REASON(0x00000000);
  static const wlan_hosted_network_reason_unspecified =
      WLAN_HOSTED_NETWORK_REASON(0x00000001);
  static const wlan_hosted_network_reason_bad_parameters =
      WLAN_HOSTED_NETWORK_REASON(0x00000002);
  static const wlan_hosted_network_reason_service_shutting_down =
      WLAN_HOSTED_NETWORK_REASON(0x00000003);
  static const wlan_hosted_network_reason_insufficient_resources =
      WLAN_HOSTED_NETWORK_REASON(0x00000004);
  static const wlan_hosted_network_reason_elevation_required =
      WLAN_HOSTED_NETWORK_REASON(0x00000005);
  static const wlan_hosted_network_reason_read_only =
      WLAN_HOSTED_NETWORK_REASON(0x00000006);
  static const wlan_hosted_network_reason_persistence_failed =
      WLAN_HOSTED_NETWORK_REASON(0x00000007);
  static const wlan_hosted_network_reason_crypt_error =
      WLAN_HOSTED_NETWORK_REASON(0x00000008);
  static const wlan_hosted_network_reason_impersonation =
      WLAN_HOSTED_NETWORK_REASON(0x00000009);
  static const wlan_hosted_network_reason_stop_before_start =
      WLAN_HOSTED_NETWORK_REASON(0x0000000a);
  static const wlan_hosted_network_reason_interface_available =
      WLAN_HOSTED_NETWORK_REASON(0x0000000b);
  static const wlan_hosted_network_reason_interface_unavailable =
      WLAN_HOSTED_NETWORK_REASON(0x0000000c);
  static const wlan_hosted_network_reason_miniport_stopped =
      WLAN_HOSTED_NETWORK_REASON(0x0000000d);
  static const wlan_hosted_network_reason_miniport_started =
      WLAN_HOSTED_NETWORK_REASON(0x0000000e);
  static const wlan_hosted_network_reason_incompatible_connection_started =
      WLAN_HOSTED_NETWORK_REASON(0x0000000f);
  static const wlan_hosted_network_reason_incompatible_connection_stopped =
      WLAN_HOSTED_NETWORK_REASON(0x00000010);
  static const wlan_hosted_network_reason_user_action =
      WLAN_HOSTED_NETWORK_REASON(0x00000011);
  static const wlan_hosted_network_reason_client_abort =
      WLAN_HOSTED_NETWORK_REASON(0x00000012);
  static const wlan_hosted_network_reason_ap_start_failed =
      WLAN_HOSTED_NETWORK_REASON(0x00000013);
  static const wlan_hosted_network_reason_peer_arrived =
      WLAN_HOSTED_NETWORK_REASON(0x00000014);
  static const wlan_hosted_network_reason_peer_departed =
      WLAN_HOSTED_NETWORK_REASON(0x00000015);
  static const wlan_hosted_network_reason_peer_timeout =
      WLAN_HOSTED_NETWORK_REASON(0x00000016);
  static const wlan_hosted_network_reason_gp_denied =
      WLAN_HOSTED_NETWORK_REASON(0x00000017);
  static const wlan_hosted_network_reason_service_unavailable =
      WLAN_HOSTED_NETWORK_REASON(0x00000018);
  static const wlan_hosted_network_reason_device_change =
      WLAN_HOSTED_NETWORK_REASON(0x00000019);
  static const wlan_hosted_network_reason_properties_change =
      WLAN_HOSTED_NETWORK_REASON(0x0000001a);
  static const wlan_hosted_network_reason_virtual_station_blocking_use =
      WLAN_HOSTED_NETWORK_REASON(0x0000001b);
  static const wlan_hosted_network_reason_service_available_on_virtual_station =
      WLAN_HOSTED_NETWORK_REASON(0x0000001c);
}

/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_STATE(int _) implements int {
  static const wlan_hosted_network_unavailable =
      WLAN_HOSTED_NETWORK_STATE(0x00000000);
  static const wlan_hosted_network_idle = WLAN_HOSTED_NETWORK_STATE(0x00000001);
  static const wlan_hosted_network_active =
      WLAN_HOSTED_NETWORK_STATE(0x00000002);
}

/// {@category enum}
extension type const WLAN_IHV_CONTROL_TYPE(int _) implements int {
  static const wlan_ihv_control_type_service =
      WLAN_IHV_CONTROL_TYPE(0x00000000);
  static const wlan_ihv_control_type_driver = WLAN_IHV_CONTROL_TYPE(0x00000001);
}

/// {@category enum}
extension type const WLAN_INTERFACE_STATE(int _) implements int {
  static const wlan_interface_state_not_ready =
      WLAN_INTERFACE_STATE(0x00000000);
  static const wlan_interface_state_connected =
      WLAN_INTERFACE_STATE(0x00000001);
  static const wlan_interface_state_ad_hoc_network_formed =
      WLAN_INTERFACE_STATE(0x00000002);
  static const wlan_interface_state_disconnecting =
      WLAN_INTERFACE_STATE(0x00000003);
  static const wlan_interface_state_disconnected =
      WLAN_INTERFACE_STATE(0x00000004);
  static const wlan_interface_state_associating =
      WLAN_INTERFACE_STATE(0x00000005);
  static const wlan_interface_state_discovering =
      WLAN_INTERFACE_STATE(0x00000006);
  static const wlan_interface_state_authenticating =
      WLAN_INTERFACE_STATE(0x00000007);
}

/// {@category enum}
extension type const WLAN_INTERFACE_TYPE(int _) implements int {
  static const wlan_interface_type_emulated_802_11 =
      WLAN_INTERFACE_TYPE(0x00000000);
  static const wlan_interface_type_native_802_11 =
      WLAN_INTERFACE_TYPE(0x00000001);
  static const wlan_interface_type_invalid = WLAN_INTERFACE_TYPE(0x00000002);
}

/// {@category enum}
extension type const WLAN_INTF_OPCODE(int _) implements int {
  static const wlan_intf_opcode_autoconf_start = WLAN_INTF_OPCODE(0x00000000);
  static const wlan_intf_opcode_autoconf_enabled = WLAN_INTF_OPCODE(0x00000001);
  static const wlan_intf_opcode_background_scan_enabled =
      WLAN_INTF_OPCODE(0x00000002);
  static const wlan_intf_opcode_media_streaming_mode =
      WLAN_INTF_OPCODE(0x00000003);
  static const wlan_intf_opcode_radio_state = WLAN_INTF_OPCODE(0x00000004);
  static const wlan_intf_opcode_bss_type = WLAN_INTF_OPCODE(0x00000005);
  static const wlan_intf_opcode_interface_state = WLAN_INTF_OPCODE(0x00000006);
  static const wlan_intf_opcode_current_connection =
      WLAN_INTF_OPCODE(0x00000007);
  static const wlan_intf_opcode_channel_number = WLAN_INTF_OPCODE(0x00000008);
  static const wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs =
      WLAN_INTF_OPCODE(0x00000009);
  static const wlan_intf_opcode_supported_adhoc_auth_cipher_pairs =
      WLAN_INTF_OPCODE(0x0000000a);
  static const wlan_intf_opcode_supported_country_or_region_string_list =
      WLAN_INTF_OPCODE(0x0000000b);
  static const wlan_intf_opcode_current_operation_mode =
      WLAN_INTF_OPCODE(0x0000000c);
  static const wlan_intf_opcode_supported_safe_mode =
      WLAN_INTF_OPCODE(0x0000000d);
  static const wlan_intf_opcode_certified_safe_mode =
      WLAN_INTF_OPCODE(0x0000000e);
  static const wlan_intf_opcode_hosted_network_capable =
      WLAN_INTF_OPCODE(0x0000000f);
  static const wlan_intf_opcode_management_frame_protection_capable =
      WLAN_INTF_OPCODE(0x00000010);
  static const wlan_intf_opcode_secondary_sta_interfaces =
      WLAN_INTF_OPCODE(0x00000011);
  static const wlan_intf_opcode_secondary_sta_synchronized_connections =
      WLAN_INTF_OPCODE(0x00000012);
  static const wlan_intf_opcode_autoconf_end = WLAN_INTF_OPCODE(0x0fffffff);
  static const wlan_intf_opcode_msm_start = WLAN_INTF_OPCODE(0x10000100);
  static const wlan_intf_opcode_statistics = WLAN_INTF_OPCODE(0x10000101);
  static const wlan_intf_opcode_rssi = WLAN_INTF_OPCODE(0x10000102);
  static const wlan_intf_opcode_msm_end = WLAN_INTF_OPCODE(0x1fffffff);
  static const wlan_intf_opcode_security_start = WLAN_INTF_OPCODE(0x20010000);
  static const wlan_intf_opcode_security_end = WLAN_INTF_OPCODE(0x2fffffff);
  static const wlan_intf_opcode_ihv_start = WLAN_INTF_OPCODE(0x30000000);
  static const wlan_intf_opcode_ihv_end = WLAN_INTF_OPCODE(0x3fffffff);
}

/// {@category enum}
extension type const WLAN_NOTIFICATION_SOURCES(int _) implements int {
  static const WLAN_NOTIFICATION_SOURCE_NONE =
      WLAN_NOTIFICATION_SOURCES(0x00000000);
  static const WLAN_NOTIFICATION_SOURCE_ALL =
      WLAN_NOTIFICATION_SOURCES(0x0000ffff);
  static const WLAN_NOTIFICATION_SOURCE_ACM =
      WLAN_NOTIFICATION_SOURCES(0x00000008);
  static const WLAN_NOTIFICATION_SOURCE_MSM =
      WLAN_NOTIFICATION_SOURCES(0x00000010);
  static const WLAN_NOTIFICATION_SOURCE_SECURITY =
      WLAN_NOTIFICATION_SOURCES(0x00000020);
  static const WLAN_NOTIFICATION_SOURCE_IHV =
      WLAN_NOTIFICATION_SOURCES(0x00000040);
  static const WLAN_NOTIFICATION_SOURCE_HNWK =
      WLAN_NOTIFICATION_SOURCES(0x00000080);
  static const WLAN_NOTIFICATION_SOURCE_ONEX =
      WLAN_NOTIFICATION_SOURCES(0x00000004);
  static const WLAN_NOTIFICATION_SOURCE_DEVICE_SERVICE =
      WLAN_NOTIFICATION_SOURCES(0x00000800);
}

/// {@category enum}
extension type const WLAN_OPCODE_VALUE_TYPE(int _) implements int {
  static const wlan_opcode_value_type_query_only =
      WLAN_OPCODE_VALUE_TYPE(0x00000000);
  static const wlan_opcode_value_type_set_by_group_policy =
      WLAN_OPCODE_VALUE_TYPE(0x00000001);
  static const wlan_opcode_value_type_set_by_user =
      WLAN_OPCODE_VALUE_TYPE(0x00000002);
  static const wlan_opcode_value_type_invalid =
      WLAN_OPCODE_VALUE_TYPE(0x00000003);
}

/// {@category enum}
extension type const WLAN_SECURABLE_OBJECT(int _) implements int {
  static const wlan_secure_permit_list = WLAN_SECURABLE_OBJECT(0x00000000);
  static const wlan_secure_deny_list = WLAN_SECURABLE_OBJECT(0x00000001);
  static const wlan_secure_ac_enabled = WLAN_SECURABLE_OBJECT(0x00000002);
  static const wlan_secure_bc_scan_enabled = WLAN_SECURABLE_OBJECT(0x00000003);
  static const wlan_secure_bss_type = WLAN_SECURABLE_OBJECT(0x00000004);
  static const wlan_secure_show_denied = WLAN_SECURABLE_OBJECT(0x00000005);
  static const wlan_secure_interface_properties =
      WLAN_SECURABLE_OBJECT(0x00000006);
  static const wlan_secure_ihv_control = WLAN_SECURABLE_OBJECT(0x00000007);
  static const wlan_secure_all_user_profiles_order =
      WLAN_SECURABLE_OBJECT(0x00000008);
  static const wlan_secure_add_new_all_user_profiles =
      WLAN_SECURABLE_OBJECT(0x00000009);
  static const wlan_secure_add_new_per_user_profiles =
      WLAN_SECURABLE_OBJECT(0x0000000a);
  static const wlan_secure_media_streaming_mode_enabled =
      WLAN_SECURABLE_OBJECT(0x0000000b);
  static const wlan_secure_current_operation_mode =
      WLAN_SECURABLE_OBJECT(0x0000000c);
  static const wlan_secure_get_plaintext_key =
      WLAN_SECURABLE_OBJECT(0x0000000d);
  static const wlan_secure_hosted_network_elevated_access =
      WLAN_SECURABLE_OBJECT(0x0000000e);
  static const wlan_secure_virtual_station_extensibility =
      WLAN_SECURABLE_OBJECT(0x0000000f);
  static const wlan_secure_wfd_elevated_access =
      WLAN_SECURABLE_OBJECT(0x00000010);
  static const WLAN_SECURABLE_OBJECT_COUNT = WLAN_SECURABLE_OBJECT(0x00000011);
}

/// {@category enum}
extension type const WLAN_SET_EAPHOST_FLAGS(int _) implements int {
  static const WLAN_SET_EAPHOST_DATA_ALL_USERS =
      WLAN_SET_EAPHOST_FLAGS(0x00000001);
}

/// {@category enum}
extension type const WNDCLASS_STYLES(int _) implements int {
  static const CS_VREDRAW = WNDCLASS_STYLES(0x00000001);
  static const CS_HREDRAW = WNDCLASS_STYLES(0x00000002);
  static const CS_DBLCLKS = WNDCLASS_STYLES(0x00000008);
  static const CS_OWNDC = WNDCLASS_STYLES(0x00000020);
  static const CS_CLASSDC = WNDCLASS_STYLES(0x00000040);
  static const CS_PARENTDC = WNDCLASS_STYLES(0x00000080);
  static const CS_NOCLOSE = WNDCLASS_STYLES(0x00000200);
  static const CS_SAVEBITS = WNDCLASS_STYLES(0x00000800);
  static const CS_BYTEALIGNCLIENT = WNDCLASS_STYLES(0x00001000);
  static const CS_BYTEALIGNWINDOW = WNDCLASS_STYLES(0x00002000);
  static const CS_GLOBALCLASS = WNDCLASS_STYLES(0x00004000);
  static const CS_IME = WNDCLASS_STYLES(0x00010000);
  static const CS_DROPSHADOW = WNDCLASS_STYLES(0x00020000);
}

/// {@category enum}
extension type const WSL_DISTRIBUTION_FLAGS(int _) implements int {
  static const WSL_DISTRIBUTION_FLAGS_NONE = WSL_DISTRIBUTION_FLAGS(0x00000000);
  static const WSL_DISTRIBUTION_FLAGS_ENABLE_INTEROP =
      WSL_DISTRIBUTION_FLAGS(0x00000001);
  static const WSL_DISTRIBUTION_FLAGS_APPEND_NT_PATH =
      WSL_DISTRIBUTION_FLAGS(0x00000002);
  static const WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING =
      WSL_DISTRIBUTION_FLAGS(0x00000004);
}

/// {@category enum}
extension type const WinHttpRequestAutoLogonPolicy(int _) implements int {
  static const AutoLogonPolicy_Always =
      WinHttpRequestAutoLogonPolicy(0x00000000);
  static const AutoLogonPolicy_OnlyIfBypassProxy =
      WinHttpRequestAutoLogonPolicy(0x00000001);
  static const AutoLogonPolicy_Never =
      WinHttpRequestAutoLogonPolicy(0x00000002);
}

/// {@category enum}
extension type const WinHttpRequestOption(int _) implements int {
  static const WinHttpRequestOption_UserAgentString =
      WinHttpRequestOption(0x00000000);
  static const WinHttpRequestOption_URL = WinHttpRequestOption(0x00000001);
  static const WinHttpRequestOption_URLCodePage =
      WinHttpRequestOption(0x00000002);
  static const WinHttpRequestOption_EscapePercentInURL =
      WinHttpRequestOption(0x00000003);
  static const WinHttpRequestOption_SslErrorIgnoreFlags =
      WinHttpRequestOption(0x00000004);
  static const WinHttpRequestOption_SelectCertificate =
      WinHttpRequestOption(0x00000005);
  static const WinHttpRequestOption_EnableRedirects =
      WinHttpRequestOption(0x00000006);
  static const WinHttpRequestOption_UrlEscapeDisable =
      WinHttpRequestOption(0x00000007);
  static const WinHttpRequestOption_UrlEscapeDisableQuery =
      WinHttpRequestOption(0x00000008);
  static const WinHttpRequestOption_SecureProtocols =
      WinHttpRequestOption(0x00000009);
  static const WinHttpRequestOption_EnableTracing =
      WinHttpRequestOption(0x0000000a);
  static const WinHttpRequestOption_RevertImpersonationOverSsl =
      WinHttpRequestOption(0x0000000b);
  static const WinHttpRequestOption_EnableHttpsToHttpRedirects =
      WinHttpRequestOption(0x0000000c);
  static const WinHttpRequestOption_EnablePassportAuthentication =
      WinHttpRequestOption(0x0000000d);
  static const WinHttpRequestOption_MaxAutomaticRedirects =
      WinHttpRequestOption(0x0000000e);
  static const WinHttpRequestOption_MaxResponseHeaderSize =
      WinHttpRequestOption(0x0000000f);
  static const WinHttpRequestOption_MaxResponseDrainSize =
      WinHttpRequestOption(0x00000010);
  static const WinHttpRequestOption_EnableHttp1_1 =
      WinHttpRequestOption(0x00000011);
  static const WinHttpRequestOption_EnableCertificateRevocationCheck =
      WinHttpRequestOption(0x00000012);
  static const WinHttpRequestOption_RejectUserpwd =
      WinHttpRequestOption(0x00000013);
}

/// {@category enum}
extension type const WindowInteractionState(int _) implements int {
  static const WindowInteractionState_Running =
      WindowInteractionState(0x00000000);
  static const WindowInteractionState_Closing =
      WindowInteractionState(0x00000001);
  static const WindowInteractionState_ReadyForUserInteraction =
      WindowInteractionState(0x00000002);
  static const WindowInteractionState_BlockedByModalWindow =
      WindowInteractionState(0x00000003);
  static const WindowInteractionState_NotResponding =
      WindowInteractionState(0x00000004);
}

/// {@category enum}
extension type const WindowVisualState(int _) implements int {
  static const WindowVisualState_Normal = WindowVisualState(0x00000000);
  static const WindowVisualState_Maximized = WindowVisualState(0x00000001);
  static const WindowVisualState_Minimized = WindowVisualState(0x00000002);
}

/// {@category enum}
extension type const XINPUT_CAPABILITIES_FLAGS(int _) implements int {
  static const XINPUT_CAPS_VOICE_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0004);
  static const XINPUT_CAPS_FFB_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0001);
  static const XINPUT_CAPS_WIRELESS = XINPUT_CAPABILITIES_FLAGS(0x0002);
  static const XINPUT_CAPS_PMD_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(0x0008);
  static const XINPUT_CAPS_NO_NAVIGATION = XINPUT_CAPABILITIES_FLAGS(0x0010);
}

/// {@category enum}
extension type const XINPUT_DEVSUBTYPE(int _) implements int {
  static const XINPUT_DEVSUBTYPE_GAMEPAD = XINPUT_DEVSUBTYPE(0x01);
  static const XINPUT_DEVSUBTYPE_UNKNOWN = XINPUT_DEVSUBTYPE(0x00);
  static const XINPUT_DEVSUBTYPE_WHEEL = XINPUT_DEVSUBTYPE(0x02);
  static const XINPUT_DEVSUBTYPE_ARCADE_STICK = XINPUT_DEVSUBTYPE(0x03);
  static const XINPUT_DEVSUBTYPE_FLIGHT_STICK = XINPUT_DEVSUBTYPE(0x04);
  static const XINPUT_DEVSUBTYPE_DANCE_PAD = XINPUT_DEVSUBTYPE(0x05);
  static const XINPUT_DEVSUBTYPE_GUITAR = XINPUT_DEVSUBTYPE(0x06);
  static const XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE = XINPUT_DEVSUBTYPE(0x07);
  static const XINPUT_DEVSUBTYPE_DRUM_KIT = XINPUT_DEVSUBTYPE(0x08);
  static const XINPUT_DEVSUBTYPE_GUITAR_BASS = XINPUT_DEVSUBTYPE(0x0b);
  static const XINPUT_DEVSUBTYPE_ARCADE_PAD = XINPUT_DEVSUBTYPE(0x13);
}

/// {@category enum}
extension type const XINPUT_DEVTYPE(int _) implements int {
  static const XINPUT_DEVTYPE_GAMEPAD = XINPUT_DEVTYPE(0x01);
}

/// {@category enum}
extension type const XINPUT_FLAG(int _) implements int {
  static const XINPUT_FLAG_ALL = XINPUT_FLAG(0x00000000);
  static const XINPUT_FLAG_GAMEPAD = XINPUT_FLAG(0x00000001);
}

/// {@category enum}
extension type const XINPUT_GAMEPAD_BUTTON_FLAGS(int _) implements int {
  static const XINPUT_GAMEPAD_DPAD_UP = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0001);
  static const XINPUT_GAMEPAD_DPAD_DOWN = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0002);
  static const XINPUT_GAMEPAD_DPAD_LEFT = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0004);
  static const XINPUT_GAMEPAD_DPAD_RIGHT = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0008);
  static const XINPUT_GAMEPAD_START = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0010);
  static const XINPUT_GAMEPAD_BACK = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0020);
  static const XINPUT_GAMEPAD_LEFT_THUMB = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0040);
  static const XINPUT_GAMEPAD_RIGHT_THUMB = XINPUT_GAMEPAD_BUTTON_FLAGS(0x0080);
  static const XINPUT_GAMEPAD_LEFT_SHOULDER =
      XINPUT_GAMEPAD_BUTTON_FLAGS(0x0100);
  static const XINPUT_GAMEPAD_RIGHT_SHOULDER =
      XINPUT_GAMEPAD_BUTTON_FLAGS(0x0200);
  static const XINPUT_GAMEPAD_A = XINPUT_GAMEPAD_BUTTON_FLAGS(0x1000);
  static const XINPUT_GAMEPAD_B = XINPUT_GAMEPAD_BUTTON_FLAGS(0x2000);
  static const XINPUT_GAMEPAD_X = XINPUT_GAMEPAD_BUTTON_FLAGS(0x4000);
  static const XINPUT_GAMEPAD_Y = XINPUT_GAMEPAD_BUTTON_FLAGS(0x8000);
  static const XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE =
      XINPUT_GAMEPAD_BUTTON_FLAGS(0x1ea9);
  static const XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE =
      XINPUT_GAMEPAD_BUTTON_FLAGS(0x21f1);
  static const XINPUT_GAMEPAD_TRIGGER_THRESHOLD =
      XINPUT_GAMEPAD_BUTTON_FLAGS(0x001e);
}

/// {@category enum}
extension type const XINPUT_KEYSTROKE_FLAGS(int _) implements int {
  static const XINPUT_KEYSTROKE_KEYDOWN = XINPUT_KEYSTROKE_FLAGS(0x0001);
  static const XINPUT_KEYSTROKE_KEYUP = XINPUT_KEYSTROKE_FLAGS(0x0002);
  static const XINPUT_KEYSTROKE_REPEAT = XINPUT_KEYSTROKE_FLAGS(0x0004);
}

/// {@category enum}
extension type const XINPUT_VIRTUAL_KEY(int _) implements int {
  static const VK_PAD_A = XINPUT_VIRTUAL_KEY(0x5800);
  static const VK_PAD_B = XINPUT_VIRTUAL_KEY(0x5801);
  static const VK_PAD_X = XINPUT_VIRTUAL_KEY(0x5802);
  static const VK_PAD_Y = XINPUT_VIRTUAL_KEY(0x5803);
  static const VK_PAD_RSHOULDER = XINPUT_VIRTUAL_KEY(0x5804);
  static const VK_PAD_LSHOULDER = XINPUT_VIRTUAL_KEY(0x5805);
  static const VK_PAD_LTRIGGER = XINPUT_VIRTUAL_KEY(0x5806);
  static const VK_PAD_RTRIGGER = XINPUT_VIRTUAL_KEY(0x5807);
  static const VK_PAD_DPAD_UP = XINPUT_VIRTUAL_KEY(0x5810);
  static const VK_PAD_DPAD_DOWN = XINPUT_VIRTUAL_KEY(0x5811);
  static const VK_PAD_DPAD_LEFT = XINPUT_VIRTUAL_KEY(0x5812);
  static const VK_PAD_DPAD_RIGHT = XINPUT_VIRTUAL_KEY(0x5813);
  static const VK_PAD_START = XINPUT_VIRTUAL_KEY(0x5814);
  static const VK_PAD_BACK = XINPUT_VIRTUAL_KEY(0x5815);
  static const VK_PAD_LTHUMB_PRESS = XINPUT_VIRTUAL_KEY(0x5816);
  static const VK_PAD_RTHUMB_PRESS = XINPUT_VIRTUAL_KEY(0x5817);
  static const VK_PAD_LTHUMB_UP = XINPUT_VIRTUAL_KEY(0x5820);
  static const VK_PAD_LTHUMB_DOWN = XINPUT_VIRTUAL_KEY(0x5821);
  static const VK_PAD_LTHUMB_RIGHT = XINPUT_VIRTUAL_KEY(0x5822);
  static const VK_PAD_LTHUMB_LEFT = XINPUT_VIRTUAL_KEY(0x5823);
  static const VK_PAD_LTHUMB_UPLEFT = XINPUT_VIRTUAL_KEY(0x5824);
  static const VK_PAD_LTHUMB_UPRIGHT = XINPUT_VIRTUAL_KEY(0x5825);
  static const VK_PAD_LTHUMB_DOWNRIGHT = XINPUT_VIRTUAL_KEY(0x5826);
  static const VK_PAD_LTHUMB_DOWNLEFT = XINPUT_VIRTUAL_KEY(0x5827);
  static const VK_PAD_RTHUMB_UP = XINPUT_VIRTUAL_KEY(0x5830);
  static const VK_PAD_RTHUMB_DOWN = XINPUT_VIRTUAL_KEY(0x5831);
  static const VK_PAD_RTHUMB_RIGHT = XINPUT_VIRTUAL_KEY(0x5832);
  static const VK_PAD_RTHUMB_LEFT = XINPUT_VIRTUAL_KEY(0x5833);
  static const VK_PAD_RTHUMB_UPLEFT = XINPUT_VIRTUAL_KEY(0x5834);
  static const VK_PAD_RTHUMB_UPRIGHT = XINPUT_VIRTUAL_KEY(0x5835);
  static const VK_PAD_RTHUMB_DOWNRIGHT = XINPUT_VIRTUAL_KEY(0x5836);
  static const VK_PAD_RTHUMB_DOWNLEFT = XINPUT_VIRTUAL_KEY(0x5837);
}

/// {@category enum}
extension type const ZoomUnit(int _) implements int {
  static const ZoomUnit_NoAmount = ZoomUnit(0x00000000);
  static const ZoomUnit_LargeDecrement = ZoomUnit(0x00000001);
  static const ZoomUnit_SmallDecrement = ZoomUnit(0x00000002);
  static const ZoomUnit_LargeIncrement = ZoomUnit(0x00000003);
  static const ZoomUnit_SmallIncrement = ZoomUnit(0x00000004);
}
