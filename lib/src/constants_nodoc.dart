// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Standard constants exposed by the Win32 API.

// *** NOTE: This file contains constants that we have chosen not to document,
// mostly because their function is obvious, or because they are documented in
// the public Microsoft Windows documentation online.
//
// This file (only) is excluded from dartdoc in `dartdoc_options.yaml`. By
// keeping non-documented constants in a separate file, we save ourselves the
// need to add the /// @nodoc modifier to every single constant in this file.

// Contributors are invited and encouraged to submit comments for these
// constants from the open source Microsoft documentation, such as
// https://github.com/MicrosoftDocs/win32. Please move documented constants to
// `constants.dart` as appropriate to ensure they are picked up by `dartdoc`.

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'enums.g.dart';
import 'macros.dart';
import 'structs.g.dart';

// -----------------------------------------------------------------------------
// HID constants
// -----------------------------------------------------------------------------
const HID_USAGE_PAGE_UNDEFINED = 0x00;
const HID_USAGE_PAGE_GENERIC = 0x01;
const HID_USAGE_PAGE_SIMULATION = 0x02;
const HID_USAGE_PAGE_VR = 0x03;
const HID_USAGE_PAGE_SPORT = 0x04;
const HID_USAGE_PAGE_GAME = 0x05;
const HID_USAGE_PAGE_GENERIC_DEVICE = 0x06;
const HID_USAGE_PAGE_KEYBOARD = 0x07;
const HID_USAGE_PAGE_LED = 0x08;
const HID_USAGE_PAGE_BUTTON = 0x09;
const HID_USAGE_PAGE_ORDINAL = 0x0A;
const HID_USAGE_PAGE_TELEPHONY = 0x0B;
const HID_USAGE_PAGE_CONSUMER = 0x0C;
const HID_USAGE_PAGE_DIGITIZER = 0x0D;
const HID_USAGE_PAGE_HAPTICS = 0x0E;
const HID_USAGE_PAGE_PID = 0x0F;
const HID_USAGE_PAGE_UNICODE = 0x10;
const HID_USAGE_PAGE_ALPHANUMERIC = 0x14;
const HID_USAGE_PAGE_SENSOR = 0x20;
const HID_USAGE_PAGE_LIGHTING_ILLUMINATION = 0x59;
const HID_USAGE_PAGE_BARCODE_SCANNER = 0x8C;
const HID_USAGE_PAGE_WEIGHING_DEVICE = 0x8D;
const HID_USAGE_PAGE_MAGNETIC_STRIPE_READER = 0x8E;
const HID_USAGE_PAGE_CAMERA_CONTROL = 0x90;
const HID_USAGE_PAGE_ARCADE = 0x91;

const HID_USAGE_GENERIC_POINTER = 0x01;
const HID_USAGE_GENERIC_MOUSE = 0x02;
const HID_USAGE_GENERIC_JOYSTICK = 0x04;
const HID_USAGE_GENERIC_GAMEPAD = 0x05;
const HID_USAGE_GENERIC_KEYBOARD = 0x06;
const HID_USAGE_GENERIC_KEYPAD = 0x07;
const HID_USAGE_GENERIC_MULTI_AXIS_CONTROLLER = 0x08;
const HID_USAGE_GENERIC_TABLET_PC_SYSTEM_CTL = 0x09;
const HID_USAGE_GENERIC_PORTABLE_DEVICE_CONTROL = 0x0D;
const HID_USAGE_GENERIC_INTERACTIVE_CONTROL = 0x0E;
const HID_USAGE_GENERIC_COUNTED_BUFFER = 0x3A;
const HID_USAGE_GENERIC_SYSTEM_CTL = 0x80;
const HID_USAGE_GENERIC_X = 0x30;
const HID_USAGE_GENERIC_Y = 0x31;
const HID_USAGE_GENERIC_Z = 0x32;
const HID_USAGE_GENERIC_RX = 0x33;
const HID_USAGE_GENERIC_RY = 0x34;
const HID_USAGE_GENERIC_RZ = 0x35;
const HID_USAGE_GENERIC_SLIDER = 0x36;
const HID_USAGE_GENERIC_DIAL = 0x37;
const HID_USAGE_GENERIC_WHEEL = 0x38;
const HID_USAGE_GENERIC_HATSWITCH = 0x39;
const HID_USAGE_GENERIC_BYTE_COUNT = 0x3B;
const HID_USAGE_GENERIC_MOTION_WAKEUP = 0x3C;
const HID_USAGE_GENERIC_START = 0x3D;
const HID_USAGE_GENERIC_SELECT = 0x3E;
const HID_USAGE_GENERIC_VX = 0x40;
const HID_USAGE_GENERIC_VY = 0x41;
const HID_USAGE_GENERIC_VZ = 0x42;
const HID_USAGE_GENERIC_VBRX = 0x43;
const HID_USAGE_GENERIC_VBRY = 0x44;
const HID_USAGE_GENERIC_VBRZ = 0x45;
const HID_USAGE_GENERIC_VNO = 0x46;
const HID_USAGE_GENERIC_FEATURE_NOTIFICATION = 0x47;
const HID_USAGE_GENERIC_RESOLUTION_MULTIPLIER = 0x48;
const HID_USAGE_GENERIC_SYSCTL_POWER = 0x81;
const HID_USAGE_GENERIC_SYSCTL_SLEEP = 0x82;
const HID_USAGE_GENERIC_SYSCTL_WAKE = 0x83;
const HID_USAGE_GENERIC_SYSCTL_CONTEXT_MENU = 0x84;
const HID_USAGE_GENERIC_SYSCTL_MAIN_MENU = 0x85;
const HID_USAGE_GENERIC_SYSCTL_APP_MENU = 0x86;
const HID_USAGE_GENERIC_SYSCTL_HELP_MENU = 0x87;
const HID_USAGE_GENERIC_SYSCTL_MENU_EXIT = 0x88;
const HID_USAGE_GENERIC_SYSCTL_MENU_SELECT = 0x89;
const HID_USAGE_GENERIC_SYSCTL_MENU_RIGHT = 0x8A;
const HID_USAGE_GENERIC_SYSCTL_MENU_LEFT = 0x8B;
const HID_USAGE_GENERIC_SYSCTL_MENU_UP = 0x8C;
const HID_USAGE_GENERIC_SYSCTL_MENU_DOWN = 0x8D;
const HID_USAGE_GENERIC_SYSCTL_COLD_RESTART = 0x8E;
const HID_USAGE_GENERIC_SYSCTL_WARM_RESTART = 0x8F;
const HID_USAGE_GENERIC_DPAD_UP = 0x90;
const HID_USAGE_GENERIC_DPAD_DOWN = 0x91;
const HID_USAGE_GENERIC_DPAD_RIGHT = 0x92;
const HID_USAGE_GENERIC_DPAD_LEFT = 0x93;
const HID_USAGE_GENERIC_SYSCTL_FN = 0x97;
const HID_USAGE_GENERIC_SYSCTL_FN_LOCK = 0x98;
const HID_USAGE_GENERIC_SYSCTL_FN_LOCK_INDICATOR = 0x99;
const HID_USAGE_GENERIC_SYSCTL_DISMISS_NOTIFICATION = 0x9A;
const HID_USAGE_GENERIC_SYSCTL_DOCK = 0xA0;
const HID_USAGE_GENERIC_SYSCTL_UNDOCK = 0xA1;
const HID_USAGE_GENERIC_SYSCTL_SETUP = 0xA2;
const HID_USAGE_GENERIC_SYSCTL_SYS_BREAK = 0xA3;
const HID_USAGE_GENERIC_SYSCTL_SYS_DBG_BREAK = 0xA4;
const HID_USAGE_GENERIC_SYSCTL_APP_BREAK = 0xA5;
const HID_USAGE_GENERIC_SYSCTL_APP_DBG_BREAK = 0xA6;
const HID_USAGE_GENERIC_SYSCTL_MUTE = 0xA7;
const HID_USAGE_GENERIC_SYSCTL_HIBERNATE = 0xA8;
const HID_USAGE_GENERIC_SYSCTL_DISP_INVERT = 0xB0;
const HID_USAGE_GENERIC_SYSCTL_DISP_INTERNAL = 0xB1;
const HID_USAGE_GENERIC_SYSCTL_DISP_EXTERNAL = 0xB2;
const HID_USAGE_GENERIC_SYSCTL_DISP_BOTH = 0xB3;
const HID_USAGE_GENERIC_SYSCTL_DISP_DUAL = 0xB4;
const HID_USAGE_GENERIC_SYSCTL_DISP_TOGGLE = 0xB5;
const HID_USAGE_GENERIC_SYSCTL_DISP_SWAP = 0xB6;
const HID_USAGE_GENERIC_SYSCTL_DISP_AUTOSCALE = 0xB7;
const HID_USAGE_GENERIC_SYSTEM_DISPLAY_ROTATION_LOCK_BUTTON = 0xC9;
const HID_USAGE_GENERIC_SYSTEM_DISPLAY_ROTATION_LOCK_SLIDER_SWITCH = 0xCA;
const HID_USAGE_GENERIC_CONTROL_ENABLE = 0xCB;

const HID_USAGE_KEYBOARD_NOEVENT = 0x00;
const HID_USAGE_KEYBOARD_ROLLOVER = 0x01;
const HID_USAGE_KEYBOARD_POSTFAIL = 0x02;
const HID_USAGE_KEYBOARD_UNDEFINED = 0x03;
const HID_USAGE_KEYBOARD_aA = 0x04;
const HID_USAGE_KEYBOARD_zZ = 0x1D;
const HID_USAGE_KEYBOARD_ONE = 0x1E;
const HID_USAGE_KEYBOARD_ZERO = 0x27;
const HID_USAGE_KEYBOARD_LCTRL = 0xE0;
const HID_USAGE_KEYBOARD_LSHFT = 0xE1;
const HID_USAGE_KEYBOARD_LALT = 0xE2;
const HID_USAGE_KEYBOARD_LGUI = 0xE3;
const HID_USAGE_KEYBOARD_RCTRL = 0xE4;
const HID_USAGE_KEYBOARD_RSHFT = 0xE5;
const HID_USAGE_KEYBOARD_RALT = 0xE6;
const HID_USAGE_KEYBOARD_RGUI = 0xE7;
const HID_USAGE_KEYBOARD_SCROLL_LOCK = 0x47;
const HID_USAGE_KEYBOARD_NUM_LOCK = 0x53;
const HID_USAGE_KEYBOARD_CAPS_LOCK = 0x39;
const HID_USAGE_KEYBOARD_F1 = 0x3A;
const HID_USAGE_KEYBOARD_F2 = 0x3B;
const HID_USAGE_KEYBOARD_F3 = 0x3C;
const HID_USAGE_KEYBOARD_F4 = 0x3D;
const HID_USAGE_KEYBOARD_F5 = 0x3E;
const HID_USAGE_KEYBOARD_F6 = 0x3F;
const HID_USAGE_KEYBOARD_F7 = 0x40;
const HID_USAGE_KEYBOARD_F8 = 0x41;
const HID_USAGE_KEYBOARD_F9 = 0x42;
const HID_USAGE_KEYBOARD_F10 = 0x43;
const HID_USAGE_KEYBOARD_F11 = 0x44;
const HID_USAGE_KEYBOARD_F12 = 0x45;
const HID_USAGE_KEYBOARD_F13 = 0x68;
const HID_USAGE_KEYBOARD_F14 = 0x69;
const HID_USAGE_KEYBOARD_F15 = 0x6A;
const HID_USAGE_KEYBOARD_F16 = 0x6B;
const HID_USAGE_KEYBOARD_F17 = 0x6C;
const HID_USAGE_KEYBOARD_F18 = 0x6D;
const HID_USAGE_KEYBOARD_F19 = 0x6E;
const HID_USAGE_KEYBOARD_F20 = 0x6F;
const HID_USAGE_KEYBOARD_F21 = 0x70;
const HID_USAGE_KEYBOARD_F22 = 0x71;
const HID_USAGE_KEYBOARD_F23 = 0x72;
const HID_USAGE_KEYBOARD_F24 = 0x73;
const HID_USAGE_KEYBOARD_RETURN = 0x28;
const HID_USAGE_KEYBOARD_ESCAPE = 0x29;
const HID_USAGE_KEYBOARD_DELETE = 0x2A;
const HID_USAGE_KEYBOARD_PRINT_SCREEN = 0x46;
const HID_USAGE_KEYBOARD_DELETE_FORWARD = 0x4C;

// -----------------------------------------------------------------------------
// WindowMessage constants
// -----------------------------------------------------------------------------
const WM_CTLCOLORMSGBOX = 0x0132;
const WM_CTLCOLOREDIT = 0x0133;
const WM_CTLCOLORLISTBOX = 0x0134;
const WM_CTLCOLORBTN = 0x0135;
const WM_CTLCOLORDLG = 0x0136;
const WM_CTLCOLORSCROLLBAR = 0x0137;
const WM_CTLCOLORSTATIC = 0x0138;
const MN_GETHMENU = 0x01E1;

const LF_FACESIZE = 32;
const LF_FULLFACESIZE = 64;
const HWND_DESKTOP = 0;

// -----------------------------------------------------------------------------
// System-wide parameters
// -----------------------------------------------------------------------------

const SPI_GETWHEELSCROLLCHARS = 0x006C;

// Menu flags

// Common Dialog window strings
const LBSELCHSTRING = 'commdlg_LBSelChangedNotify';
const SHAREVISTRING = 'commdlg_ShareViolation';
const FILEOKSTRING = 'commdlg_FileNameOK';
const COLOROKSTRING = 'commdlg_ColorOK';
const SETRGBSTRING = 'commdlg_SetRGBColor';
const HELPMSGSTRING = 'commdlg_help';
const FINDMSGSTRING = 'commdlg_FindReplace';

// Stock logical objects

// Background modes

const BKMODE_LAST = 2;

// DIB color table identifiers

// GetDeviceCaps capabilities
const DT_PLOTTER = 0;
const DT_RASDISPLAY = 1;
const DT_RASPRINTER = 2;
const DT_RASCAMERA = 3;
const DT_CHARSTREAM = 4;
const DT_METAFILE = 5;
const DT_DISPFILE = 6;
const CC_NONE = 0;
const CC_CIRCLES = 1;
const CC_PIE = 2;
const CC_CHORD = 4;
const CC_ELLIPSES = 8;
const CC_WIDE = 16;
const CC_STYLED = 32;
const CC_WIDESTYLED = 64;
const CC_INTERIORS = 128;
const CC_ROUNDRECT = 256;
const LC_NONE = 0;
const LC_POLYLINE = 2;
const LC_MARKER = 4;
const LC_POLYMARKER = 8;
const LC_WIDE = 16;
const LC_STYLED = 32;
const LC_WIDESTYLED = 64;
const LC_INTERIORS = 128;
const PC_NONE = 0;
const PC_POLYGON = 1;
const PC_RECTANGLE = 2;
const PC_WINDPOLYGON = 4;
const PC_TRAPEZOID = 4;
const PC_SCANLINE = 8;
const PC_WIDE = 16;
const PC_STYLED = 32;
const PC_WIDESTYLED = 64;
const PC_INTERIORS = 128;
const PC_POLYPOLYGON = 256;
const PC_PATHS = 512;
const CP_NONE = 0;
const CP_RECTANGLE = 1;
const CP_REGION = 2;
const TC_OP_CHARACTER = 0x00000001;
const TC_OP_STROKE = 0x00000002;
const TC_CP_STROKE = 0x00000004;
const TC_CR_90 = 0x00000008;
const TC_CR_ANY = 0x00000010;
const TC_SF_X_YINDEP = 0x00000020;
const TC_SA_DOUBLE = 0x00000040;
const TC_SA_INTEGER = 0x00000080;
const TC_SA_CONTIN = 0x00000100;
const TC_EA_DOUBLE = 0x00000200;
const TC_IA_ABLE = 0x00000400;
const TC_UA_ABLE = 0x00000800;
const TC_SO_ABLE = 0x00001000;
const TC_RA_ABLE = 0x00002000;
const TC_VA_ABLE = 0x00004000;
const TC_RESERVED = 0x00008000;
const TC_SCROLLBLT = 0x00010000;
const RC_NONE = 0;
const RC_BITBLT = 1;
const RC_BANDING = 2;
const RC_SCALING = 4;
const RC_BITMAP64 = 8;
const RC_GDI20_OUTPUT = 0x0010;
const RC_GDI20_STATE = 0x0020;
const RC_SAVEBITMAP = 0x0040;
const RC_DI_BITMAP = 0x0080;
const RC_PALETTE = 0x0100;
const RC_DIBTODEV = 0x0200;
const RC_BIGFONT = 0x0400;
const RC_STRETCHBLT = 0x0800;
const RC_FLOODFILL = 0x1000;
const RC_STRETCHDIB = 0x2000;
const RC_OP_DX_OUTPUT = 0x4000;
const RC_DEVBITS = 0x8000;
const SB_NONE = 0x00000000;
const SB_CONST_ALPHA = 0x00000001;
const SB_PIXEL_ALPHA = 0x00000002;
const SB_PREMULT_ALPHA = 0x00000004;
const SB_GRAD_RECT = 0x00000010;
const SB_GRAD_TRI = 0x00000020;
const CM_NONE = 0x00000000;
const CM_DEVICE_ICM = 0x00000001;
const CM_GAMMA_RAMP = 0x00000002;
const CM_CMYK_COLOR = 0x00000004;

/* Ternary raster operations */

// Dialog box command IDs

// MessageBox flags
const IDTIMEOUT = 32000;

// Virtual keys

// Hook codes
const HC_ACTION = 0;

// Input types

// Keyboard and mouse events

// Classic Folder IDs
const CSIDL_DESKTOP = 0x0000;
const CSIDL_INTERNET = 0x0001;
const CSIDL_PROGRAMS = 0x0002;
const CSIDL_CONTROLS = 0x0003;
const CSIDL_PRINTERS = 0x0004;
const CSIDL_PERSONAL = 0x0005;
const CSIDL_FAVORITES = 0x0006;
const CSIDL_STARTUP = 0x0007;
const CSIDL_RECENT = 0x0008;
const CSIDL_SENDTO = 0x0009;
const CSIDL_BITBUCKET = 0x000a;
const CSIDL_STARTMENU = 0x000b;
const CSIDL_MYDOCUMENTS = CSIDL_PERSONAL;
const CSIDL_MYMUSIC = 0x000d;
const CSIDL_MYVIDEO = 0x000e;
const CSIDL_DESKTOPDIRECTORY = 0x0010;
const CSIDL_DRIVES = 0x0011;
const CSIDL_NETWORK = 0x0012;
const CSIDL_NETHOOD = 0x0013;
const CSIDL_FONTS = 0x0014;
const CSIDL_TEMPLATES = 0x0015;
const CSIDL_COMMON_STARTMENU = 0x0016;
const CSIDL_COMMON_PROGRAMS = 0X0017;
const CSIDL_COMMON_STARTUP = 0x0018;
const CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019;
const CSIDL_APPDATA = 0x001a;
const CSIDL_PRINTHOOD = 0x001b;
const CSIDL_LOCAL_APPDATA = 0x001c;
const CSIDL_ALTSTARTUP = 0x001d;
const CSIDL_COMMON_ALTSTARTUP = 0x001e;
const CSIDL_COMMON_FAVORITES = 0x001f;
const CSIDL_INTERNET_CACHE = 0x0020;
const CSIDL_COOKIES = 0x0021;
const CSIDL_HISTORY = 0x0022;
const CSIDL_COMMON_APPDATA = 0x0023;
const CSIDL_WINDOWS = 0x0024;
const CSIDL_SYSTEM = 0x0025;
const CSIDL_PROGRAM_FILES = 0x0026;
const CSIDL_MYPICTURES = 0x0027;
const CSIDL_PROFILE = 0x0028;
const CSIDL_SYSTEMX86 = 0x0029;
const CSIDL_PROGRAM_FILESX86 = 0x002a;
const CSIDL_PROGRAM_FILES_COMMON = 0x002b;
const CSIDL_PROGRAM_FILES_COMMONX86 = 0x002c;
const CSIDL_COMMON_TEMPLATES = 0x002d;
const CSIDL_COMMON_DOCUMENTS = 0x002e;
const CSIDL_COMMON_ADMINTOOLS = 0x002f;
const CSIDL_ADMINTOOLS = 0x0030;
const CSIDL_CONNECTIONS = 0x0031;
const CSIDL_COMMON_MUSIC = 0x0035;
const CSIDL_COMMON_PICTURES = 0x0036;
const CSIDL_COMMON_VIDEO = 0x0037;
const CSIDL_RESOURCES = 0x0038;
const CSIDL_RESOURCES_LOCALIZED = 0x0039;
const CSIDL_COMMON_OEM_LINKS = 0x003a;
const CSIDL_CDBURN_AREA = 0x003b;
const CSIDL_COMPUTERSNEARME = 0x003d;
const CSIDL_FLAG_CREATE = 0x8000;
const CSIDL_FLAG_DONT_VERIFY = 0x4000;
const CSIDL_FLAG_DONT_UNEXPAND = 0x2000;
const CSIDL_FLAG_NO_ALIAS = 0x1000;
const CSIDL_FLAG_PER_USER_INIT = 0x0800;
const CSIDL_FLAG_MASK = 0xFF00;

// Version info constants

// Process constants

const PROC_THREAD_ATTRIBUTE_NUMBER = 0x0000FFFF;
const PROC_THREAD_ATTRIBUTE_THREAD = 0x00010000;
const PROC_THREAD_ATTRIBUTE_INPUT = 0x00020000;
const PROC_THREAD_ATTRIBUTE_ADDITIVE = 0x00040000;
const PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE =
    (PROC_THREAD_ATTRIBUTE_NUM.ProcThreadAttributePseudoConsole &
            PROC_THREAD_ATTRIBUTE_NUMBER) |
        PROC_THREAD_ATTRIBUTE_INPUT;

/// {@category enum}
class PROC_THREAD_ATTRIBUTE_NUM {
  static const ProcThreadAttributeParentProcess = 0;
  static const ProcThreadAttributeHandleList = 2;
  static const ProcThreadAttributeGroupAffinity = 3;
  static const ProcThreadAttributePreferredNode = 4;
  static const ProcThreadAttributeIdealProcessor = 5;
  static const ProcThreadAttributeUmsThread = 6;
  static const ProcThreadAttributeMitigationPolicy = 7;
  static const ProcThreadAttributeSecurityCapabilities = 9;
  static const ProcThreadAttributeJobList = 13;
  static const ProcThreadAttributeChildProcessPolicy = 14;
  static const ProcThreadAttributeAllApplicationPackagesPolicy = 15;
  static const ProcThreadAttributeWin32kFilter = 16;
  static const ProcThreadAttributeSafeOpenPromptOriginClaim = 17;
  static const ProcThreadAttributeDesktopAppPolicy = 18;
  static const ProcThreadAttributePseudoConsole = 22;
}

// Common Control send messages
const UDM_SETRANGE = WM_USER + 101;
const UDM_GETRANGE = WM_USER + 102;
const UDM_SETPOS = WM_USER + 103;
const UDM_GETPOS = WM_USER + 104;
const UDM_SETBUDDY = WM_USER + 105;
const UDM_GETBUDDY = WM_USER + 106;
const UDM_SETACCEL = WM_USER + 107;
const UDM_GETACCEL = WM_USER + 108;
const UDM_SETBASE = WM_USER + 109;
const UDM_GETBASE = WM_USER + 110;
const UDM_SETRANGE32 = WM_USER + 111;
const UDM_GETRANGE32 = WM_USER + 112;
const UDM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT;
const UDM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT;
const UDM_SETPOS32 = WM_USER + 113;
const UDM_GETPOS32 = WM_USER + 114;
const CCM_FIRST = 0x2000;
const CCM_SETUNICODEFORMAT = CCM_FIRST + 5;
const CCM_GETUNICODEFORMAT = CCM_FIRST + 6;

// Version constants

const VER_NT_WORKSTATION = 0x0000001;
const VER_NT_DOMAIN_CONTROLLER = 0x0000002;
const VER_NT_SERVER = 0x0000003;

// Registry keys
const HKEY_CLASSES_ROOT = 0x80000000;
const HKEY_CURRENT_USER = 0x80000001;
const HKEY_LOCAL_MACHINE = 0x80000002;
const HKEY_USERS = 0x80000003;
const HKEY_PERFORMANCE_DATA = 0x80000004;
const HKEY_PERFORMANCE_TEXT = 0x80000050;
const HKEY_PERFORMANCE_NLSTEXT = 0x80000060;
const HKEY_CURRENT_CONFIG = 0x80000005;
const HKEY_DYN_DATA = 0x80000006;
const HKEY_CURRENT_USER_LOCAL_SETTINGS = 0x80000007;

// -----------------------------------------------------------------------------
// Display device constants that are used but not documented
// -----------------------------------------------------------------------------

const DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001;
const DISPLAY_DEVICE_ATTACHED = 0x00000002;
const DISPLAY_DEVICE_MULTI_DRIVER = 0x00000002;
const DISPLAY_DEVICE_ACC_DRIVER = 0x00000040;
const DISPLAY_DEVICE_UNSAFE_MODES_ON = 0x00080000;
const DISPLAY_DEVICE_TS_COMPATIBLE = 0x00200000;
const DISPLAY_DEVICE_RDPUDD = 0x01000000;
const DISPLAY_DEVICE_REMOTE = 0x04000000;
const DISPLAY_DEVICE_DISCONNECT = 0x02000000;

const XUSER_MAX_COUNT = 4;

// -----------------------------------------------------------------------------
// Console constants
// -----------------------------------------------------------------------------

// Handles
const INVALID_HANDLE_VALUE = -1;
const ATTACH_PARENT_PROCESS = -1;

// -----------------------------------------------------------------------------
// Monitor APIs
// -----------------------------------------------------------------------------

const MC_CAPS_NONE = 0x00000000;
const MC_CAPS_MONITOR_TECHNOLOGY_TYPE = 0x00000001;
const MC_CAPS_BRIGHTNESS = 0x00000002;
const MC_CAPS_CONTRAST = 0x00000004;
const MC_CAPS_COLOR_TEMPERATURE = 0x00000008;
const MC_CAPS_RED_GREEN_BLUE_GAIN = 0x00000010;
const MC_CAPS_RED_GREEN_BLUE_DRIVE = 0x00000020;
const MC_CAPS_DEGAUSS = 0x00000040;
const MC_CAPS_DISPLAY_AREA_POSITION = 0x00000080;
const MC_CAPS_DISPLAY_AREA_SIZE = 0x00000100;
const MC_CAPS_RESTORE_FACTORY_DEFAULTS = 0x00000400;
const MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS = 0x00000800;
const MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS = 0x00001000;
const MC_SUPPORTED_COLOR_TEMPERATURE_NONE = 0x00000000;
const MC_SUPPORTED_COLOR_TEMPERATURE_4000K = 0x00000001;
const MC_SUPPORTED_COLOR_TEMPERATURE_5000K = 0x00000002;
const MC_SUPPORTED_COLOR_TEMPERATURE_6500K = 0x00000004;
const MC_SUPPORTED_COLOR_TEMPERATURE_7500K = 0x00000008;
const MC_SUPPORTED_COLOR_TEMPERATURE_8200K = 0x00000010;
const MC_SUPPORTED_COLOR_TEMPERATURE_9300K = 0x00000020;
const MC_SUPPORTED_COLOR_TEMPERATURE_10000K = 0x00000040;
const MC_SUPPORTED_COLOR_TEMPERATURE_11500K = 0x00000080;

// *** COM CONSTANTS ***
final CO_E_NOTINITIALIZED = 0x800401F0.toSigned(32);
final CO_E_ALREADYINITIALIZED = 0x800401F1.toSigned(32);
final CO_E_CANTDETERMINECLASS = 0x800401F2.toSigned(32);
final CO_E_CLASSSTRING = 0x800401F3.toSigned(32);
final CO_E_IIDSTRING = 0x800401F4.toSigned(32);
final CO_E_APPNOTFOUND = 0x800401F5.toSigned(32);
final CO_E_APPSINGLEUSE = 0x800401F6.toSigned(32);
final CO_E_ERRORINAPP = 0x800401F7.toSigned(32);
final CO_E_DLLNOTFOUND = 0x800401F8.toSigned(32);
final CO_E_ERRORINDLL = 0x800401F9.toSigned(32);
final CO_E_WRONGOSFORAPP = 0x800401FA.toSigned(32);
final CO_E_OBJNOTREG = 0x800401FB.toSigned(32);
final CO_E_OBJISREG = 0x800401FC.toSigned(32);
final CO_E_OBJNOTCONNECTED = 0x800401FD.toSigned(32);
final CO_E_APPDIDNTREG = 0x800401FE.toSigned(32);
final CLASS_E_NOAGGREGATION = 0x80040110.toSigned(32);
final CLASS_E_CLASSNOTAVAILABLE = 0x80040111.toSigned(32);
final CLASS_E_NOTLICENSED = 0x80040112.toSigned(32);
final RPC_E_CHANGED_MODE = 0x80010106.toSigned(32);
final RPC_E_TOO_LATE = 0x80010119.toSigned(32);
final REGDB_E_CLASSNOTREG = 0x80040154.toSigned(32);
final REGDB_E_IIDNOTREG = 0x80040155.toSigned(32);

// Smartcard errors
final SCARD_S_SUCCESS = NO_ERROR;
final SCARD_E_CANCELLED = 0x80100002.toSigned(32);
final SCARD_E_INVALID_HANDLE = 0x80100003.toSigned(32);
final SCARD_E_INVALID_PARAMETER = 0x80100004.toSigned(32);
final SCARD_E_INVALID_TARGET = 0x80100005.toSigned(32);
final SCARD_E_NO_MEMORY = 0x80100006.toSigned(32);
final SCARD_F_WAITED_TOO_LONG = 0x80100007.toSigned(32);
final SCARD_E_INSUFFICIENT_BUFFER = 0x80100008.toSigned(32);
final SCARD_E_UNKNOWN_READER = 0x80100009.toSigned(32);
final SCARD_E_TIMEOUT = 0x8010000A.toSigned(32);
final SCARD_E_SHARING_VIOLATION = 0x8010000B.toSigned(32);
final SCARD_E_NO_SMARTCARD = 0x8010000C.toSigned(32);
final SCARD_E_UNKNOWN_CARD = 0x8010000D.toSigned(32);
final SCARD_E_CANT_DISPOSE = 0x8010000E.toSigned(32);
final SCARD_E_PROTO_MISMATCH = 0x8010000F.toSigned(32);
final SCARD_E_NOT_READY = 0x80100010.toSigned(32);
final SCARD_E_INVALID_VALUE = 0x80100011.toSigned(32);
final SCARD_E_SYSTEM_CANCELLED = 0x80100012.toSigned(32);
final SCARD_F_COMM_ERROR = 0x80100013.toSigned(32);
final SCARD_F_UNKNOWN_ERROR = 0x80100014.toSigned(32);
final SCARD_E_INVALID_ATR = 0x80100015.toSigned(32);
final SCARD_E_NOT_TRANSACTED = 0x80100016.toSigned(32);
final SCARD_E_READER_UNAVAILABLE = 0x80100017.toSigned(32);
final SCARD_P_SHUTDOWN = 0x80100018.toSigned(32);
final SCARD_E_PCI_TOO_SMALL = 0x80100019.toSigned(32);
final SCARD_E_READER_UNSUPPORTED = 0x8010001A.toSigned(32);
final SCARD_E_DUPLICATE_READER = 0x8010001B.toSigned(32);
final SCARD_E_CARD_UNSUPPORTED = 0x8010001C.toSigned(32);
final SCARD_E_NO_SERVICE = 0x8010001D.toSigned(32);
final SCARD_E_SERVICE_STOPPED = 0x8010001E.toSigned(32);
final SCARD_E_UNEXPECTED = 0x8010001F.toSigned(32);
final SCARD_E_ICC_INSTALLATION = 0x80100020.toSigned(32);
final SCARD_E_ICC_CREATEORDER = 0x80100021.toSigned(32);
final SCARD_E_UNSUPPORTED_FEATURE = 0x80100022.toSigned(32);
final SCARD_E_DIR_NOT_FOUND = 0x80100023.toSigned(32);
final SCARD_E_FILE_NOT_FOUND = 0x80100024.toSigned(32);
final SCARD_E_NO_DIR = 0x80100025.toSigned(32);
final SCARD_E_NO_FILE = 0x80100026.toSigned(32);
final SCARD_E_NO_ACCESS = 0x80100027.toSigned(32);
final SCARD_E_WRITE_TOO_MANY = 0x80100028.toSigned(32);
final SCARD_E_BAD_SEEK = 0x80100029.toSigned(32);
final SCARD_E_INVALID_CHV = 0x8010002A.toSigned(32);
final SCARD_E_UNKNOWN_RES_MNG = 0x8010002B.toSigned(32);
final SCARD_E_NO_SUCH_CERTIFICATE = 0x8010002C.toSigned(32);
final SCARD_E_CERTIFICATE_UNAVAILABLE = 0x8010002D.toSigned(32);
final SCARD_E_NO_READERS_AVAILABLE = 0x8010002E.toSigned(32);
final SCARD_E_COMM_DATA_LOST = 0x8010002F.toSigned(32);
final SCARD_E_NO_KEY_CONTAINER = 0x80100030.toSigned(32);
final SCARD_E_SERVER_TOO_BUSY = 0x80100031.toSigned(32);
final SCARD_E_PIN_CACHE_EXPIRED = 0x80100032.toSigned(32);
final SCARD_E_NO_PIN_CACHE = 0x80100033.toSigned(32);
final SCARD_E_READ_ONLY_CARD = 0x80100034.toSigned(32);
final SCARD_W_UNSUPPORTED_CARD = 0x80100065.toSigned(32);
final SCARD_W_UNRESPONSIVE_CARD = 0x80100066.toSigned(32);
final SCARD_W_UNPOWERED_CARD = 0x80100067.toSigned(32);
final SCARD_W_RESET_CARD = 0x80100068.toSigned(32);
final SCARD_W_REMOVED_CARD = 0x80100069.toSigned(32);
final SCARD_W_SECURITY_VIOLATION = 0x8010006A.toSigned(32);
final SCARD_W_WRONG_CHV = 0x8010006B.toSigned(32);
final SCARD_W_CHV_BLOCKED = 0x8010006C.toSigned(32);
final SCARD_W_EOF = 0x8010006D.toSigned(32);
final SCARD_W_CANCELLED_BY_USER = 0x8010006E.toSigned(32);
final SCARD_W_CARD_NOT_AUTHENTICATED = 0x8010006F.toSigned(32);
final SCARD_W_CACHE_ITEM_NOT_FOUND = 0x80100070.toSigned(32);
final SCARD_W_CACHE_ITEM_STALE = 0x80100071.toSigned(32);
final SCARD_W_CACHE_ITEM_TOO_BIG = 0x80100072.toSigned(32);

// RPC authentication

const RPC_C_AUTHN_NONE = 0;
const RPC_C_AUTHN_DCE_PRIVATE = 1;
const RPC_C_AUTHN_DCE_PUBLIC = 2;
const RPC_C_AUTHN_DEC_PUBLIC = 4;
const RPC_C_AUTHN_GSS_NEGOTIATE = 9;
const RPC_C_AUTHN_WINNT = 10;
const RPC_C_AUTHN_GSS_SCHANNEL = 14;
const RPC_C_AUTHN_GSS_KERBEROS = 16;
const RPC_C_AUTHN_DPA = 17;
const RPC_C_AUTHN_MSN = 18;
const RPC_C_AUTHZ_NONE = 0;
const RPC_C_AUTHZ_NAME = 1;
const RPC_C_AUTHZ_DCE = 2;
const RPC_C_AUTHZ_DEFAULT = 0xffffffff;

const TREE_CONNECT_ATTRIBUTE_PRIVACY = 0x00004000;
const TREE_CONNECT_ATTRIBUTE_INTEGRITY = 0x00008000;
const TREE_CONNECT_ATTRIBUTE_GLOBAL = 0x00000004;
const TREE_CONNECT_ATTRIBUTE_PINNED = 0x00000002;

const FILE_ATTRIBUTE_STRICTLY_SEQUENTIAL = 0x20000000;

const MAILSLOT_NO_MESSAGE = -1;
const MAILSLOT_WAIT_FOREVER = -1;

// Task dialog icons.
//
// In the Windows header files, these are defined in the following format:
//   #define TD_WARNING_ICON         MAKEINTRESOURCEW(-1)
final TD_WARNING_ICON = Pointer<Utf16>.fromAddress(0xFFFF);
final TD_ERROR_ICON = Pointer<Utf16>.fromAddress(0xFFFE);
final TD_INFORMATION_ICON = Pointer<Utf16>.fromAddress(0xFFFD);
final TD_SHIELD_ICON = Pointer<Utf16>.fromAddress(0xFFFC);

/// {@category enum}
class WINDOWPARTS {
  static const int WP_CAPTION = 1;
  static const int WP_SMALLCAPTION = 2;
  static const int WP_MINCAPTION = 3;
  static const int WP_SMALLMINCAPTION = 4;
  static const int WP_MAXCAPTION = 5;
  static const int WP_SMALLMAXCAPTION = 6;
  static const int WP_FRAMELEFT = 7;
  static const int WP_FRAMERIGHT = 8;
  static const int WP_FRAMEBOTTOM = 9;
  static const int WP_SMALLFRAMELEFT = 10;
  static const int WP_SMALLFRAMERIGHT = 11;
  static const int WP_SMALLFRAMEBOTTOM = 12;
  static const int WP_SYSBUTTON = 13;
  static const int WP_MDISYSBUTTON = 14;
  static const int WP_MINBUTTON = 15;
  static const int WP_MDIMINBUTTON = 16;
  static const int WP_MAXBUTTON = 17;
  static const int WP_CLOSEBUTTON = 18;
  static const int WP_SMALLCLOSEBUTTON = 19;
  static const int WP_MDICLOSEBUTTON = 20;
  static const int WP_RESTOREBUTTON = 21;
  static const int WP_MDIRESTOREBUTTON = 22;
  static const int WP_HELPBUTTON = 23;
  static const int WP_MDIHELPBUTTON = 24;
  static const int WP_HORZSCROLL = 25;
  static const int WP_HORZTHUMB = 26;
  static const int WP_VERTSCROLL = 27;
  static const int WP_VERTTHUMB = 28;
  static const int WP_DIALOG = 29;
  static const int WP_CAPTIONSIZINGTEMPLATE = 30;
  static const int WP_SMALLCAPTIONSIZINGTEMPLATE = 31;
  static const int WP_FRAMELEFTSIZINGTEMPLATE = 32;
  static const int WP_SMALLFRAMELEFTSIZINGTEMPLATE = 33;
  static const int WP_FRAMERIGHTSIZINGTEMPLATE = 34;
  static const int WP_SMALLFRAMERIGHTSIZINGTEMPLATE = 35;
  static const int WP_FRAMEBOTTOMSIZINGTEMPLATE = 36;
  static const int WP_SMALLFRAMEBOTTOMSIZINGTEMPLATE = 37;
  static const int WP_FRAME = 38;
  static const int WP_BORDER = 39;
}

/// {@category enum}
class FRAMESTATES {
  static const int FS_ACTIVE = 1;
  static const int FS_INACTIVE = 2;
}

/// {@category enum}
class CAPTIONSTATES {
  static const int CS_ACTIVE = 1;
  static const int CS_INACTIVE = 2;
  static const int CS_DISABLED = 3;
}

/// {@category enum}
class MAXCAPTIONSTATES {
  static const int MXCS_ACTIVE = 1;
  static const int MXCS_INACTIVE = 2;
  static const int MXCS_DISABLED = 3;
}

/// {@category enum}
class MINCAPTIONSTATES {
  static const int MNCS_ACTIVE = 1;
  static const int MNCS_INACTIVE = 2;
  static const int MNCS_DISABLED = 3;
}

/// {@category enum}
class HORZSCROLLSTATES {
  static const int HSS_NORMAL = 1;
  static const int HSS_HOT = 2;
  static const int HSS_PUSHED = 3;
  static const int HSS_DISABLED = 4;
}

/// {@category enum}
class HORZTHUMBSTATES {
  static const int HTS_NORMAL = 1;
  static const int HTS_HOT = 2;
  static const int HTS_PUSHED = 3;
  static const int HTS_DISABLED = 4;
}

/// {@category enum}
class VERTSCROLLSTATES {
  static const int VSS_NORMAL = 1;
  static const int VSS_HOT = 2;
  static const int VSS_PUSHED = 3;
  static const int VSS_DISABLED = 4;
}

/// {@category enum}
class VERTTHUMBSTATES {
  static const int VTS_NORMAL = 1;
  static const int VTS_HOT = 2;
  static const int VTS_PUSHED = 3;
  static const int VTS_DISABLED = 4;
}

/// {@category enum}
class SYSBUTTONSTATES {
  static const int SBS_NORMAL = 1;
  static const int SBS_HOT = 2;
  static const int SBS_PUSHED = 3;
  static const int SBS_DISABLED = 4;
}

/// {@category enum}
class MINBUTTONSTATES {
  static const int MINBS_NORMAL = 1;
  static const int MINBS_HOT = 2;
  static const int MINBS_PUSHED = 3;
  static const int MINBS_DISABLED = 4;
}

/// {@category enum}
class MAXBUTTONSTATES {
  static const int MAXBS_NORMAL = 1;
  static const int MAXBS_HOT = 2;
  static const int MAXBS_PUSHED = 3;
  static const int MAXBS_DISABLED = 4;
}

/// {@category enum}
class RESTOREBUTTONSTATES {
  static const int RBS_NORMAL = 1;
  static const int RBS_HOT = 2;
  static const int RBS_PUSHED = 3;
  static const int RBS_DISABLED = 4;
}

/// {@category enum}
class HELPBUTTONSTATES {
  static const int HBS_NORMAL = 1;
  static const int HBS_HOT = 2;
  static const int HBS_PUSHED = 3;
  static const int HBS_DISABLED = 4;
}

/// {@category enum}
class CLOSEBUTTONSTATES {
  static const int CBS_NORMAL = 1;
  static const int CBS_HOT = 2;
  static const int CBS_PUSHED = 3;
  static const int CBS_DISABLED = 4;
}

/// {@category enum}
class SMALLCLOSEBUTTONSTATES {
  static const int SCBS_NORMAL = 1;
  static const int SCBS_HOT = 2;
  static const int SCBS_PUSHED = 3;
  static const int SCBS_DISABLED = 4;
}

/// {@category enum}
class FRAMEBOTTOMSTATES {
  static const int FRB_ACTIVE = 1;
  static const int FRB_INACTIVE = 2;
}

/// {@category enum}
class FRAMELEFTSTATES {
  static const int FRL_ACTIVE = 1;
  static const int FRL_INACTIVE = 2;
}

/// {@category enum}
class FRAMERIGHTSTATES {
  static const int FRR_ACTIVE = 1;
  static const int FRR_INACTIVE = 2;
}

/// {@category enum}
class SMALLCAPTIONSTATES {
  static const int SCS_ACTIVE = 1;
  static const int SCS_INACTIVE = 2;
  static const int SCS_DISABLED = 3;
}

/// {@category enum}
class SMALLFRAMEBOTTOMSTATES {
  static const int SFRB_ACTIVE = 1;
  static const int SFRB_INACTIVE = 2;
}

/// {@category enum}
class SMALLFRAMELEFTSTATES {
  static const int SFRL_ACTIVE = 1;
  static const int SFRL_INACTIVE = 2;
}

/// {@category enum}
class SMALLFRAMERIGHTSTATES {
  static const int SFRR_ACTIVE = 1;
  static const int SFRR_INACTIVE = 2;
}

/// {@category enum}
class MDICLOSEBUTTONSTATES {
  static const int MDCL_NORMAL = 1;
  static const int MDCL_HOT = 2;
  static const int MDCL_PUSHED = 3;
  static const int MDCL_DISABLED = 4;
}

/// {@category enum}
class MDIMINBUTTONSTATES {
  static const int MDMI_NORMAL = 1;
  static const int MDMI_HOT = 2;
  static const int MDMI_PUSHED = 3;
  static const int MDMI_DISABLED = 4;
}

/// {@category enum}
class MDIRESTOREBUTTONSTATES {
  static const int MDRE_NORMAL = 1;
  static const int MDRE_HOT = 2;
  static const int MDRE_PUSHED = 3;
  static const int MDRE_DISABLED = 4;
}

// MIDI-specific return codes
const _MIDIERR_BASE = 64;
const MIDIERR_UNPREPARED = _MIDIERR_BASE + 0;
const MIDIERR_STILLPLAYING = _MIDIERR_BASE + 1;
const MIDIERR_NOMAP = _MIDIERR_BASE + 2;
const MIDIERR_NOTREADY = _MIDIERR_BASE + 3;
const MIDIERR_NODEVICE = _MIDIERR_BASE + 4;
const MIDIERR_INVALIDSETUP = _MIDIERR_BASE + 5;
const MIDIERR_BADOPENMODE = _MIDIERR_BASE + 6;
const MIDIERR_DONT_CONTINUE = _MIDIERR_BASE + 7;
const MIDIERR_LASTERROR = _MIDIERR_BASE + 7;

// Multimedia constants
const _MMSYSERR_BASE = 0;
const MMSYSERR_NOERROR = 0;
const MMSYSERR_ERROR = _MMSYSERR_BASE + 1;
const MMSYSERR_BADDEVICEID = _MMSYSERR_BASE + 2;
const MMSYSERR_NOTENABLED = _MMSYSERR_BASE + 3;
const MMSYSERR_ALLOCATED = _MMSYSERR_BASE + 4;
const MMSYSERR_INVALHANDLE = _MMSYSERR_BASE + 5;
const MMSYSERR_NODRIVER = _MMSYSERR_BASE + 6;
const MMSYSERR_NOMEM = _MMSYSERR_BASE + 7;
const MMSYSERR_NOTSUPPORTED = _MMSYSERR_BASE + 8;
const MMSYSERR_BADERRNUM = _MMSYSERR_BASE + 9;
const MMSYSERR_INVALFLAG = _MMSYSERR_BASE + 10;
const MMSYSERR_INVALPARAM = _MMSYSERR_BASE + 11;
const MMSYSERR_HANDLEBUSY = _MMSYSERR_BASE + 12;
const MMSYSERR_INVALIDALIAS = _MMSYSERR_BASE + 13;
const MMSYSERR_BADDB = _MMSYSERR_BASE + 14;
const MMSYSERR_KEYNOTFOUND = _MMSYSERR_BASE + 15;
const MMSYSERR_READERROR = _MMSYSERR_BASE + 16;
const MMSYSERR_WRITEERROR = _MMSYSERR_BASE + 17;
const MMSYSERR_DELETEERROR = _MMSYSERR_BASE + 18;
const MMSYSERR_VALNOTFOUND = _MMSYSERR_BASE + 19;
const MMSYSERR_NODRIVERCB = _MMSYSERR_BASE + 20;
const MMSYSERR_MOREDATA = _MMSYSERR_BASE + 21;
const MMSYSERR_LASTERROR = _MMSYSERR_BASE + 21;

const SHERB_NOCONFIRMATION = 0x00000001;
const SHERB_NOPROGRESSUI = 0x00000002;
const SHERB_NOSOUND = 0x00000004;

// Folder IDs
const FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}';
const FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}';
const FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}';
const FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}';
const FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}';
const FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}';
const FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4a90-BBA9-27CBC0C5389A}';
const FOLDERID_ConflictFolder = '{4bfefb45-347d-4006-a5be-ac0cb0567192}';
const FOLDERID_SyncResultsFolder = '{289a9a43-be44-4057-a41b-587a76d7e7f9}';
const FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}';
const FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}';
const FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}';
const FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}';
const FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}';
const FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}';
const FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}';
const FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}';
const FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}';
const FOLDERID_Documents = '{FDD39AD0-238F-46AF-ADB4-6C85480369C7}';
const FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}';
const FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}';
const FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}';
const FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}';
const FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}';
const FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}';
const FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}';
const FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}';
const FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}';
const FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}';
const FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}';
const FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}';
const FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}';
const FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}';
const FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}';
const FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}';
const FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}';
const FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}';
const FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}';
const FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}';
const FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}';
const FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}';
const FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}';
const FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}';
const FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444b-8957-A3773F02200E}';
const FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45e5-87F6-0DA56B6A4F7D}';
const FOLDERID_ProgramFiles = '{905e63b6-c1bf-494e-b29c-65b732d3d21a}';
const FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}';
const FOLDERID_UserProgramFiles = '{5cd7aee2-2219-4a67-b85d-6c9ce15660cb}';
const FOLDERID_UserProgramFilesCommon =
    '{bcbd3057-ca5c-4622-b42d-bc56db0ae516}';
const FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}';
const FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}';
const FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}';
const FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}';
const FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}';
const FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}';
const FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}';
const FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}';
const FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}';
const FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}';
const FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}';
const FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}';
const FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}';
const FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}';
const FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}';
const FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}';
const FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}';
const FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}';
const FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}';
const FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}';
const FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}';
const FOLDERID_ChangeRemovePrograms = '{df7266ac-9274-4867-8d55-3bd661de872d}';
const FOLDERID_AppUpdates = '{a305ce99-f527-492b-8b1a-7e76fa98d6e4}';
const FOLDERID_AddNewPrograms = '{de61d971-5ebc-4f02-a3a9-6c82895e5c04}';
const FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}';
const FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4f30-9B45-F670235F79C0}';
const FOLDERID_SavedSearches = '{7d1d3a04-debb-4115-95cf-2f29da2920da}';
const FOLDERID_QuickLaunch = '{52a4f021-7b75-48a9-9f6b-4b87a210bc8f}';
const FOLDERID_Contacts = '{56784854-C6CB-462b-8169-88E350ACB882}';
const FOLDERID_SidebarParts = '{A75D362E-50FC-4fb7-AC2C-A8BEAA314493}';
const FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}';
const FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4c59-B6A2-414586476AEA}';
const FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}';
const FOLDERID_SavedGames = '{4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4}';
const FOLDERID_Games = '{CAC52C1A-B53D-4edc-92D7-6B2E8AC19434}';
const FOLDERID_SEARCH_MAPI = '{98ec0e18-2098-4d44-8644-66979315a281}';
const FOLDERID_SEARCH_CSC = '{ee32e446-31ca-4aba-814f-a5ebd2fd6d5e}';
const FOLDERID_Links = '{bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968}';
const FOLDERID_UsersFiles = '{f3ce0f7c-4901-4acc-8648-d5d44b04ef8f}';
const FOLDERID_UsersLibraries = '{A302545D-DEFF-464b-ABE8-61C8648D939B}';
const FOLDERID_SearchHome = '{190337d1-b8ca-4121-a639-6d472d16972a}';
const FOLDERID_OriginalImages = '{2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39}';
const FOLDERID_DocumentsLibrary = '{7b0db17d-9cd2-4a93-9733-46cc89022e7c}';
const FOLDERID_MusicLibrary = '{2112AB0A-C86A-4ffe-A368-0DE96E47012E}';
const FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4e80-94BC-9912D7504104}';
const FOLDERID_VideosLibrary = '{491E922F-5643-4af4-A7EB-4E7A138D8174}';
const FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}';
const FOLDERID_HomeGroup = '{52528A6B-B9E3-4add-B60D-588C2DBA842D}';
const FOLDERID_HomeGroupCurrentUser = '{9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}';
const FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}';
const FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}';
const FOLDERID_PublicLibraries = '{48daf80b-e6cf-4f4e-b800-0e69d84ee384}';
const FOLDERID_UserPinned = '{9e3995ab-1f9c-4f13-b827-48b24b6c7174}';
const FOLDERID_ImplicitAppShortcuts = '{bcb5256f-79f6-4cee-b725-dc34e402fd46}';
const FOLDERID_AccountPictures = '{008ca0b1-55b4-4c56-b8a8-4de4b299d3be}';
const FOLDERID_PublicUserTiles = '{0482af6c-08f1-4c34-8c90-e17ec98b1e17}';
const FOLDERID_AppsFolder = '{1e87508d-89c2-42f0-8a7e-645a0f50ca58}';
const FOLDERID_StartMenuAllPrograms = '{F26305EF-6948-40B9-B255-81453D09C785}';
const FOLDERID_CommonStartMenuPlaces = '{A440879F-87A0-4F7D-B700-0207B966194A}';
const FOLDERID_ApplicationShortcuts = '{A3918781-E5F2-4890-B3D9-A7E54332328C}';
const FOLDERID_RoamingTiles = '{00BCFC5A-ED94-4e48-96A1-3F6217F21990}';
const FOLDERID_RoamedTileImages = '{AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}';
const FOLDERID_Screenshots = '{b7bede81-df94-4682-a7d8-57a52620b86f}';
const FOLDERID_CameraRoll = '{AB5FB87B-7CE2-4F83-915D-550846C9537B}';
const FOLDERID_SkyDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';
const FOLDERID_OneDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';
const FOLDERID_SkyDriveDocuments = '{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}';
const FOLDERID_SkyDrivePictures = '{339719B5-8C47-4894-94C2-D8F77ADD44A6}';
const FOLDERID_SkyDriveMusic = '{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}';
const FOLDERID_SkyDriveCameraRoll = '{767E6811-49CB-4273-87C2-20F355E1085B}';
const FOLDERID_SearchHistory = '{0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}';
const FOLDERID_SearchTemplates = '{7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}';
const FOLDERID_CameraRollLibrary = '{2B20DF75-1EDA-4039-8097-38798227D5B7}';
const FOLDERID_SavedPictures = '{3B193882-D3AD-4eab-965A-69829D1FB59F}';
const FOLDERID_SavedPicturesLibrary = '{E25B5812-BE88-4bd9-94B0-29233477B6C3}';
const FOLDERID_RetailDemo = '{12D4C69E-24AD-4923-BE19-31321C43A767}';
const FOLDERID_Device = '{1C2AC1DC-4358-4B6C-9733-AF21156576F0}';
const FOLDERID_DevelopmentFiles = '{DBE8E08E-3053-4BBC-B183-2A7B2B191E59}';
const FOLDERID_Objects3D = '{31C0DD25-9439-4F12-BF41-7FF4EDA38722}';
const FOLDERID_AppCaptures = '{EDC0FE71-98D8-4F4A-B920-C8DC133CB165}';
const FOLDERID_LocalDocuments = '{f42ee2d3-909f-4907-8871-4c22fc0bf756}';
const FOLDERID_LocalPictures = '0ddd015d-b06c-45d5-8c4c-f59713854639 }';
const FOLDERID_LocalVideos = '{35286a68-3c57-41a1-bbb1-0eae73d76c95}';
const FOLDERID_LocalMusic = '{a0c69a99-21c8-4671-8703-7934162fcf1d}';
const FOLDERID_LocalDownloads = '{7d83ee9b-2244-4e70-b1f5-5393042af1e4}';
const FOLDERID_RecordedCalls = '{2f8b40c2-83ed-48ee-b383-a1f157ec6f9a}';
const FOLDERID_AllAppMods = '{7ad67899-66af-43ba-9156-6aad42e6c596}';
const FOLDERID_CurrentAppMods = '{3db40b20-2a30-4dbe-917e-771dd21dd099}';
const FOLDERID_AppDataDesktop = '{B2C5E279-7ADD-439F-B28C-C41FE1BBF672}';
const FOLDERID_AppDataDocuments = '{7BE16610-1F7F-44AC-BFF0-83E15F2FFCA1}';
const FOLDERID_AppDataFavorites = '{7CFBEFBC-DE1F-45AA-B843-A542AC536CC9}';
const FOLDERID_AppDataProgramData = '{559D40A3-A036-40FA-AF61-84CB430A4D34}';

// -----------------------------------------------------------------------------
// Device classes
// -----------------------------------------------------------------------------

const GUID_DEVCLASS_1394 = '{6bdd1fc1-810f-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_1394DEBUG = '{66f250d6-7801-4a64-b139-eea80a450b24';
const GUID_DEVCLASS_61883 = '{7ebefbc0-3200-11d2-b4c2-00a0c9697d07';
const GUID_DEVCLASS_ADAPTER = '{4d36e964-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_APMSUPPORT = '{d45b1c18-c8fa-11d1-9f77-0000f805f530';
const GUID_DEVCLASS_AVC = '{c06ff265-ae09-48f0-812c-16753d7cba83';
const GUID_DEVCLASS_BATTERY = '{72631e54-78a4-11d0-bcf7-00aa00b7b32a';
const GUID_DEVCLASS_BIOMETRIC = '{53d29ef7-377c-4d14-864b-eb3a85769359';
const GUID_DEVCLASS_BLUETOOTH = '{e0cbf06c-cd8b-4647-bb8a-263b43f0f974';
const GUID_DEVCLASS_CAMERA = '{ca3e7ab9-b4c3-4ae6-8251-579ef933890f';
const GUID_DEVCLASS_CDROM = '{4d36e965-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_COMPUTEACCELERATOR =
    '{f01a9d53-3ff6-48d2-9f97-c8a7004be10c';
const GUID_DEVCLASS_COMPUTER = '{4d36e966-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_DECODER = '{6bdd1fc2-810f-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_DISKDRIVE = '{4d36e967-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_DISPLAY = '{4d36e968-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_DOT4 = '{48721b56-6795-11d2-b1a8-0080c72e74a2';
const GUID_DEVCLASS_DOT4PRINT = '{49ce6ac8-6f86-11d2-b1e5-0080c72e74a2';
const GUID_DEVCLASS_EHSTORAGESILO = '{9da2b80f-f89f-4a49-a5c2-511b085b9e8a';
const GUID_DEVCLASS_ENUM1394 = '{c459df55-db08-11d1-b009-00a0c9081ff6';
const GUID_DEVCLASS_EXTENSION = '{e2f84ce7-8efa-411c-aa69-97454ca4cb57';
const GUID_DEVCLASS_FDC = '{4d36e969-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_FIRMWARE = '{f2e7dd72-6468-4e36-b6f1-6488f42c1b52';
const GUID_DEVCLASS_FLOPPYDISK = '{4d36e980-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_GPS = '{6bdd1fc3-810f-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_HDC = '{4d36e96a-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_HIDCLASS = '{745a17a0-74d3-11d0-b6fe-00a0c90f57da';
const GUID_DEVCLASS_HOLOGRAPHIC = '{d612553d-06b1-49ca-8938-e39ef80eb16f';
const GUID_DEVCLASS_IMAGE = '{6bdd1fc6-810f-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_INFINIBAND = '{30ef7132-d858-4a0c-ac24-b9028a5cca3f';
const GUID_DEVCLASS_INFRARED = '{6bdd1fc5-810f-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_KEYBOARD = '{4d36e96b-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_LEGACYDRIVER = '{8ecc055d-047f-11d1-a537-0000f8753ed1';
const GUID_DEVCLASS_MEDIA = '{4d36e96c-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MEDIUM_CHANGER = '{ce5939ae-ebde-11d0-b181-0000f8753ec4';
const GUID_DEVCLASS_MEMORY = '{5099944a-f6b9-4057-a056-8c550228544c';
const GUID_DEVCLASS_MODEM = '{4d36e96d-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MONITOR = '{4d36e96e-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MOUSE = '{4d36e96f-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MTD = '{4d36e970-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MULTIFUNCTION = '{4d36e971-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_MULTIPORTSERIAL = '{50906cb8-ba12-11d1-bf5d-0000f805f530';
const GUID_DEVCLASS_NET = '{4d36e972-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_NETCLIENT = '{4d36e973-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_NETDRIVER = '{87ef9ad1-8f70-49ee-b215-ab1fcadcbe3c';
const GUID_DEVCLASS_NETSERVICE = '{4d36e974-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_NETTRANS = '{4d36e975-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_NETUIO = '{78912bc1-cb8e-4b28-a329-f322ebadbe0f';
const GUID_DEVCLASS_NODRIVER = '{4d36e976-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_PCMCIA = '{4d36e977-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_PNPPRINTERS = '{4658ee7e-f050-11d1-b6bd-00c04fa372a7';
const GUID_DEVCLASS_PORTS = '{4d36e978-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_PRINTER = '{4d36e979-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_PRINTERUPGRADE = '{4d36e97a-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_PRINTQUEUE = '{1ed2bbf9-11f0-4084-b21f-ad83a8e6dcdc';
const GUID_DEVCLASS_PROCESSOR = '{50127dc3-0f36-415e-a6cc-4cb3be910B65';
const GUID_DEVCLASS_SBP2 = '{d48179be-ec20-11d1-b6b8-00c04fa372a7';
const GUID_DEVCLASS_SCMDISK = '{53966cb1-4d46-4166-bf23-c522403cd495';
const GUID_DEVCLASS_SCMVOLUME = '{53ccb149-e543-4c84-b6e0-bce4f6b7e806';
const GUID_DEVCLASS_SCSIADAPTER = '{4d36e97b-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_SECURITYACCELERATOR =
    '{268c95a1-edfe-11d3-95c3-0010dc4050a5';
const GUID_DEVCLASS_SENSOR = '{5175d334-c371-4806-b3ba-71fd53c9258d';
const GUID_DEVCLASS_SIDESHOW = '{997b5d8d-c442-4f2e-baf3-9c8e671e9e21';
const GUID_DEVCLASS_SMARTCARDREADER = '{50dd5230-ba8a-11d1-bf5d-0000f805f530';
const GUID_DEVCLASS_SMRDISK = '{53487c23-680f-4585-acc3-1f10d6777e82';
const GUID_DEVCLASS_SMRVOLUME = '{53b3cf03-8f5a-4788-91b6-d19ed9fcccbf';
const GUID_DEVCLASS_SOFTWARECOMPONENT = '{5c4c3332-344d-483c-8739-259e934c9cc8';
const GUID_DEVCLASS_SOUND = '{4d36e97c-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_SYSTEM = '{4d36e97d-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_TAPEDRIVE = '{6d807884-7d21-11cf-801c-08002be10318';
const GUID_DEVCLASS_UNKNOWN = '{4d36e97e-e325-11ce-bfc1-08002be10318';
const GUID_DEVCLASS_UCM = '{e6f1aa1c-7f3b-4473-b2e8-c97d8ac71d53';
const GUID_DEVCLASS_USB = '{36fc9e60-c465-11cf-8056-444553540000';
const GUID_DEVCLASS_VOLUME = '{71a27cdd-812a-11d0-bec7-08002be2092f';
const GUID_DEVCLASS_VOLUMESNAPSHOT = '{533c5b84-ec70-11d2-9505-00c04f79deaf';
const GUID_DEVCLASS_WCEUSBS = '{25dbce51-6c8f-4a72-8a6d-b54c2b4fc835';
const GUID_DEVCLASS_WPD = '{eec5ad98-8080-425f-922a-dabf3de3f69a';

// -----------------------------------------------------------------------------
// Device interface classes
// -----------------------------------------------------------------------------

const GUID_DEVINTERFACE_BRIGHTNESS = '{FDE5BBA4-B3F9-46FB-BDAA-0728CE3100B4}';
const GUID_DEVINTERFACE_CDCHANGER = '{53F56312-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_CDROM = '{53F56308-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_COMPORT = '{86E0D1E0-8089-11D0-9CE4-08003E301F73}';
const GUID_DEVINTERFACE_DISK = '{53F56307-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_DISPLAY_ADAPTER =
    '{5B45201D-F2F2-4F3B-85BB-30FF1F953599}';
const GUID_DEVINTERFACE_FLOPPY = '{53F56311-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_HID = '{4D1E55B2-F16F-11CF-88CB-001111000030}';
const GUID_DEVINTERFACE_I2C = '{2564AA4F-DDDB-4495-B497-6AD4A84163D7}';
const GUID_DEVINTERFACE_IMAGE = '{6BDD1FC6-810F-11D0-BEC7-08002BE2092F}';
const GUID_DEVINTERFACE_KEYBOARD = '{884B96C3-56EF-11D1-BC8C-00A0C91405DD}';
const GUID_DEVINTERFACE_MEDIUMCHANGER =
    '{53F56310-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_MODEM = '{2C7089AA-2E0E-11D1-B114-00C04FC2AAE4}';
const GUID_DEVINTERFACE_MONITOR = '{E6F07B5F-EE97-4a90-B076-33F57BF4EAA7}';
const GUID_DEVINTERFACE_MOUSE = '{378DE44C-56EF-11D1-BC8C-00A0C91405DD}';
const GUID_DEVINTERFACE_NET = '{CAC88484-7515-4C03-82E6-71A87ABAC361}';
const GUID_DEVINTERFACE_OPM = '{BF4672DE-6B4E-4BE4-A325-68A91EA49C09}';
const GUID_DEVINTERFACE_PARALLEL = '{97F76EF0-F883-11D0-AF1F-0000F800845C}';
const GUID_DEVINTERFACE_PARCLASS = '{811FC6A5-F728-11D0-A537-0000F8753ED1}';
const GUID_DEVINTERFACE_PARTITION = '{53F5630A-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR =
    '{4D36E978-E325-11CE-BFC1-08002BE10318}';
const GUID_DEVINTERFACE_STORAGEPORT = '{2ACCFE60-C130-11D2-B082-00A0C91EFB8B}';
const GUID_DEVINTERFACE_TAPE = '{53F5630B-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_USB_DEVICE = '{A5DCBF10-6530-11D2-901F-00C04FB951ED}';
const GUID_DEVINTERFACE_USB_HOST_CONTROLLER =
    '{3ABF6F2D-71C4-462A-8A92-1E6861E6AF27}';
const GUID_DEVINTERFACE_USB_HUB = '{F18A0E88-C30C-11D0-8815-00A0C906BED8}';
const GUID_DEVINTERFACE_VIDEO_OUTPUT_ARRIVAL =
    '{1AD9E4F0-F88D-4360-BAB9-4C2D55E564CD}';
const GUID_DEVINTERFACE_VOLUME = '{53F5630D-B6BF-11D0-94F2-00A0C91EFB8B}';
const GUID_DEVINTERFACE_WPD = '{6AC27878-A6FA-4155-BA85-F98F491D4F33}';
const GUID_DEVINTERFACE_WPD_PRIVATE = '{BA0C718F-4DED-49B7-BDD3-FABE28661211}';
const GUID_DEVINTERFACE_WRITEONCEDISK =
    '{53F5630C-B6BF-11D0-94F2-00A0C91EFB8B}';

// *** Kernel constants ***

// memory management

// Memory constants
const MEM_ROTATE = 0x00800000;
const MEM_DIFFERENT_IMAGE_BASE_OK = 0x00800000;
const MEM_4MB_PAGES = 0x80000000;
const MEM_64K_PAGES = VIRTUAL_ALLOCATION_TYPE.MEM_LARGE_PAGES | MEM_PHYSICAL;

// DISPID constants
const DISPID_UNKNOWN = -1;
const DISPID_VALUE = 0;
const DISPID_PROPERTYPUT = -3;
const DISPID_NEWENUM = -4;
const DISPID_EVALUATE = -5;
const DISPID_CONSTRUCTOR = -6;
const DISPID_DESTRUCTOR = -7;
const DISPID_COLLECT = -8;

// Bluetooth constants
const BLUETOOTH_MAX_NAME_SIZE = 248;
const BLUETOOTH_MAX_PASSKEY_SIZE = 16;
const BLUETOOTH_MAX_PASSKEY_BUFFER_SIZE = BLUETOOTH_MAX_PASSKEY_SIZE + 1;
const BLUETOOTH_MAX_SERVICE_NAME_SIZE = 256;
const BLUETOOTH_DEVICE_NAME_SIZE = 256;
const BTH_MAX_PIN_SIZE = 16;
const BTH_LINK_KEY_LENGTH = 16;

/// {@category enum}
class KF_DEFINITION_FLAGS {
  static const KFDF_LOCAL_REDIRECT_ONLY = 0x2;
  static const KFDF_ROAMABLE = 0x4;
  static const KFDF_PRECREATE = 0x8;
  static const KFDF_STREAM = 0x10;
  static const KFDF_PUBLISHEXPANDEDPATH = 0x20;
  static const KFDF_NO_REDIRECT_UI = 0x4;
}

/// {@category enum}
class KF_REDIRECT_FLAGS {
  static const KF_REDIRECT_USER_EXCLUSIVE = 0x1;
  static const KF_REDIRECT_COPY_SOURCE_DACL = 0x2;
  static const KF_REDIRECT_OWNER_USER = 0x4;
  static const KF_REDIRECT_SET_OWNER_EXPLICIT = 0x8;
  static const KF_REDIRECT_CHECK_ONLY = 0x10;
  static const KF_REDIRECT_WITH_UI = 0x20;
  static const KF_REDIRECT_UNPIN = 0x40;
  static const KF_REDIRECT_PIN = 0x80;
  static const KF_REDIRECT_COPY_CONTENTS = 0x200;
  static const KF_REDIRECT_DEL_SOURCE_CONTENTS = 0x400;
  static const KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = 0x800;
}

/// {@category enum}
class KF_REDIRECTION_CAPABILITIES {
  static const KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = 0xff;
  static const KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = 0x1;
  static const KF_REDIRECTION_CAPABILITIES_DENY_ALL = 0xfff00;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED = 0x100;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY = 0x200;
  static const KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS = 0x400;
}

/// {@category enum}
class EOLE_AUTHENTICATION_CAPABILITIES {
  static const EOAC_NONE = 0;
  static const EOAC_MUTUAL_AUTH = 0x1;
  static const EOAC_STATIC_CLOAKING = 0x20;
  static const EOAC_DYNAMIC_CLOAKING = 0x40;
  static const EOAC_ANY_AUTHORITY = 0x80;
  static const EOAC_MAKE_FULLSIC = 0x100;
  static const EOAC_DEFAULT = 0x800;
  static const EOAC_SECURE_REFS = 0x2;
  static const EOAC_ACCESS_CONTROL = 0x4;
  static const EOAC_APPID = 0x8;
  static const EOAC_DYNAMIC = 0x10;
  static const EOAC_REQUIRE_FULLSIC = 0x200;
  static const EOAC_AUTO_IMPERSONATE = 0x400;
  static const EOAC_DISABLE_AAA = 0x1000;
  static const EOAC_NO_CUSTOM_MARSHAL = 0x2000;
  static const EOAC_RESERVED1 = 0x4000;
}

/// {@category enum}
class WBEM_REFRESHER_FLAGS {
  static const WBEM_FLAG_REFRESH_AUTO_RECONNECT = 0;
  static const WBEM_FLAG_REFRESH_NO_AUTO_RECONNECT = 1;
}

/// {@category enum}
class WBEM_TIMEOUT_TYPE {
  static const WBEM_NO_WAIT = 0;
  static const WBEM_INFINITE = 0xffffffff;
}

const PRODUCT_UNDEFINED = 0x00000000;
const PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE = 0x00000039;
const PRODUCT_PROFESSIONAL_EMBEDDED = 0x0000003A;
const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = 0x0000003B;
const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = 0x0000003C;
const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = 0x0000003D;
const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = 0x0000003E;
const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = 0x0000003F;
const PRODUCT_CLUSTER_SERVER_V = 0x00000040;
const PRODUCT_EMBEDDED = 0x00000041;
const PRODUCT_STARTER_E = 0x00000042;
const PRODUCT_HOME_BASIC_E = 0x00000043;
const PRODUCT_HOME_PREMIUM_E = 0x00000044;
const PRODUCT_PROFESSIONAL_E = 0x00000045;
const PRODUCT_ENTERPRISE_E = 0x00000046;
const PRODUCT_ULTIMATE_E = 0x00000047;
const PRODUCT_ENTERPRISE_EVALUATION = 0x00000048;
const PRODUCT_MULTIPOINT_STANDARD_SERVER = 0x0000004C;
const PRODUCT_MULTIPOINT_PREMIUM_SERVER = 0x0000004D;
const PRODUCT_STANDARD_EVALUATION_SERVER = 0x0000004F;
const PRODUCT_DATACENTER_EVALUATION_SERVER = 0x00000050;
const PRODUCT_ENTERPRISE_N_EVALUATION = 0x00000054;
const PRODUCT_EMBEDDED_AUTOMOTIVE = 0x00000055;
const PRODUCT_EMBEDDED_INDUSTRY_A = 0x00000056;
const PRODUCT_THINPC = 0x00000057;
const PRODUCT_EMBEDDED_A = 0x00000058;
const PRODUCT_EMBEDDED_INDUSTRY = 0x00000059;
const PRODUCT_EMBEDDED_E = 0x0000005A;
const PRODUCT_EMBEDDED_INDUSTRY_E = 0x0000005B;
const PRODUCT_EMBEDDED_INDUSTRY_A_E = 0x0000005C;
const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER = 0x0000005F;
const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = 0x00000060;
const PRODUCT_CORE_ARM = 0x00000061;
const PRODUCT_CORE_N = 0x00000062;
const PRODUCT_CORE_COUNTRYSPECIFIC = 0x00000063;
const PRODUCT_CORE_SINGLELANGUAGE = 0x00000064;
const PRODUCT_CORE = 0x00000065;
const PRODUCT_PROFESSIONAL_WMC = 0x00000067;
const PRODUCT_EMBEDDED_INDUSTRY_EVAL = 0x00000069;
const PRODUCT_EMBEDDED_INDUSTRY_E_EVAL = 0x0000006A;
const PRODUCT_EMBEDDED_EVAL = 0x0000006B;
const PRODUCT_EMBEDDED_E_EVAL = 0x0000006C;
const PRODUCT_NANO_SERVER = 0x0000006D;
const PRODUCT_CLOUD_STORAGE_SERVER = 0x0000006E;
const PRODUCT_CORE_CONNECTED = 0x0000006F;
const PRODUCT_PROFESSIONAL_STUDENT = 0x00000070;
const PRODUCT_CORE_CONNECTED_N = 0x00000071;
const PRODUCT_PROFESSIONAL_STUDENT_N = 0x00000072;
const PRODUCT_CORE_CONNECTED_SINGLELANGUAGE = 0x00000073;
const PRODUCT_CORE_CONNECTED_COUNTRYSPECIFIC = 0x00000074;
const PRODUCT_CONNECTED_CAR = 0x00000075;
const PRODUCT_INDUSTRY_HANDHELD = 0x00000076;
const PRODUCT_PPI_PRO = 0x00000077;
const PRODUCT_ARM64_SERVER = 0x00000078;
const PRODUCT_EDUCATION = 0x00000079;
const PRODUCT_EDUCATION_N = 0x0000007A;
const PRODUCT_IOTUAP = 0x0000007B;
const PRODUCT_CLOUD_HOST_INFRASTRUCTURE_SERVER = 0x0000007C;
const PRODUCT_ENTERPRISE_S = 0x0000007D;
const PRODUCT_ENTERPRISE_S_N = 0x0000007E;
const PRODUCT_PROFESSIONAL_S = 0x0000007F;
const PRODUCT_PROFESSIONAL_S_N = 0x00000080;
const PRODUCT_ENTERPRISE_S_EVALUATION = 0x00000081;
const PRODUCT_ENTERPRISE_S_N_EVALUATION = 0x00000082;
const PRODUCT_HOLOGRAPHIC = 0x00000087;
const PRODUCT_HOLOGRAPHIC_BUSINESS = 0x00000088;
const PRODUCT_PRO_SINGLE_LANGUAGE = 0x0000008A;
const PRODUCT_PRO_CHINA = 0x0000008B;
const PRODUCT_ENTERPRISE_SUBSCRIPTION = 0x0000008C;
const PRODUCT_ENTERPRISE_SUBSCRIPTION_N = 0x0000008D;
const PRODUCT_DATACENTER_NANO_SERVER = 0x0000008F;
const PRODUCT_STANDARD_NANO_SERVER = 0x00000090;
const PRODUCT_DATACENTER_A_SERVER_CORE = 0x00000091;
const PRODUCT_STANDARD_A_SERVER_CORE = 0x00000092;
const PRODUCT_DATACENTER_WS_SERVER_CORE = 0x00000093;
const PRODUCT_STANDARD_WS_SERVER_CORE = 0x00000094;
const PRODUCT_UTILITY_VM = 0x00000095;
const PRODUCT_DATACENTER_EVALUATION_SERVER_CORE = 0x0000009F;
const PRODUCT_STANDARD_EVALUATION_SERVER_CORE = 0x000000A0;
const PRODUCT_PRO_WORKSTATION = 0x000000A1;
const PRODUCT_PRO_WORKSTATION_N = 0x000000A2;
const PRODUCT_PRO_FOR_EDUCATION = 0x000000A4;
const PRODUCT_PRO_FOR_EDUCATION_N = 0x000000A5;
const PRODUCT_AZURE_SERVER_CORE = 0x000000A8;
const PRODUCT_AZURE_NANO_SERVER = 0x000000A9;
const PRODUCT_ENTERPRISEG = 0x000000AB;
const PRODUCT_ENTERPRISEGN = 0x000000AC;
const PRODUCT_SERVERRDSH = 0x000000AF;
const PRODUCT_CLOUD = 0x000000B2;
const PRODUCT_CLOUDN = 0x000000B3;
const PRODUCT_HUBOS = 0x000000B4;
const PRODUCT_ONECOREUPDATEOS = 0x000000B6;
const PRODUCT_CLOUDE = 0x000000B7;
const PRODUCT_ANDROMEDA = 0x000000B8;
const PRODUCT_IOTOS = 0x000000B9;
const PRODUCT_CLOUDEN = 0x000000BA;
const PRODUCT_IOTEDGEOS = 0x000000BB;
const PRODUCT_IOTENTERPRISE = 0x000000BC;
const PRODUCT_LITE = 0x000000BD;
const PRODUCT_IOTENTERPRISES = 0x000000BF;
const PRODUCT_XBOX_SYSTEMOS = 0x000000C0;
const PRODUCT_XBOX_NATIVEOS = 0x000000C1;
const PRODUCT_XBOX_GAMEOS = 0x000000C2;
const PRODUCT_XBOX_ERAOS = 0x000000C3;
const PRODUCT_XBOX_DURANGOHOSTOS = 0x000000C4;
const PRODUCT_XBOX_SCARLETTHOSTOS = 0x000000C5;
const PRODUCT_UNLICENSED = 0xABCDABCD;

const CRED_PRESERVE_CREDENTIAL_BLOB = 0x1;

// -----------------------------------------------------------------------------
// Multimedia constants
// -----------------------------------------------------------------------------
const MCI_OPEN = 0x0803;
const MCI_CLOSE = 0x0804;
const MCI_ESCAPE = 0x0805;
const MCI_PLAY = 0x0806;
const MCI_SEEK = 0x0807;
const MCI_STOP = 0x0808;
const MCI_PAUSE = 0x0809;
const MCI_INFO = 0x080A;
const MCI_GETDEVCAPS = 0x080B;
const MCI_SPIN = 0x080C;
const MCI_SET = 0x080D;
const MCI_STEP = 0x080E;
const MCI_RECORD = 0x080F;
const MCI_SYSINFO = 0x0810;
const MCI_BREAK = 0x0811;
const MCI_SAVE = 0x0813;
const MCI_STATUS = 0x0814;
const MCI_CUE = 0x0830;
const MCI_REALIZE = 0x0840;
const MCI_WINDOW = 0x0841;
const MCI_PUT = 0x0842;
const MCI_WHERE = 0x0843;
const MCI_FREEZE = 0x0844;
const MCI_UNFREEZE = 0x0845;
const MCI_LOAD = 0x0850;
const MCI_CUT = 0x0851;
const MCI_COPY = 0x0852;
const MCI_PASTE = 0x0853;
const MCI_UPDATE = 0x0854;
const MCI_RESUME = 0x0855;
const MCI_DELETE = 0x0856;
const MCI_NOTIFY = 0x00000001;
const MCI_WAIT = 0x00000002;
const MCI_FROM = 0x00000004;
const MCI_TO = 0x00000008;
const MCI_TRACK = 0x00000010;
const MCI_OPEN_SHAREABLE = 0x00000100;
const MCI_OPEN_ELEMENT = 0x00000200;
const MCI_OPEN_ALIAS = 0x00000400;
const MCI_OPEN_ELEMENT_ID = 0x00000800;
const MCI_OPEN_TYPE_ID = 0x00001000;
const MCI_OPEN_TYPE = 0x00002000;
const MCI_SEEK_TO_START = 0x00000100;
const MCI_SEEK_TO_END = 0x00000200;
const MCI_STATUS_ITEM = 0x00000100;
const MCI_STATUS_START = 0x00000200;
const MCI_STATUS_LENGTH = 0x00000001;
const MCI_STATUS_POSITION = 0x00000002;
const MCI_STATUS_NUMBER_OF_TRACKS = 0x00000003;
const MCI_STATUS_MODE = 0x00000004;
const MCI_STATUS_MEDIA_PRESENT = 0x00000005;
const MCI_STATUS_TIME_FORMAT = 0x00000006;
const MCI_STATUS_READY = 0x00000007;
const MCI_STATUS_CURRENT_TRACK = 0x00000008;
const MCI_INFO_PRODUCT = 0x00000100;
const MCI_INFO_FILE = 0x00000200;
const MCI_INFO_MEDIA_UPC = 0x00000400;
const MCI_INFO_MEDIA_IDENTITY = 0x00000800;
const MCI_INFO_NAME = 0x00001000;
const MCI_INFO_COPYRIGHT = 0x00002000;
const MCI_SEQ_STATUS_TEMPO = 0x00004002;
const MCI_SEQ_STATUS_PORT = 0x00004003;
const MCI_SEQ_STATUS_SLAVE = 0x00004007;
const MCI_SEQ_STATUS_MASTER = 0x00004008;
const MCI_SEQ_STATUS_OFFSET = 0x00004009;
const MCI_SEQ_STATUS_DIVTYPE = 0x0000400A;
const MCI_SEQ_STATUS_NAME = 0x0000400B;
const MCI_SEQ_STATUS_COPYRIGHT = 0x0000400C;
const MCIERR_BASE = 256;
const MCIERR_INVALID_DEVICE_ID = MCIERR_BASE + 1;
const MCIERR_UNRECOGNIZED_KEYWORD = MCIERR_BASE + 3;
const MCIERR_UNRECOGNIZED_COMMAND = MCIERR_BASE + 5;
const MCIERR_HARDWARE = MCIERR_BASE + 6;
const MCIERR_INVALID_DEVICE_NAME = MCIERR_BASE + 7;
const MCIERR_OUT_OF_MEMORY = MCIERR_BASE + 8;
const MCIERR_DEVICE_OPEN = MCIERR_BASE + 9;
const MCIERR_CANNOT_LOAD_DRIVER = MCIERR_BASE + 10;
const MCIERR_MISSING_COMMAND_STRING = MCIERR_BASE + 11;
const MCIERR_PARAM_OVERFLOW = MCIERR_BASE + 12;
const MCIERR_MISSING_STRING_ARGUMENT = MCIERR_BASE + 13;
const MCIERR_BAD_INTEGER = MCIERR_BASE + 14;
const MCIERR_PARSER_INTERNAL = MCIERR_BASE + 15;
const MCIERR_DRIVER_INTERNAL = MCIERR_BASE + 16;
const MCIERR_MISSING_PARAMETER = MCIERR_BASE + 17;
const MCIERR_UNSUPPORTED_FUNCTION = MCIERR_BASE + 18;
const MCIERR_FILE_NOT_FOUND = MCIERR_BASE + 19;
const MCIERR_DEVICE_NOT_READY = MCIERR_BASE + 20;
const MCIERR_INTERNAL = MCIERR_BASE + 21;
const MCIERR_DRIVER = MCIERR_BASE + 22;
const MCIERR_CANNOT_USE_ALL = MCIERR_BASE + 23;
const MCIERR_MULTIPLE = MCIERR_BASE + 24;
const MCIERR_EXTENSION_NOT_FOUND = MCIERR_BASE + 25;
const MCIERR_OUTOFRANGE = MCIERR_BASE + 26;
const MCIERR_FLAGS_NOT_COMPATIBLE = MCIERR_BASE + 28;
const MCIERR_FILE_NOT_SAVED = MCIERR_BASE + 30;
const MCIERR_DEVICE_TYPE_REQUIRED = MCIERR_BASE + 31;
const MCIERR_DEVICE_LOCKED = MCIERR_BASE + 32;
const MCIERR_DUPLICATE_ALIAS = MCIERR_BASE + 33;
const MCIERR_BAD_CONSTANT = MCIERR_BASE + 34;
const MCIERR_MUST_USE_SHAREABLE = MCIERR_BASE + 35;
const MCIERR_MISSING_DEVICE_NAME = MCIERR_BASE + 36;
const MCIERR_BAD_TIME_FORMAT = MCIERR_BASE + 37;
const MCIERR_NO_CLOSING_QUOTE = MCIERR_BASE + 38;
const MCIERR_DUPLICATE_FLAGS = MCIERR_BASE + 39;
const MCIERR_INVALID_FILE = MCIERR_BASE + 40;
const MCIERR_NULL_PARAMETER_BLOCK = MCIERR_BASE + 41;
const MCIERR_UNNAMED_RESOURCE = MCIERR_BASE + 42;
const MCIERR_NEW_REQUIRES_ALIAS = MCIERR_BASE + 43;
const MCIERR_NOTIFY_ON_AUTO_OPEN = MCIERR_BASE + 44;
const MCIERR_NO_ELEMENT_ALLOWED = MCIERR_BASE + 45;
const MCIERR_NONAPPLICABLE_FUNCTION = MCIERR_BASE + 46;
const MCIERR_ILLEGAL_FOR_AUTO_OPEN = MCIERR_BASE + 47;
const MCIERR_FILENAME_REQUIRED = MCIERR_BASE + 48;
const MCIERR_EXTRA_CHARACTERS = MCIERR_BASE + 49;
const MCIERR_DEVICE_NOT_INSTALLED = MCIERR_BASE + 50;
const MCIERR_GET_CD = MCIERR_BASE + 51;
const MCIERR_SET_CD = MCIERR_BASE + 52;
const MCIERR_SET_DRIVE = MCIERR_BASE + 53;
const MCIERR_DEVICE_LENGTH = MCIERR_BASE + 54;
const MCIERR_DEVICE_ORD_LENGTH = MCIERR_BASE + 55;
const MCIERR_NO_INTEGER = MCIERR_BASE + 56;
const MCIERR_WAVE_OUTPUTSINUSE = MCIERR_BASE + 64;
const MCIERR_WAVE_SETOUTPUTINUSE = MCIERR_BASE + 65;
const MCIERR_WAVE_INPUTSINUSE = MCIERR_BASE + 66;
const MCIERR_WAVE_SETINPUTINUSE = MCIERR_BASE + 67;
const MCIERR_WAVE_OUTPUTUNSPECIFIED = MCIERR_BASE + 68;
const MCIERR_WAVE_INPUTUNSPECIFIED = MCIERR_BASE + 69;
const MCIERR_WAVE_OUTPUTSUNSUITABLE = MCIERR_BASE + 70;
const MCIERR_WAVE_SETOUTPUTUNSUITABLE = MCIERR_BASE + 71;
const MCIERR_WAVE_INPUTSUNSUITABLE = MCIERR_BASE + 72;
const MCIERR_WAVE_SETINPUTUNSUITABLE = MCIERR_BASE + 73;
const MCIERR_SEQ_DIV_INCOMPATIBLE = MCIERR_BASE + 80;
const MCIERR_SEQ_PORT_INUSE = MCIERR_BASE + 81;
const MCIERR_SEQ_PORT_NONEXISTENT = MCIERR_BASE + 82;
const MCIERR_SEQ_PORT_MAPNODEVICE = MCIERR_BASE + 83;
const MCIERR_SEQ_PORT_MISCERROR = MCIERR_BASE + 84;
const MCIERR_SEQ_TIMER = MCIERR_BASE + 85;
const MCIERR_SEQ_PORTUNSPECIFIED = MCIERR_BASE + 86;
const MCIERR_SEQ_NOMIDIPRESENT = MCIERR_BASE + 87;
const MCIERR_NO_WINDOW = MCIERR_BASE + 90;
const MCIERR_CREATEWINDOW = MCIERR_BASE + 91;
const MCIERR_FILE_READ = MCIERR_BASE + 92;
const MCIERR_FILE_WRITE = MCIERR_BASE + 93;
const MCIERR_NO_IDENTITY = MCIERR_BASE + 94;
const MCIERR_CUSTOM_DRIVER_BASE = MCIERR_BASE + 256;
const MIDI_MAPPER = -1;

// IOCTL codes

const FILE_DEVICE_BEEP = 0x00000001;
const FILE_DEVICE_CD_ROM = 0x00000002;
const FILE_DEVICE_CD_ROM_FILE_SYSTEM = 0x00000003;
const FILE_DEVICE_CONTROLLER = 0x00000004;
const FILE_DEVICE_DATALINK = 0x00000005;
const FILE_DEVICE_DFS = 0x00000006;
const FILE_DEVICE_DISK = 0x00000007;
const FILE_DEVICE_DISK_FILE_SYSTEM = 0x00000008;
const FILE_DEVICE_FILE_SYSTEM = 0x00000009;
const FILE_DEVICE_INPORT_PORT = 0x0000000a;
const FILE_DEVICE_KEYBOARD = 0x0000000b;
const FILE_DEVICE_MAILSLOT = 0x0000000c;
const FILE_DEVICE_MIDI_IN = 0x0000000d;
const FILE_DEVICE_MIDI_OUT = 0x0000000e;
const FILE_DEVICE_MOUSE = 0x0000000f;
const FILE_DEVICE_MULTI_UNC_PROVIDER = 0x00000010;
const FILE_DEVICE_NAMED_PIPE = 0x00000011;
const FILE_DEVICE_NETWORK = 0x00000012;
const FILE_DEVICE_NETWORK_BROWSER = 0x00000013;
const FILE_DEVICE_NETWORK_FILE_SYSTEM = 0x00000014;
const FILE_DEVICE_NULL = 0x00000015;
const FILE_DEVICE_PARALLEL_PORT = 0x00000016;
const FILE_DEVICE_PHYSICAL_NETCARD = 0x00000017;
const FILE_DEVICE_PRINTER = 0x00000018;
const FILE_DEVICE_SCANNER = 0x00000019;
const FILE_DEVICE_SERIAL_MOUSE_PORT = 0x0000001a;
const FILE_DEVICE_SERIAL_PORT = 0x0000001b;
const FILE_DEVICE_SCREEN = 0x0000001c;
const FILE_DEVICE_SOUND = 0x0000001d;
const FILE_DEVICE_STREAMS = 0x0000001e;
const FILE_DEVICE_TAPE = 0x0000001f;
const FILE_DEVICE_TAPE_FILE_SYSTEM = 0x00000020;
const FILE_DEVICE_TRANSPORT = 0x00000021;
const FILE_DEVICE_UNKNOWN = 0x00000022;
const FILE_DEVICE_VIDEO = 0x00000023;
const FILE_DEVICE_VIRTUAL_DISK = 0x00000024;
const FILE_DEVICE_WAVE_IN = 0x00000025;
const FILE_DEVICE_WAVE_OUT = 0x00000026;
const FILE_DEVICE_8042_PORT = 0x00000027;
const FILE_DEVICE_NETWORK_REDIRECTOR = 0x00000028;
const FILE_DEVICE_BATTERY = 0x00000029;
const FILE_DEVICE_BUS_EXTENDER = 0x0000002a;
const FILE_DEVICE_MODEM = 0x0000002b;
const FILE_DEVICE_VDM = 0x0000002c;
const FILE_DEVICE_MASS_STORAGE = 0x0000002d;
const FILE_DEVICE_SMB = 0x0000002e;
const FILE_DEVICE_KS = 0x0000002f;
const FILE_DEVICE_CHANGER = 0x00000030;
const FILE_DEVICE_SMARTCARD = 0x00000031;
const FILE_DEVICE_ACPI = 0x00000032;
const FILE_DEVICE_DVD = 0x00000033;
const FILE_DEVICE_FULLSCREEN_VIDEO = 0x00000034;
const FILE_DEVICE_DFS_FILE_SYSTEM = 0x00000035;
const FILE_DEVICE_DFS_VOLUME = 0x00000036;
const FILE_DEVICE_SERENUM = 0x00000037;
const FILE_DEVICE_TERMSRV = 0x00000038;
const FILE_DEVICE_KSEC = 0x00000039;
const FILE_DEVICE_FIPS = 0x0000003A;
const FILE_DEVICE_INFINIBAND = 0x0000003B;
const FILE_DEVICE_VMBUS = 0x0000003E;
const FILE_DEVICE_CRYPT_PROVIDER = 0x0000003F;
const FILE_DEVICE_WPD = 0x00000040;
const FILE_DEVICE_BLUETOOTH = 0x00000041;
const FILE_DEVICE_MT_COMPOSITE = 0x00000042;
const FILE_DEVICE_MT_TRANSPORT = 0x00000043;
const FILE_DEVICE_BIOMETRIC = 0x00000044;
const FILE_DEVICE_PMI = 0x00000045;
const FILE_DEVICE_EHSTOR = 0x00000046;
const FILE_DEVICE_DEVAPI = 0x00000047;
const FILE_DEVICE_GPIO = 0x00000048;
const FILE_DEVICE_USBEX = 0x00000049;
const FILE_DEVICE_CONSOLE = 0x00000050;
const FILE_DEVICE_NFP = 0x00000051;
const FILE_DEVICE_SYSENV = 0x00000052;
const FILE_DEVICE_VIRTUAL_BLOCK = 0x00000053;
const FILE_DEVICE_POINT_OF_SERVICE = 0x00000054;
const FILE_DEVICE_STORAGE_REPLICATION = 0x00000055;
const FILE_DEVICE_TRUST_ENV = 0x00000056;
const FILE_DEVICE_UCM = 0x00000057;
const FILE_DEVICE_UCMTCPCI = 0x00000058;
const FILE_DEVICE_PERSISTENT_MEMORY = 0x00000059;
const FILE_DEVICE_NVDIMM = 0x0000005a;
const FILE_DEVICE_HOLOGRAPHIC = 0x0000005b;
const FILE_DEVICE_SDFXHCI = 0x0000005c;
const FILE_DEVICE_UCMUCSI = 0x0000005d;

const METHOD_BUFFERED = 0;
const METHOD_IN_DIRECT = 1;
const METHOD_OUT_DIRECT = 2;
const METHOD_NEITHER = 3;

const FILE_ANY_ACCESS = 0;
const FILE_SPECIAL_ACCESS = FILE_ANY_ACCESS;
const FILE_READ_ACCESS = 0x0001;
const FILE_WRITE_ACCESS = 0x0002;

final IOCTL_DISK_BASE = FILE_DEVICE_DISK;
final IOCTL_DISK_GET_DRIVE_GEOMETRY =
    CTL_CODE(IOCTL_DISK_BASE, 0x0000, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_GET_PARTITION_INFO =
    CTL_CODE(IOCTL_DISK_BASE, 0x0001, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_SET_PARTITION_INFO = CTL_CODE(IOCTL_DISK_BASE, 0x0002,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GET_DRIVE_LAYOUT =
    CTL_CODE(IOCTL_DISK_BASE, 0x0003, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_SET_DRIVE_LAYOUT = CTL_CODE(IOCTL_DISK_BASE, 0x0004,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_VERIFY =
    CTL_CODE(IOCTL_DISK_BASE, 0x0005, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_FORMAT_TRACKS = CTL_CODE(IOCTL_DISK_BASE, 0x0006,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_REASSIGN_BLOCKS = CTL_CODE(IOCTL_DISK_BASE, 0x0007,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_PERFORMANCE =
    CTL_CODE(IOCTL_DISK_BASE, 0x0008, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_IS_WRITABLE =
    CTL_CODE(IOCTL_DISK_BASE, 0x0009, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_LOGGING =
    CTL_CODE(IOCTL_DISK_BASE, 0x000a, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_FORMAT_TRACKS_EX = CTL_CODE(IOCTL_DISK_BASE, 0x000b,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_HISTOGRAM_STRUCTURE =
    CTL_CODE(IOCTL_DISK_BASE, 0x000c, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_HISTOGRAM_DATA =
    CTL_CODE(IOCTL_DISK_BASE, 0x000d, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_HISTOGRAM_RESET =
    CTL_CODE(IOCTL_DISK_BASE, 0x000e, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_REQUEST_STRUCTURE =
    CTL_CODE(IOCTL_DISK_BASE, 0x000f, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_REQUEST_DATA =
    CTL_CODE(IOCTL_DISK_BASE, 0x0010, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_PERFORMANCE_OFF =
    CTL_CODE(IOCTL_DISK_BASE, 0x0018, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_CONTROLLER_NUMBER =
    CTL_CODE(IOCTL_DISK_BASE, 0x0011, METHOD_BUFFERED, FILE_ANY_ACCESS);
final SMART_GET_VERSION =
    CTL_CODE(IOCTL_DISK_BASE, 0x0020, METHOD_BUFFERED, FILE_READ_ACCESS);
final SMART_SEND_DRIVE_COMMAND = CTL_CODE(IOCTL_DISK_BASE, 0x0021,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final SMART_RCV_DRIVE_DATA = CTL_CODE(IOCTL_DISK_BASE, 0x0022, METHOD_BUFFERED,
    FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GET_PARTITION_INFO_EX =
    CTL_CODE(IOCTL_DISK_BASE, 0x0012, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_SET_PARTITION_INFO_EX = CTL_CODE(IOCTL_DISK_BASE, 0x0013,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GET_DRIVE_LAYOUT_EX =
    CTL_CODE(IOCTL_DISK_BASE, 0x0014, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_SET_DRIVE_LAYOUT_EX = CTL_CODE(IOCTL_DISK_BASE, 0x0015,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_CREATE_DISK = CTL_CODE(IOCTL_DISK_BASE, 0x0016,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GET_LENGTH_INFO =
    CTL_CODE(IOCTL_DISK_BASE, 0x0017, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_GET_DRIVE_GEOMETRY_EX =
    CTL_CODE(IOCTL_DISK_BASE, 0x0028, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_REASSIGN_BLOCKS_EX = CTL_CODE(IOCTL_DISK_BASE, 0x0029,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_UPDATE_DRIVE_SIZE = CTL_CODE(IOCTL_DISK_BASE, 0x0032,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GROW_PARTITION = CTL_CODE(IOCTL_DISK_BASE, 0x0034,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_GET_CACHE_INFORMATION =
    CTL_CODE(IOCTL_DISK_BASE, 0x0035, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_SET_CACHE_INFORMATION = CTL_CODE(IOCTL_DISK_BASE, 0x0036,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final OBSOLETE_DISK_GET_WRITE_CACHE_STATE =
    CTL_CODE(IOCTL_DISK_BASE, 0x0037, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_DELETE_DRIVE_LAYOUT = CTL_CODE(IOCTL_DISK_BASE, 0x0040,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_UPDATE_PROPERTIES =
    CTL_CODE(IOCTL_DISK_BASE, 0x0050, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_FORMAT_DRIVE = CTL_CODE(IOCTL_DISK_BASE, 0x00f3,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_DISK_SENSE_DEVICE =
    CTL_CODE(IOCTL_DISK_BASE, 0x00f8, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_DISK_CHECK_VERIFY =
    CTL_CODE(IOCTL_DISK_BASE, 0x0200, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_MEDIA_REMOVAL =
    CTL_CODE(IOCTL_DISK_BASE, 0x0201, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_EJECT_MEDIA =
    CTL_CODE(IOCTL_DISK_BASE, 0x0202, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_LOAD_MEDIA =
    CTL_CODE(IOCTL_DISK_BASE, 0x0203, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_RESERVE =
    CTL_CODE(IOCTL_DISK_BASE, 0x0204, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_RELEASE =
    CTL_CODE(IOCTL_DISK_BASE, 0x0205, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_FIND_NEW_DEVICES =
    CTL_CODE(IOCTL_DISK_BASE, 0x0206, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_DISK_GET_MEDIA_TYPES =
    CTL_CODE(IOCTL_DISK_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS);

final IOCTL_VOLUME_BASE = 0x00000056;

final IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS =
    CTL_CODE(IOCTL_VOLUME_BASE, 0, METHOD_BUFFERED, FILE_ANY_ACCESS);

final FSCTL_REQUEST_OPLOCK_LEVEL_1 =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 0, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REQUEST_OPLOCK_LEVEL_2 =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 1, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REQUEST_BATCH_OPLOCK =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 2, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_OPLOCK_BREAK_ACKNOWLEDGE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 3, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_OPBATCH_ACK_CLOSE_PENDING =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 4, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_OPLOCK_BREAK_NOTIFY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 5, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_LOCK_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 6, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_UNLOCK_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 7, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DISMOUNT_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 8, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_IS_VOLUME_MOUNTED =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 10, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_IS_PATHNAME_VALID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 11, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_MARK_VOLUME_DIRTY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 12, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_RETRIEVAL_POINTERS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 14, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_GET_COMPRESSION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 15, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_COMPRESSION = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM,
    16,
    METHOD_BUFFERED,
    FILE_ACCESS_RIGHTS.FILE_READ_DATA | FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_SET_BOOTLOADER_ACCESSED =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 19, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_MARK_AS_SYSTEM_HIVE = FSCTL_SET_BOOTLOADER_ACCESSED;
final FSCTL_OPLOCK_BREAK_ACK_NO_2 =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 20, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_INVALIDATE_VOLUMES =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 21, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_FAT_BPB =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 22, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REQUEST_FILTER_OPLOCK =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 23, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_FILESYSTEM_GET_STATISTICS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 24, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_NTFS_VOLUME_DATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 25, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_NTFS_FILE_RECORD =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 26, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_VOLUME_BITMAP =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 27, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_GET_RETRIEVAL_POINTERS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 28, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_MOVE_FILE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 29, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_IS_VOLUME_DIRTY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 30, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_ALLOW_EXTENDED_DASD_IO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 32, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_FIND_FILES_BY_SID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 35, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_SET_OBJECT_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 38, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_GET_OBJECT_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 39, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DELETE_OBJECT_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 40, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_SET_REPARSE_POINT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 41, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_GET_REPARSE_POINT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 42, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DELETE_REPARSE_POINT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 43, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_ENUM_USN_DATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 44, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_SECURITY_ID_CHECK = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 45,
    METHOD_NEITHER, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_READ_USN_JOURNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 46, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_SET_OBJECT_ID_EXTENDED =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 47, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_CREATE_OR_GET_OBJECT_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 48, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_SPARSE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 49, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_SET_ZERO_DATA = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 50,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_QUERY_ALLOCATED_RANGES = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 51,
    METHOD_NEITHER, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_ENABLE_UPGRADE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 52,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_SET_ENCRYPTION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 53, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_ENCRYPTION_FSCTL_IO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 54, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_WRITE_RAW_ENCRYPTED =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 55, METHOD_NEITHER, FILE_SPECIAL_ACCESS);
final FSCTL_READ_RAW_ENCRYPTED =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 56, METHOD_NEITHER, FILE_SPECIAL_ACCESS);
final FSCTL_CREATE_USN_JOURNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 57, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_READ_FILE_USN_DATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 58, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_WRITE_USN_CLOSE_RECORD =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 59, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_EXTEND_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 60, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_USN_JOURNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 61, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DELETE_USN_JOURNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 62, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_MARK_HANDLE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 63, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SIS_COPYFILE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 64, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SIS_LINK_FILES = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM,
    65,
    METHOD_BUFFERED,
    FILE_ACCESS_RIGHTS.FILE_READ_DATA | FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_RECALL_FILE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 69, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_READ_FROM_PLEX = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 71,
    METHOD_OUT_DIRECT, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_FILE_PREFETCH =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 72, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_MAKE_MEDIA_COMPATIBLE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 76,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_SET_DEFECT_MANAGEMENT = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 77,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_QUERY_SPARING_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 78, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_ON_DISK_VOLUME_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 79, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_VOLUME_COMPRESSION_STATE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 80, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_TXFS_MODIFY_RM = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 81,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_QUERY_RM_INFORMATION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 82,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_TXFS_ROLLFORWARD_REDO = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 84,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_ROLLFORWARD_UNDO = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 85,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_START_RM = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 86,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_SHUTDOWN_RM = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 87,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_READ_BACKUP_INFORMATION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 88,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_TXFS_WRITE_BACKUP_INFORMATION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM,
    89, METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_CREATE_SECONDARY_RM = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 90,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_GET_METADATA_INFO = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 91,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_TXFS_GET_TRANSACTED_VERSION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 92,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_TXFS_SAVEPOINT_INFORMATION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 94,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_CREATE_MINIVERSION = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 95,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_TXFS_TRANSACTION_ACTIVE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 99,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_SET_ZERO_ON_DEALLOCATION = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 101, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_SET_REPAIR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 102, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_REPAIR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 103, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_WAIT_FOR_REPAIR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 104, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_INITIATE_REPAIR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 106, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSC_INTERNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 107, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_SHRINK_VOLUME = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 108, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_SET_SHORT_NAME_BEHAVIOR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 109, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DFSR_SET_GHOST_HANDLE_STATE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 110, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM,
    120,
    METHOD_BUFFERED,
    FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_TXFS_LIST_TRANSACTIONS = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 121,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_READ_DATA);
final FSCTL_QUERY_PAGEFILE_ENCRYPTION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 122, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_RESET_VOLUME_ALLOCATION_HINTS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 123, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_DEPENDENT_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 124, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SD_GLOBAL_CHANGE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 125, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_TXFS_READ_BACKUP_INFORMATION2 =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 126, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_LOOKUP_STREAM_FROM_CLUSTER =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 127, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_TXFS_WRITE_BACKUP_INFORMATION2 =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 128, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_FILE_TYPE_NOTIFICATION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 129, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_FILE_LEVEL_TRIM = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 130,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_GET_BOOT_AREA_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 140, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_RETRIEVAL_POINTER_BASE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 141, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_PERSISTENT_VOLUME_STATE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 142, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_PERSISTENT_VOLUME_STATE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 143, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REQUEST_OPLOCK =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 144, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 145, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_IS_CSV_FILE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 146, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_FILE_SYSTEM_RECOGNITION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 147, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_GET_VOLUME_PATH_NAME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 148, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 149, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_GET_VOLUME_PATH_NAMES_FOR_VOLUME_NAME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 150, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_IS_FILE_ON_CSV_VOLUME =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 151, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CORRUPTION_HANDLING =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 152, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_OFFLOAD_READ =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 153, METHOD_BUFFERED, FILE_READ_ACCESS);
final FSCTL_OFFLOAD_WRITE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 154, METHOD_BUFFERED, FILE_WRITE_ACCESS);
final FSCTL_CSV_INTERNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 155, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_PURGE_FAILURE_MODE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 156, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_FILE_LAYOUT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 157, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_IS_VOLUME_OWNED_BYCSVFS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 158, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_INTEGRITY_INFORMATION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 159, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_INTEGRITY_INFORMATION = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM,
    160,
    METHOD_BUFFERED,
    FILE_ACCESS_RIGHTS.FILE_READ_DATA | FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_QUERY_FILE_REGIONS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 161, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_RKF_INTERNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 171, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_SCRUB_DATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 172, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REPAIR_COPIES = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM,
    173,
    METHOD_BUFFERED,
    FILE_ACCESS_RIGHTS.FILE_READ_DATA | FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_DISABLE_LOCAL_BUFFERING =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 174, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_MGMT_LOCK =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 175, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_QUERY_DOWN_LEVEL_FILE_SYSTEM_CHARACTERISTICS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 176, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_ADVANCE_FILE_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 177, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_SYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 178, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_QUERY_VETO_FILE_DIRECT_IO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 179, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_WRITE_USN_REASON =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 180, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_CONTROL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 181, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_REFS_VOLUME_DATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 182, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_CSV_H_BREAKING_SYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 185, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_STORAGE_CLASSES =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 187, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_REGION_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 188, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_USN_TRACK_MODIFIED_RANGES =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 189, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_SHARED_VIRTUAL_DISK_SUPPORT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 192, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SVHDX_SYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 193, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SVHDX_SET_INITIATOR_INFORMATION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 194, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_EXTERNAL_BACKING = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 195, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_GET_EXTERNAL_BACKING =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 196, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DELETE_EXTERNAL_BACKING = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 197, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_ENUM_EXTERNAL_BACKING =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 198, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_ENUM_OVERLAY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 199, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_ADD_OVERLAY = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 204,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_REMOVE_OVERLAY = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 205,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_UPDATE_OVERLAY = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 206,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_SHUFFLE_FILE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 208,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final FSCTL_DUPLICATE_EXTENTS_TO_FILE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 209,
    METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_SPARSE_OVERALLOCATE = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 211, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_STORAGE_QOS_CONTROL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 212, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_INITIATE_FILE_METADATA_OPTIMIZATION = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 215, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_QUERY_FILE_METADATA_OPTIMIZATION = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 216, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_SVHDX_ASYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 217, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_WOF_VERSION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 218, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_HCS_SYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 219, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_HCS_ASYNC_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 220, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_EXTENT_READ_CACHE_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 221, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_QUERY_REFS_VOLUME_COUNTER_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 222, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_CLEAN_VOLUME_METADATA =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 223, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_INTEGRITY_INFORMATION_EX =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 224, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SUSPEND_OVERLAY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 225, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_VIRTUAL_STORAGE_QUERY_PROPERTY =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 226, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_FILESYSTEM_GET_STATISTICS_EX =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 227, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_VOLUME_CONTAINER_STATE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 228, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_LAYER_ROOT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 229, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_DIRECT_ACCESS_EXTENTS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 230, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_NOTIFY_STORAGE_SPACE_ALLOCATION =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 231, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SSDI_STORAGE_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 232, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_DIRECT_IMAGE_ORIGINAL_BASE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 233, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_READ_UNPRIVILEGED_USN_JOURNAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 234, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_GHOST_FILE_EXTENTS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 235, METHOD_BUFFERED, FILE_WRITE_ACCESS);
final FSCTL_QUERY_GHOSTED_FILE_EXTENTS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 236, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_UNMAP_SPACE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 237, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_HCS_SYNC_NO_WRITE_TUNNEL_REQUEST =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 238, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_STREAMS_QUERY_PARAMETERS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 241, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_STREAMS_ASSOCIATE_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 242, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_STREAMS_QUERY_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 243, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_RETRIEVAL_POINTERS_AND_REFCOUNT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 244, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_QUERY_VOLUME_NUMA_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 245, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_REFS_DEALLOCATE_RANGES =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 246, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_QUERY_REFS_SMR_VOLUME_INFO =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 247, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_REFS_SMR_VOLUME_GC_PARAMETERS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 248, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_REFS_FILE_STRICTLY_SEQUENTIAL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 249, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DUPLICATE_EXTENTS_TO_FILE_EX = CTL_CODE(FILE_DEVICE_FILE_SYSTEM,
    250, METHOD_BUFFERED, FILE_ACCESS_RIGHTS.FILE_WRITE_DATA);
final FSCTL_QUERY_BAD_RANGES =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 251, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_DAX_ALLOC_ALIGNMENT_HINT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 252, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_DELETE_CORRUPTED_REFS_CONTAINER =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 253, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SCRUB_UNDISCOVERABLE_ID =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 254, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_NOTIFY_DATA_CHANGE =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 255, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_START_VIRTUALIZATION_INSTANCE_EX =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 256, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_ENCRYPTION_KEY_CONTROL =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 257, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_VIRTUAL_STORAGE_SET_BEHAVIOR =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 258, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_SET_REPARSE_POINT_EX = CTL_CODE(
    FILE_DEVICE_FILE_SYSTEM, 259, METHOD_BUFFERED, FILE_SPECIAL_ACCESS);
final FSCTL_REARRANGE_FILE = CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 264,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final FSCTL_VIRTUAL_STORAGE_PASSTHROUGH =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 265, METHOD_BUFFERED, FILE_ANY_ACCESS);
final FSCTL_GET_RETRIEVAL_POINTER_COUNT =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 266, METHOD_NEITHER, FILE_ANY_ACCESS);
final FSCTL_ENABLE_PER_IO_FLAGS =
    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 267, METHOD_BUFFERED, FILE_ANY_ACCESS);

final IOCTL_STORAGE_BASE = FILE_DEVICE_MASS_STORAGE;

final IOCTL_STORAGE_CHECK_VERIFY =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_CHECK_VERIFY2 =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_MEDIA_REMOVAL =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0201, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_EJECT_MEDIA =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0202, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_LOAD_MEDIA =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_LOAD_MEDIA2 =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_RESERVE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0204, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_RELEASE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0205, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_FIND_NEW_DEVICES =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0206, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_EJECTION_CONTROL =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0250, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_MCN_CONTROL =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0251, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_MEDIA_TYPES =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_MEDIA_TYPES_EX =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0301, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0304, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_HOTPLUG_INFO =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0305, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_SET_HOTPLUG_INFO = CTL_CODE(IOCTL_STORAGE_BASE, 0x0306,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_RESET_BUS =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0400, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_RESET_DEVICE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0401, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_BREAK_RESERVATION =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0405, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_PERSISTENT_RESERVE_IN =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0406, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0407, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_GET_DEVICE_NUMBER =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0420, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_DEVICE_NUMBER_EX =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0421, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_PREDICT_FAILURE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0440, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_FAILURE_PREDICTION_CONFIG =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0441, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_COUNTERS =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x442, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_READ_CAPACITY =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0450, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_GET_DEVICE_TELEMETRY = CTL_CODE(IOCTL_STORAGE_BASE, 0x0470,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_DEVICE_TELEMETRY_NOTIFY = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0471, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_DEVICE_TELEMETRY_QUERY_CAPS = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0472, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_GET_DEVICE_TELEMETRY_RAW = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0473, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_SET_TEMPERATURE_THRESHOLD = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0480, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_PROTOCOL_COMMAND = CTL_CODE(IOCTL_STORAGE_BASE, 0x04F0,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_QUERY_PROPERTY =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0500, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0501, METHOD_BUFFERED, FILE_WRITE_ACCESS);
final IOCTL_STORAGE_GET_LB_PROVISIONING_MAP_RESOURCES =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0502, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_SET_PROPERTY =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0503, METHOD_BUFFERED, FILE_WRITE_ACCESS);
final IOCTL_STORAGE_REINITIALIZE_MEDIA =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0590, METHOD_BUFFERED, FILE_WRITE_ACCESS);
final IOCTL_STORAGE_GET_BC_PROPERTIES =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0600, METHOD_BUFFERED, FILE_READ_ACCESS);
final IOCTL_STORAGE_ALLOCATE_BC_STREAM = CTL_CODE(IOCTL_STORAGE_BASE, 0x0601,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_FREE_BC_STREAM = CTL_CODE(IOCTL_STORAGE_BASE, 0x0602,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0620, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_START_DATA_INTEGRITY_CHECK = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0621, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_STOP_DATA_INTEGRITY_CHECK = CTL_CODE(IOCTL_STORAGE_BASE,
    0x0622, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final OBSOLETE_IOCTL_STORAGE_RESET_BUS = CTL_CODE(IOCTL_STORAGE_BASE, 0x0400,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final OBSOLETE_IOCTL_STORAGE_RESET_DEVICE = CTL_CODE(IOCTL_STORAGE_BASE, 0x0401,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_FIRMWARE_GET_INFO =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0700, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_FIRMWARE_DOWNLOAD = CTL_CODE(IOCTL_STORAGE_BASE, 0x0701,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_FIRMWARE_ACTIVATE = CTL_CODE(IOCTL_STORAGE_BASE, 0x0702,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_ENABLE_IDLE_POWER =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0720, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_IDLE_POWERUP_REASON =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0721, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_POWER_ACTIVE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0722, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_POWER_IDLE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0723, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_EVENT_NOTIFICATION =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0724, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_DEVICE_POWER_CAP =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0725, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_RPMB_COMMAND =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0726, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_ATTRIBUTE_MANAGEMENT = CTL_CODE(IOCTL_STORAGE_BASE, 0x0727,
    METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS);
final IOCTL_STORAGE_DIAGNOSTIC =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0728, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_PHYSICAL_ELEMENT_STATUS =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0729, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_REMOVE_ELEMENT_AND_TRUNCATE =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0730, METHOD_BUFFERED, FILE_ANY_ACCESS);
final IOCTL_STORAGE_GET_DEVICE_INTERNAL_LOG =
    CTL_CODE(IOCTL_STORAGE_BASE, 0x0731, METHOD_BUFFERED, FILE_ANY_ACCESS);

// -----------------------------------------------------------------------------
// Wave format constants
// -----------------------------------------------------------------------------
const WAVE_FORMAT_UNKNOWN = 0x0000;
const WAVE_FORMAT_PCM = 0x0001;
const WAVE_FORMAT_ADPCM = 0x0002;
const WAVE_FORMAT_IEEE_FLOAT = 0x0003;
const WAVE_FORMAT_EXTENSIBLE = 0xFFFE;

// -----------------------------------------------------------------------------
// PKEY constants
// -----------------------------------------------------------------------------
Pointer<PROPERTYKEY> get PKEY_DeviceClass_Characteristics =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
      ..ref.pid = 29;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_ClassCoInstallers =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1899828995, 41698, 18933, 6690927576503162002)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_ClassInstaller =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
      ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_ClassName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_DefaultService =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
      ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_DevType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 27;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_Exclusive => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 28;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_Icon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_IconPath => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 12;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_LowerFilters => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 20;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_Name => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_NoDisplayClass =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
      ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_NoInstallClass =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
      ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_NoUseClass => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_PropPageProvider =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
      ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_Security => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 25;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_SecuritySDS => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 26;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_SilentInstall => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_DeviceClass_UpperFilters => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1126273419, 63134, 18189, 5463529110985629349)
  ..ref.pid = 19;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Address => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 51;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_AlwaysShowDeviceAsConnected =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 101;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_AssociationArray =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 80;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_BaselineExperienceId =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 78;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Category => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 90;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_CategoryGroup_Desc =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 94;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_CategoryGroup_Icon =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 95;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Category_Desc_Plural =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 92;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Category_Desc_Singular =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 91;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Category_Icon =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 93;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_DeviceDescription1 =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 81;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_DeviceDescription2 =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 82;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_DeviceFunctionSubRank =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 100;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_DiscoveryMethod =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 52;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_ExperienceId =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 89;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_FriendlyName =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
      ..ref.pid = 12288;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Icon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 57;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_InstallInProgress =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2212127526, 38822, 16520, 2971064309735576468)
      ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsAuthenticated =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 54;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsConnected => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 55;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsDefaultDevice =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 86;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsDeviceUniquelyIdentifiable =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 79;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsEncrypted => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 53;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsLocalMachine =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 70;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsMetadataSearchInProgress =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 72;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsNetworkDevice =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 85;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsNotInterestingForDisplay =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 74;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsNotWorkingProperly =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 83;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsPaired => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 56;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsSharedDevice =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 84;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_IsShowInDisconnectedState =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 68;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Last_Connected =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 67;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Last_Seen => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 66;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_LaunchDeviceStageFromExplorer =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 77;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_LaunchDeviceStageOnDeviceConnect =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 76;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Manufacturer =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
      ..ref.pid = 8192;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_MetadataCabinet =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 87;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_MetadataChecksum =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 73;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_MetadataPath =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 71;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_ModelName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8194;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_ModelNumber => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8195;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_PrimaryCategory =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 97;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_RequiresPairingElevation =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 88;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_RequiresUninstallElevation =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 99;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_UnpairUninstall =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
      ..ref.pid = 98;

Pointer<PROPERTYKEY> get PKEY_DeviceDisplay_Version => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 65;

Pointer<PROPERTYKEY> get PKEY_DeviceInterfaceClass_DefaultInterface =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(348666521, 2879, 17591, 7207335912217332926)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_DeviceInterface_ClassGuid => calloc<PROPERTYKEY>()
  ..ref.fmtid.setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_DeviceInterface_Enabled => calloc<PROPERTYKEY>()
  ..ref.fmtid.setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_DeviceInterface_FriendlyName =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_AdditionalSoftwareRequested =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
      ..ref.pid = 19;

Pointer<PROPERTYKEY> get PKEY_Device_Address => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 30;

Pointer<PROPERTYKEY> get PKEY_Device_BIOSVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3941498653, 27187, 17617, -7479930469608373868)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Device_BaseContainerId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 38;

Pointer<PROPERTYKEY> get PKEY_Device_BusNumber => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 23;

Pointer<PROPERTYKEY> get PKEY_Device_BusRelations => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_Device_BusReportedDeviceDesc =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1410045054, 35648, 17852, -6720130917481143640)
      ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Device_BusTypeGuid => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 21;

Pointer<PROPERTYKEY> get PKEY_Device_Capabilities => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 17;

Pointer<PROPERTYKEY> get PKEY_Device_Characteristics => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 29;

Pointer<PROPERTYKEY> get PKEY_Device_Children => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Device_Class => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Device_ClassGuid => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_Device_CompatibleIds => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Device_ConfigFlags => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 12;

Pointer<PROPERTYKEY> get PKEY_Device_ContainerId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2357121542, 16266, 18471, 7853343301056768947)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_DHP_Rebalance_Policy =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1410045054, 35648, 17852, -6720130917481143640)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_DevNodeStatus => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_DevType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 27;

Pointer<PROPERTYKEY> get PKEY_Device_DeviceDesc => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_Driver => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_Device_DriverCoInstallers => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_Device_DriverDate => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_DriverDesc => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Device_DriverInfPath => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_Device_DriverInfSection => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_Device_DriverInfSectionExt =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
      ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_Device_DriverLogoLevel => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 15;

Pointer<PROPERTYKEY> get PKEY_Device_DriverPropPageProvider =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
      ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_Device_DriverProvider => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Device_DriverRank => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 14;

Pointer<PROPERTYKEY> get PKEY_Device_DriverVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_EjectionRelations => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Device_EnumeratorName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 24;

Pointer<PROPERTYKEY> get PKEY_Device_Exclusive => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 28;

Pointer<PROPERTYKEY> get PKEY_Device_FriendlyName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 14;

Pointer<PROPERTYKEY> get PKEY_Device_FriendlyNameAttributes =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
      ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_GenericDriverInstalled =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
      ..ref.pid = 18;

Pointer<PROPERTYKEY> get PKEY_Device_HardwareIds => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_InstallInProgress => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2212127526, 38822, 16520, 2971064309735576468)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Device_InstallState => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 36;

Pointer<PROPERTYKEY> get PKEY_Device_InstanceId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
  ..ref.pid = 256;

Pointer<PROPERTYKEY> get PKEY_Device_IsAssociateableByUserAction =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
      ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_Device_Legacy => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2152296704, 35955, 18617, 7981813944493726122)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_LegacyBusType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 22;

Pointer<PROPERTYKEY> get PKEY_Device_LocationInfo => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 15;

Pointer<PROPERTYKEY> get PKEY_Device_LocationPaths => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 37;

Pointer<PROPERTYKEY> get PKEY_Device_LowerFilters => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 20;

Pointer<PROPERTYKEY> get PKEY_Device_Manufacturer => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 13;

Pointer<PROPERTYKEY> get PKEY_Device_ManufacturerAttributes =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
      ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Device_MatchingDeviceId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_Device_ModelId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_NoConnectSound => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 17;

Pointer<PROPERTYKEY> get PKEY_Device_Numa_Node => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1410045054, 35648, 17852, -6720130917481143640)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_PDOName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 16;

Pointer<PROPERTYKEY> get PKEY_Device_Parent => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_Device_PowerData => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 32;

Pointer<PROPERTYKEY> get PKEY_Device_PowerRelations => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_Device_PresenceNotForDevice =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
      ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_Device_ProblemCode => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_RemovalPolicy => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 33;

Pointer<PROPERTYKEY> get PKEY_Device_RemovalPolicyDefault =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
      ..ref.pid = 34;

Pointer<PROPERTYKEY> get PKEY_Device_RemovalPolicyOverride =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
      ..ref.pid = 35;

Pointer<PROPERTYKEY> get PKEY_Device_RemovalRelations => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_Device_Reported => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2152296704, 35955, 18617, 7981813944493726122)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_ResourcePickerExceptions =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
      ..ref.pid = 13;

Pointer<PROPERTYKEY> get PKEY_Device_ResourcePickerTags => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2830656989, 11837, 16532, -2993472463437457491)
  ..ref.pid = 12;

Pointer<PROPERTYKEY> get PKEY_Device_SafeRemovalRequired =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2950264384, 34467, 16912, 6178562937568394422)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Device_SafeRemovalRequiredOverride =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2950264384, 34467, 16912, 6178562937568394422)
      ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Device_Security => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 25;

Pointer<PROPERTYKEY> get PKEY_Device_SecuritySDS => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 26;

Pointer<PROPERTYKEY> get PKEY_Device_Service => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_Device_Siblings => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_Device_SignalStrength => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2161647270, 29811, 19212, -8409297910773115262)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_Device_TransportRelations => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1128310469, 37882, 18182, -6366673150683698025)
  ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_Device_UINumber => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 18;

Pointer<PROPERTYKEY> get PKEY_Device_UINumberDescFormat => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 31;

Pointer<PROPERTYKEY> get PKEY_Device_UpperFilters => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2757502286, 57116, 20221, -2283139988962467712)
  ..ref.pid = 19;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_BrandingIcon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
  ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_DetailedDescription =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
      ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_DocumentationLink => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_Icon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_Model => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_DrvPkg_VendorWebSite => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3480468305, 15039, 17570, 3612346253231972485)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_FunctionInstance => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(146850387, 41300, 18246, -8425083353920567920)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_Hardware_Devinst => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 4097;

Pointer<PROPERTYKEY> get PKEY_Hardware_DisplayAttribute => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_Hardware_DriverDate => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_Hardware_DriverProvider => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_Hardware_DriverVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_Hardware_Function => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 4099;

Pointer<PROPERTYKEY> get PKEY_Hardware_Icon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Hardware_Image => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 4098;

Pointer<PROPERTYKEY> get PKEY_Hardware_Manufacturer => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_Hardware_Model => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_Hardware_Name => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Hardware_SerialNumber => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_Hardware_ShellAttributes => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 4100;

Pointer<PROPERTYKEY> get PKEY_Hardware_Status => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1588543218, 57546, 17816, 6042033126957450943)
  ..ref.pid = 4096;

Pointer<PROPERTYKEY> get PKEY_NAME => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3072717104, 18415, 4122, -5986516953915526747)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_Numa_Proximity_Domain => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1410045054, 35648, 17852, -6720130917481143640)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_PNPX_Associated => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1338312574, 46726, 17598, -3635470331247402093)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_PNPX_Category_Desc_NonPlural =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
      ..ref.pid = 12304;

Pointer<PROPERTYKEY> get PKEY_PNPX_CompactSignature => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 28674;

Pointer<PROPERTYKEY> get PKEY_PNPX_CompatibleTypes => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1338312574, 46726, 17598, -3635470331247402093)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_PNPX_DeviceCategory => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12292;

Pointer<PROPERTYKEY> get PKEY_PNPX_DeviceCategory_Desc => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12293;

Pointer<PROPERTYKEY> get PKEY_PNPX_DeviceCertHash => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 28675;

Pointer<PROPERTYKEY> get PKEY_PNPX_DomainName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 20480;

Pointer<PROPERTYKEY> get PKEY_PNPX_FirmwareVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12289;

Pointer<PROPERTYKEY> get PKEY_PNPX_GlobalIdentity => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4096;

Pointer<PROPERTYKEY> get PKEY_PNPX_ID => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4101;

Pointer<PROPERTYKEY> get PKEY_PNPX_IPBusEnumerated => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 28688;

Pointer<PROPERTYKEY> get PKEY_PNPX_InstallState => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1338312574, 46726, 17598, -3635470331247402093)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_PNPX_Installable => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1338312574, 46726, 17598, -3635470331247402093)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_PNPX_IpAddress => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12297;

Pointer<PROPERTYKEY> get PKEY_PNPX_ManufacturerUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8193;

Pointer<PROPERTYKEY> get PKEY_PNPX_MetadataVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4100;

Pointer<PROPERTYKEY> get PKEY_PNPX_ModelUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8196;

Pointer<PROPERTYKEY> get PKEY_PNPX_NetworkInterfaceGuid => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12296;

Pointer<PROPERTYKEY> get PKEY_PNPX_NetworkInterfaceLuid => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12295;

Pointer<PROPERTYKEY> get PKEY_PNPX_PhysicalAddress => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12294;

Pointer<PROPERTYKEY> get PKEY_PNPX_PresentationUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8198;

Pointer<PROPERTYKEY> get PKEY_PNPX_RemoteAddress => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4102;

Pointer<PROPERTYKEY> get PKEY_PNPX_Removable => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 28672;

Pointer<PROPERTYKEY> get PKEY_PNPX_RootProxy => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4103;

Pointer<PROPERTYKEY> get PKEY_PNPX_Scopes => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4098;

Pointer<PROPERTYKEY> get PKEY_PNPX_SecureChannel => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 28673;

Pointer<PROPERTYKEY> get PKEY_PNPX_SerialNumber => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 12290;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceAddress => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16384;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceControlUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16388;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceDescUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16389;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceEventSubUrl => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16390;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16385;

Pointer<PROPERTYKEY> get PKEY_PNPX_ServiceTypes => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 16386;

Pointer<PROPERTYKEY> get PKEY_PNPX_ShareName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 20482;

Pointer<PROPERTYKEY> get PKEY_PNPX_Types => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4097;

Pointer<PROPERTYKEY> get PKEY_PNPX_Upc => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 8197;

Pointer<PROPERTYKEY> get PKEY_PNPX_XAddrs => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 4099;

Pointer<PROPERTYKEY> get PKEY_Pairing_IsWifiOnlyDevice => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2282212070, 32182, 20240, -4858799425532468082)
  ..ref.pid = 16;

Pointer<PROPERTYKEY> get PKEY_Pairing_ListItemDefault => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2282212070, 32182, 20240, -4858799425532468082)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_Pairing_ListItemDescription =>
    calloc<PROPERTYKEY>()
      ..ref
          .fmtid
          .setGUIDFromComponents(2282212070, 32182, 20240, -4858799425532468082)
      ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_Pairing_ListItemIcon => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2282212070, 32182, 20240, -4858799425532468082)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_Pairing_ListItemText => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2282212070, 32182, 20240, -4858799425532468082)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_SSDP_AltLocationInfo => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 24576;

Pointer<PROPERTYKEY> get PKEY_SSDP_DevLifeTime => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 24577;

Pointer<PROPERTYKEY> get PKEY_SSDP_NetworkInterface => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(1701460915, 60608, 17405, -3632634406926387324)
  ..ref.pid = 24578;

Pointer<PROPERTYKEY> get PKEY_WCN_AssocState => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342728, 18052, 4570, -9111177101523785054)
  ..ref.pid = 9;

Pointer<PROPERTYKEY> get PKEY_WCN_AuthType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342722, 18052, 4570, -9111177101523785054)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_WCN_ConfigError => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342729, 18052, 4570, -9111177101523785054)
  ..ref.pid = 10;

Pointer<PROPERTYKEY> get PKEY_WCN_ConfigMethods => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342725, 18052, 4570, -9111177101523785054)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_WCN_ConfigState => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342729, 18052, 4570, -9111177101523785054)
  ..ref.pid = 11;

Pointer<PROPERTYKEY> get PKEY_WCN_ConnType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342724, 18052, 4570, -9111177101523785054)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_WCN_DevicePasswordId => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342729, 18052, 4570, -9111177101523785054)
  ..ref.pid = 12;

Pointer<PROPERTYKEY> get PKEY_WCN_EncryptType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342723, 18052, 4570, -9111177101523785054)
  ..ref.pid = 4;

Pointer<PROPERTYKEY> get PKEY_WCN_OSVersion => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342729, 18052, 4570, -9111177101523785054)
  ..ref.pid = 13;

Pointer<PROPERTYKEY> get PKEY_WCN_RegistrarType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342731, 18052, 4570, -9111177101523785054)
  ..ref.pid = 15;

Pointer<PROPERTYKEY> get PKEY_WCN_RequestType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342721, 18052, 4570, -9111177101523785054)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_WCN_RfBand => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342727, 18052, 4570, -9111177101523785054)
  ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_WCN_VendorExtension => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342730, 18052, 4570, -9111177101523785054)
  ..ref.pid = 14;

Pointer<PROPERTYKEY> get PKEY_WCN_Version => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(2283342720, 18052, 4570, -9111177101523785054)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_WNET_Comment => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 7;

Pointer<PROPERTYKEY> get PKEY_WNET_DisplayType => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 3;

Pointer<PROPERTYKEY> get PKEY_WNET_LocalName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 5;

Pointer<PROPERTYKEY> get PKEY_WNET_Provider => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 8;

Pointer<PROPERTYKEY> get PKEY_WNET_RemoteName => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 6;

Pointer<PROPERTYKEY> get PKEY_WNET_Scope => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 1;

Pointer<PROPERTYKEY> get PKEY_WNET_Type => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 2;

Pointer<PROPERTYKEY> get PKEY_WNET_Usage => calloc<PROPERTYKEY>()
  ..ref
      .fmtid
      .setGUIDFromComponents(3736970298, 14259, 17283, -6082909702859724911)
  ..ref.pid = 4;
