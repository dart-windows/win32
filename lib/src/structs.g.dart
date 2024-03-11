// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.g.dart';
import 'constants.dart';
import 'guid.dart';
import 'types.dart';

/// Defines an accelerator key used in an accelerator table.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-accel>.
///
/// {@category struct}
base class ACCEL extends Struct {
  @Uint8()
  external int fVirt;

  /// The accelerator key.
  @Uint16()
  external int key;

  /// The accelerator identifier.
  @Uint16()
  external int cmd;
}

/// Header of an access control list (ACL).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-acl>.
///
/// {@category struct}
base class ACL extends Struct {
  /// Specifies the revision level of the ACL.
  @Uint8()
  external int AclRevision;

  /// Specifies a zero byte of <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/p-gly">padding</a>
  /// that aligns the <b>AclRevision</b> member on a 16-bit boundary.
  @Uint8()
  external int Sbz1;

  /// Specifies the size, in bytes, of the ACL.
  @Uint16()
  external int AclSize;

  /// Specifies the number of ACEs stored in the ACL.
  @Uint16()
  external int AceCount;

  /// Specifies two zero-bytes of <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/p-gly">padding</a>
  /// that align the <b>ACL</b> structure on a 32-bit boundary.
  @Uint16()
  external int Sbz2;
}

/// Used by the CreateActCtx function to create the activation context.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-actctxw>.
///
/// {@category struct}
base class ACTCTX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Flags that indicate how the values included in this structure are to be
  /// used.
  @Uint32()
  external int dwFlags;

  /// Null-terminated string specifying the path of the manifest file or PE
  /// image to be used to create the activation context.
  external Pointer<Utf16> lpSource;

  /// Identifies the type of processor used.
  @Uint16()
  external int wProcessorArchitecture;

  /// Specifies the language manifest that should be used.
  @Uint16()
  external int wLangId;

  /// The base directory in which to perform private assembly probing if
  /// assemblies in the activation context are not present in the system-wide
  /// store.
  external Pointer<Utf16> lpAssemblyDirectory;

  /// Pointer to a null-terminated string that contains the resource name to be
  /// loaded from the PE specified in <b>hModule</b> or <b>lpSource</b>.
  external Pointer<Utf16> lpResourceName;

  /// The name of the current application.
  external Pointer<Utf16> lpApplicationName;

  /// Use this member rather than <b>lpSource</b> if you have already loaded a
  /// DLL and wish to use it to create activation contexts rather than using a
  /// path in <b>lpSource</b>.
  @IntPtr()
  external int hModule;
}

/// Identifies a print job as well as the directory and file in which an
/// application can store that job.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addjob-info-1>.
///
/// {@category struct}
base class ADDJOB_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that contains the path and file name
  /// that the application can use to store the print job.
  external Pointer<Utf16> Path;

  /// A handle to the print job.
  @Uint32()
  external int JobId;
}

/// Used by the GetAddrInfoW function to hold host address information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2def/ns-ws2def-addrinfow>.
///
/// {@category struct}
base class ADDRINFO extends Struct {
  /// Flags that indicate options used in the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ws2tcpip/nf-ws2tcpip-getaddrinfow">GetAddrInfoW</a>
  /// function.
  @Int32()
  external int ai_flags;

  /// The address family.
  @Int32()
  external int ai_family;

  /// The socket type.
  @Int32()
  external int ai_socktype;

  /// The protocol type.
  @Int32()
  external int ai_protocol;

  /// The length, in bytes, of the buffer pointed to by the <b>ai_addr</b>
  /// member.
  @IntPtr()
  external int ai_addrlen;

  /// The canonical name for the host.
  external Pointer<Utf16> ai_canonname;

  /// A pointer to a `sockaddr` structure.
  external Pointer<SOCKADDR> ai_addr;

  /// A pointer to the next structure in a linked list.
  external Pointer<ADDRINFO> ai_next;
}

/// Contains status information for the application-switching (ALT+TAB) window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-alttabinfo>.
///
/// {@category struct}
base class ALTTABINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The number of items in the window.
  @Int32()
  external int cItems;

  /// The number of columns in the window.
  @Int32()
  external int cColumns;

  /// The number of rows in the window.
  @Int32()
  external int cRows;

  /// The column of the item that has the focus.
  @Int32()
  external int iColFocus;

  /// The row of the item that has the focus.
  @Int32()
  external int iRowFocus;

  /// The width of each icon in the application-switching window.
  @Int32()
  external int cxItem;

  /// The height of each icon in the application-switching window.
  @Int32()
  external int cyItem;

  /// The top-left corner of the first icon.
  external POINT ptStart;
}

/// Represents package settings used to create a package.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ns-appxpackaging-appx_package_settings>.
///
/// {@category struct}
base class APPX_PACKAGE_SETTINGS extends Struct {
  /// [TRUE] if the package is created as Zip32; [FALSE] if the package is
  /// created as Zip64.
  @Int32()
  external int forceZip32;

  /// The hash algorithm URI to use for the block map of the package.
  external VTablePointer hashMethod;
}

/// Describes an array, its element type, and its dimension.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-arraydesc>.
///
/// {@category struct}
base class ARRAYDESC extends Struct {
  /// The element type.
  external TYPEDESC tdescElem;

  /// The dimension count.
  @Uint16()
  external int cDims;

  /// A variable-length array containing one element for each dimension.
  @Array(1)
  external Array<SAFEARRAYBOUND> rgbounds;
}

/// {@category struct}
base class ASSEMBLYMETADATA extends Struct {
  @Uint16()
  external int usMajorVersion;

  @Uint16()
  external int usMinorVersion;

  @Uint16()
  external int usBuildNumber;

  @Uint16()
  external int usRevisionNumber;

  external Pointer<Utf16> szLocale;

  @Uint32()
  external int cbLocale;

  external Pointer<Uint32> rProcessor;

  @Uint32()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @Uint32()
  external int ulOS;
}

/// Used to set the parameters that describe the properties of the client's
/// audio stream.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ns-audioclient-audioclientproperties~r1>.
///
/// {@category struct}
base class AudioClientProperties extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Boolean value to indicate whether or not the audio stream is
  /// hardware-offloaded.
  @Int32()
  external int bIsOffload;

  /// An enumeration that is used to specify the category of the audio stream.
  @Int32()
  external int eCategory;

  @Int32()
  external int Options;
}

/// Contains parameters used during a moniker-binding operation.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ns-objidl-bind_opts>.
///
/// {@category struct}
base class BIND_OPTS extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cbStruct;

  /// Flags that control aspects of moniker binding operations.
  @Uint32()
  external int grfFlags;

  /// Flags that should be used when opening the file that contains the object
  /// identified by the moniker.
  @Uint32()
  external int grfMode;

  /// The clock time by which the caller would like the binding operation to be
  /// completed, in milliseconds.
  @Uint32()
  external int dwTickCountDeadline;
}

/// Defines the type, width, height, color format, and bit values of a bitmap.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmap>.
///
/// {@category struct}
base class BITMAP extends Struct {
  /// The bitmap type.
  @Int32()
  external int bmType;

  /// The width, in pixels, of the bitmap.
  @Int32()
  external int bmWidth;

  /// The height, in pixels, of the bitmap.
  @Int32()
  external int bmHeight;

  /// The number of bytes in each scan line.
  @Int32()
  external int bmWidthBytes;

  /// The count of color planes.
  @Uint16()
  external int bmPlanes;

  /// The number of bits required to indicate the color of a pixel.
  @Uint16()
  external int bmBitsPixel;

  /// A pointer to the location of the bit values for the bitmap.
  external Pointer bmBits;
}

/// Contains information about the type, size, and layout of a file that
/// contains a DIB.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapfileheader>.
///
/// {@category struct}
@Packed(2)
base class BITMAPFILEHEADER extends Struct {
  /// The file type; must be BM.
  @Uint16()
  external int bfType;

  /// The size, in bytes, of the bitmap file.
  @Uint32()
  external int bfSize;

  /// Reserved; must be zero.
  @Uint16()
  // ignore: unused_field
  external int _bfReserved1;

  /// Reserved; must be zero.
  @Uint16()
  // ignore: unused_field
  external int _bfReserved2;

  /// The offset, in bytes, from the beginning of the <b>BITMAPFILEHEADER</b>
  /// structure to the bitmap bits.
  @Uint32()
  external int bfOffBits;
}

/// Defines the dimensions and color information for a DIB.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapinfo>.
///
/// {@category struct}
base class BITMAPINFO extends Struct {
  /// A `BITMAPINFOHEADER` structure that contains information about the
  /// dimensions of color format.
  external BITMAPINFOHEADER bmiHeader;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-rgbquad">RGBQUAD</a>.
  @Array(1)
  external Array<RGBQUAD> bmiColors;
}

/// Contains information about the dimensions and color format of a
/// device-independent bitmap (DIB).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapinfoheader>.
///
/// {@category struct}
base class BITMAPINFOHEADER extends Struct {
  /// Specifies the number of bytes required by the structure.
  @Uint32()
  external int biSize;

  /// Specifies the width of the bitmap, in pixels.
  @Int32()
  external int biWidth;

  /// Specifies the height of the bitmap, in pixels.
  @Int32()
  external int biHeight;

  /// Specifies the number of planes for the target device.
  @Uint16()
  external int biPlanes;

  /// Specifies the number of bits per pixel (bpp).
  @Uint16()
  external int biBitCount;

  /// For compressed video and YUV formats, this member is a FOURCC code,
  /// specified as a <b>DWORD</b> in little-endian order.
  @Uint32()
  external int biCompression;

  /// Specifies the size, in bytes, of the image.
  @Uint32()
  external int biSizeImage;

  /// Specifies the horizontal resolution, in pixels per meter, of the target
  /// device for the bitmap.
  @Int32()
  external int biXPelsPerMeter;

  /// Specifies the vertical resolution, in pixels per meter, of the target
  /// device for the bitmap.
  @Int32()
  external int biYPelsPerMeter;

  /// Specifies the number of color indices in the color table that are actually
  /// used by the bitmap.
  @Uint32()
  external int biClrUsed;

  /// Specifies the number of color indices that are considered important for
  /// displaying the bitmap.
  @Uint32()
  external int biClrImportant;
}

/// Controls blending by specifying the blending functions for source and
/// destination bitmaps.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-blendfunction>.
///
/// {@category struct}
base class BLENDFUNCTION extends Struct {
  /// The source blend operation.
  @Uint8()
  external int BlendOp;

  /// Must be zero.
  @Uint8()
  external int BlendFlags;

  /// Specifies an alpha transparency value to be used on the entire source
  /// bitmap.
  @Uint8()
  external int SourceConstantAlpha;

  /// This member controls the way the source and destination bitmaps are
  /// interpreted.
  @Uint8()
  external int AlphaFormat;
}

/// Contains information about a block of data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob>.
///
/// {@category struct}
base class BLOB extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Pointer to a block of data.
  external Pointer<Uint8> pBlobData;
}

/// {@category struct}
base class BLUETOOTH_ADDRESS extends Struct {
  external BLUETOOTH_ADDRESS_0 Anonymous;
}

/// {@category union}
sealed class BLUETOOTH_ADDRESS_0 extends Union {
  @Uint64()
  external int ullLong;

  @Array(6)
  external Array<Uint8> rgBytes;
}

extension BLUETOOTH_ADDRESS_0_Extension on BLUETOOTH_ADDRESS {
  int get ullLong => this.Anonymous.ullLong;
  set ullLong(int value) => this.Anonymous.ullLong = value;

  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;
  set rgBytes(Array<Uint8> value) => this.Anonymous.rgBytes = value;
}

/// Contains information passed in response to a BTH_REMOTE_AUTHENTICATE_REQUEST
/// event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_authenticate_response>.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATE_RESPONSE extends Struct {
  /// A `BLUETOOTH_ADDRESS` structure that contains the address of the device
  /// requesting the authentication response.
  external BLUETOOTH_ADDRESS bthAddressRemote;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_method">BLUETOOTH_AUTHENTICATION_METHOD</a>
  /// enumeration that defines the supported authentication method.
  @Int32()
  external int authMethod;

  external BLUETOOTH_AUTHENTICATE_RESPONSE_0 Anonymous;

  /// [TRUE] if the authentication request was rejected; otherwise [FALSE].
  @Uint8()
  external int negativeResponse;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATE_RESPONSE_0 extends Union {
  external BLUETOOTH_PIN_INFO pinInfo;

  external BLUETOOTH_OOB_DATA_INFO oobInfo;

  external BLUETOOTH_NUMERIC_COMPARISON_INFO numericCompInfo;

  external BLUETOOTH_PASSKEY_INFO passkeyInfo;
}

extension BLUETOOTH_AUTHENTICATE_RESPONSE_0_Extension
    on BLUETOOTH_AUTHENTICATE_RESPONSE {
  BLUETOOTH_PIN_INFO get pinInfo => this.Anonymous.pinInfo;
  set pinInfo(BLUETOOTH_PIN_INFO value) => this.Anonymous.pinInfo = value;

  BLUETOOTH_OOB_DATA_INFO get oobInfo => this.Anonymous.oobInfo;
  set oobInfo(BLUETOOTH_OOB_DATA_INFO value) => this.Anonymous.oobInfo = value;

  BLUETOOTH_NUMERIC_COMPARISON_INFO get numericCompInfo =>
      this.Anonymous.numericCompInfo;
  set numericCompInfo(BLUETOOTH_NUMERIC_COMPARISON_INFO value) =>
      this.Anonymous.numericCompInfo = value;

  BLUETOOTH_PASSKEY_INFO get passkeyInfo => this.Anonymous.passkeyInfo;
  set passkeyInfo(BLUETOOTH_PASSKEY_INFO value) =>
      this.Anonymous.passkeyInfo = value;
}

/// Contains specific configuration information about the Bluetooth device
/// responding to an authentication request.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_authentication_callback_params>.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  /// A `BLUETOOTH_DEVICE_INFO` structure that contains information about a
  /// Bluetooth device.
  external BLUETOOTH_DEVICE_INFO deviceInfo;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_method">BLUETOOTH_AUTHENTICATION_METHOD</a>
  /// enumeration that defines the authentication method utilized by the
  /// Bluetooth device.
  @Int32()
  external int authenticationMethod;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_io_capability">BLUETOOTH_IO_CAPABILITY</a>
  /// enumeration that defines the input/output capabilities of the Bluetooth
  /// device.
  @Int32()
  external int ioCapability;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_requirements">BLUETOOTH_AUTHENTICATION_REQUIREMENTS</a>
  /// specifies the 'Man in the Middle' protection required for authentication.
  @Int32()
  external int authenticationRequirements;

  external BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0 Anonymous;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0 extends Union {
  @Uint32()
  external int Numeric_Value;

  @Uint32()
  external int Passkey;
}

extension BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0_Extension
    on BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
  int get Numeric_Value => this.Anonymous.Numeric_Value;
  set Numeric_Value(int value) => this.Anonymous.Numeric_Value = value;

  int get Passkey => this.Anonymous.Passkey;
  set Passkey(int value) => this.Anonymous.Passkey = value;
}

/// Provides for specification and retrieval of Bluetooth Class Of Device (COD)
/// information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_cod_pairs>.
///
/// {@category struct}
base class BLUETOOTH_COD_PAIRS extends Struct {
  /// A mask to compare to determine the class of device.
  @Uint32()
  external int ulCODMask;

  /// Descriptive string of the mask.
  external Pointer<Utf16> pcszDescription;
}

/// {@category struct}
base class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS Address;

  @Uint32()
  external int ulClassofDevice;

  @Int32()
  external int fConnected;

  @Int32()
  external int fRemembered;

  @Int32()
  external int fAuthenticated;

  external SYSTEMTIME stLastSeen;

  external SYSTEMTIME stLastUsed;

  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      if (_szName[i] == 0x00) break;
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Specifies search criteria for Bluetooth device searches.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_device_search_params>.
///
/// {@category struct}
base class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  /// The size, in bytes, of the structure.
  @Uint32()
  external int dwSize;

  /// A value that specifies that the search should return authenticated
  /// Bluetooth devices.
  @Int32()
  external int fReturnAuthenticated;

  /// A value that specifies that the search should return remembered Bluetooth
  /// devices.
  @Int32()
  external int fReturnRemembered;

  /// A value that specifies that the search should return unknown Bluetooth
  /// devices.
  @Int32()
  external int fReturnUnknown;

  /// A value that specifies that the search should return connected Bluetooth
  /// devices.
  @Int32()
  external int fReturnConnected;

  /// A value that specifies that a new inquiry should be issued.
  @Int32()
  external int fIssueInquiry;

  /// A value that indicates the time out for the inquiry, expressed in
  /// increments of 1.28 seconds.
  @Uint8()
  external int cTimeoutMultiplier;

  /// A handle for the radio on which to perform the inquiry.
  @IntPtr()
  external int hRadio;
}

/// Facilitates enumerating installed Bluetooth radios.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_find_radio_params>.
///
/// {@category struct}
base class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  /// Size of the <b>BLUETOOTH_FIND_RADIO_PARAMS</b> structure, in bytes.
  @Uint32()
  external int dwSize;
}

/// Describes a changed attribute value.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bluetooth_gatt_value_changed_event>.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT extends Struct {
  /// The handle to the attribute.
  @Uint16()
  external int ChangedAttributeHandle;

  /// The size, in bytes, of <b>CharacteristicValue</b>.
  @IntPtr()
  external int CharacteristicValueDataSize;

  /// The characteristic value.
  external Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> CharacteristicValue;
}

/// Describes one or more characteristics that have changed.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bluetooth_gatt_value_changed_event_registration>.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION extends Struct {
  /// The number of characteristics that follow this member in memory.
  @Uint16()
  external int NumCharacteristics;

  /// Array of characteristics to monitor for incoming events.
  @Array(1)
  external Array<BTH_LE_GATT_CHARACTERISTIC> Characteristics;
}

/// Contains the numeric value used for authentication via numeric comparison.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_numeric_comparison_info>.
///
/// {@category struct}
base class BLUETOOTH_NUMERIC_COMPARISON_INFO extends Struct {
  /// The numeric value.
  @Uint32()
  external int NumericValue;
}

/// Contains data used to authenticate prior to establishing an Out-of-Band
/// device pairing.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_oob_data_info>.
///
/// {@category struct}
base class BLUETOOTH_OOB_DATA_INFO extends Struct {
  /// A 128-bit cryptographic key used for two-way authentication.
  @Array(16)
  external Array<Uint8> C;

  /// A randomly generated number used for one-way authentication.
  @Array(16)
  external Array<Uint8> R;
}

/// Contains a passkey value used for authentication.
///
/// A passkey is similar to a password, except that a passkey value is used for
/// authentication only once.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_passkey_info>.
///
/// {@category struct}
base class BLUETOOTH_PASSKEY_INFO extends Struct {
  /// The passkey used for authentication.
  @Uint32()
  external int passkey;
}

/// Contains information used for authentication via PIN.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_pin_info>.
///
/// {@category struct}
base class BLUETOOTH_PIN_INFO extends Struct {
  /// The PIN used for authentication.
  @Array(16)
  external Array<Uint8> pin;

  /// The length of <i>pin</i>.
  @Uint8()
  external int pinLength;
}

/// Contains information about a Bluetooth radio.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_radio_info>.
///
/// {@category struct}
base class BLUETOOTH_RADIO_INFO extends Struct {
  /// Size, in bytes, of the structure.
  @Uint32()
  external int dwSize;

  /// Address of the local Bluetooth radio.
  external BLUETOOTH_ADDRESS address;

  @Array(248)
  external Array<Uint16> _szName;

  /// Name of the local Bluetooth radio.
  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      if (_szName[i] == 0x00) break;
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Device class for the local Bluetooth radio.
  @Uint32()
  external int ulClassofDevice;

  /// This member contains data specific to individual Bluetooth device
  /// manufacturers.
  @Uint16()
  external int lmpSubversion;

  /// Manufacturer of the Bluetooth radio, expressed as a <b>BTH_MFG_Xxx</b>
  /// value.
  @Uint16()
  external int manufacturer;
}

/// Facilitates and manages the visibility, authentication, and selection of
/// Bluetooth devices and services.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_select_device_params>.
///
/// {@category struct}
base class BLUETOOTH_SELECT_DEVICE_PARAMS extends Struct {
  /// Size, in bytes, of the <b>BLUETOOTH_SELECT_DEVICE_PARAMS</b> structure.
  @Uint32()
  external int dwSize;

  /// Number of classes in <b>prgClassOfDevices</b>.
  @Uint32()
  external int cNumOfClasses;

  /// Array of class of devices to find.
  external Pointer<BLUETOOTH_COD_PAIRS> prgClassOfDevices;

  /// Sets the information text when not <b>NULL</b>.
  external Pointer<Utf16> pszInfo;

  /// Handle to the parent window.
  @IntPtr()
  external int hwndParent;

  /// If [TRUE], forces authentication before returning.
  @Int32()
  external int fForceAuthentication;

  /// If [TRUE], authenticated devices are shown in the picker.
  @Int32()
  external int fShowAuthenticated;

  /// If [TRUE], remembered devices are shown in the picker.
  @Int32()
  external int fShowRemembered;

  /// If [TRUE], unknown devices that are not authenticated or remembered are
  /// shown in the picker.
  @Int32()
  external int fShowUnknown;

  /// If [TRUE], starts the Add New Device wizard.
  @Int32()
  external int fAddNewDeviceWizard;

  /// If [TRUE], skips the Services page in the Add New Device wizard.
  @Int32()
  external int fSkipServicesPage;

  /// A pointer to a callback function that is called for each device.
  external Pointer<NativeFunction<PFN_DEVICE_CALLBACK>> pfnDeviceCallback;

  /// Parameter to be passed as <b>pvParam</b> to the callback function pointed
  /// to in <b>pfnDeviceCallback</b>.
  external Pointer pvParam;

  /// On input, specifies the number of desired calls.
  @Uint32()
  external int cNumDevices;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_device_info_struct">BLUETOOTH_DEVICE_INFO</a>
  /// structures.
  external Pointer<BLUETOOTH_DEVICE_INFO> pDevices;
}

/// {@category struct}
typedef BOOL = Int32;

/// {@category struct}
typedef BOOLEAN = Uint8;

/// Contains information about a window that denied a request from
/// BroadcastSystemMessageEx.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-bsminfo>.
///
/// {@category struct}
base class BSMINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A desktop handle to the window specified by <b>hwnd</b>.
  @IntPtr()
  external int hdesk;

  /// A handle to the window that denied the request.
  @IntPtr()
  external int hwnd;

  /// A locally unique identifier (LUID) for the window.
  external LUID luid;
}

/// {@category struct}
base class BSTRBLOB extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pData;
}

/// Stores information about a Bluetooth device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_device_info>.
///
/// {@category struct}
base class BTH_DEVICE_INFO extends Struct {
  /// A combination of one or more of the flags listed in the following table.
  @Uint32()
  external int flags;

  /// Address of the remote Bluetooth device.
  @Uint64()
  external int address;

  /// Bit field that describes the device class of device (COD) of the remote
  /// device.
  @Uint32()
  external int classOfDevice;

  /// Name of the remote Bluetooth device, as reported by the device, encoded in
  /// UTF8.
  @Array(248)
  external Array<CHAR> name;
}

/// Used in connection with obtaining WM_DEVICECHANGE messages for Bluetooth.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_hci_event_info>.
///
/// {@category struct}
base class BTH_HCI_EVENT_INFO extends Struct {
  /// Address of the remote device, in the form of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatemultipledevices">BTH_ADDR</a>
  /// structure.
  @Uint64()
  external int bthAddress;

  /// Type of connection.
  @Uint8()
  external int connectionType;

  /// Status of the connection.
  @Uint8()
  external int connected;
}

/// Contains data about events associated with an L2CAP channel.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_l2cap_event_info>.
///
/// {@category struct}
base class BTH_L2CAP_EVENT_INFO extends Struct {
  /// Remote radio address with which the L2CAP event is associated, in the form
  /// of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatemultipledevices">BTH_ADDR</a>
  /// structure.
  @Uint64()
  external int bthAddress;

  /// Channel number established or terminated.
  @Uint16()
  external int psm;

  /// Status of the connection.
  @Uint8()
  external int connected;

  /// Provides connection information.
  @Uint8()
  external int initiated;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// characteristic.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_characteristic>.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC extends Struct {
  /// The handle to the Bluetooth LE GATT profile service.
  @Uint16()
  external int ServiceHandle;

  /// The Universally Unique ID (UUID) of the characteristic.
  external BTH_LE_UUID CharacteristicUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;

  /// The handle to the Bluetooth LE GATT profile characteristic value.
  @Uint16()
  external int CharacteristicValueHandle;

  /// The characteristic can be broadcast.
  @Uint8()
  external int IsBroadcastable;

  /// The characteristic can be read.
  @Uint8()
  external int IsReadable;

  /// The characteristic can be written to.
  @Uint8()
  external int IsWritable;

  /// The characteristic can be written to without requiring a response.
  @Uint8()
  external int IsWritableWithoutResponse;

  /// The characteristic can be signed writable.
  @Uint8()
  external int IsSignedWritable;

  /// The characteristic can be updated by the device through Handle Value
  /// Notifications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  @Uint8()
  external int IsNotifiable;

  /// The characteristic can be updated by the device through Handle Value
  /// Indications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  @Uint8()
  external int IsIndicatable;

  /// The characteristic has extended properties, which will be presented
  /// through a Characteristic Extended Properties descriptor.
  @Uint8()
  external int HasExtendedProperties;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// characteristic value.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_characteristic_value>.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC_VALUE extends Struct {
  /// The size, in bytes, of the Bluetooth LE GATT characteristic value.
  @Uint32()
  external int DataSize;

  /// A pointer to the Bluetooth LE GATT characteristic value data.
  @Array(1)
  external Array<Uint8> Data;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// descriptor.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_descriptor>.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR extends Struct {
  /// The handle to the Bluetooth LE GATT profile service.
  @Uint16()
  external int ServiceHandle;

  /// The handle to the Bluetooth LE GATT profile characteristic.
  @Uint16()
  external int CharacteristicHandle;

  /// The type of the Bluetooth LE GATT descriptor.
  @Int32()
  external int DescriptorType;

  /// The Universally Unique ID (UUID) of the Bluetooth LE GATT descriptor.
  external BTH_LE_UUID DescriptorUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;
}

/// Describes a parent characteristic.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_descriptor_value>.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR_VALUE extends Struct {
  /// The type of the descriptor value.
  @Int32()
  external int DescriptorType;

  /// The Universally Unique ID (UUID) of the descriptor value.
  external BTH_LE_UUID DescriptorUuid;

  external BTH_LE_GATT_DESCRIPTOR_VALUE_0 Anonymous;

  /// The size, in bytes, of the descriptor value.
  @Uint32()
  external int DataSize;

  /// A pointer to the descriptor value data.
  @Array(1)
  external Array<Uint8> Data;
}

/// {@category union}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0 extends Union {
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 CharacteristicExtendedProperties;

  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 ClientCharacteristicConfiguration;

  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 ServerCharacteristicConfiguration;

  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 CharacteristicFormat;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 get CharacteristicExtendedProperties =>
      this.Anonymous.CharacteristicExtendedProperties;
  set CharacteristicExtendedProperties(
          BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 value) =>
      this.Anonymous.CharacteristicExtendedProperties = value;

  BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 get ClientCharacteristicConfiguration =>
      this.Anonymous.ClientCharacteristicConfiguration;
  set ClientCharacteristicConfiguration(
          BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 value) =>
      this.Anonymous.ClientCharacteristicConfiguration = value;

  BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 get ServerCharacteristicConfiguration =>
      this.Anonymous.ServerCharacteristicConfiguration;
  set ServerCharacteristicConfiguration(
          BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 value) =>
      this.Anonymous.ServerCharacteristicConfiguration = value;

  BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 get CharacteristicFormat =>
      this.Anonymous.CharacteristicFormat;
  set CharacteristicFormat(BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 value) =>
      this.Anonymous.CharacteristicFormat = value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 extends Struct {
  @Uint8()
  external int IsReliableWriteEnabled;

  @Uint8()
  external int IsAuxiliariesWritable;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsReliableWriteEnabled =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled;
  set IsReliableWriteEnabled(int value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled =
          value;

  int get IsAuxiliariesWritable =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable;
  set IsAuxiliariesWritable(int value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable =
          value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 extends Struct {
  @Uint8()
  external int IsSubscribeToNotification;

  @Uint8()
  external int IsSubscribeToIndication;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_1_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsSubscribeToNotification => this
      .Anonymous
      .ClientCharacteristicConfiguration
      .IsSubscribeToNotification;
  set IsSubscribeToNotification(int value) => this
      .Anonymous
      .ClientCharacteristicConfiguration
      .IsSubscribeToNotification = value;

  int get IsSubscribeToIndication =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication;
  set IsSubscribeToIndication(int value) =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication =
          value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 extends Struct {
  @Uint8()
  external int IsBroadcast;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_2_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsBroadcast =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast;
  set IsBroadcast(int value) =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast = value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 extends Struct {
  @Uint8()
  external int Format;

  @Uint8()
  external int Exponent;

  external BTH_LE_UUID Unit;

  @Uint8()
  external int NameSpace;

  external BTH_LE_UUID Description;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_3_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get Format => this.Anonymous.CharacteristicFormat.Format;
  set Format(int value) => this.Anonymous.CharacteristicFormat.Format = value;

  int get Exponent => this.Anonymous.CharacteristicFormat.Exponent;
  set Exponent(int value) =>
      this.Anonymous.CharacteristicFormat.Exponent = value;

  BTH_LE_UUID get Unit => this.Anonymous.CharacteristicFormat.Unit;
  set Unit(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Unit = value;

  int get NameSpace => this.Anonymous.CharacteristicFormat.NameSpace;
  set NameSpace(int value) =>
      this.Anonymous.CharacteristicFormat.NameSpace = value;

  BTH_LE_UUID get Description =>
      this.Anonymous.CharacteristicFormat.Description;
  set Description(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Description = value;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_service>.
///
/// {@category struct}
base class BTH_LE_GATT_SERVICE extends Struct {
  /// The Universally Unique ID (UUID) of the Bluetooth LE GATT profile service.
  external BTH_LE_UUID ServiceUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;
}

/// Contains information about a Bluetooth Low Energy (LE) Universally Unique
/// Identifier (UUID).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_uuid>.
///
/// {@category struct}
base class BTH_LE_UUID extends Struct {
  /// Indicates if the Low Energy (LE) UUID a 16-bit shortened value, or if it
  /// is the long 128-bit value.
  @Uint8()
  external int IsShortUuid;

  /// The value of the UUID.
  external BTH_LE_UUID_0 Value;
}

/// {@category union}
sealed class BTH_LE_UUID_0 extends Union {
  @Uint16()
  external int ShortUuid;

  external GUID LongUuid;
}

extension BTH_LE_UUID_0_Extension on BTH_LE_UUID {
  int get ShortUuid => this.Value.ShortUuid;
  set ShortUuid(int value) => this.Value.ShortUuid = value;

  GUID get LongUuid => this.Value.LongUuid;
  set LongUuid(GUID value) => this.Value.LongUuid = value;
}

/// Used when querying for the presence of a Bluetooth device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_query_device>.
///
/// {@category struct}
@Packed(1)
base class BTH_QUERY_DEVICE extends Struct {
  /// Reserved.
  @Uint32()
  external int LAP;

  /// Requested length of the inquiry, in seconds.
  @Uint8()
  external int length;
}

/// Used to query a Bluetooth service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_query_service>.
///
/// {@category struct}
@Packed(1)
base class BTH_QUERY_SERVICE extends Struct {
  /// Type of service to perform.
  @Uint32()
  external int type;

  /// Service handle on which to query the attributes specified in the
  /// <b>pRange</b> member.
  @Uint32()
  external int serviceHandle;

  /// UUIDs that a record must contain to match the search.
  @Array(12)
  external Array<SdpQueryUuid> uuids;

  /// Number of elements in <b>pRange</b>.
  @Uint32()
  external int numRange;

  /// Attribute values to retrieve for any matching records, in the form of an
  /// array of <b>SdpAttributeRange</b> structures.
  @Array(1)
  external Array<SdpAttributeRange> pRange;
}

/// Stores data about Bluetooth devices within communication range.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_radio_in_range>.
///
/// {@category struct}
base class BTH_RADIO_IN_RANGE extends Struct {
  /// Current set of attributes associated with the remote device, in the form
  /// of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bthdef/ns-bthdef-bth_device_info">BTH_DEVICE_INFO</a>
  /// structure.
  external BTH_DEVICE_INFO deviceInfo;

  /// Previous flags for the <b>flags</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bthdef/ns-bthdef-bth_device_info">BTH_DEVICE_INFO</a>
  /// structure pointed to by the <b>deviceInfo</b> member.
  @Uint32()
  external int previousDeviceFlags;
}

/// Provides service information for the specified Bluetooth service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_set_service>.
///
/// {@category struct}
@Packed(1)
base class BTH_SET_SERVICE extends Struct {
  /// Version of the SDP.
  external Pointer<Uint32> pSdpVersion;

  /// Handle to the SDP record.
  external Pointer<HANDLE> pRecordHandle;

  /// Class of device (COD) information.
  @Uint32()
  external int fCodService;

  /// Reserved.
  @Array(5)
  // ignore: unused_field
  external Array<Uint32> _Reserved;

  /// Size, in bytes, of <b>pRecord</b>.
  @Uint32()
  external int ulRecordLength;

  /// SDP record, as defined by the Bluetooth specification.
  @Array(1)
  external Array<Uint8> pRecord;
}

/// Contains information that the GetFileInformationByHandle function retrieves.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ns-fileapi-by_handle_file_information>.
///
/// {@category struct}
base class BY_HANDLE_FILE_INFORMATION extends Struct {
  /// The file attributes.
  @Uint32()
  external int dwFileAttributes;

  /// A `FILETIME` structure that specifies when a file or directory is created.
  external FILETIME ftCreationTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastAccessTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastWriteTime;

  /// The serial number of the volume that contains a file.
  @Uint32()
  external int dwVolumeSerialNumber;

  /// The high-order part of the file size.
  @Uint32()
  external int nFileSizeHigh;

  /// The low-order part of the file size.
  @Uint32()
  external int nFileSizeLow;

  /// The number of links to this file.
  @Uint32()
  external int nNumberOfLinks;

  /// The high-order part of a unique identifier that is associated with a file.
  @Uint32()
  external int nFileIndexHigh;

  /// The low-order part of a unique identifier that is associated with a file.
  @Uint32()
  external int nFileIndexLow;
}

/// {@category struct}
base class CABOOL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<VARIANT_BOOL> pElems;
}

/// {@category struct}
base class CABSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category struct}
base class CABSTRBLOB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<BSTRBLOB> pElems;
}

/// {@category struct}
base class CAC extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Utf8> pElems;
}

/// Describes the cache attributes.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-cache_descriptor>.
///
/// {@category struct}
base class CACHE_DESCRIPTOR extends Struct {
  @Uint8()
  external int Level;

  /// The cache associativity.
  @Uint8()
  external int Associativity;

  /// The cache line size, in bytes.
  @Uint16()
  external int LineSize;

  /// The cache size, in bytes.
  @Uint32()
  external int Size;

  /// The cache type.
  @Int32()
  external int Type;
}

/// {@category struct}
base class CACLIPDATA extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CLIPDATA> pElems;
}

/// {@category struct}
base class CACLSID extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<GUID> pElems;
}

/// {@category struct}
base class CACY extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CY> pElems;
}

/// {@category struct}
base class CADATE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category struct}
base class CADBL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category struct}
base class CAFILETIME extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<FILETIME> pElems;
}

/// {@category struct}
base class CAFLT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Float> pElems;
}

/// {@category struct}
base class CAH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int64> pElems;
}

/// {@category struct}
base class CAI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;
}

/// {@category struct}
base class CAL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category struct}
base class CALPSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf8>> pElems;
}

/// {@category struct}
base class CALPWSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category struct}
base class CAPROPVARIANT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<PROPVARIANT> pElems;
}

/// {@category struct}
base class CASCODE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category struct}
base class CAUB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint8> pElems;
}

/// {@category struct}
base class CAUH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint64> pElems;
}

/// {@category struct}
base class CAUI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint16> pElems;
}

/// {@category struct}
base class CAUL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint32> pElems;
}

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before a
/// window is activated.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cbtactivatestruct>.
///
/// {@category struct}
base class CBTACTIVATESTRUCT extends Struct {
  /// This member is [TRUE] if a mouse click is causing the activation or
  /// [FALSE] if it is not.
  @Int32()
  external int fMouse;

  /// A handle to the active window.
  @IntPtr()
  external int hWndActive;
}

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before a
/// window is created.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cbt_createwndw>.
///
/// {@category struct}
base class CBT_CREATEWND extends Struct {
  /// A pointer to a `CREATESTRUCT` structure that contains initialization
  /// parameters for the window about to be created.
  external Pointer<CREATESTRUCT> lpcs;

  /// A handle to the window whose position in the Z order precedes that of the
  /// window being created.
  @IntPtr()
  external int hwndInsertAfter;
}

/// Contains both the encoded and decoded representations of a certificate.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_context>.
///
/// {@category struct}
base class CERT_CONTEXT extends Struct {
  /// Type of encoding used.
  @Uint32()
  external int dwCertEncodingType;

  /// A pointer to a buffer that contains the encoded certificate.
  external Pointer<Uint8> pbCertEncoded;

  /// The size, in bytes, of the encoded certificate.
  @Uint32()
  external int cbCertEncoded;

  /// The address of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-cert_info">CERT_INFO</a>
  /// structure that contains the certificate information.
  external Pointer<CERT_INFO> pCertInfo;

  /// A handle to the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">certificate
  /// store</a> that contains the certificate <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">context</a>.
  external HCERTSTORE hCertStore;
}

/// Contains the extension information for a certificate, Certificate Revocation
/// List (CRL) or Certificate Trust List (CTL).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_extension>.
///
/// {@category struct}
base class CERT_EXTENSION extends Struct {
  /// <a href="https://docs.microsoft.com/windows/desktop/SecGloss/o-gly">Object
  /// identifier</a> (OID) that specifies the structure of the extension data
  /// contained in the <b>Value</b> member.
  external Pointer<Utf8> pszObjId;

  /// If [TRUE], any limitations specified by the extension in the <b>Value</b>
  /// member of this structure are imperative.
  @Int32()
  external int fCritical;

  /// A `CRYPT_OBJID_BLOB` structure that contains the encoded extension data.
  external CRYPT_INTEGER_BLOB Value;
}

/// Contains the information of a certificate.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_info>.
///
/// {@category struct}
base class CERT_INFO extends Struct {
  /// The version number of a certificate.
  @Uint32()
  external int dwVersion;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/b-gly">BLOB</a>
  /// that contains the serial number of a certificate.
  external CRYPT_INTEGER_BLOB SerialNumber;

  /// A `CRYPT_ALGORITHM_IDENTIFIER` structure that contains the signature
  /// algorithm type and encoded additional encryption parameters.
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  /// The name, in encoded form, of the issuer of the certificate.
  external CRYPT_INTEGER_BLOB Issuer;

  /// Date and time before which the certificate is not valid.
  external FILETIME NotBefore;

  /// Date and time after which the certificate is not valid.
  external FILETIME NotAfter;

  /// The encoded name of the subject of the certificate.
  external CRYPT_INTEGER_BLOB Subject;

  /// A `CERT_PUBLIC_KEY_INFO` structure that contains the encoded public key
  /// and its algorithm.
  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  /// A BLOB that contains a unique identifier of the issuer.
  external CRYPT_BIT_BLOB IssuerUniqueId;

  /// A BLOB that contains a unique identifier of the subject.
  external CRYPT_BIT_BLOB SubjectUniqueId;

  /// The number of elements in the <b>rgExtension</b> array.
  @Uint32()
  external int cExtension;

  /// An array of pointers to <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-cert_extension">CERT_EXTENSION</a>
  /// structures, each of which contains extension information about the
  /// certificate.
  external Pointer<CERT_EXTENSION> rgExtension;
}

/// Contains a public key and its algorithm.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_public_key_info>.
///
/// {@category struct}
base class CERT_PUBLIC_KEY_INFO extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-crypt_algorithm_identifier">CRYPT_ALGORITHM_IDENTIFIER</a>
  /// structure that contains the public key algorithm type and associated
  /// additional parameters.
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  /// BLOB containing an encoded public key.
  external CRYPT_BIT_BLOB PublicKey;
}

/// Contains extended result information obtained by calling the
/// ChangeWindowMessageFilterEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-changefilterstruct>.
///
/// {@category struct}
base class CHANGEFILTERSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int ExtStatus;
}

/// {@category struct}
typedef CHAR = Int8;

/// Specifies a Unicode or ANSI character and its attributes.
///
/// This structure is used by console functions to read from and write to a
/// console screen buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/char-info-str>.
///
/// {@category struct}
base class CHAR_INFO extends Struct {
  /// A union of the following members.
  external CHAR_INFO_0 Char;

  /// The character attributes.
  @Uint16()
  external int Attributes;
}

/// {@category union}
sealed class CHAR_INFO_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int AsciiChar;
}

extension CHAR_INFO_0_Extension on CHAR_INFO {
  int get UnicodeChar => this.Char.UnicodeChar;
  set UnicodeChar(int value) => this.Char.UnicodeChar = value;

  int get AsciiChar => this.Char.AsciiChar;
  set AsciiChar(int value) => this.Char.AsciiChar = value;
}

/// Contains information the ChooseColor function uses to initialize the Color
/// dialog box.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-choosecolorw>.
///
/// {@category struct}
base class CHOOSECOLOR extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>CC_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// If the <b>CC_RGBINIT</b> flag is set, <b>rgbResult</b> specifies the color
  /// initially selected when the dialog box is created.
  @Uint32()
  external int rgbResult;

  /// A pointer to an array of 16 values that contain red, green, blue (RGB)
  /// values for the custom color boxes in the dialog box.
  external Pointer<COLORREF> lpCustColors;

  /// A set of bit flags that you can use to initialize the <b>Color</b> dialog
  /// box.
  @Uint32()
  external int Flags;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a `CCHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCCHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external Pointer<Utf16> lpTemplateName;
}

/// Contains information that the ChooseFont function uses to initialize the
/// Font dialog box.
///
/// After the user closes the dialog box, the system returns information about
/// the user's selection in this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-choosefontw>.
///
/// {@category struct}
base class CHOOSEFONT extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// This member is ignored by the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms646914(v=vs.85)">ChooseFont</a>
  /// function.
  @IntPtr()
  external int hDC;

  /// A pointer to a `LOGFONT` structure.
  external Pointer<LOGFONT> lpLogFont;

  /// The size of the selected font, in units of 1/10 of a point.
  @Int32()
  external int iPointSize;

  @Uint32()
  external int Flags;

  /// If the <b>CF_EFFECTS</b> flag is set, <b>rgbColors</b> specifies the
  /// initial text color.
  @Uint32()
  external int rgbColors;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a `CFHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCFHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external Pointer<Utf16> lpTemplateName;

  /// If the <b>CF_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// The style data.
  external Pointer<Utf16> lpszStyle;

  @Uint16()
  external int nFontType;

  @Uint16()
  external int MISSING_ALIGNMENT__;

  /// The minimum point size a user can select.
  @Int32()
  external int nSizeMin;

  /// The maximum point size a user can select.
  @Int32()
  external int nSizeMax;
}

/// {@category struct}
base class CLIENT_ID extends Struct {
  @IntPtr()
  external int UniqueProcess;

  @IntPtr()
  external int UniqueThread;
}

/// {@category struct}
base class CLIPDATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Int32()
  external int ulClipFmt;

  external Pointer<Uint8> pClipData;
}

/// Defines the color adjustment values used by the StretchBlt and StretchDIBits
/// functions when the stretch mode is HALFTONE.
///
/// You can set the color adjustment values by calling the SetColorAdjustment
/// function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-coloradjustment>.
///
/// {@category struct}
base class COLORADJUSTMENT extends Struct {
  /// The size, in bytes, of the structure.
  @Uint16()
  external int caSize;

  @Uint16()
  external int caFlags;

  @Uint16()
  external int caIlluminantIndex;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// red primary of the source colors.
  @Uint16()
  external int caRedGamma;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// green primary of the source colors.
  @Uint16()
  external int caGreenGamma;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// blue primary of the source colors.
  @Uint16()
  external int caBlueGamma;

  /// The black reference for the source colors.
  @Uint16()
  external int caReferenceBlack;

  /// The white reference for the source colors.
  @Uint16()
  external int caReferenceWhite;

  /// The amount of contrast to be applied to the source object.
  @Int16()
  external int caContrast;

  /// The amount of brightness to be applied to the source object.
  @Int16()
  external int caBrightness;

  /// The amount of colorfulness to be applied to the source object.
  @Int16()
  external int caColorfulness;

  /// The amount of red or green tint adjustment to be applied to the source
  /// object.
  @Int16()
  external int caRedGreenTint;
}

/// {@category struct}
typedef COLORREF = Uint32;

/// Used generically to filter elements.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-comdlg_filterspec>.
///
/// {@category struct}
base class COMDLG_FILTERSPEC extends Struct {
  /// A pointer to a buffer that contains the friendly name of the filter.
  external Pointer<Utf16> pszName;

  /// A pointer to a buffer that contains the filter pattern.
  external Pointer<Utf16> pszSpec;
}

/// Contains information about the configuration state of a communications
/// device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commconfig>.
///
/// {@category struct}
base class COMMCONFIG extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwSize;

  /// The version number of the structure.
  @Uint16()
  external int wVersion;

  /// Reserved; do not use.
  @Uint16()
  // ignore: unused_field
  external int _wReserved;

  /// The device-control block (<a
  /// href="https://docs.microsoft.com/windows/desktop/api/winbase/ns-winbase-dcb">DCB</a>)
  /// structure for RS-232 serial devices.
  external DCB dcb;

  /// The type of communications provider, and thus the format of the
  /// provider-specific data.
  @Uint32()
  external int dwProviderSubType;

  /// The offset of the provider-specific data relative to the beginning of the
  /// structure, in bytes.
  @Uint32()
  external int dwProviderOffset;

  /// The size of the provider-specific data, in bytes.
  @Uint32()
  external int dwProviderSize;

  /// Optional provider-specific data.
  @Array(1)
  external Array<Uint16> wcProviderData;
}

/// Contains information about a communications driver.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commprop>.
///
/// {@category struct}
base class COMMPROP extends Struct {
  /// The size of the entire data packet, regardless of the amount of data
  /// requested, in bytes.
  @Uint16()
  external int wPacketLength;

  /// The version of the structure.
  @Uint16()
  external int wPacketVersion;

  /// A bitmask indicating which services are implemented by this provider.
  @Uint32()
  external int dwServiceMask;

  /// Reserved; do not use.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved1;

  /// The maximum size of the driver's internal output buffer, in bytes.
  @Uint32()
  external int dwMaxTxQueue;

  /// The maximum size of the driver's internal input buffer, in bytes.
  @Uint32()
  external int dwMaxRxQueue;

  /// The maximum allowable baud rate, in bits per second (bps).
  @Uint32()
  external int dwMaxBaud;

  /// The communications-provider type.
  @Uint32()
  external int dwProvSubType;

  /// A bitmask indicating the capabilities offered by the provider.
  @Uint32()
  external int dwProvCapabilities;

  /// A bitmask indicating the communications parameters that can be changed.
  @Uint32()
  external int dwSettableParams;

  /// The baud rates that can be used.
  @Uint32()
  external int dwSettableBaud;

  /// A bitmask indicating the number of data bits that can be set.
  @Uint16()
  external int wSettableData;

  /// A bitmask indicating the stop bit and parity settings that can be
  /// selected.
  @Uint16()
  external int wSettableStopParity;

  /// The size of the driver's internal output buffer, in bytes.
  @Uint32()
  external int dwCurrentTxQueue;

  /// The size of the driver's internal input buffer, in bytes.
  @Uint32()
  external int dwCurrentRxQueue;

  /// Any provider-specific data.
  @Uint32()
  external int dwProvSpec1;

  /// Any provider-specific data.
  @Uint32()
  external int dwProvSpec2;

  /// Any provider-specific data.
  @Array(1)
  external Array<Uint16> wcProvChar;
}

/// Contains the time-out parameters for a communications device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commtimeouts>.
///
/// {@category struct}
base class COMMTIMEOUTS extends Struct {
  /// The maximum time allowed to elapse before the arrival of the next byte on
  /// the communications line, in milliseconds.
  @Uint32()
  external int ReadIntervalTimeout;

  /// The multiplier used to calculate the total time-out period for read
  /// operations, in milliseconds.
  @Uint32()
  external int ReadTotalTimeoutMultiplier;

  /// A constant used to calculate the total time-out period for read
  /// operations, in milliseconds.
  @Uint32()
  external int ReadTotalTimeoutConstant;

  /// The multiplier used to calculate the total time-out period for write
  /// operations, in milliseconds.
  @Uint32()
  external int WriteTotalTimeoutMultiplier;

  /// A constant used to calculate the total time-out period for write
  /// operations, in milliseconds.
  @Uint32()
  external int WriteTotalTimeoutConstant;
}

/// Contains information about a communications device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-comstat>.
///
/// {@category struct}
base class COMSTAT extends Struct {
  @Uint32()
  external int bitfield;

  /// The number of bytes received by the serial provider but not yet read by a
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-readfile">ReadFile</a>
  /// operation.
  @Uint32()
  external int cbInQue;

  /// The number of bytes of user data remaining to be transmitted for all write
  /// operations.
  @Uint32()
  external int cbOutQue;
}

/// Contains the size and visibility information about the about the console
/// cursor.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/console-cursor-info-str>.
///
/// {@category struct}
base class CONSOLE_CURSOR_INFO extends Struct {
  /// The percentage of the character cell that is filled by the cursor.
  @Uint32()
  external int dwSize;

  /// The visibility of the cursor.
  @Int32()
  external int bVisible;
}

/// Contains information for a console read operation.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/console-readconsole-control>.
///
/// {@category struct}
base class CONSOLE_READCONSOLE_CONTROL extends Struct {
  /// The size of the structure.
  @Uint32()
  external int nLength;

  /// The number of characters to skip (and thus preserve) before writing newly
  /// read input in the buffer passed to the `ReadConsole` function.
  @Uint32()
  external int nInitialChars;

  /// A mask specifying which control characters between `0x00` and `0x1F`
  /// should be used to signal that the read is complete.
  @Uint32()
  external int dwCtrlWakeupMask;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;
}

/// Contains information about a console screen buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/console-screen-buffer-info-str>.
///
/// {@category struct}
base class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  /// A `COORD` structure that contains the size of the console screen buffer,
  /// in character columns and rows.
  external COORD dwSize;

  /// A `COORD` structure that contains the column and row coordinates of the
  /// cursor in the console screen buffer.
  external COORD dwCursorPosition;

  /// The attributes of the characters written to a screen buffer by the
  /// `WriteFile` and `WriteConsole` functions, or echoed to a screen buffer by
  /// the `ReadFile` and `ReadConsole` functions.
  @Uint16()
  external int wAttributes;

  /// A `SMALL_RECT` structure that contains the console screen buffer
  /// coordinates of the upper-left and lower-right corners of the display
  /// window.
  external SMALL_RECT srWindow;

  /// A `COORD` structure that contains the maximum size of the console window,
  /// in character columns and rows, given the current screen buffer size and
  /// font and the screen size.
  external COORD dwMaximumWindowSize;
}

/// Contains information for a console selection.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/console-selection-info-str>.
///
/// {@category struct}
base class CONSOLE_SELECTION_INFO extends Struct {
  /// The selection indicator.
  @Uint32()
  external int dwFlags;

  /// A `COORD` structure that specifies the selection anchor, in characters.
  external COORD dwSelectionAnchor;

  /// A `SMALL_RECT` structure that specifies the selection rectangle.
  external SMALL_RECT srSelection;
}

/// Defines the coordinates of a character cell in a console screen buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/coord-str>.
///
/// {@category struct}
base class COORD extends Struct {
  /// The horizontal coordinate or column value.
  @Int16()
  external int X;

  /// The vertical coordinate or row value.
  @Int16()
  external int Y;
}

/// {@category struct}
base class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;
}

/// {@category struct}
typedef CO_MTA_USAGE_COOKIE = IntPtr;

/// Contains optional extended parameters for CreateFile2.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ns-fileapi-createfile2_extended_parameters>.
///
/// {@category struct}
base class CREATEFILE2_EXTENDED_PARAMETERS extends Struct {
  /// Contains the size of this structure,
  /// `sizeOf<CREATEFILE2_EXTENDED_PARAMETERS>()`.
  @Uint32()
  external int dwSize;

  /// The file or device attributes and flags, **FILE_ATTRIBUTE_NORMAL** being
  /// the most common default value for files.
  @Uint32()
  external int dwFileAttributes;

  /// This parameter can contain combinations of flags (<b>FILE_FLAG_*</b>) for
  /// control of file or device caching behavior, access modes, and other
  /// special-purpose flags.
  @Uint32()
  external int dwFileFlags;

  /// The _dwSecurityQosFlags_ parameter specifies SQOS information.
  @Uint32()
  external int dwSecurityQosFlags;

  /// A pointer to a `SECURITY_ATTRIBUTES` structure that contains two separate
  /// but related data members: an optional security descriptor, and a Boolean
  /// value that determines whether the returned handle can be inherited by
  /// child processes.
  external Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes;

  /// A valid handle to a template file with the **GENERIC_READ** access right.
  @IntPtr()
  external int hTemplateFile;
}

/// Defines the initialization parameters passed to the window procedure of an
/// application.
///
/// These members are identical to the parameters of the CreateWindowEx
/// function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-createstructw>.
///
/// {@category struct}
base class CREATESTRUCT extends Struct {
  /// Contains additional data which may be used to create the window.
  external Pointer lpCreateParams;

  /// A handle to the module that owns the new window.
  @IntPtr()
  external int hInstance;

  /// A handle to the menu to be used by the new window.
  @IntPtr()
  external int hMenu;

  /// A handle to the parent window, if the window is a child window.
  @IntPtr()
  external int hwndParent;

  /// The height of the new window, in pixels.
  @Int32()
  external int cy;

  /// The width of the new window, in pixels.
  @Int32()
  external int cx;

  /// The y-coordinate of the upper left corner of the new window.
  @Int32()
  external int y;

  /// The x-coordinate of the upper left corner of the new window.
  @Int32()
  external int x;

  /// The style for the new window.
  @Int32()
  external int style;

  /// The name of the new window.
  external Pointer<Utf16> lpszName;

  /// A pointer to a null-terminated string or an atom that specifies the class
  /// name of the new window.
  external Pointer<Utf16> lpszClass;

  /// The extended window style for the new window.
  @Uint32()
  external int dwExStyle;
}

/// Contains an individual credential.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/ns-wincred-credentialw>.
///
/// {@category struct}
base class CREDENTIAL extends Struct {
  /// A bit member that identifies characteristics of the credential.
  @Uint32()
  external int Flags;

  /// The type of the credential.
  @Uint32()
  external int Type;

  /// The name of the credential.
  external Pointer<Utf16> TargetName;

  /// A string comment from the user that describes this credential.
  external Pointer<Utf16> Comment;

  /// The time, in Coordinated Universal Time (Greenwich Mean Time), of the last
  /// modification of the credential.
  external FILETIME LastWritten;

  /// The size, in bytes, of the <b>CredentialBlob</b> member.
  @Uint32()
  external int CredentialBlobSize;

  /// Secret data for the credential.
  external Pointer<Uint8> CredentialBlob;

  /// Defines the persistence of this credential.
  @Uint32()
  external int Persist;

  /// The number of application-defined attributes to be associated with the
  /// credential.
  @Uint32()
  external int AttributeCount;

  /// Application-defined attributes that are associated with the credential.
  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;

  /// Alias for the <b>TargetName</b> member.
  external Pointer<Utf16> TargetAlias;

  /// The user name of the account used to connect to <b>TargetName</b>.
  external Pointer<Utf16> UserName;
}

/// Contains an application-defined attribute of the credential.
///
/// An attribute is a keyword-value pair. It is up to the application to define
/// the meaning of the attribute.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/ns-wincred-credential_attributew>.
///
/// {@category struct}
base class CREDENTIAL_ATTRIBUTE extends Struct {
  /// Name of the application-specific attribute.
  external Pointer<Utf16> Keyword;

  /// Identifies characteristics of the credential attribute.
  @Uint32()
  external int Flags;

  /// Length of <b>Value</b> in bytes.
  @Uint32()
  external int ValueSize;

  /// Data associated with the attribute.
  external Pointer<Uint8> Value;
}

/// Provides the text of a prompt and information about when and where that
/// prompt is to be displayed when using the CryptProtectData and
/// CryptUnprotectData functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/ns-dpapi-cryptprotect_promptstruct>.
///
/// {@category struct}
base class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// <b>DWORD</b> flags that indicate when prompts to the user are to be
  /// displayed.
  @Uint32()
  external int dwPromptFlags;

  /// Window handle to the parent window.
  @IntPtr()
  external int hwndApp;

  /// A string containing the text of a prompt to be displayed.
  external Pointer<Utf16> szPrompt;
}

/// Specifies an algorithm used to encrypt a private key.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-crypt_algorithm_identifier>.
///
/// {@category struct}
base class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf8> pszObjId;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/b-gly">BLOB</a>
  /// that provides encoded algorithm-specific parameters.
  external CRYPT_INTEGER_BLOB Parameters;
}

/// Contains a set of bits represented by an array of bytes.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-crypt_bit_blob>.
///
/// {@category struct}
base class CRYPT_BIT_BLOB extends Struct {
  /// The number of bytes in the <b>pbData</b> array.
  @Uint32()
  external int cbData;

  /// A pointer to an array of bytes that represents the bits.
  external Pointer<Uint8> pbData;

  /// The number of unused bits in the last byte of the array.
  @Uint32()
  external int cUnusedBits;
}

/// Used for an arbitrary array of bytes.
///
/// It is declared in Wincrypt.h and provides flexibility for objects that can
/// contain various data types.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/ns-dpapi-crypt_integer_blob>.
///
/// {@category struct}
base class CRYPT_INTEGER_BLOB extends Struct {
  /// The count of bytes in the buffer pointed to by <i>pbData</i>.
  @Uint32()
  external int cbData;

  /// A pointer to a block of data bytes.
  external Pointer<Uint8> pbData;
}

/// Contains global cursor information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cursorinfo>.
///
/// {@category struct}
base class CURSORINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int flags;

  /// A handle to the cursor.
  @IntPtr()
  external int hCursor;

  /// A structure that receives the screen coordinates of the cursor.
  external POINT ptScreenPos;
}

/// Defines the message parameters passed to a WH_CALLWNDPROCRET hook procedure,
/// CallWndRetProc.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpretstruct>.
///
/// {@category struct}
base class CWPRETSTRUCT extends Struct {
  /// The return value of the window procedure that processed the message
  /// specified by the <b>message</b> value.
  @IntPtr()
  external int lResult;

  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// The message.
  @Uint32()
  external int message;

  /// A handle to the window that processed the message specified by the
  /// <b>message</b> value.
  @IntPtr()
  external int hwnd;
}

/// Defines the message parameters passed to a WH_CALLWNDPROC hook procedure,
/// CallWndProc.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpstruct>.
///
/// {@category struct}
base class CWPSTRUCT extends Struct {
  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// The message.
  @Uint32()
  external int message;

  /// A handle to the window to receive the message.
  @IntPtr()
  external int hwnd;
}

/// Useful for calculations involving money, or for any fixed-point calculation
/// where accuracy is particularly important.
///
/// To learn more about this union, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-cy~r1>.
///
/// {@category union}
sealed class CY extends Union {
  external CY_0 Anonymous;

  @Int64()
  external int int64;
}

/// {@category struct}
sealed class CY_0 extends Struct {
  @Uint32()
  external int Lo;

  @Int32()
  external int Hi;
}

extension CY_0_Extension on CY {
  int get Lo => this.Anonymous.Lo;
  set Lo(int value) => this.Anonymous.Lo = value;

  int get Hi => this.Anonymous.Hi;
  set Hi(int value) => this.Anonymous.Hi = value;
}

/// Defines the control setting for a serial communications device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
///
/// {@category struct}
base class DCB extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int DCBlength;

  /// The baud rate at which the communications device operates.
  @Uint32()
  external int BaudRate;

  @Uint32()
  external int bitfield;

  /// Reserved; must be zero.
  @Uint16()
  // ignore: unused_field
  external int _wReserved;

  /// The minimum number of bytes in use allowed in the input buffer before flow
  /// control is activated to allow transmission by the sender.
  @Uint16()
  external int XonLim;

  /// The minimum number of free bytes allowed in the input buffer before flow
  /// control is activated to inhibit the sender.
  @Uint16()
  external int XoffLim;

  /// The number of bits in the bytes transmitted and received.
  @Uint8()
  external int ByteSize;

  @Uint8()
  external int Parity;

  @Uint8()
  external int StopBits;

  /// The value of the XON character for both transmission and reception.
  @Int8()
  external int XonChar;

  /// The value of the XOFF character for both transmission and reception.
  @Int8()
  external int XoffChar;

  /// The value of the character used to replace bytes received with a parity
  /// error.
  @Int8()
  external int ErrorChar;

  /// The value of the character used to signal the end of data.
  @Int8()
  external int EofChar;

  /// The value of the character used to signal an event.
  @Int8()
  external int EvtChar;

  /// Reserved; do not use.
  @Uint16()
  // ignore: unused_field
  external int _wReserved1;
}

/// Contains debugging information passed to a WH_DEBUG hook procedure,
/// DebugProc.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-debughookinfo>.
///
/// {@category struct}
base class DEBUGHOOKINFO extends Struct {
  /// A handle to the thread containing the filter function.
  @Uint32()
  external int idThread;

  /// A handle to the thread that installed the debugging filter function.
  @Uint32()
  external int idThreadInstaller;

  /// The value to be passed to the hook in the <i>lParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @IntPtr()
  external int lParam;

  /// The value to be passed to the hook in the <i>wParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @IntPtr()
  external int wParam;

  /// The value to be passed to the hook in the <i>nCode</i> parameter of the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @Int32()
  external int code;
}

/// Represents a decimal data type that provides a sign and scale for a number.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-decimal~r1>.
///
/// {@category struct}
base class DECIMAL extends Struct {
  /// Reserved.
  @Uint16()
  // ignore: unused_field
  external int _wReserved;

  external DECIMAL_0 Anonymous1;

  /// The high 32 bits of the number.
  @Uint32()
  external int Hi32;

  external DECIMAL_1 Anonymous2;
}

/// {@category union}
sealed class DECIMAL_0 extends Union {
  external DECIMAL_0_0 Anonymous;

  @Uint16()
  external int signscale;
}

extension DECIMAL_0_Extension on DECIMAL {
  DECIMAL_0_0 get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(DECIMAL_0_0 value) => this.Anonymous1.Anonymous = value;

  int get signscale => this.Anonymous1.signscale;
  set signscale(int value) => this.Anonymous1.signscale = value;
}

/// {@category struct}
sealed class DECIMAL_0_0 extends Struct {
  @Uint8()
  external int scale;

  @Uint8()
  external int sign;
}

extension DECIMAL_0_0_Extension on DECIMAL {
  int get scale => this.Anonymous1.Anonymous.scale;
  set scale(int value) => this.Anonymous1.Anonymous.scale = value;

  int get sign => this.Anonymous1.Anonymous.sign;
  set sign(int value) => this.Anonymous1.Anonymous.sign = value;
}

/// {@category union}
sealed class DECIMAL_1 extends Union {
  external DECIMAL_1_0 Anonymous;

  @Uint64()
  external int Lo64;
}

extension DECIMAL_1_Extension on DECIMAL {
  DECIMAL_1_0 get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(DECIMAL_1_0 value) => this.Anonymous2.Anonymous = value;

  int get Lo64 => this.Anonymous2.Lo64;
  set Lo64(int value) => this.Anonymous2.Lo64 = value;
}

/// {@category struct}
sealed class DECIMAL_1_0 extends Struct {
  @Uint32()
  external int Lo32;

  @Uint32()
  external int Mid32;
}

extension DECIMAL_1_0_Extension on DECIMAL {
  int get Lo32 => this.Anonymous2.Anonymous.Lo32;
  set Lo32(int value) => this.Anonymous2.Anonymous.Lo32 = value;

  int get Mid32 => this.Anonymous2.Anonymous.Mid32;
  set Mid32(int value) => this.Anonymous2.Anonymous.Mid32 = value;
}

/// Used by an application to specify values for the axes of a multiple master
/// font.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-designvector>.
///
/// {@category struct}
base class DESIGNVECTOR extends Struct {
  /// Reserved.
  @Uint32()
  // ignore: unused_field
  external int _dvReserved;

  /// Number of values in the <b>dvValues</b> array.
  @Uint32()
  external int dvNumAxes;

  /// An array specifying the values of the axes of a multiple master OpenType
  /// font.
  @Array(16)
  external Array<Int32> dvValues;
}

/// Used for specifying characteristics of display and print devices in the
/// Unicode (wide) character set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-devmodew>.
///
/// {@category struct}
base class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  /// For a display, specifies the name of the display driver's DLL; for
  /// example, "perm3dd" for the 3Dlabs Permedia3 display driver.
  String get dmDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_dmDeviceName[i] == 0x00) break;
      charCodes.add(_dmDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmDeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Specifies the version number of this DEVMODEW structure.
  @Uint16()
  external int dmSpecVersion;

  /// For a printer, specifies the printer driver version number assigned by the
  /// printer driver developer.
  @Uint16()
  external int dmDriverVersion;

  /// Specifies the size in bytes of the public DEVMODEW structure, not
  /// including any private, driver-specified members identified by the
  /// <b>dmDriverExtra</b> member.
  @Uint16()
  external int dmSize;

  /// Specifies the number of bytes of private driver data that follow the
  /// public structure members.
  @Uint16()
  external int dmDriverExtra;

  /// Specifies bit flags identifying which of the following DEVMODEW members
  /// are in use.
  @Uint32()
  external int dmFields;

  external DEVMODE_0 Anonymous1;

  /// For printers, specifies whether a color printer should print color or
  /// monochrome.
  @Int16()
  external int dmColor;

  @Int16()
  external int dmDuplex;

  /// For printers, specifies the <i>y</i> resolution of the printer, in DPI.
  @Int16()
  external int dmYResolution;

  /// For printers, specifies how TrueType fonts should be printed.
  @Int16()
  external int dmTTOption;

  @Int16()
  external int dmCollate;

  @Array(32)
  external Array<Uint16> _dmFormName;

  /// For printers, specifies the name of the form to use; such as "Letter" or
  /// "Legal".
  String get dmFormName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_dmFormName[i] == 0x00) break;
      charCodes.add(_dmFormName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmFormName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmFormName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// For displays, specifies the number of logical pixels per inch of a display
  /// device and should be equal to the <b>ulLogPixels</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winddi/ns-winddi-gdiinfo">GDIINFO</a>
  /// structure.
  @Uint16()
  external int dmLogPixels;

  /// For displays, specifies the color resolution, in bits per pixel, of a
  /// display device.
  @Uint32()
  external int dmBitsPerPel;

  /// For displays, specifies the width, in pixels, of the visible device
  /// surface.
  @Uint32()
  external int dmPelsWidth;

  /// For displays, specifies the height, in pixels, of the visible device
  /// surface.
  @Uint32()
  external int dmPelsHeight;

  external DEVMODE_1 Anonymous2;

  /// For displays, specifies the frequency, in hertz, of a display device in
  /// its current mode.
  @Uint32()
  external int dmDisplayFrequency;

  /// Specifies one of the DMICMMETHOD-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmICMMethod;

  /// Specifies one of the DMICM-prefixed constants defined in <i>wingdi.h</i>.
  @Uint32()
  external int dmICMIntent;

  /// Specifies one of the DMMEDIA-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmMediaType;

  /// Specifies one of the DMDITHER-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmDitherType;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  // ignore: unused_field
  external int _dmReserved1;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  // ignore: unused_field
  external int _dmReserved2;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  external int dmPanningWidth;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  external int dmPanningHeight;
}

/// {@category union}
sealed class DEVMODE_0 extends Union {
  external DEVMODE_0_0 Anonymous1;

  external DEVMODE_0_1 Anonymous2;
}

extension DEVMODE_0_Extension on DEVMODE {
  DEVMODE_0_0 get Anonymous1 => this.Anonymous1.Anonymous1;
  set Anonymous1(DEVMODE_0_0 value) => this.Anonymous1.Anonymous1 = value;

  DEVMODE_0_1 get Anonymous2 => this.Anonymous1.Anonymous2;
  set Anonymous2(DEVMODE_0_1 value) => this.Anonymous1.Anonymous2 = value;
}

/// {@category struct}
sealed class DEVMODE_0_0 extends Struct {
  @Int16()
  external int dmOrientation;

  @Int16()
  external int dmPaperSize;

  @Int16()
  external int dmPaperLength;

  @Int16()
  external int dmPaperWidth;

  @Int16()
  external int dmScale;

  @Int16()
  external int dmCopies;

  @Int16()
  external int dmDefaultSource;

  @Int16()
  external int dmPrintQuality;
}

extension DEVMODE_0_0_Extension on DEVMODE {
  int get dmOrientation => this.Anonymous1.Anonymous1.dmOrientation;
  set dmOrientation(int value) =>
      this.Anonymous1.Anonymous1.dmOrientation = value;

  int get dmPaperSize => this.Anonymous1.Anonymous1.dmPaperSize;
  set dmPaperSize(int value) => this.Anonymous1.Anonymous1.dmPaperSize = value;

  int get dmPaperLength => this.Anonymous1.Anonymous1.dmPaperLength;
  set dmPaperLength(int value) =>
      this.Anonymous1.Anonymous1.dmPaperLength = value;

  int get dmPaperWidth => this.Anonymous1.Anonymous1.dmPaperWidth;
  set dmPaperWidth(int value) =>
      this.Anonymous1.Anonymous1.dmPaperWidth = value;

  int get dmScale => this.Anonymous1.Anonymous1.dmScale;
  set dmScale(int value) => this.Anonymous1.Anonymous1.dmScale = value;

  int get dmCopies => this.Anonymous1.Anonymous1.dmCopies;
  set dmCopies(int value) => this.Anonymous1.Anonymous1.dmCopies = value;

  int get dmDefaultSource => this.Anonymous1.Anonymous1.dmDefaultSource;
  set dmDefaultSource(int value) =>
      this.Anonymous1.Anonymous1.dmDefaultSource = value;

  int get dmPrintQuality => this.Anonymous1.Anonymous1.dmPrintQuality;
  set dmPrintQuality(int value) =>
      this.Anonymous1.Anonymous1.dmPrintQuality = value;
}

/// {@category struct}
sealed class DEVMODE_0_1 extends Struct {
  external POINTL dmPosition;

  @Uint32()
  external int dmDisplayOrientation;

  @Uint32()
  external int dmDisplayFixedOutput;
}

extension DEVMODE_0_1_Extension on DEVMODE {
  POINTL get dmPosition => this.Anonymous1.Anonymous2.dmPosition;
  set dmPosition(POINTL value) => this.Anonymous1.Anonymous2.dmPosition = value;

  int get dmDisplayOrientation =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation;
  set dmDisplayOrientation(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation = value;

  int get dmDisplayFixedOutput =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput;
  set dmDisplayFixedOutput(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput = value;
}

/// {@category union}
sealed class DEVMODE_1 extends Union {
  @Uint32()
  external int dmDisplayFlags;

  @Uint32()
  external int dmNup;
}

extension DEVMODE_1_Extension on DEVMODE {
  int get dmDisplayFlags => this.Anonymous2.dmDisplayFlags;
  set dmDisplayFlags(int value) => this.Anonymous2.dmDisplayFlags = value;

  int get dmNup => this.Anonymous2.dmNup;
  set dmNup(int value) => this.Anonymous2.dmNup = value;
}

/// Contains information about a DIB created by calling the CreateDIBSection
/// function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-dibsection>.
///
/// {@category struct}
base class DIBSECTION extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-bitmap">BITMAP</a>
  /// data structure that contains information about the DIB: its type, its
  /// dimensions, its color capacities, and a pointer to its bit values.
  external BITMAP dsBm;

  /// A `BITMAPINFOHEADER` structure that contains information about the color
  /// format of the DIB.
  external BITMAPINFOHEADER dsBmih;

  /// Specifies three color masks for the DIB.
  @Array(3)
  external Array<Uint32> dsBitfields;

  /// Contains a handle to the file mapping object that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-createdibsection">CreateDIBSection</a>
  /// function used to create the DIB.
  @IntPtr()
  external int dshSection;

  /// The offset to the bitmap's bit values within the file mapping object
  /// referenced by <i>dshSection</i>.
  @Uint32()
  external int dsOffset;
}

/// Represents a disk extent.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_extent>.
///
/// {@category struct}
base class DISK_EXTENT extends Struct {
  /// The number of the disk that contains this extent.
  @Uint32()
  external int DiskNumber;

  /// The offset from the beginning of the disk to the extent, in bytes.
  @Int64()
  external int StartingOffset;

  /// The number of bytes in this extent.
  @Int64()
  external int ExtentLength;
}

/// Describes the geometry of disk devices and media.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_geometry>.
///
/// {@category struct}
base class DISK_GEOMETRY extends Struct {
  /// The number of cylinders.
  @Int64()
  external int Cylinders;

  /// The type of media.
  @Int32()
  external int MediaType;

  /// The number of tracks per cylinder.
  @Uint32()
  external int TracksPerCylinder;

  /// The number of sectors per track.
  @Uint32()
  external int SectorsPerTrack;

  /// The number of bytes per sector.
  @Uint32()
  external int BytesPerSector;
}

/// Describes the extended geometry of disk devices and media.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_geometry_ex>.
///
/// {@category struct}
base class DISK_GEOMETRY_EX extends Struct {
  /// A `DISK_GEOMETRY` structure.
  external DISK_GEOMETRY Geometry;

  /// The disk size, in bytes.
  @Int64()
  external int DiskSize;

  /// Any additional data.
  @Array(1)
  external Array<Uint8> Data;
}

/// Represents a point or an offset in a two-dimensional space.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_2dregion>.
///
/// {@category struct}
base class DISPLAYCONFIG_2DREGION extends Struct {
  /// The horizontal component of the point or offset.
  @Uint32()
  external int cx;

  /// The vertical component of the point or offset.
  @Uint32()
  external int cy;
}

/// Contains information about the image displayed on the desktop.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_desktop_image_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  /// A `POINTL` structure that specifies the size of the VidPn source surface
  /// that is being displayed on the monitor.
  external POINTL PathSourceSize;

  /// A `RECTL` structure that defines where the desktop image will be
  /// positioned within path source.
  external RECTL DesktopImageRegion;

  /// A `RECTL` structure that defines which part of the desktop image for this
  /// clone group will be displayed on this path.
  external RECTL DesktopImageClip;
}

/// Contains display information about the device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_device_info_header>.
///
/// {@category struct}
base class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ne-wingdi-displayconfig_device_info_type">DISPLAYCONFIG_DEVICE_INFO_TYPE</a>
  /// enumerated value that determines the type of device information to
  /// retrieve or set.
  @Int32()
  external int type;

  /// The size, in bytes, of the device information that is retrieved or set.
  @Uint32()
  external int size;

  /// A locally unique identifier (LUID) that identifies the adapter that the
  /// device information packet refers to.
  external LUID adapterId;

  /// The source or target identifier to get or set the device information for.
  @Uint32()
  external int id;
}

/// Contains either source mode or target mode information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_mode_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_MODE_INFO extends Struct {
  /// A value that indicates whether the <b>DISPLAYCONFIG_MODE_INFO</b>
  /// structure represents source or target mode information.
  @Int32()
  external int infoType;

  /// The source or target identifier on the specified adapter that this path
  /// relates to.
  @Uint32()
  external int id;

  /// The identifier of the adapter that this source or target mode information
  /// relates to.
  external LUID adapterId;

  external DISPLAYCONFIG_MODE_INFO_0 Anonymous;
}

/// {@category union}
sealed class DISPLAYCONFIG_MODE_INFO_0 extends Union {
  external DISPLAYCONFIG_TARGET_MODE targetMode;

  external DISPLAYCONFIG_SOURCE_MODE sourceMode;

  external DISPLAYCONFIG_DESKTOP_IMAGE_INFO desktopImageInfo;
}

extension DISPLAYCONFIG_MODE_INFO_0_Extension on DISPLAYCONFIG_MODE_INFO {
  DISPLAYCONFIG_TARGET_MODE get targetMode => this.Anonymous.targetMode;
  set targetMode(DISPLAYCONFIG_TARGET_MODE value) =>
      this.Anonymous.targetMode = value;

  DISPLAYCONFIG_SOURCE_MODE get sourceMode => this.Anonymous.sourceMode;
  set sourceMode(DISPLAYCONFIG_SOURCE_MODE value) =>
      this.Anonymous.sourceMode = value;

  DISPLAYCONFIG_DESKTOP_IMAGE_INFO get desktopImageInfo =>
      this.Anonymous.desktopImageInfo;
  set desktopImageInfo(DISPLAYCONFIG_DESKTOP_IMAGE_INFO value) =>
      this.Anonymous.desktopImageInfo = value;
}

/// Used to describe a single path from a target to a source.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_INFO extends Struct {
  /// A `DISPLAYCONFIG_PATH_SOURCE_INFO` structure that contains the source
  /// information for the path.
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;

  /// A `DISPLAYCONFIG_PATH_TARGET_INFO` structure that contains the target
  /// information for the path.
  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;

  /// A bitwise OR of flag values that indicates the state of the path.
  @Uint32()
  external int flags;
}

/// Contains source information for a single path.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_source_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  /// The identifier of the adapter that this source information relates to.
  external LUID adapterId;

  /// The source identifier on the specified adapter that this path relates to.
  @Uint32()
  external int id;

  external DISPLAYCONFIG_PATH_SOURCE_INFO_0 Anonymous;

  /// A bitwise OR of flag values that indicates the status of the source.
  @Uint32()
  external int statusFlags;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 Anonymous;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

/// Contains target information for a single path.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_target_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  /// The identifier of the adapter that the path is on.
  external LUID adapterId;

  /// The target identifier on the specified adapter that this path relates to.
  @Uint32()
  external int id;

  external DISPLAYCONFIG_PATH_TARGET_INFO_0 Anonymous;

  /// The target's connector type.
  @Int32()
  external int outputTechnology;

  /// A value that specifies the rotation of the target.
  @Int32()
  external int rotation;

  /// A value that specifies how the source image is scaled to the target.
  @Int32()
  external int scaling;

  /// A `DISPLAYCONFIG_RATIONAL` structure that specifies the refresh rate of
  /// the target.
  external DISPLAYCONFIG_RATIONAL refreshRate;

  /// A value that specifies the scan-line ordering of the output on the target.
  @Int32()
  external int scanLineOrdering;

  /// A Boolean value that specifies whether the target is available.
  @Int32()
  external int targetAvailable;

  /// A bitwise OR of flag values that indicates the status of the target.
  @Uint32()
  external int statusFlags;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_TARGET_INFO_0_0 Anonymous;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  DISPLAYCONFIG_PATH_TARGET_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(DISPLAYCONFIG_PATH_TARGET_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

/// Describes a fractional value that represents vertical and horizontal
/// frequencies of a video mode (that is, vertical sync and horizontal sync).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_rational>.
///
/// {@category struct}
base class DISPLAYCONFIG_RATIONAL extends Struct {
  /// The numerator of the frequency fraction.
  @Uint32()
  external int Numerator;

  /// The denominator of the frequency fraction.
  @Uint32()
  external int Denominator;
}

/// Represents a point or an offset in a two-dimensional space.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_source_mode>.
///
/// {@category struct}
base class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  /// The width in pixels of the source mode.
  @Uint32()
  external int width;

  /// The height in pixels of the source mode.
  @Uint32()
  external int height;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ne-wingdi-displayconfig_pixelformat">DISPLAYCONFIG_PIXELFORMAT</a>
  /// enumeration that specifies the pixel format of the source mode.
  @Int32()
  external int pixelFormat;

  /// A `POINTL` structure that specifies the position in the desktop coordinate
  /// space of the upper-left corner of this source surface.
  external POINTL position;
}

/// Describes a display path target mode.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_target_mode>.
///
/// {@category struct}
base class DISPLAYCONFIG_TARGET_MODE extends Struct {
  /// A `DISPLAYCONFIG_VIDEO_SIGNAL_INFO` structure that contains a detailed
  /// description of the current target mode.
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

/// Contains information about the video signal for a display.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_video_signal_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  /// The pixel clock rate.
  @Uint64()
  external int pixelRate;

  /// A `DISPLAYCONFIG_RATIONAL` structure that represents horizontal sync.
  external DISPLAYCONFIG_RATIONAL hSyncFreq;

  /// A `DISPLAYCONFIG_RATIONAL` structure that represents vertical sync.
  external DISPLAYCONFIG_RATIONAL vSyncFreq;

  /// A `DISPLAYCONFIG_2DREGION` structure that specifies the width and height
  /// (in pixels) of the active portion of the video signal.
  external DISPLAYCONFIG_2DREGION activeSize;

  /// A `DISPLAYCONFIG_2DREGION` structure that specifies the width and height
  /// (in pixels) of the entire video signal.
  external DISPLAYCONFIG_2DREGION totalSize;

  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0 Anonymous;

  /// The scan-line ordering (for example, progressive or interlaced) of the
  /// video signal.
  @Int32()
  external int scanLineOrdering;
}

/// {@category union}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0 extends Union {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 AdditionalSignalInfo;

  @Uint32()
  external int videoStandard;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 get AdditionalSignalInfo =>
      this.Anonymous.AdditionalSignalInfo;
  set AdditionalSignalInfo(DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 value) =>
      this.Anonymous.AdditionalSignalInfo = value;

  int get videoStandard => this.Anonymous.videoStandard;
  set videoStandard(int value) => this.Anonymous.videoStandard = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  int get bitfield => this.Anonymous.AdditionalSignalInfo.bitfield;
  set bitfield(int value) =>
      this.Anonymous.AdditionalSignalInfo.bitfield = value;
}

/// Receives information about the display device specified by the iDevNum
/// parameter of the EnumDisplayDevices function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-display_devicew>.
///
/// {@category struct}
base class DISPLAY_DEVICE extends Struct {
  /// Size, in bytes, of the <b>DISPLAY_DEVICE</b> structure.
  @Uint32()
  external int cb;

  @Array(32)
  external Array<Uint16> _DeviceName;

  /// A string identifying the device name.
  String get DeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_DeviceName[i] == 0x00) break;
      charCodes.add(_DeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _DeviceString;

  /// A string containing the device context string.
  String get DeviceString {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_DeviceString[i] == 0x00) break;
      charCodes.add(_DeviceString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceString(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceString[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Device state flags.
  @Uint32()
  external int StateFlags;

  @Array(128)
  external Array<Uint16> _DeviceID;

  String get DeviceID {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_DeviceID[i] == 0x00) break;
      charCodes.add(_DeviceID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceID(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _DeviceKey;

  /// Reserved.
  String get DeviceKey {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_DeviceKey[i] == 0x00) break;
      charCodes.add(_DeviceKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceKey(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceKey[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains the arguments passed to a method or property.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-dispparams>.
///
/// {@category struct}
base class DISPPARAMS extends Struct {
  /// An array of arguments.
  external Pointer<VARIANT> rgvarg;

  /// The dispatch IDs of the named arguments.
  external Pointer<Int32> rgdispidNamedArgs;

  /// The number of arguments.
  @Uint32()
  external int cArgs;

  /// The number of named arguments.
  @Uint32()
  external int cNamedArgs;
}

/// Defines the dimensions and style of a control in a dialog box.
///
/// One or more of these structures are combined with a DLGTEMPLATE structure to
/// form a standard template for a dialog box.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-dlgitemtemplate>.
///
/// {@category struct}
@Packed(2)
base class DLGITEMTEMPLATE extends Struct {
  /// The style of the control.
  @Uint32()
  external int style;

  /// The extended styles for a window.
  @Uint32()
  external int dwExtendedStyle;

  /// The <i>x</i>-coordinate, in dialog box units, of the upper-left corner of
  /// the control.
  @Int16()
  external int x;

  /// The <i>y</i>-coordinate, in dialog box units, of the upper-left corner of
  /// the control.
  @Int16()
  external int y;

  /// The width, in dialog box units, of the control.
  @Int16()
  external int cx;

  /// The height, in dialog box units, of the control.
  @Int16()
  external int cy;

  /// The control identifier.
  @Uint16()
  external int id;
}

/// Defines the dimensions and style of a dialog box.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-dlgtemplate>.
///
/// {@category struct}
@Packed(2)
base class DLGTEMPLATE extends Struct {
  /// The style of the dialog box.
  @Uint32()
  external int style;

  /// The extended styles for a window.
  @Uint32()
  external int dwExtendedStyle;

  /// The number of items in the dialog box.
  @Uint16()
  external int cdit;

  /// The x-coordinate, in dialog box units, of the upper-left corner of the
  /// dialog box.
  @Int16()
  external int x;

  /// The y-coordinate, in dialog box units, of the upper-left corner of the
  /// dialog box.
  @Int16()
  external int y;

  /// The width, in dialog box units, of the dialog box.
  @Int16()
  external int cx;

  /// The height, in dialog box units, of the dialog box.
  @Int16()
  external int cy;
}

/// Receives DLL-specific version information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shlwapi/ns-shlwapi-dllversioninfo>.
///
/// {@category struct}
base class DLLVERSIONINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The major version of the DLL.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version of the DLL.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the DLL.
  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformID;
}

/// Describes a document that will be printed.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/doc-info-1>.
///
/// {@category struct}
base class DOC_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that specifies the name of the
  /// document.
  external Pointer<Utf16> pDocName;

  /// Pointer to a null-terminated string that specifies the name of an output
  /// file.
  external Pointer<Utf16> pOutputFile;

  /// Pointer to a null-terminated string that identifies the type of data used
  /// to record the document.
  external Pointer<Utf16> pDatatype;
}

/// Defines a pair of 802.11 authentication and cipher algorithms that can be
/// enabled at the same time on the 802.11 station.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-auth-cipher-pair>.
///
/// {@category struct}
base class DOT11_AUTH_CIPHER_PAIR extends Struct {
  /// An authentication algorithm that uses a `DOT11_AUTH_ALGORITHM` enumerated
  /// type.
  @Int32()
  external int AuthAlgoId;

  /// A cipher algorithm that uses a `DOT11_CIPHER_ALGORITHM` enumerated type.
  @Int32()
  external int CipherAlgoId;
}

/// Contains a list of basic service set (BSS) identifiers.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-bssid-list>.
///
/// {@category struct}
base class DOT11_BSSID_LIST extends Struct {
  /// An `NDIS_OBJECT_HEADER` structure that contains the type, version, and,
  /// size information of an NDIS structure.
  external NDIS_OBJECT_HEADER Header;

  /// The number of entries in this structure.
  @Uint32()
  external int uNumOfEntries;

  /// The total number of entries supported.
  @Uint32()
  external int uTotalNumOfEntries;

  /// A list of BSS identifiers.
  @Array(6)
  external Array<Uint8> BSSIDs;
}

/// Contains information about an available wireless network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-dot11_network>.
///
/// {@category struct}
base class DOT11_NETWORK extends Struct {
  /// A `DOT11_SSID` structure that contains the SSID of a visible wireless
  /// network.
  external DOT11_SSID dot11Ssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS type of the network.
  @Int32()
  external int dot11BssType;
}

/// Contains a list of 802.11 wireless networks.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-dot11_network_list>.
///
/// {@category struct}
base class DOT11_NETWORK_LIST extends Struct {
  /// Contains the number of items in the <b>Network</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-dot11_network">DOT11_NETWORK</a>
  /// structures that contain 802.11 wireless network information.
  @Array(1)
  external Array<DOT11_NETWORK> Network;
}

/// Contains the SSID of an interface.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-ssid>.
///
/// {@category struct}
base class DOT11_SSID extends Struct {
  /// The length, in bytes, of the **ucSSID** array.
  @Uint32()
  external int uSSIDLength;

  /// The SSID.
  @Array(32)
  external Array<Uint8> ucSSID;
}

/// {@category struct}
typedef DPI_AWARENESS_CONTEXT = IntPtr;

/// Contains extended formatting options for the DrawTextEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-drawtextparams>.
///
/// {@category struct}
base class DRAWTEXTPARAMS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The size of each tab stop, in units equal to the average character width.
  @Int32()
  external int iTabLength;

  /// The left margin, in units equal to the average character width.
  @Int32()
  external int iLeftMargin;

  /// The right margin, in units equal to the average character width.
  @Int32()
  external int iRightMargin;

  /// Receives the number of characters processed by <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-drawtextexa">DrawTextEx</a>,
  /// including white-space characters.
  @Uint32()
  external int uiLengthDrawn;
}

/// Contains information about how a device is joined to Microsoft Azure Active
/// Directory.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ns-lmjoin-dsreg_join_info>.
///
/// {@category struct}
base class DSREG_JOIN_INFO extends Struct {
  /// An enumeration value that specifies the type of the join.
  @Int32()
  external int joinType;

  /// Representations of the certification for the join.
  external Pointer<CERT_CONTEXT> pJoinCertificate;

  /// The identifier of the device.
  external Pointer<Utf16> pszDeviceId;

  /// A string that represents Azure Active Directory (Azure AD).
  external Pointer<Utf16> pszIdpDomain;

  /// The identifier of the joined Azure AD tenant.
  external Pointer<Utf16> pszTenantId;

  /// The email address for the joined account.
  external Pointer<Utf16> pszJoinUserEmail;

  /// The display name for the joined account.
  external Pointer<Utf16> pszTenantDisplayName;

  /// The URL to use to enroll in the Mobile Device Management (MDM) service.
  external Pointer<Utf16> pszMdmEnrollmentUrl;

  /// The URL that provides information about the terms of use for the MDM
  /// service.
  external Pointer<Utf16> pszMdmTermsOfUseUrl;

  /// The URL that provides information about compliance for the MDM service.
  external Pointer<Utf16> pszMdmComplianceUrl;

  /// The URL for synchronizing user settings.
  external Pointer<Utf16> pszUserSettingSyncUrl;

  /// Information about the user account that was used to join a device to Azure
  /// AD.
  external Pointer<DSREG_USER_INFO> pUserInfo;
}

/// Contains information about a user account that is used to join a device to
/// Microsoft Azure Active Directory.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ns-lmjoin-dsreg_user_info>.
///
/// {@category struct}
base class DSREG_USER_INFO extends Struct {
  /// The email address of the user.
  external Pointer<Utf16> pszUserEmail;

  /// The identifier of the Microsoft Passport key that is provisioned for the
  /// user.
  external Pointer<Utf16> pszUserKeyId;

  /// The name of the Microsoft Passport key that is provisioned for the user.
  external Pointer<Utf16> pszUserKeyName;
}

/// Defines the options for the DrawThemeBackgroundEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-dtbgopts>.
///
/// {@category struct}
base class DTBGOPTS extends Struct {
  /// Size of the structure.
  @Uint32()
  external int dwSize;

  /// Flags that specify the selected options.
  @Uint32()
  external int dwFlags;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/windef/ns-windef-rect">RECT</a>
  /// that specifies the bounding rectangle of the clip region.
  external RECT rcClip;
}

/// Defines the options for the DrawThemeTextEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-dttopts>.
///
/// {@category struct}
base class DTTOPTS extends Struct {
  /// Size of the structure.
  @Uint32()
  external int dwSize;

  /// A combination of flags that specify whether certain values of the
  /// <b>DTTOPTS</b> structure have been specified, and how to interpret these
  /// values.
  @Uint32()
  external int dwFlags;

  /// Specifies the color of the text that will be drawn.
  @Uint32()
  external int crText;

  /// Specifies the color of the outline that will be drawn around the text.
  @Uint32()
  external int crBorder;

  /// Specifies the color of the shadow that will be drawn behind the text.
  @Uint32()
  external int crShadow;

  @Int32()
  external int iTextShadowType;

  /// Specifies the amount of offset, in logical coordinates, between the shadow
  /// and the text.
  external POINT ptShadowOffset;

  /// Specifies the radius of the outline that will be drawn around the text.
  @Int32()
  external int iBorderSize;

  /// Specifies an alternate font property to use when drawing text.
  @Int32()
  external int iFontPropId;

  /// Specifies an alternate color property to use when drawing text.
  @Int32()
  external int iColorPropId;

  /// Specifies an alternate state to use.
  @Int32()
  external int iStateId;

  /// If [TRUE], text will be drawn on top of the shadow and outline effects.
  @Int32()
  external int fApplyOverlay;

  /// Specifies the size of a glow that will be drawn on the background prior to
  /// any text being drawn.
  @Int32()
  external int iGlowSize;

  /// Pointer to callback function for <a
  /// href="https://docs.microsoft.com/windows/desktop/api/uxtheme/nf-uxtheme-drawthemetextex">DrawThemeTextEx</a>.
  external Pointer<NativeFunction<DTT_CALLBACK_PROC>> pfnDrawTextCallback;

  /// Parameter for callback back function specified by
  /// <b>pfnDrawTextCallback</b>.
  @IntPtr()
  external int lParam;
}

/// Specifies Desktop Window Manager (DWM) blur-behind properties.
///
/// Used by the DwmEnableBlurBehindWindow function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ns-dwmapi-dwm_blurbehind>.
///
/// {@category struct}
@Packed(1)
base class DWM_BLURBEHIND extends Struct {
  /// A bitwise combination of <a
  /// href="https://docs.microsoft.com/windows/desktop/dwm/dwm-bb-constants">DWM
  /// Blur Behind</a> constant values that indicates which of the members of
  /// this structure have been set.
  @Uint32()
  external int dwFlags;

  /// [TRUE] to register the window handle to DWM blur behind; [FALSE] to
  /// unregister the window handle from DWM blur behind.
  @Int32()
  external int fEnable;

  /// The region within the client area where the blur behind will be applied.
  @IntPtr()
  external int hRgnBlur;

  /// [TRUE] if the window's colorization should transition to match the
  /// maximized windows; otherwise, [FALSE].
  @Int32()
  external int fTransitionOnMaximized;
}

/// Contains type, identification, and author information about an EAP method.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/eaptypes/ns-eaptypes-eap_method_type>.
///
/// {@category struct}
base class EAP_METHOD_TYPE extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/eaptypes/ns-eaptypes-eap_type">EAP_TYPE</a>
  /// structure that contains the ID for the EAP method as well as specific
  /// vendor information.
  external EAP_TYPE eapType;

  /// The numeric ID for the author of the EAP method.
  @Uint32()
  external int dwAuthorId;
}

/// Contains type and vendor identification information for an EAP method.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/eaptypes/ns-eaptypes-eap_type>.
///
/// {@category struct}
base class EAP_TYPE extends Struct {
  /// The numeric type code for this EAP method.
  @Uint8()
  external int type;

  /// The vendor ID for the EAP method.
  @Uint32()
  external int dwVendorId;

  /// The numeric type code for the vendor of this EAP method.
  @Uint32()
  external int dwVendorType;
}

/// Contains the type description and process-transfer information for a
/// variable, a function, or a function parameter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-elemdesc~r1>.
///
/// {@category struct}
base class ELEMDESC extends Struct {
  /// The type of the element.
  external TYPEDESC tdesc;

  external ELEMDESC_0 Anonymous;
}

/// {@category union}
sealed class ELEMDESC_0 extends Union {
  external IDLDESC idldesc;

  external PARAMDESC paramdesc;
}

extension ELEMDESC_0_Extension on ELEMDESC {
  IDLDESC get idldesc => this.Anonymous.idldesc;
  set idldesc(IDLDESC value) => this.Anonymous.idldesc = value;

  PARAMDESC get paramdesc => this.Anonymous.paramdesc;
  set paramdesc(PARAMDESC value) => this.Anonymous.paramdesc = value;
}

/// Contains information about an enumerated font.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-enumlogfontexw>.
///
/// {@category struct}
base class ENUMLOGFONTEX extends Struct {
  /// A `LOGFONT` structure that contains values defining the font attributes.
  external LOGFONT elfLogFont;

  @Array(64)
  external Array<Uint16> _elfFullName;

  /// The unique name of the font.
  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      if (_elfFullName[i] == 0x00) break;
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfFullName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _elfFullName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  /// The style of the font.
  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_elfStyle[i] == 0x00) break;
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfStyle(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfStyle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfScript;

  /// The script, that is, the character set, of the font.
  String get elfScript {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_elfScript[i] == 0x00) break;
      charCodes.add(_elfScript[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfScript(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfScript[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains information about a pagefile.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-enum_page_file_information>.
///
/// {@category struct}
base class ENUM_PAGE_FILE_INFORMATION extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cb;

  /// This member is reserved.
  @Uint32()
  // ignore: unused_field
  external int _Reserved;

  /// The total size of the pagefile, in pages.
  @IntPtr()
  external int TotalSize;

  /// The current pagefile usage, in pages.
  @IntPtr()
  external int TotalInUse;

  /// The peak pagefile usage, in pages.
  @IntPtr()
  external int PeakUsage;
}

/// Contains the name of a service in a service control manager database and
/// information about that service.
///
/// It is used by the EnumDependentServices and EnumServicesStatus functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-enum_service_statusw>.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS extends Struct {
  /// The name of a service in the service control manager database.
  external Pointer<Utf16> lpServiceName;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  external Pointer<Utf16> lpDisplayName;

  /// A `SERVICE_STATUS` structure that contains status information for the
  /// <b>lpServiceName</b> service.
  external SERVICE_STATUS ServiceStatus;
}

/// Contains the name of a service in a service control manager database and
/// information about the service.
///
/// It is used by the EnumServicesStatusEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-enum_service_status_processw>.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS_PROCESS extends Struct {
  /// The name of a service in the service control manager database.
  external Pointer<Utf16> lpServiceName;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  external Pointer<Utf16> lpDisplayName;

  /// A `SERVICE_STATUS_PROCESS` structure that contains status information for
  /// the <b>lpServiceName</b> service.
  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

/// Contains information about a hardware message sent to the system message
/// queue.
///
/// This structure is used to store message information for the
/// JournalPlaybackProc callback function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-eventmsg>.
///
/// {@category struct}
base class EVENTMSG extends Struct {
  /// The message.
  @Uint32()
  external int message;

  /// Additional information about the message.
  @Uint32()
  external int paramL;

  /// Additional information about the message.
  @Uint32()
  external int paramH;

  /// The time at which the message was posted.
  @Uint32()
  external int time;

  /// A handle to the window to which the message was posted.
  @IntPtr()
  external int hwnd;
}

/// Describes an exception that occurred during IDispatch::Invoke.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-excepinfo>.
///
/// {@category struct}
base class EXCEPINFO extends Struct {
  /// The error code.
  @Uint16()
  external int wCode;

  /// Reserved.
  @Uint16()
  // ignore: unused_field
  external int _wReserved;

  /// The name of the exception source.
  external Pointer<Utf16> bstrSource;

  /// The exception description to display.
  external Pointer<Utf16> bstrDescription;

  /// The fully qualified help file path.
  external Pointer<Utf16> bstrHelpFile;

  /// The help context ID.
  @Uint32()
  external int dwHelpContext;

  /// Reserved.
  // ignore: unused_field
  external Pointer _pvReserved;

  /// Provides deferred fill-in.
  external Pointer<NativeFunction<LPEXCEPFINO_DEFERRED_FILLIN>>
      pfnDeferredFillIn;

  /// A return value that describes the error.
  @Int32()
  external int scode;
}

/// Represents a Microsoft-extended property.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/SecCrypto/extendedproperty>.
///
/// {@category struct}
base class ExtendedProperty extends Struct {
  external Pointer<Utf16> PropertyName;

  external Pointer<Utf16> PropertyValue;
}

/// Used by Windows Sockets (Winsock) functions and service providers to place
/// sockets into a set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-fd_set>.
///
/// {@category struct}
base class FD_SET extends Struct {
  @Uint32()
  external int fd_count;

  @Array(64)
  external Array<SOCKET> fd_array;
}

/// Holds an unsigned 64-bit date and time value for a file.
///
/// This value represents the number of 100-nanosecond units since the start of
/// January 1, 1601.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime>.
///
/// {@category struct}
base class FILETIME extends Struct {
  /// > Low-order 32 bits of the file time value.
  @Uint32()
  external int dwLowDateTime;

  /// > High-order 32 bits of the file time value.
  @Uint32()
  external int dwHighDateTime;
}

/// Represents a segment buffer structure for scatter/gather read/write actions.
///
/// To learn more about this union, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-file_segment_element>.
///
/// {@category union}
sealed class FILE_SEGMENT_ELEMENT extends Union {
  /// Contains the data for the scatter/gather read/write action Assigning a
  /// pointer to the **Buffer** member will sign-extend the value if the code is
  /// compiled as 32-bits; this can break large-address aware applications
  /// running on systems configured with <a
  /// href="https://docs.microsoft.com/windows/desktop/Memory/4-gigabyte-tuning">4-Gigabyte
  /// Tuning</a> or running under WOW64 on 64-bit Windows.
  external Pointer Buffer;

  /// The page alignment of the data.
  @Uint64()
  external int Alignment;
}

/// Contains information that the FindText and ReplaceText functions use to
/// initialize the Find and Replace dialog boxes.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-findreplacew>.
///
/// {@category struct}
base class FINDREPLACE extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>FR_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>,
  /// <b>hInstance</b> is a handle to a memory object containing a dialog box
  /// template.
  @IntPtr()
  external int hInstance;

  @Uint32()
  external int Flags;

  /// The search string that the user typed in the <b>Find What</b> edit
  /// control.
  external Pointer<Utf16> lpstrFindWhat;

  /// The replacement string that the user typed in the <b>Replace With</b> edit
  /// control.
  external Pointer<Utf16> lpstrReplaceWith;

  /// The length, in bytes, of the buffer pointed to by the <b>lpstrFindWhat</b>
  /// member.
  @Uint16()
  external int wFindWhatLen;

  /// The length, in bytes, of the buffer pointed to by the
  /// <b>lpstrReplaceWith</b> member.
  @Uint16()
  external int wReplaceWithLen;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to an `FRHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPFRHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external Pointer<Utf16> lpTemplateName;
}

/// Describes a focus event in a console INPUT RECORD structure.
///
/// These events are used internally and should be ignored.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/focus-event-record-str>.
///
/// {@category struct}
base class FOCUS_EVENT_RECORD extends Struct {
  /// Reserved.
  @Int32()
  external int bSetFocus;
}

/// Describes a function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-funcdesc>.
///
/// {@category struct}
base class FUNCDESC extends Struct {
  /// The function member ID.
  @Int32()
  external int memid;

  /// The status code.
  external Pointer<Int32> lprgscode;

  /// Description of the element.
  external Pointer<ELEMDESC> lprgelemdescParam;

  /// Indicates the type of function (virtual, static, or dispatch-only).
  @Int32()
  external int funckind;

  /// The invocation type.
  @Int32()
  external int invkind;

  /// The calling convention.
  @Int32()
  external int callconv;

  /// The total number of parameters.
  @Int16()
  external int cParams;

  /// The number of optional parameters.
  @Int16()
  external int cParamsOpt;

  /// For FUNC_VIRTUAL, specifies the offset in the VTBL.
  @Int16()
  external int oVft;

  /// The number of possible return values.
  @Int16()
  external int cScodes;

  /// The function return type.
  external ELEMDESC elemdescFunc;

  /// The function flags.
  @Uint16()
  external int wFuncFlags;
}

/// Gets and sets the configuration for enabling gesture messages and the type
/// of this configuration.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gestureconfig>.
///
/// {@category struct}
base class GESTURECONFIG extends Struct {
  /// The identifier for the type of configuration that will have messages
  /// enabled or disabled.
  @Uint32()
  external int dwID;

  /// The messages to enable.
  @Uint32()
  external int dwWant;

  /// The messages to disable.
  @Uint32()
  external int dwBlock;
}

/// Stores information about a gesture.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gestureinfo>.
///
/// {@category struct}
base class GESTUREINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The state of the gesture.
  @Uint32()
  external int dwFlags;

  /// The identifier of the gesture command.
  @Uint32()
  external int dwID;

  /// A handle to the window that is targeted by this gesture.
  @IntPtr()
  external int hwndTarget;

  /// A <b>POINTS</b> structure containing the coordinates associated with the
  /// gesture.
  external POINTS ptsLocation;

  /// An internally used identifier for the structure.
  @Uint32()
  external int dwInstanceID;

  /// An internally used identifier for the sequence.
  @Uint32()
  external int dwSequenceID;

  /// A 64-bit unsigned integer that contains the arguments for gestures that
  /// fit into 8 bytes.
  @Uint64()
  external int ullArguments;

  /// The size, in bytes, of extra arguments that accompany this gesture.
  @Uint32()
  external int cbExtraArgs;
}

/// When transmitted with WM_GESTURENOTIFY messages, passes information about a
/// gesture.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gesturenotifystruct>.
///
/// {@category struct}
base class GESTURENOTIFYSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Reserved for future use.
  @Uint32()
  external int dwFlags;

  /// The target window for the gesture notification.
  @IntPtr()
  external int hwndTarget;

  /// The location of the gesture in physical screen coordinates.
  external POINTS ptsLocation;

  /// A specific gesture instance with gesture messages starting with
  /// <b>GID_START</b> and ending with <b>GID_END</b>.
  @Uint32()
  external int dwInstanceID;
}

/// Contains information about a GUI thread.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-guithreadinfo>.
///
/// {@category struct}
base class GUITHREADINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int flags;

  /// A handle to the active window within the thread.
  @IntPtr()
  external int hwndActive;

  /// A handle to the window that has the keyboard focus.
  @IntPtr()
  external int hwndFocus;

  /// A handle to the window that has captured the mouse.
  @IntPtr()
  external int hwndCapture;

  /// A handle to the window that owns any active menus.
  @IntPtr()
  external int hwndMenuOwner;

  /// A handle to the window in a move or size loop.
  @IntPtr()
  external int hwndMoveSize;

  /// A handle to the window that is displaying the caret.
  @IntPtr()
  external int hwndCaret;

  /// The caret's bounding rectangle, in client coordinates, relative to the
  /// window specified by the <b>hwndCaret</b> member.
  external RECT rcCaret;
}

/// {@category struct}
typedef HACCEL = IntPtr;

/// {@category struct}
typedef HANDLE = IntPtr;

/// {@category struct}
typedef HANDLE_PTR = IntPtr;

/// Contains information about a simulated message generated by an input device
/// other than a keyboard or mouse.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-hardwareinput>.
///
/// {@category struct}
base class HARDWAREINPUT extends Struct {
  /// The message generated by the input hardware.
  @Uint32()
  external int uMsg;

  /// The low-order word of the <i>lParam </i> parameter for <b>uMsg</b>.
  @Uint16()
  external int wParamL;

  /// The high-order word of the <i>lParam </i> parameter for <b>uMsg</b>.
  @Uint16()
  external int wParamH;
}

/// {@category struct}
typedef HBITMAP = IntPtr;

/// {@category struct}
typedef HBLUETOOTH_DEVICE_FIND = IntPtr;

/// {@category struct}
typedef HBLUETOOTH_RADIO_FIND = IntPtr;

/// {@category struct}
typedef HBRUSH = IntPtr;

/// {@category struct}
typedef HCERTSTORE = Pointer;

/// {@category struct}
typedef HCURSOR = IntPtr;

/// {@category struct}
typedef HDC = IntPtr;

/// {@category struct}
typedef HDESK = IntPtr;

/// {@category struct}
typedef HDEVINFO = IntPtr;

/// {@category struct}
typedef HDWP = IntPtr;

/// {@category struct}
typedef HFONT = IntPtr;

/// {@category struct}
typedef HGDIOBJ = IntPtr;

/// {@category struct}
typedef HGESTUREINFO = IntPtr;

/// {@category struct}
typedef HGLOBAL = Pointer;

/// {@category struct}
typedef HHOOK = IntPtr;

/// {@category struct}
typedef HICON = IntPtr;

/// {@category struct}
typedef HIMAGELIST = IntPtr;

/// {@category struct}
typedef HINSTANCE = IntPtr;

/// {@category struct}
typedef HKEY = IntPtr;

/// {@category struct}
typedef HKL = IntPtr;

/// {@category struct}
typedef HLOCAL = Pointer;

/// {@category struct}
typedef HMENU = IntPtr;

/// {@category struct}
typedef HMIDI = IntPtr;

/// {@category struct}
typedef HMIDIIN = IntPtr;

/// {@category struct}
typedef HMIDIOUT = IntPtr;

/// {@category struct}
typedef HMODULE = IntPtr;

/// {@category struct}
typedef HMONITOR = IntPtr;

/// Used by functions to store information about a given host, such as host
/// name, IPv4 address, and so forth.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-hostent>.
///
/// {@category struct}
base class HOSTENT extends Struct {
  /// The official name of the host (PC).
  external Pointer<Utf8> h_name;

  /// A <b>NULL</b>-terminated array of alternate names.
  external Pointer<Pointer<Int8>> h_aliases;

  /// The type of address being returned.
  @Int16()
  external int h_addrtype;

  /// The length, in bytes, of each address.
  @Int16()
  external int h_length;

  /// A <b>NULL</b>-terminated list of addresses for the host.
  external Pointer<Pointer<Int8>> h_addr_list;
}

/// {@category struct}
typedef HPALETTE = IntPtr;

/// {@category struct}
typedef HPCON = IntPtr;

/// {@category struct}
typedef HPEN = IntPtr;

/// {@category struct}
typedef HPOWERNOTIFY = IntPtr;

/// {@category struct}
typedef HRAWINPUT = IntPtr;

/// {@category struct}
typedef HRESULT = Int32;

/// {@category struct}
typedef HRGN = IntPtr;

/// {@category struct}
typedef HRSRC = IntPtr;

/// {@category struct}
typedef HSTRING = IntPtr;

/// {@category struct}
typedef HSTRING_BUFFER = IntPtr;

/// {@category struct}
typedef HTHEME = IntPtr;

/// {@category struct}
typedef HTOUCHINPUT = IntPtr;

/// {@category struct}
typedef HWAVEIN = IntPtr;

/// {@category struct}
typedef HWAVEOUT = IntPtr;

/// {@category struct}
typedef HWINSTA = IntPtr;

/// {@category struct}
typedef HWND = IntPtr;

/// Contains information about an icon or a cursor.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-iconinfo>.
///
/// {@category struct}
base class ICONINFO extends Struct {
  /// Specifies whether this structure defines an icon or a cursor.
  @Int32()
  external int fIcon;

  /// The x-coordinate of a cursor's hot spot.
  @Uint32()
  external int xHotspot;

  /// The y-coordinate of the cursor's hot spot.
  @Uint32()
  external int yHotspot;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmMask;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmColor;
}

/// Contains information about an icon or a cursor.
///
/// Extends ICONINFO. Used by GetIconInfoEx.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-iconinfoexw>.
///
/// {@category struct}
base class ICONINFOEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Specifies whether this structure defines an icon or a cursor.
  @Int32()
  external int fIcon;

  /// The x-coordinate of a cursor's hot spot.
  @Uint32()
  external int xHotspot;

  /// The y-coordinate of the cursor's hot spot.
  @Uint32()
  external int yHotspot;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmMask;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmColor;

  /// The icon or cursor resource bits.
  @Uint16()
  external int wResID;

  @Array(260)
  external Array<Uint16> _szModName;

  /// The fully qualified path of the module.
  String get szModName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      if (_szModName[i] == 0x00) break;
      charCodes.add(_szModName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szModName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szModName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szResName;

  /// The fully qualified path of the resource.
  String get szResName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      if (_szResName[i] == 0x00) break;
      charCodes.add(_szResName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szResName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szResName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category struct}
base class IDLDESC extends Struct {
  @IntPtr()
  // ignore: unused_field
  external int _dwReserved;

  @Uint16()
  external int wIDLFlags;
}

/// Carries information used to load common control classes from the
/// dynamic-link library (DLL).
///
/// This structure is used with the InitCommonControlsEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-initcommoncontrolsex>.
///
/// {@category struct}
base class INITCOMMONCONTROLSEX extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwICC;
}

/// Used by SendInput to store information for synthesizing input events such as
/// keystrokes, mouse movement, and mouse clicks.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-input>.
///
/// {@category struct}
base class INPUT extends Struct {
  @Uint32()
  external int type;

  external INPUT_0 Anonymous;
}

/// {@category union}
sealed class INPUT_0 extends Union {
  external MOUSEINPUT mi;

  external KEYBDINPUT ki;

  external HARDWAREINPUT hi;
}

extension INPUT_0_Extension on INPUT {
  MOUSEINPUT get mi => this.Anonymous.mi;
  set mi(MOUSEINPUT value) => this.Anonymous.mi = value;

  KEYBDINPUT get ki => this.Anonymous.ki;
  set ki(KEYBDINPUT value) => this.Anonymous.ki = value;

  HARDWAREINPUT get hi => this.Anonymous.hi;
  set hi(HARDWAREINPUT value) => this.Anonymous.hi = value;
}

/// Describes an input event in the console input buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/input-record-str>.
///
/// {@category struct}
base class INPUT_RECORD extends Struct {
  /// A handle to the type of input event and the event record stored in the
  /// **Event** member.
  @Uint16()
  external int EventType;

  /// The event information.
  external INPUT_RECORD_0 Event;
}

/// {@category union}
sealed class INPUT_RECORD_0 extends Union {
  external KEY_EVENT_RECORD KeyEvent;

  external MOUSE_EVENT_RECORD MouseEvent;

  external WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;

  external MENU_EVENT_RECORD MenuEvent;

  external FOCUS_EVENT_RECORD FocusEvent;
}

extension INPUT_RECORD_0_Extension on INPUT_RECORD {
  KEY_EVENT_RECORD get KeyEvent => this.Event.KeyEvent;
  set KeyEvent(KEY_EVENT_RECORD value) => this.Event.KeyEvent = value;

  MOUSE_EVENT_RECORD get MouseEvent => this.Event.MouseEvent;
  set MouseEvent(MOUSE_EVENT_RECORD value) => this.Event.MouseEvent = value;

  WINDOW_BUFFER_SIZE_RECORD get WindowBufferSizeEvent =>
      this.Event.WindowBufferSizeEvent;
  set WindowBufferSizeEvent(WINDOW_BUFFER_SIZE_RECORD value) =>
      this.Event.WindowBufferSizeEvent = value;

  MENU_EVENT_RECORD get MenuEvent => this.Event.MenuEvent;
  set MenuEvent(MENU_EVENT_RECORD value) => this.Event.MenuEvent = value;

  FOCUS_EVENT_RECORD get FocusEvent => this.Event.FocusEvent;
  set FocusEvent(FOCUS_EVENT_RECORD value) => this.Event.FocusEvent = value;
}

/// Defines the matrix that represents a transform on a message consumer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-input_transform>.
///
/// {@category struct}
base class INPUT_TRANSFORM extends Struct {
  external INPUT_TRANSFORM_0 Anonymous;
}

/// {@category union}
sealed class INPUT_TRANSFORM_0 extends Union {
  external INPUT_TRANSFORM_0_0 Anonymous;

  @Array(16)
  external Array<Float> m;
}

extension INPUT_TRANSFORM_0_Extension on INPUT_TRANSFORM {
  INPUT_TRANSFORM_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(INPUT_TRANSFORM_0_0 value) => this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category struct}
sealed class INPUT_TRANSFORM_0_0 extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x13;

  @Float()
  external double x14;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x23;

  @Float()
  external double x24;

  @Float()
  external double x31;

  @Float()
  external double x32;

  @Float()
  external double x33;

  @Float()
  external double x34;

  @Float()
  external double x41;

  @Float()
  external double x42;

  @Float()
  external double x43;

  @Float()
  external double x44;
}

extension INPUT_TRANSFORM_0_0_Extension on INPUT_TRANSFORM {
  double get x11 => this.Anonymous.Anonymous.x11;
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  double get x12 => this.Anonymous.Anonymous.x12;
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  double get x13 => this.Anonymous.Anonymous.x13;
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  double get x14 => this.Anonymous.Anonymous.x14;
  set x14(double value) => this.Anonymous.Anonymous.x14 = value;

  double get x21 => this.Anonymous.Anonymous.x21;
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  double get x22 => this.Anonymous.Anonymous.x22;
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  double get x23 => this.Anonymous.Anonymous.x23;
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  double get x24 => this.Anonymous.Anonymous.x24;
  set x24(double value) => this.Anonymous.Anonymous.x24 = value;

  double get x31 => this.Anonymous.Anonymous.x31;
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  double get x32 => this.Anonymous.Anonymous.x32;
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  double get x33 => this.Anonymous.Anonymous.x33;
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  double get x34 => this.Anonymous.Anonymous.x34;
  set x34(double value) => this.Anonymous.Anonymous.x34 = value;

  double get x41 => this.Anonymous.Anonymous.x41;
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  double get x42 => this.Anonymous.Anonymous.x42;
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  double get x43 => this.Anonymous.Anonymous.x43;
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;

  double get x44 => this.Anonymous.Anonymous.x44;
  set x44(double value) => this.Anonymous.Anonymous.x44 = value;
}

/// Represents an IPv4 address.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/inaddr/ns-inaddr-in_addr>.
///
/// {@category struct}
base class IN_ADDR extends Struct {
  external IN_ADDR_0 S_un;
}

/// {@category union}
sealed class IN_ADDR_0 extends Union {
  external IN_ADDR_0_0 S_un_b;

  external IN_ADDR_0_1 S_un_w;

  @Uint32()
  external int S_addr;
}

extension IN_ADDR_0_Extension on IN_ADDR {
  IN_ADDR_0_0 get S_un_b => this.S_un.S_un_b;
  set S_un_b(IN_ADDR_0_0 value) => this.S_un.S_un_b = value;

  IN_ADDR_0_1 get S_un_w => this.S_un.S_un_w;
  set S_un_w(IN_ADDR_0_1 value) => this.S_un.S_un_w = value;

  int get S_addr => this.S_un.S_addr;
  set S_addr(int value) => this.S_un.S_addr = value;
}

/// {@category struct}
sealed class IN_ADDR_0_0 extends Struct {
  @Uint8()
  external int s_b1;

  @Uint8()
  external int s_b2;

  @Uint8()
  external int s_b3;

  @Uint8()
  external int s_b4;
}

extension IN_ADDR_0_0_Extension on IN_ADDR {
  int get s_b1 => this.S_un.S_un_b.s_b1;
  set s_b1(int value) => this.S_un.S_un_b.s_b1 = value;

  int get s_b2 => this.S_un.S_un_b.s_b2;
  set s_b2(int value) => this.S_un.S_un_b.s_b2 = value;

  int get s_b3 => this.S_un.S_un_b.s_b3;
  set s_b3(int value) => this.S_un.S_un_b.s_b3 = value;

  int get s_b4 => this.S_un.S_un_b.s_b4;
  set s_b4(int value) => this.S_un.S_un_b.s_b4 = value;
}

/// {@category struct}
sealed class IN_ADDR_0_1 extends Struct {
  @Uint16()
  external int s_w1;

  @Uint16()
  external int s_w2;
}

extension IN_ADDR_0_1_Extension on IN_ADDR {
  int get s_w1 => this.S_un.S_un_w.s_w1;
  set s_w1(int value) => this.S_un.S_un_w.s_w1 = value;

  int get s_w2 => this.S_un.S_un_w.s_w2;
  set s_w2(int value) => this.S_un.S_un_w.s_w2 = value;
}

/// The header node for a linked list of addresses for a particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_addresses_lh>.
///
/// {@category struct}
base class IP_ADAPTER_ADDRESSES_LH extends Struct {
  external IP_ADAPTER_ADDRESSES_LH_0 Anonymous1;

  /// A pointer to the next adapter addresses structure in the list.
  external Pointer<IP_ADAPTER_ADDRESSES_LH> Next;

  /// An array of characters that contains the name of the adapter with which
  /// these addresses are associated.
  external Pointer<Utf8> AdapterName;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_unicast_address_lh">IP_ADAPTER_UNICAST_ADDRESS</a>
  /// structure in a linked list of IP unicast addresses for the adapter.
  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> FirstUnicastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_anycast_address_xp">IP_ADAPTER_ANYCAST_ADDRESS</a>
  /// structure in a linked list of IP anycast addresses for the adapter.
  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> FirstAnycastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_multicast_address_xp">IP_ADAPTER_MULTICAST_ADDRESS</a>
  /// structure in a list of IP multicast addresses for the adapter.
  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> FirstMulticastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_dns_server_address_xp">IP_ADAPTER_DNS_SERVER_ADDRESS</a>
  /// structure in a linked list of DNS server addresses for the adapter.
  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> FirstDnsServerAddress;

  /// The Domain Name System (DNS) suffix associated with this adapter.
  external Pointer<Utf16> DnsSuffix;

  /// A description for the adapter.
  external Pointer<Utf16> Description;

  /// A user-friendly name for the adapter.
  external Pointer<Utf16> FriendlyName;

  /// The Media Access Control (MAC) address for the adapter.
  @Array(8)
  external Array<Uint8> PhysicalAddress;

  /// The length, in bytes, of the address specified in the
  /// <b>PhysicalAddress</b> member.
  @Uint32()
  external int PhysicalAddressLength;

  external IP_ADAPTER_ADDRESSES_LH_1 Anonymous2;

  /// The maximum transmission unit (MTU) size, in bytes.
  @Uint32()
  external int Mtu;

  /// The interface type as defined by the Internet Assigned Names Authority
  /// (IANA).
  @Uint32()
  external int IfType;

  /// The operational status for the interface as defined in RFC 2863.
  @Int32()
  external int OperStatus;

  /// The interface index for the IPv6 IP address.
  @Uint32()
  external int Ipv6IfIndex;

  /// An array of scope IDs for each scope level used for composing <a
  /// href="https://docs.microsoft.com/windows/desktop/WinSock/sockaddr-2">sockaddr</a>
  /// structures.
  @Array(16)
  external Array<Uint32> ZoneIndices;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_prefix_xp">IP_ADAPTER_PREFIX</a>
  /// structure in a linked list of IP adapter prefixes for the adapter.
  external Pointer<IP_ADAPTER_PREFIX_XP> FirstPrefix;

  /// The current speed in bits per second of the transmit link for the adapter.
  @Uint64()
  external int TransmitLinkSpeed;

  /// The current speed in bits per second of the receive link for the adapter.
  @Uint64()
  external int ReceiveLinkSpeed;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_wins_server_address_lh">IP_ADAPTER_WINS_SERVER_ADDRESS</a>
  /// structure in a linked list of Windows Internet Name Service (WINS) server
  /// addresses for the adapter.
  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> FirstWinsServerAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_gateway_address_lh">IP_ADAPTER_GATEWAY_ADDRESS</a>
  /// structure in a linked list of gateways for the adapter.
  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> FirstGatewayAddress;

  /// The IPv4 interface metric for the adapter address.
  @Uint32()
  external int Ipv4Metric;

  /// The IPv6 interface metric for the adapter address.
  @Uint32()
  external int Ipv6Metric;

  /// The interface LUID for the adapter address.
  external NET_LUID_LH Luid;

  /// The IPv4 address of the DHCP server for the adapter address.
  external SOCKET_ADDRESS Dhcpv4Server;

  /// The routing compartment ID for the adapter address.
  @Uint32()
  external int CompartmentId;

  /// The [GUID] that is associated with the network that the interface belongs
  /// to.
  external GUID NetworkGuid;

  /// The interface connection type for the adapter address.
  @Int32()
  external int ConnectionType;

  /// The encapsulation method used by a tunnel if the adapter address is a
  /// tunnel.
  @Int32()
  external int TunnelType;

  /// The IPv6 address of the DHCPv6 server for the adapter address.
  external SOCKET_ADDRESS Dhcpv6Server;

  /// The DHCP unique identifier (DUID) for the DHCPv6 client.
  @Array(130)
  external Array<Uint8> Dhcpv6ClientDuid;

  /// The length, in bytes, of the DHCP unique identifier (DUID) for the DHCPv6
  /// client.
  @Uint32()
  external int Dhcpv6ClientDuidLength;

  /// The identifier for an identity association chosen by the DHCPv6 client.
  @Uint32()
  external int Dhcpv6Iaid;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_dns_suffix">IP_ADAPTER_DNS_SUFFIX</a>
  /// structure in a linked list of DNS suffixes for the adapter.
  external Pointer<IP_ADAPTER_DNS_SUFFIX> FirstDnsSuffix;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ADDRESSES_LH_0_0 Anonymous;
}

extension IP_ADAPTER_ADDRESSES_LH_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Alignment => this.Anonymous1.Alignment;
  set Alignment(int value) => this.Anonymous1.Alignment = value;

  IP_ADAPTER_ADDRESSES_LH_0_0 get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_0_0 value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;
}

extension IP_ADAPTER_ADDRESSES_LH_0_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Length => this.Anonymous1.Anonymous.Length;
  set Length(int value) => this.Anonymous1.Anonymous.Length = value;

  int get IfIndex => this.Anonymous1.Anonymous.IfIndex;
  set IfIndex(int value) => this.Anonymous1.Anonymous.IfIndex = value;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_1 extends Union {
  @Uint32()
  external int Flags;

  external IP_ADAPTER_ADDRESSES_LH_1_0 Anonymous;
}

extension IP_ADAPTER_ADDRESSES_LH_1_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Flags => this.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous2.Flags = value;

  IP_ADAPTER_ADDRESSES_LH_1_0 get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_1_0 value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_1_0 extends Struct {
  @Uint32()
  external int bitfield;
}

extension IP_ADAPTER_ADDRESSES_LH_1_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

/// Stores a single anycast IP address in a linked list of addresses for a
/// particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_anycast_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_ANYCAST_ADDRESS_XP extends Struct {
  external IP_ADAPTER_ANYCAST_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next anycast IP address structure in the list.
  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> Next;

  /// The IP address for this anycast IP address entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single DNS server address in a linked list of DNS server addresses
/// for a particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_dns_server_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SERVER_ADDRESS_XP extends Struct {
  external IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next DNS server address structure in the list.
  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> Next;

  /// The IP address for this DNS server entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  // ignore: unused_field
  external int _Reserved;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores a DNS suffix in a linked list of DNS suffixes for a particular
/// adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_dns_suffix>.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SUFFIX extends Struct {
  /// A pointer to the next DNS suffix in the linked list.
  external Pointer<IP_ADAPTER_DNS_SUFFIX> Next;

  @Array(256)
  external Array<Uint16> _String_;

  /// The DNS suffix for this DNS suffix entry.
  String get String_ {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_String_[i] == 0x00) break;
      charCodes.add(_String_[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set String_(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _String_[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Stores a single gateway address in a linked list of gateway addresses for a
/// particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_gateway_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_GATEWAY_ADDRESS_LH extends Struct {
  external IP_ADAPTER_GATEWAY_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next gateway address structure in the list.
  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> Next;

  /// The IP address for this gateway entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  // ignore: unused_field
  external int _Reserved;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores the interface index associated with a network adapter with IPv4
/// enabled together with the name of the network adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ipexport/ns-ipexport-ip_adapter_index_map>.
///
/// {@category struct}
base class IP_ADAPTER_INDEX_MAP extends Struct {
  /// The interface index associated with the network adapter.
  @Uint32()
  external int Index;

  @Array(128)
  external Array<Uint16> _Name;

  /// A string that contains the name of the adapter.
  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_Name[i] == 0x00) break;
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Stores a single multicast address in a linked-list of addresses for a
/// particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_multicast_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_MULTICAST_ADDRESS_XP extends Struct {
  external IP_ADAPTER_MULTICAST_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next multicast IP address structure in the list.
  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> Next;

  /// The IP address for this multicast IP address entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores an IP address prefix.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_prefix_xp>.
///
/// {@category struct}
base class IP_ADAPTER_PREFIX_XP extends Struct {
  external IP_ADAPTER_PREFIX_XP_0 Anonymous;

  /// A pointer to the next adapter prefix structure in the list.
  external Pointer<IP_ADAPTER_PREFIX_XP> Next;

  /// The address prefix, in the form of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ws2def/ns-ws2def-socket_address">SOCKET_ADDRESS</a>
  /// structure.
  external SOCKET_ADDRESS Address;

  /// The length of the prefix, in bits.
  @Uint32()
  external int PrefixLength;
}

/// {@category union}
sealed class IP_ADAPTER_PREFIX_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_PREFIX_XP_0_0 Anonymous;
}

extension IP_ADAPTER_PREFIX_XP_0_Extension on IP_ADAPTER_PREFIX_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_PREFIX_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_PREFIX_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_PREFIX_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_PREFIX_XP_0_0_Extension on IP_ADAPTER_PREFIX_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single unicast IP address in a linked list of IP addresses for a
/// particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_unicast_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_UNICAST_ADDRESS_LH extends Struct {
  external IP_ADAPTER_UNICAST_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next IP adapter address structure in the list.
  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> Next;

  /// The IP address for this unicast IP address entry.
  external SOCKET_ADDRESS Address;

  /// The prefix or network part of IP the address.
  @Int32()
  external int PrefixOrigin;

  /// The suffix or host part of the IP address.
  @Int32()
  external int SuffixOrigin;

  /// The duplicate address detection (DAD) state.
  @Int32()
  external int DadState;

  /// The maximum lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int ValidLifetime;

  /// The preferred lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int PreferredLifetime;

  /// The lease lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int LeaseLifetime;

  /// The length, in bits, of the prefix or network part of the IP address.
  @Uint8()
  external int OnLinkPrefixLength;
}

/// {@category union}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single Windows Internet Name Service (WINS) server address in a
/// linked list of WINS server addresses for a particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_wins_server_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_WINS_SERVER_ADDRESS_LH extends Struct {
  external IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next WINS server address structure in the list.
  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> Next;

  /// The IP address for this WINS server entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  // ignore: unused_field
  external int _Reserved;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores an IPv4 address in dotted decimal notation.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_address_string>.
///
/// {@category struct}
base class IP_ADDRESS_STRING extends Struct {
  /// A character string that represents an IPv4 address or an IPv4 subnet mask
  /// in dotted decimal notation.
  @Array(16)
  external Array<CHAR> String_;
}

/// Represents a node in a linked-list of IPv4 addresses.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_addr_string>.
///
/// {@category struct}
base class IP_ADDR_STRING extends Struct {
  /// A pointer to the next <b>IP_ADDR_STRING</b> structure in the list.
  external Pointer<IP_ADDR_STRING> Next;

  /// A value that specifies a structure type with a single member,
  /// <b>String</b>.
  external IP_ADDRESS_STRING IpAddress;

  /// A value that specifies a structure type with a single member,
  /// <b>String</b>.
  external IP_ADDRESS_STRING IpMask;

  /// A network table entry (NTE).
  @Uint32()
  external int Context;
}

/// Contains a list of the network interface adapters with IPv4 enabled on the
/// local system.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ipexport/ns-ipexport-ip_interface_info>.
///
/// {@category struct}
base class IP_INTERFACE_INFO extends Struct {
  /// The number of adapters listed in the array pointed to by the
  /// <b>Adapter</b> member.
  @Int32()
  external int NumAdapters;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ipexport/ns-ipexport-ip_adapter_index_map">IP_ADAPTER_INDEX_MAP</a>
  /// structures.
  @Array(1)
  external Array<IP_ADAPTER_INDEX_MAP> Adapter;
}

/// Contains information specific to a particular adapter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_per_adapter_info_w2ksp1>.
///
/// {@category struct}
base class IP_PER_ADAPTER_INFO_W2KSP1 extends Struct {
  /// Specifies whether IP address auto-configuration (APIPA) is enabled on this
  /// adapter.
  @Uint32()
  external int AutoconfigEnabled;

  /// Specifies whether this adapter's IP address is currently auto-configured
  /// by APIPA.
  @Uint32()
  external int AutoconfigActive;

  /// Reserved.
  external Pointer<IP_ADDR_STRING> CurrentDnsServer;

  /// A linked list of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_addr_string">IP_ADDR_STRING</a>
  /// structures that specify the set of DNS servers used by the local computer.
  external IP_ADDR_STRING DnsServerList;
}

/// Contains a list of item identifiers.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-itemidlist>.
///
/// {@category struct}
@Packed(1)
base class ITEMIDLIST extends Struct {
  /// A list of item identifiers.
  external SHITEMID mkid;
}

/// Contains information used to control the I/O rate for a job.
///
/// This structure is used by the SetIoRateControlInformationJobObject and
/// QueryIoRateControlInformationJobObject functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/ns-jobapi2-jobobject_io_rate_control_information>.
///
/// {@category struct}
base class JOBOBJECT_IO_RATE_CONTROL_INFORMATION extends Struct {
  /// The maximum limit for the I/O rate in I/O operations per second (IOPS).
  @Int64()
  external int MaxIops;

  /// The maximum limit for the I/O rate in bytes per second.
  @Int64()
  external int MaxBandwidth;

  /// Sets a minimum I/O rate which the operating system reserves for the job.
  @Int64()
  external int ReservationIops;

  /// The NT device name for the volume to which you want to apply the policy
  /// for the I/O rate.
  external Pointer<Utf16> VolumeName;

  /// The base size of the normalized I/O unit, in bytes.
  @Uint32()
  external int BaseIoSize;

  @Uint32()
  external int ControlFlags;
}

/// Specifies print-job information such as the job-identifier value, the name
/// of the printer for which the job is spooled, the name of the machine that
/// created the print job, the name of the user that owns the print job, and so
/// on.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/job-info-1>.
///
/// {@category struct}
base class JOB_INFO_1 extends Struct {
  /// A job identifier.
  @Uint32()
  external int JobId;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer for which the job is spooled.
  external Pointer<Utf16> pPrinterName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// machine that created the print job.
  external Pointer<Utf16> pMachineName;

  /// A pointer to a null-terminated string that specifies the name of the user
  /// that owns the print job.
  external Pointer<Utf16> pUserName;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// job (for example, "MS-WORD: Review.doc").
  external Pointer<Utf16> pDocument;

  /// A pointer to a null-terminated string that specifies the type of data used
  /// to record the print job.
  external Pointer<Utf16> pDatatype;

  /// A pointer to a null-terminated string that specifies the status of the
  /// print job.
  external Pointer<Utf16> pStatus;

  /// The job status.
  @Uint32()
  external int Status;

  /// The job priority.
  @Uint32()
  external int Priority;

  /// The job's position in the print queue.
  @Uint32()
  external int Position;

  /// The total number of pages that the document contains.
  @Uint32()
  external int TotalPages;

  /// The number of pages that have printed.
  @Uint32()
  external int PagesPrinted;

  /// A `SYSTEMTIME` structure that specifies the time that this document was
  /// spooled.
  external SYSTEMTIME Submitted;
}

/// Contains information about a low-level keyboard input event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-kbdllhookstruct>.
///
/// {@category struct}
base class KBDLLHOOKSTRUCT extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/virtual-key-codes">virtual-key
  /// code</a>.
  @Uint32()
  external int vkCode;

  /// A hardware scan code for the key.
  @Uint32()
  external int scanCode;

  /// The extended-key flag, event-injected flags, context code, and
  /// transition-state flag.
  @Uint32()
  external int flags;

  /// The time stamp for this message, equivalent to what <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-getmessagetime">GetMessageTime</a>
  /// would return for this message.
  @Uint32()
  external int time;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about a simulated keyboard event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-keybdinput>.
///
/// {@category struct}
base class KEYBDINPUT extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/virtual-key-codes">virtual-key
  /// code</a>.
  @Uint16()
  external int wVk;

  /// A hardware scan code for the key.
  @Uint16()
  external int wScan;

  @Uint32()
  external int dwFlags;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int time;

  /// An additional value associated with the keystroke.
  @IntPtr()
  external int dwExtraInfo;
}

/// Describes a keyboard input event in a console INPUT RECORD structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/key-event-record-str>.
///
/// {@category struct}
base class KEY_EVENT_RECORD extends Struct {
  /// If the key is pressed, this member is [TRUE].
  @Int32()
  external int bKeyDown;

  /// The repeat count, which indicates that a key is being held down.
  @Uint16()
  external int wRepeatCount;

  /// A `virtual-key code` that identifies the given key in a device-independent
  /// manner.
  @Uint16()
  external int wVirtualKeyCode;

  /// The virtual scan code of the given key that represents the
  /// device-dependent value generated by the keyboard hardware.
  @Uint16()
  external int wVirtualScanCode;

  /// A union of the following members.
  external KEY_EVENT_RECORD_0 uChar;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;
}

/// {@category union}
sealed class KEY_EVENT_RECORD_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int AsciiChar;
}

extension KEY_EVENT_RECORD_0_Extension on KEY_EVENT_RECORD {
  int get UnicodeChar => this.uChar.UnicodeChar;
  set UnicodeChar(int value) => this.uChar.UnicodeChar = value;

  int get AsciiChar => this.uChar.AsciiChar;
  set AsciiChar(int value) => this.uChar.AsciiChar = value;
}

/// Defines the specifics of a known folder.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ns-shobjidl_core-knownfolder_definition>.
///
/// {@category struct}
base class KNOWNFOLDER_DEFINITION extends Struct {
  /// A single value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shobjidl_core/ne-shobjidl_core-kf_category">KF_CATEGORY</a>
  /// constants that classifies the folder as virtual, fixed, common, or
  /// per-user.
  @Int32()
  external int category;

  /// A pointer to the non-localized, canonical name for the known folder,
  /// stored as a null-terminated Unicode string.
  external Pointer<Utf16> pszName;

  /// A pointer to a short description of the known folder, stored as a
  /// null-terminated Unicode string.
  external Pointer<Utf16> pszDescription;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/knownfolderid">KNOWNFOLDERID</a>
  /// value that names another known folder to serve as the parent folder.
  external GUID fidParent;

  /// Optional.
  external Pointer<Utf16> pszRelativePath;

  /// A pointer to the Shell namespace folder path of the folder, stored as a
  /// null-terminated Unicode string.
  external Pointer<Utf16> pszParsingName;

  /// Optional.
  external Pointer<Utf16> pszTooltip;

  /// Optional.
  external Pointer<Utf16> pszLocalizedName;

  /// Optional.
  external Pointer<Utf16> pszIcon;

  /// Optional.
  external Pointer<Utf16> pszSecurity;

  /// Optional.
  @Uint32()
  external int dwAttributes;

  /// Optional.
  @Uint32()
  external int kfdFlags;

  /// One of the <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/foldertypeid">FOLDERTYPEID</a>
  /// values that identifies the known folder type based on its contents (such
  /// as documents, music, or photographs).
  external GUID ftidType;
}

/// Used by the IHV Extensions DLL to send notifications to any service or
/// applications that has registered for the notification.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data>.
///
/// {@category struct}
base class L2_NOTIFICATION_DATA extends Struct {
  /// This member specifies where the notification comes from.
  @Uint32()
  external int NotificationSource;

  /// This member specifies the notification code for the status indication.
  @Uint32()
  external int NotificationCode;

  /// The globally unique identifier (GUID) for the wireless LAN (WLAN) adapter.
  external GUID InterfaceGuid;

  /// The length, in bytes, of the data within the buffer referenced by the
  /// <b>pData</b> member.
  @Uint32()
  external int dwDataSize;

  /// The address of a caller-allocated buffer that contains additional data for
  /// the notification.
  external Pointer pData;
}

/// Contains the time of the last input.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-lastinputinfo>.
///
/// {@category struct}
base class LASTINPUTINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The tick count when the last input event was received.
  @Uint32()
  external int dwTime;
}

/// Defines the style, color, and pattern of a physical brush.
///
/// It is used by the CreateBrushIndirect and ExtCreatePen functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-logbrush>.
///
/// {@category struct}
base class LOGBRUSH extends Struct {
  /// The brush style.
  @Uint32()
  external int lbStyle;

  /// The color in which the brush is to be drawn.
  @Uint32()
  external int lbColor;

  /// A hatch style.
  @IntPtr()
  external int lbHatch;
}

/// Defines the attributes of a font.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-logfontw>.
///
/// {@category struct}
base class LOGFONT extends Struct {
  /// Specifies the height, in logical units, of the font's character cell or
  /// character.
  @Int32()
  external int lfHeight;

  /// Specifies the average width, in logical units, of characters in the font.
  @Int32()
  external int lfWidth;

  /// Specifies the angle, in tenths of degrees, between the escapement vector
  /// and the x-axis of the device.
  @Int32()
  external int lfEscapement;

  /// Specifies the angle, in tenths of degrees, between each character's base
  /// line and the x-axis of the device.
  @Int32()
  external int lfOrientation;

  /// Specifies the weight of the font in the range 0 through 1000.
  @Int32()
  external int lfWeight;

  /// [TRUE] to specify an italic font.
  @Uint8()
  external int lfItalic;

  /// [TRUE] to specify an underlined font.
  @Uint8()
  external int lfUnderline;

  /// [TRUE] to specify a strikeout font.
  @Uint8()
  external int lfStrikeOut;

  /// Specifies the character set.
  @Uint8()
  external int lfCharSet;

  @Uint8()
  external int lfOutPrecision;

  @Uint8()
  external int lfClipPrecision;

  @Uint8()
  external int lfQuality;

  @Uint8()
  external int lfPitchAndFamily;

  @Array(32)
  external Array<Uint16> _lfFaceName;

  /// Specifies a string that specifies the typeface name of the font.
  String get lfFaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_lfFaceName[i] == 0x00) break;
      charCodes.add(_lfFaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set lfFaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _lfFaceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Defines a logical palette.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-logpalette>.
///
/// {@category struct}
base class LOGPALETTE extends Struct {
  /// The version number of the system.
  @Uint16()
  external int palVersion;

  /// The number of entries in the logical palette.
  @Uint16()
  external int palNumEntries;

  /// Specifies an array of <a
  /// href="https://docs.microsoft.com/previous-versions/dd162769(v=vs.85)">PALETTEENTRY</a>
  /// structures that define the color and usage of each entry in the logical
  /// palette.
  @Array(1)
  external Array<PALETTEENTRY> palPalEntry;
}

/// {@category struct}
typedef LPARAM = IntPtr;

/// {@category struct}
typedef LPPROC_THREAD_ATTRIBUTE_LIST = Pointer;

/// {@category struct}
typedef LRESULT = IntPtr;

/// An opaque structure that specifies an identifier that is guaranteed to be
/// unique on the local machine.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ntdef/ns-ntdef-luid>.
///
/// {@category struct}
base class LUID extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
}

/// Describes a color transformation matrix that a magnifier control uses to
/// apply a color effect to magnified screen content.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magcoloreffect>.
///
/// {@category struct}
base class MAGCOLOREFFECT extends Struct {
  /// The color transformation matrix.
  @Array(25)
  external Array<Float> transform;
}

/// Describes an image format.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magimageheader>.
///
/// {@category struct}
base class MAGIMAGEHEADER extends Struct {
  /// The width of the image.
  @Uint32()
  external int width;

  /// The height of the image.
  @Uint32()
  external int height;

  /// A WICPixelFormatGUID (declared in wincodec.h) that specifies the pixel
  /// format of the image.
  external GUID format;

  /// The stride, or number of bytes in a row of the image.
  @Uint32()
  external int stride;

  /// The offset of the start of the image data from the beginning of the file.
  @Uint32()
  external int offset;

  /// The size of the struct in bytes.
  @IntPtr()
  external int cbSize;
}

/// Describes a transformation matrix that a magnifier control uses to magnify
/// screen content.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magtransform>.
///
/// {@category struct}
base class MAGTRANSFORM extends Struct {
  /// The transformation matrix.
  @Array(9)
  external Array<Float> v;
}

/// Returned by the GetThemeMargins function to define the margins of windows
/// that have visual styles applied.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-margins>.
///
/// {@category struct}
base class MARGINS extends Struct {
  /// Width of the left border that retains its size.
  @Int32()
  external int cxLeftWidth;

  /// Width of the right border that retains its size.
  @Int32()
  external int cxRightWidth;

  /// Height of the top border that retains its size.
  @Int32()
  external int cyTopHeight;

  /// Height of the bottom border that retains its size.
  @Int32()
  external int cyBottomHeight;
}

/// Contains information for the MCI OPEN command.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-open-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_OPEN_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Identifier returned to application.
  @Uint32()
  external int wDeviceID;

  /// Name or constant identifier of the device type.
  external Pointer<Utf16> lpstrDeviceType;

  /// Device element (often a path).
  external Pointer<Utf16> lpstrElementName;

  /// Optional device alias.
  external Pointer<Utf16> lpstrAlias;
}

/// Contains positioning information for the MCI PLAY command.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-play-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_PLAY_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Position to play from.
  @Uint32()
  external int dwFrom;

  /// Position to play to.
  @Uint32()
  external int dwTo;
}

/// Contains positioning information for the MCI SEEK command.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-seek-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_SEEK_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Position to seek to.
  @Uint32()
  external int dwTo;
}

/// Contains information for the MCI STATUS command.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-status-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_STATUS_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Contains information on return.
  @IntPtr()
  external int dwReturn;

  /// Capability being queried.
  @Uint32()
  external int dwItem;

  /// Length or number of tracks.
  @Uint32()
  external int dwTrack;
}

/// Contains information about the current state of both physical and virtual
/// memory, including extended memory.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/ns-sysinfoapi-memorystatusex>.
///
/// {@category struct}
base class MEMORYSTATUSEX extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwLength;

  /// A number between 0 and 100 that specifies the approximate percentage of
  /// physical memory that is in use (0 indicates no memory use and 100
  /// indicates full memory use).
  @Uint32()
  external int dwMemoryLoad;

  /// The amount of actual physical memory, in bytes.
  @Uint64()
  external int ullTotalPhys;

  /// The amount of physical memory currently available, in bytes.
  @Uint64()
  external int ullAvailPhys;

  /// The current committed memory limit for the system or the current process,
  /// whichever is smaller, in bytes.
  @Uint64()
  external int ullTotalPageFile;

  /// The maximum amount of memory the current process can commit, in bytes.
  @Uint64()
  external int ullAvailPageFile;

  /// The size of the user-mode portion of the virtual address space of the
  /// calling process, in bytes.
  @Uint64()
  external int ullTotalVirtual;

  /// The amount of unreserved and uncommitted memory currently in the user-mode
  /// portion of the virtual address space of the calling process, in bytes.
  @Uint64()
  external int ullAvailVirtual;

  /// Reserved.
  @Uint64()
  external int ullAvailExtendedVirtual;
}

/// Contains information about a range of pages in the virtual address space of
/// a process.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-memory_basic_information>.
///
/// {@category struct}
base class MEMORY_BASIC_INFORMATION extends Struct {
  /// A pointer to the base address of the region of pages.
  external Pointer BaseAddress;

  /// A pointer to the base address of a range of pages allocated by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/memoryapi/nf-memoryapi-virtualalloc">VirtualAlloc</a>
  /// function.
  external Pointer AllocationBase;

  /// The memory protection option when the region was initially allocated.
  @Uint32()
  external int AllocationProtect;

  @Uint16()
  external int PartitionId;

  /// The size of the region beginning at the base address in which all pages
  /// have identical attributes, in bytes.
  @IntPtr()
  external int RegionSize;

  @Uint32()
  external int State;

  /// The access protection of the pages in the region.
  @Uint32()
  external int Protect;

  /// The type of pages in the region.
  @Uint32()
  external int Type;
}

/// Contains menu bar information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menubarinfo>.
///
/// {@category struct}
base class MENUBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the menu bar, popup menu, or menu item.
  external RECT rcBar;

  /// A handle to the menu bar or popup menu.
  @IntPtr()
  external int hMenu;

  /// A handle to the submenu.
  @IntPtr()
  external int hwndMenu;

  @Int32()
  external int bitfield;
}

/// Contains information about a menu.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuinfo>.
///
/// {@category struct}
base class MENUINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Uint32()
  external int dwStyle;

  /// The maximum height of the menu in pixels.
  @Uint32()
  external int cyMax;

  /// A handle to the brush to be used for the menu's background.
  @IntPtr()
  external int hbrBack;

  /// The context help identifier.
  @Uint32()
  external int dwContextHelpID;

  /// An application-defined value.
  @IntPtr()
  external int dwMenuData;
}

/// Contains information about a menu item.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuiteminfow>.
///
/// {@category struct}
base class MENUITEMINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Uint32()
  external int fType;

  /// The menu item state.
  @Uint32()
  external int fState;

  /// An application-defined value that identifies the menu item.
  @Uint32()
  external int wID;

  /// A handle to the drop-down menu or submenu associated with the menu item.
  @IntPtr()
  external int hSubMenu;

  /// A handle to the bitmap to display next to the item if it is selected.
  @IntPtr()
  external int hbmpChecked;

  /// A handle to the bitmap to display next to the item if it is not selected.
  @IntPtr()
  external int hbmpUnchecked;

  /// An application-defined value associated with the menu item.
  @IntPtr()
  external int dwItemData;

  /// The contents of the menu item.
  external Pointer<Utf16> dwTypeData;

  /// The length of the menu item text, in characters, when information is
  /// received about a menu item of the <b>MFT_STRING</b> type.
  @Uint32()
  external int cch;

  /// A handle to the bitmap to be displayed, or it can be one of the values in
  /// the following table.
  @IntPtr()
  external int hbmpItem;
}

/// Defines a menu item in a menu template.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuitemtemplate>.
///
/// {@category struct}
base class MENUITEMTEMPLATE extends Struct {
  /// One or more of the following predefined menu options that control the
  /// appearance of the menu item as shown in the following table.
  @Uint16()
  external int mtOption;

  /// The menu item identifier of a command item; a command item sends a command
  /// message to its owner window.
  @Uint16()
  external int mtID;

  /// The menu item.
  @Array(1)
  external Array<Uint16> mtString;
}

/// Defines the header for a menu template.
///
/// A complete menu template consists of a header and one or more menu item
/// lists.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuitemtemplateheader>.
///
/// {@category struct}
base class MENUITEMTEMPLATEHEADER extends Struct {
  /// The version number.
  @Uint16()
  external int versionNumber;

  /// The offset, in bytes, from the end of the header.
  @Uint16()
  external int offset;
}

/// Describes a menu event in a console INPUT RECORD structure.
///
/// These events are used internally and should be ignored.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/menu-event-record-str>.
///
/// {@category struct}
base class MENU_EVENT_RECORD extends Struct {
  /// Reserved.
  @Uint32()
  external int dwCommandId;
}

/// Defines the metafile picture format used for exchanging metafile data
/// through the clipboard.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-metafilepict>.
///
/// {@category struct}
base class METAFILEPICT extends Struct {
  /// The mapping mode in which the picture is drawn.
  @Int32()
  external int mm;

  /// The size of the metafile picture for all modes except the
  /// <b>MM_ISOTROPIC</b> and <b>MM_ANISOTROPIC</b> modes.
  @Int32()
  external int xExt;

  /// The size of the metafile picture for all modes except the
  /// <b>MM_ISOTROPIC</b> and <b>MM_ANISOTROPIC</b> modes.
  @Int32()
  external int yExt;

  /// A handle to a memory metafile.
  @IntPtr()
  external int hMF;
}

/// Describes a MIDI event in a stream buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midievent>.
///
/// {@category struct}
@Packed(1)
base class MIDIEVENT extends Struct {
  /// Time, in MIDI ticks, between the previous event and the current event.
  @Uint32()
  external int dwDeltaTime;

  /// Reserved; must be zero.
  @Uint32()
  external int dwStreamID;

  /// Event code and event parameters or length.
  @Uint32()
  external int dwEvent;

  /// If <b>dwEvent</b> specifies MEVT_F_LONG and the length of the buffer, this
  /// member contains parameters for the event.
  @Array(1)
  external Array<Uint32> dwParms;
}

/// Defines the header used to identify a MIDI system-exclusive or stream
/// buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midihdr>.
///
/// {@category struct}
@Packed(1)
base class MIDIHDR extends Struct {
  /// Pointer to MIDI data.
  external Pointer<Utf8> lpData;

  /// Size of the buffer.
  @Uint32()
  external int dwBufferLength;

  /// Actual amount of data in the buffer.
  @Uint32()
  external int dwBytesRecorded;

  /// Custom user data.
  @IntPtr()
  external int dwUser;

  /// Flags giving information about the buffer.
  @Uint32()
  external int dwFlags;

  /// Reserved; do not use.
  external Pointer<MIDIHDR> lpNext;

  /// Reserved; do not use.
  @IntPtr()
  external int reserved;

  /// Offset into the buffer when a callback is performed.
  @Uint32()
  external int dwOffset;

  /// Reserved; do not use.
  @Array(8)
  // ignore: unused_field
  external Array<IntPtr> _dwReserved;
}

/// Describes the capabilities of a MIDI input device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiincapsw>.
///
/// {@category struct}
@Packed(1)
base class MIDIINCAPS extends Struct {
  /// Manufacturer identifier of the device driver for the MIDI input device.
  @Uint16()
  external int wMid;

  /// Product identifier of the MIDI input device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the MIDI input device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Product name in a string.
  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_szPname[i] == 0x00) break;
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Reserved; must be zero.
  @Uint32()
  external int dwSupport;
}

/// Describes the capabilities of a MIDI output device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midioutcapsw>.
///
/// {@category struct}
@Packed(1)
base class MIDIOUTCAPS extends Struct {
  /// Manufacturer identifier of the device driver for the MIDI output device.
  @Uint16()
  external int wMid;

  /// Product identifier of the MIDI output device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the MIDI output device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Product name in a string.
  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_szPname[i] == 0x00) break;
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Type of the MIDI output device.
  @Uint16()
  external int wTechnology;

  /// Number of voices supported by an internal synthesizer device.
  @Uint16()
  external int wVoices;

  /// Maximum number of simultaneous notes that can be played by an internal
  /// synthesizer device.
  @Uint16()
  external int wNotes;

  /// Channels that an internal synthesizer device responds to, where the least
  /// significant bit refers to channel 0 and the most significant bit to
  /// channel 15.
  @Uint16()
  external int wChannelMask;

  /// Optional functionality supported by the device.
  @Uint32()
  external int dwSupport;
}

/// Contains the tempo property for a stream.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiproptempo>.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTEMPO extends Struct {
  /// Length, in bytes, of this structure.
  @Uint32()
  external int cbStruct;

  /// Tempo of the stream, in microseconds per quarter note.
  @Uint32()
  external int dwTempo;
}

/// Contains the time division property for a stream.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiproptimediv>.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTIMEDIV extends Struct {
  /// Length, in bytes, of this structure.
  @Uint32()
  external int cbStruct;

  /// Time division for this stream, in the format specified in the <i>Standard
  /// MIDI Files 1.0</i> specification.
  @Uint32()
  external int dwTimeDiv;
}

/// Contains version information for a long MIDI event of the MEVT_VERSION type.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midistrmbuffver>.
///
/// {@category struct}
@Packed(1)
base class MIDISTRMBUFFVER extends Struct {
  /// Version of the stream.
  @Uint32()
  external int dwVersion;

  /// Manufacturer identifier.
  @Uint32()
  external int dwMid;

  /// OEM version of the stream.
  @Uint32()
  external int dwOEMVersion;
}

/// Contains information about a window's maximized size and position and its
/// minimum and maximum tracking size.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-minmaxinfo>.
///
/// {@category struct}
base class MINMAXINFO extends Struct {
  /// Reserved; do not use.
  // ignore: unused_field
  external POINT _ptReserved;

  /// The maximized width (<b>x</b> member) and the maximized height (<b>y</b>
  /// member) of the window.
  external POINT ptMaxSize;

  /// The position of the left side of the maximized window (<b>x</b> member)
  /// and the position of the top of the maximized window (<b>y</b> member).
  external POINT ptMaxPosition;

  /// The minimum tracking width (<b>x</b> member) and the minimum tracking
  /// height (<b>y</b> member) of the window.
  external POINT ptMinTrackSize;

  /// The maximum tracking width (<b>x</b> member) and the maximum tracking
  /// height (<b>y</b> member) of the window.
  external POINT ptMaxTrackSize;
}

/// {@category struct}
@Packed(1)
base class MMTIME extends Struct {
  @Uint32()
  external int wType;

  external MMTIME_0 u;
}

/// {@category union}
@Packed(1)
sealed class MMTIME_0 extends Union {
  @Uint32()
  external int ms;

  @Uint32()
  external int sample;

  @Uint32()
  external int cb;

  @Uint32()
  external int ticks;

  external MMTIME_0_0 smpte;

  external MMTIME_0_1 midi;
}

extension MMTIME_0_Extension on MMTIME {
  int get ms => this.u.ms;
  set ms(int value) => this.u.ms = value;

  int get sample => this.u.sample;
  set sample(int value) => this.u.sample = value;

  int get cb => this.u.cb;
  set cb(int value) => this.u.cb = value;

  int get ticks => this.u.ticks;
  set ticks(int value) => this.u.ticks = value;

  MMTIME_0_0 get smpte => this.u.smpte;
  set smpte(MMTIME_0_0 value) => this.u.smpte = value;

  MMTIME_0_1 get midi => this.u.midi;
  set midi(MMTIME_0_1 value) => this.u.midi = value;
}

/// {@category struct}
sealed class MMTIME_0_0 extends Struct {
  @Uint8()
  external int hour;

  @Uint8()
  external int min;

  @Uint8()
  external int sec;

  @Uint8()
  external int frame;

  @Uint8()
  external int fps;

  @Uint8()
  external int dummy;

  @Array(2)
  external Array<Uint8> pad;
}

extension MMTIME_0_0_Extension on MMTIME {
  int get hour => this.u.smpte.hour;
  set hour(int value) => this.u.smpte.hour = value;

  int get min => this.u.smpte.min;
  set min(int value) => this.u.smpte.min = value;

  int get sec => this.u.smpte.sec;
  set sec(int value) => this.u.smpte.sec = value;

  int get frame => this.u.smpte.frame;
  set frame(int value) => this.u.smpte.frame = value;

  int get fps => this.u.smpte.fps;
  set fps(int value) => this.u.smpte.fps = value;

  int get dummy => this.u.smpte.dummy;
  set dummy(int value) => this.u.smpte.dummy = value;

  Array<Uint8> get pad => this.u.smpte.pad;
  set pad(Array<Uint8> value) => this.u.smpte.pad = value;
}

/// {@category struct}
@Packed(1)
sealed class MMTIME_0_1 extends Struct {
  @Uint32()
  external int songptrpos;
}

extension MMTIME_0_1_Extension on MMTIME {
  int get songptrpos => this.u.midi.songptrpos;
  set songptrpos(int value) => this.u.midi.songptrpos = value;
}

/// Contains information about the capabilities of a modem.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mcx/ns-mcx-modemdevcaps>.
///
/// {@category struct}
base class MODEMDEVCAPS extends Struct {
  /// The size of the data actually returned to the application, in bytes.
  @Uint32()
  external int dwActualSize;

  /// The number of bytes required for the entire <b>MODEMDEVCAPS</b> structure,
  /// including the variable-length portion.
  @Uint32()
  external int dwRequiredSize;

  /// The offset of the provider-defined portion of the structure, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwDevSpecificOffset;

  /// The size of the provider-defined portion of the structure, in bytes.
  @Uint32()
  external int dwDevSpecificSize;

  /// The version of the service provider.
  @Uint32()
  external int dwModemProviderVersion;

  /// The offset of a text string that contains the name of the modem
  /// manufacturer, in bytes relative to the beginning of the structure.
  @Uint32()
  external int dwModemManufacturerOffset;

  /// The length of the modem manufacturer name, in bytes.
  @Uint32()
  external int dwModemManufacturerSize;

  /// The offset of a text string that contains the model of the modem, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwModemModelOffset;

  /// The length of the model name, in bytes.
  @Uint32()
  external int dwModemModelSize;

  /// The offset of a text string that gives the version and revision of the
  /// attached modem, if the provider could determine the information.
  @Uint32()
  external int dwModemVersionOffset;

  /// The length of the modem version string, in bytes.
  @Uint32()
  external int dwModemVersionSize;

  @Uint32()
  external int dwDialOptions;

  /// The maximum call setup timeout supported by the modem, in seconds.
  @Uint32()
  external int dwCallSetupFailTimer;

  /// The maximum inactivity timeout supported by the modem, in tenths of
  /// seconds.
  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  @Uint32()
  external int dwModemOptions;

  /// The maximum DTE rate in bits per second.
  @Uint32()
  external int dwMaxDTERate;

  /// The maximum DCE rate in bits per second.
  @Uint32()
  external int dwMaxDCERate;

  /// Variable-length information, including strings and any provider-defined
  /// information.
  @Array(1)
  external Array<Uint8> abVariablePortion;
}

/// Contains information about a modem's configuration.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mcx/ns-mcx-modemsettings>.
///
/// {@category struct}
base class MODEMSETTINGS extends Struct {
  /// The size of the data actually returned to the application, in bytes.
  @Uint32()
  external int dwActualSize;

  /// The number of bytes required for the entire <a
  /// href="https://docs.microsoft.com/windows/desktop/api/mcx/ns-mcx-modemdevcaps">MODEMDEVCAPS</a>
  /// structure, including the variable-length portion.
  @Uint32()
  external int dwRequiredSize;

  /// The offset of the provider-defined portion of the structure, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwDevSpecificOffset;

  /// The size of the provider-defined portion of the structure, in bytes.
  @Uint32()
  external int dwDevSpecificSize;

  /// The maximum number of seconds the modem should wait, after dialing is
  /// completed, for an indication that a modem-to-modem connection has been
  /// established.
  @Uint32()
  external int dwCallSetupFailTimer;

  /// The maximum number of seconds of inactivity allowed after a connection is
  /// established.
  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  /// The modem options requested by the application.
  @Uint32()
  external int dwPreferredModemOptions;

  /// The modem options that are actually in effect.
  @Uint32()
  external int dwNegotiatedModemOptions;

  /// The DCE rate in effect.
  @Uint32()
  external int dwNegotiatedDCERate;

  /// Optional provider-defined information.
  @Array(1)
  external Array<Uint8> abVariablePortion;
}

/// Contains module data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ns-dbghelp-modload_data>.
///
/// {@category struct}
base class MODLOAD_DATA extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int ssize;

  @Uint32()
  external int ssig;

  /// The data.
  external Pointer data;

  /// The size of the <b>data</b> buffer, in bytes.
  @Uint32()
  external int size;

  /// This member is unused.
  @Uint32()
  external int flags;
}

/// Contains the module load address, size, and entry point.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-moduleinfo>.
///
/// {@category struct}
base class MODULEINFO extends Struct {
  /// The load address of the module.
  external Pointer lpBaseOfDll;

  /// The size of the linear space that the module occupies, in bytes.
  @Uint32()
  external int SizeOfImage;

  /// The entry point of the module.
  external Pointer EntryPoint;
}

/// Contains information about a display monitor.
///
/// The GetMonitorInfo function stores information in a MONITORINFO structure or
/// a MONITORINFOEX structure. The MONITORINFO structure is a subset of the
/// MONITORINFOEX structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-monitorinfo>.
///
/// {@category struct}
base class MONITORINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A `RECT` structure that specifies the display monitor rectangle, expressed
  /// in virtual-screen coordinates.
  external RECT rcMonitor;

  /// A `RECT` structure that specifies the work area rectangle of the display
  /// monitor, expressed in virtual-screen coordinates.
  external RECT rcWork;

  /// A set of flags that represent attributes of the display monitor.
  @Uint32()
  external int dwFlags;
}

/// Contains information about a display monitor.
///
/// The GetMonitorInfo function stores information into a MONITORINFOEX
/// structure or a MONITORINFO structure. The MONITORINFOEX structure is a
/// superset of the MONITORINFO structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-monitorinfoexw>.
///
/// {@category struct}
base class MONITORINFOEX extends Struct {
  external MONITORINFO monitorInfo;

  @Array(32)
  external Array<Uint16> _szDevice;

  /// A string that specifies the device name of the monitor being used.
  String get szDevice {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_szDevice[i] == 0x00) break;
      charCodes.add(_szDevice[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDevice(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szDevice[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousehookstruct>.
///
/// {@category struct}
base class MOUSEHOOKSTRUCT extends Struct {
  /// The x- and y-coordinates of the cursor, in screen coordinates.
  external POINT pt;

  /// A handle to the window that will receive the mouse message corresponding
  /// to the mouse event.
  @IntPtr()
  external int hwnd;

  /// The hit-test value.
  @Uint32()
  external int wHitTestCode;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc.
///
/// This is an extension of the MOUSEHOOKSTRUCT structure that includes
/// information about wheel movement or the use of the X button.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousehookstructex>.
///
/// {@category struct}
base class MOUSEHOOKSTRUCTEX extends Struct {
  external MOUSEHOOKSTRUCT Base;

  /// If the message is <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/wm-mousewheel">WM_MOUSEWHEEL</a>,
  /// the HIWORD of this member is the wheel delta.
  @Uint32()
  external int mouseData;
}

/// Contains information about a simulated mouse event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mouseinput>.
///
/// {@category struct}
base class MOUSEINPUT extends Struct {
  /// The absolute position of the mouse, or the amount of motion since the last
  /// mouse event was generated, depending on the value of the **dwFlags**
  /// member.
  @Int32()
  external int dx;

  /// The absolute position of the mouse, or the amount of motion since the last
  /// mouse event was generated, depending on the value of the **dwFlags**
  /// member.
  @Int32()
  external int dy;

  /// , then **mouseData** specifies the amount of wheel movement.
  @Uint32()
  external int mouseData;

  @Uint32()
  external int dwFlags;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int time;

  /// An additional value associated with the mouse event.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about the mouse's location in screen coordinates.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousemovepoint>.
///
/// {@category struct}
base class MOUSEMOVEPOINT extends Struct {
  /// The x-coordinate of the mouse.
  @Int32()
  external int x;

  /// The y-coordinate of the mouse.
  @Int32()
  external int y;

  /// The time stamp of the mouse coordinate.
  @Uint32()
  external int time;

  /// Additional information associated with this coordinate.
  @IntPtr()
  external int dwExtraInfo;
}

/// Describes a mouse input event in a console INPUT_RECORD structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/mouse-event-record-str>.
///
/// {@category struct}
base class MOUSE_EVENT_RECORD extends Struct {
  /// A `COORD` structure that contains the location of the cursor, in terms of
  /// the console screen buffer's character-cell coordinates.
  external COORD dwMousePosition;

  /// The status of the mouse buttons.
  @Uint32()
  external int dwButtonState;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;

  /// The type of mouse event.
  @Uint32()
  external int dwEventFlags;
}

/// Contains message information from a thread's message queue.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-msg>.
///
/// {@category struct}
base class MSG extends Struct {
  /// A handle to the window whose window procedure receives the message.
  @IntPtr()
  external int hwnd;

  /// The message identifier.
  @Uint32()
  external int message;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// The time at which the message was posted.
  @Uint32()
  external int time;

  /// The cursor position, in screen coordinates, when the message was posted.
  external POINT pt;
}

/// Contains information about a low-level mouse input event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-msllhookstruct>.
///
/// {@category struct}
base class MSLLHOOKSTRUCT extends Struct {
  /// The x- and y-coordinates of the cursor, in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellscalingapi/ne-shellscalingapi-process_dpi_awareness">per-monitor-aware</a>
  /// screen coordinates.
  external POINT pt;

  /// If the message is <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/wm-mousewheel">WM_MOUSEWHEEL</a>,
  /// the high-order word of this member is the wheel delta.
  @Uint32()
  external int mouseData;

  /// The event-injected flags.
  @Uint32()
  external int flags;

  /// The time stamp for this message.
  @Uint32()
  external int time;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information that an application can use while processing the
/// WM_NCCALCSIZE message to calculate the size, position, and valid contents of
/// the client area of a window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-nccalcsize_params>.
///
/// {@category struct}
base class NCCALCSIZE_PARAMS extends Struct {
  /// An array of rectangles.
  @Array(3)
  external Array<RECT> rgrc;

  /// A pointer to a `WINDOWPOS` structure that contains the size and position
  /// values specified in the operation that moved or resized the window.
  external Pointer<WINDOWPOS> lppos;
}

/// Packages the object type, version, and size information that is required in
/// many NDIS 6.0 structures.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/ndis-object-header>.
///
/// {@category struct}
base class NDIS_OBJECT_HEADER extends Struct {
  /// Specifies the type of NDIS object that a structure describes.
  @Uint8()
  external int Type;

  /// Specifies the revision number of this structure.
  @Uint8()
  external int Revision;

  /// Specifies the total size, in bytes, of the NDIS structure that contains
  /// the **NDIS_OBJECT_HEADER**.
  @Uint16()
  external int Size;
}

/// The locally unique identifier (LUID) for a network interface.
///
/// To learn more about this union, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ns-ifdef-net_luid_lh>.
///
/// {@category union}
sealed class NET_LUID_LH extends Union {
  /// A 64-bit value that represents the LUID.
  @Uint64()
  external int Value;

  /// A named union containing the component fields in the 64-bit LUID
  /// <b>Value</b> member.
  external NET_LUID_LH_0 Info;
}

/// {@category struct}
sealed class NET_LUID_LH_0 extends Struct {
  @Uint64()
  external int bitfield;
}

extension NET_LUID_LH_0_Extension on NET_LUID_LH {
  int get bitfield => this.Info.bitfield;
  set bitfield(int value) => this.Info.bitfield = value;
}

/// Contains data that describes a physical font.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-newtextmetricw>.
///
/// {@category struct}
base class NEWTEXTMETRIC extends Struct {
  /// The height (ascent + descent) of characters.
  @Int32()
  external int tmHeight;

  /// The ascent (units above the base line) of characters.
  @Int32()
  external int tmAscent;

  /// The descent (units below the base line) of characters.
  @Int32()
  external int tmDescent;

  /// The amount of leading (space) inside the bounds set by the <b>tmHeight</b>
  /// member.
  @Int32()
  external int tmInternalLeading;

  /// The amount of extra leading (space) that the application adds between
  /// rows.
  @Int32()
  external int tmExternalLeading;

  /// The average width of characters in the font (generally defined as the
  /// width of the letter x).
  @Int32()
  external int tmAveCharWidth;

  /// The width of the widest character in the font.
  @Int32()
  external int tmMaxCharWidth;

  /// The weight of the font.
  @Int32()
  external int tmWeight;

  /// The extra width per string that may be added to some synthesized fonts.
  @Int32()
  external int tmOverhang;

  /// The horizontal aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectX;

  /// The vertical aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectY;

  /// The value of the first character defined in the font.
  @Uint16()
  external int tmFirstChar;

  /// The value of the last character defined in the font.
  @Uint16()
  external int tmLastChar;

  /// The value of the character to be substituted for characters that are not
  /// in the font.
  @Uint16()
  external int tmDefaultChar;

  /// The value of the character to be used to define word breaks for text
  /// justification.
  @Uint16()
  external int tmBreakChar;

  /// An italic font if it is nonzero.
  @Uint8()
  external int tmItalic;

  /// An underlined font if it is nonzero.
  @Uint8()
  external int tmUnderlined;

  /// A strikeout font if it is nonzero.
  @Uint8()
  external int tmStruckOut;

  /// The pitch and family of the selected font.
  @Uint8()
  external int tmPitchAndFamily;

  /// The character set of the font.
  @Uint8()
  external int tmCharSet;

  @Uint32()
  external int ntmFlags;

  /// The size of the em square for the font.
  @Uint32()
  external int ntmSizeEM;

  /// The height, in notional units, of the font.
  @Uint32()
  external int ntmCellHeight;

  /// The average width of characters in the font, in notional units.
  @Uint32()
  external int ntmAvgWidth;
}

/// Used to specify values that are used by SetSimulatedProfileInfo to override
/// current internet connection profile values in an RDP Child Session to
/// support the simulation of specific metered internet connection conditions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ns-netlistmgr-nlm_simulated_profile_info>.
///
/// {@category struct}
base class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _ProfileName;

  /// Name for the simulated profile.
  String get ProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_ProfileName[i] == 0x00) break;
      charCodes.add(_ProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// The network cost.
  @Int32()
  external int cost;

  /// The data usage.
  @Uint32()
  external int UsageInMegabytes;

  /// The data limit of the plan.
  @Uint32()
  external int DataLimitInMegabytes;
}

/// Contains the scalable metrics associated with the nonclient area of a
/// nonminimized window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-nonclientmetricsw>.
///
/// {@category struct}
base class NONCLIENTMETRICS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The thickness of the sizing border, in pixels.
  @Int32()
  external int iBorderWidth;

  /// The width of a standard vertical scroll bar, in pixels.
  @Int32()
  external int iScrollWidth;

  /// The height of a standard horizontal scroll bar, in pixels.
  @Int32()
  external int iScrollHeight;

  /// The width of caption buttons, in pixels.
  @Int32()
  external int iCaptionWidth;

  /// The height of caption buttons, in pixels.
  @Int32()
  external int iCaptionHeight;

  /// A `LOGFONT` structure that contains information about the caption font.
  external LOGFONT lfCaptionFont;

  /// The width of small caption buttons, in pixels.
  @Int32()
  external int iSmCaptionWidth;

  /// The height of small captions, in pixels.
  @Int32()
  external int iSmCaptionHeight;

  /// A `LOGFONT` structure that contains information about the small caption
  /// font.
  external LOGFONT lfSmCaptionFont;

  /// The width of menu-bar buttons, in pixels.
  @Int32()
  external int iMenuWidth;

  /// The height of a menu bar, in pixels.
  @Int32()
  external int iMenuHeight;

  /// A `LOGFONT` structure that contains information about the font used in
  /// menu bars.
  external LOGFONT lfMenuFont;

  /// A `LOGFONT` structure that contains information about the font used in
  /// status bars and tooltips.
  external LOGFONT lfStatusFont;

  /// A `LOGFONT` structure that contains information about the font used in
  /// message boxes.
  external LOGFONT lfMessageFont;

  /// The thickness of the padded border, in pixels.
  @Int32()
  external int iPaddedBorderWidth;
}

/// Contains information that the system needs to display notifications in the
/// notification area.
///
/// Used by Shell_NotifyIcon.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-notifyicondataw>.
///
/// {@category struct}
base class NOTIFYICONDATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A handle to the window that receives notifications associated with an icon
  /// in the notification area.
  @IntPtr()
  external int hWnd;

  /// The application-defined identifier of the taskbar icon.
  @Uint32()
  external int uID;

  @Uint32()
  external int uFlags;

  /// An application-defined message identifier.
  @Uint32()
  external int uCallbackMessage;

  /// A handle to the icon to be added, modified, or deleted.
  @IntPtr()
  external int hIcon;

  @Array(128)
  external Array<Uint16> _szTip;

  /// A string that specifies the text for a standard tooltip.
  String get szTip {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_szTip[i] == 0x00) break;
      charCodes.add(_szTip[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTip(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szTip[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;

  @Array(256)
  external Array<Uint16> _szInfo;

  String get szInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_szInfo[i] == 0x00) break;
      charCodes.add(_szInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  external NOTIFYICONDATA_0 Anonymous;

  @Array(64)
  external Array<Uint16> _szInfoTitle;

  String get szInfoTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      if (_szInfoTitle[i] == 0x00) break;
      charCodes.add(_szInfoTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfoTitle(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szInfoTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwInfoFlags;

  external GUID guidItem;

  @IntPtr()
  external int hBalloonIcon;
}

/// {@category union}
sealed class NOTIFYICONDATA_0 extends Union {
  @Uint32()
  external int uTimeout;

  @Uint32()
  external int uVersion;
}

extension NOTIFYICONDATA_0_Extension on NOTIFYICONDATA {
  int get uTimeout => this.Anonymous.uTimeout;
  set uTimeout(int value) => this.Anonymous.uTimeout = value;

  int get uVersion => this.Anonymous.uVersion;
  set uVersion(int value) => this.Anonymous.uVersion = value;
}

/// {@category struct}
typedef NTSTATUS = Int32;

/// Contains the information that the GetOpenCardName function uses to
/// initialize a smart card Select Card dialog box.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencardnamew>.
///
/// {@category struct}
base class OPENCARDNAME extends Struct {
  /// Specifies the length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// The window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// The context used for communication with the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a> <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/r-gly">resource
  /// manager</a>.
  @IntPtr()
  external int hSCardContext;

  /// A pointer to a buffer that contains null-terminated group name strings.
  external Pointer<Utf16> lpstrGroupNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxGroupNames;

  /// A pointer to a buffer that contains null-terminated card name strings.
  external Pointer<Utf16> lpstrCardNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrCardNames</b> string.
  @Uint32()
  external int nMaxCardNames;

  /// Reserved for future use.
  external Pointer<GUID> rgguidInterfaces;

  /// Reserved for futures use.
  @Uint32()
  external int cguidInterfaces;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  external Pointer<Utf16> lpstrRdr;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  /// If the card is located, the <b>lpstrCard</b> buffer contains the name of
  /// the located card.
  external Pointer<Utf16> lpstrCard;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrCard</b>.
  @Uint32()
  external int nMaxCard;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  external Pointer<Utf16> lpstrTitle;

  /// A set of bit flags you can use to initialize the dialog box.
  @Uint32()
  external int dwFlags;

  /// A void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;

  /// Returns the actual protocol in use when the dialog box makes a connection
  /// to a card.
  @Uint32()
  external int dwActiveProtocol;

  /// A pointer to the card connect routine of the caller.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A pointer to the card verify routine of the caller.
  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  /// A pointer to the card disconnect routine of the caller.
  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  /// A handle of the connected card (either through an internal dialog box
  /// connect or an <b>lpfnConnect</b> callback).
  @IntPtr()
  external int hCardHandle;
}

/// Contains the information that the SCardUIDlgSelectCard function uses to
/// initialize a smart card Select Card dialog box.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencardname_exw>.
///
/// {@category struct}
base class OPENCARDNAME_EX extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// The context used for communication with the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a> <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/r-gly">resource
  /// manager</a>.
  @IntPtr()
  external int hSCardContext;

  /// The window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// A set of bit flags that you can use to initialize the dialog box.
  @Uint32()
  external int dwFlags;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  external Pointer<Utf16> lpstrTitle;

  /// A pointer to a string to be displayed to the user as a prompt to insert
  /// the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a>.
  external Pointer<Utf16> lpstrSearchDesc;

  /// A handle to an icon (32 x 32 pixels).
  @IntPtr()
  external int hIcon;

  /// A pointer to the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winscard/ns-winscard-opencard_search_criteriaa">OPENCARD_SEARCH_CRITERIA</a>
  /// structure to be used, or <b>NULL</b>, if one is not used.
  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;

  /// A pointer to the caller's card connect routine.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  external Pointer<Utf16> lpstrRdr;

  /// Size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  /// If the card is located, the <i>lpstrCard</i> buffer contains the name of
  /// the located card.
  external Pointer<Utf16> lpstrCard;

  /// Size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <i>lpstrCard</i>.
  @Uint32()
  external int nMaxCard;

  /// The actual protocol in use when the dialog box makes a connection to a
  /// card.
  @Uint32()
  external int dwActiveProtocol;

  /// A handle of the connected card (either through an internal dialog box
  /// connect or an <b>lpfnConnect</b> callback).
  @IntPtr()
  external int hCardHandle;
}

/// Used by the SCardUIDlgSelectCard function in order to recognize cards that
/// meet the requirements set forth by the caller.
///
/// You can, however, call SCardUIDlgSelectCard without using this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencard_search_criteriaw>.
///
/// {@category struct}
base class OPENCARD_SEARCH_CRITERIA extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// A pointer to a buffer containing null-terminated group name strings.
  external Pointer<Utf16> lpstrGroupNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxGroupNames;

  /// Reserved for future use.
  external Pointer<GUID> rgguidInterfaces;

  /// Reserved for future use.
  @Uint32()
  external int cguidInterfaces;

  /// A pointer to a buffer that contains null-terminated card name strings.
  external Pointer<Utf16> lpstrCardNames;

  /// The maximum number of bytes (ANSI version) or characters (Unicode version)
  /// in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxCardNames;

  /// A pointer to the caller's card verify routine.
  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  /// A pointer to the caller's card connect routine.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A pointer to the caller's card disconnect routine.
  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  /// Void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;
}

/// Contains information that the GetOpenFileName and GetSaveFileName functions
/// use to initialize an Open or Save As dialog box.
///
/// After the user closes the dialog box, the system returns information about
/// the user's selection in this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-openfilenamew>.
///
/// {@category struct}
base class OPENFILENAME extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>OFN_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// A buffer containing pairs of null-terminated filter strings.
  external Pointer<Utf16> lpstrFilter;

  /// A static buffer that contains a pair of null-terminated filter strings for
  /// preserving the filter pattern chosen by the user.
  external Pointer<Utf16> lpstrCustomFilter;

  /// The size, in characters, of the buffer identified by
  /// <b>lpstrCustomFilter</b>.
  @Uint32()
  external int nMaxCustFilter;

  /// The index of the currently selected filter in the <b>File Types</b>
  /// control.
  @Uint32()
  external int nFilterIndex;

  /// The file name used to initialize the <b>File Name</b> edit control.
  external Pointer<Utf16> lpstrFile;

  /// The size, in characters, of the buffer pointed to by <b>lpstrFile</b>.
  @Uint32()
  external int nMaxFile;

  /// The file name and extension (without path information) of the selected
  /// file.
  external Pointer<Utf16> lpstrFileTitle;

  /// The size, in characters, of the buffer pointed to by
  /// <b>lpstrFileTitle</b>.
  @Uint32()
  external int nMaxFileTitle;

  /// The initial directory.
  external Pointer<Utf16> lpstrInitialDir;

  /// A string to be placed in the title bar of the dialog box.
  external Pointer<Utf16> lpstrTitle;

  /// A set of bit flags you can use to initialize the dialog box.
  @Uint32()
  external int Flags;

  /// The zero-based offset, in characters, from the beginning of the path to
  /// the file name in the string pointed to by <b>lpstrFile</b>.
  @Uint16()
  external int nFileOffset;

  /// The zero-based offset, in characters, from the beginning of the path to
  /// the file name extension in the string pointed to by <b>lpstrFile</b>.
  @Uint16()
  external int nFileExtension;

  /// The default extension.
  external Pointer<Utf16> lpstrDefExt;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a hook procedure.
  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;

  /// The name of the dialog template resource in the module identified by the
  /// <b>hInstance</b> member.
  external Pointer<Utf16> lpTemplateName;

  /// This member is reserved.
  // ignore: unused_field
  external Pointer _pvReserved;

  /// This member is reserved.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved;

  /// A set of bit flags you can use to initialize the dialog box.
  @Uint32()
  external int FlagsEx;
}

/// {@category struct}
base class OSINFO extends Struct {
  @Uint32()
  external int dwOSPlatformId;

  @Uint32()
  external int dwOSMajorVersion;

  @Uint32()
  external int dwOSMinorVersion;
}

/// Contains operating system version information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-osversioninfow>.
///
/// {@category struct}
base class OSVERSIONINFO extends Struct {
  /// The size of this data structure, in bytes.
  @Uint32()
  external int dwOSVersionInfoSize;

  /// The major version number of the operating system.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version number of the operating system.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the operating system.
  @Uint32()
  external int dwBuildNumber;

  /// The operating system platform.
  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  /// A string, such as "Service Pack 3", that indicates the latest Service Pack
  /// installed on the system.
  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_szCSDVersion[i] == 0x00) break;
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains operating system version information.
///
/// The information includes major and minor version numbers, a build number, a
/// platform identifier, and information about product suites and the latest
/// Service Pack installed on the system.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-osversioninfoexw>.
///
/// {@category struct}
base class OSVERSIONINFOEX extends Struct {
  /// The size of this data structure, in bytes.
  @Uint32()
  external int dwOSVersionInfoSize;

  /// The major version number of the operating system.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version number of the operating system.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the operating system.
  @Uint32()
  external int dwBuildNumber;

  /// The operating system platform.
  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  /// A string, such as "Service Pack 3", that indicates the latest Service Pack
  /// installed on the system.
  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_szCSDVersion[i] == 0x00) break;
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// The major version number of the latest Service Pack installed on the
  /// system.
  @Uint16()
  external int wServicePackMajor;

  /// The minor version number of the latest Service Pack installed on the
  /// system.
  @Uint16()
  external int wServicePackMinor;

  /// A bit mask that identifies the product suites available on the system.
  @Uint16()
  external int wSuiteMask;

  @Uint8()
  external int wProductType;

  /// Reserved for future use.
  @Uint8()
  // ignore: unused_field
  external int _wReserved;
}

/// Contains information used in asynchronous (or overlapped) input and output
/// (I/O).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-overlapped>.
///
/// {@category struct}
base class OVERLAPPED extends Struct {
  /// The status code for the I/O request.
  @IntPtr()
  external int Internal;

  /// The number of bytes transferred for the I/O request.
  @IntPtr()
  external int InternalHigh;

  external OVERLAPPED_0 Anonymous;

  /// A handle to the event that will be set to a signaled state by the system
  /// when the operation has completed.
  @IntPtr()
  external int hEvent;
}

/// {@category union}
sealed class OVERLAPPED_0 extends Union {
  external OVERLAPPED_0_0 Anonymous;

  external Pointer Pointer_;
}

extension OVERLAPPED_0_Extension on OVERLAPPED {
  OVERLAPPED_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(OVERLAPPED_0_0 value) => this.Anonymous.Anonymous = value;

  Pointer get Pointer_ => this.Anonymous.Pointer_;
  set Pointer_(Pointer value) => this.Anonymous.Pointer_ = value;
}

/// {@category struct}
sealed class OVERLAPPED_0_0 extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int OffsetHigh;
}

extension OVERLAPPED_0_0_Extension on OVERLAPPED {
  int get Offset => this.Anonymous.Anonymous.Offset;
  set Offset(int value) => this.Anonymous.Anonymous.Offset = value;

  int get OffsetHigh => this.Anonymous.Anonymous.OffsetHigh;
  set OffsetHigh(int value) => this.Anonymous.Anonymous.OffsetHigh = value;
}

/// Contains the information returned by a call to the
/// GetQueuedCompletionStatusEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-overlapped_entry>.
///
/// {@category struct}
base class OVERLAPPED_ENTRY extends Struct {
  /// Receives the completion key value associated with the file handle whose
  /// I/O operation has completed.
  @IntPtr()
  external int lpCompletionKey;

  /// Receives the address of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/minwinbase/ns-minwinbase-overlapped">OVERLAPPED</a>
  /// structure that was specified when the completed I/O operation was started.
  external Pointer<OVERLAPPED> lpOverlapped;

  /// Reserved.
  @IntPtr()
  external int Internal;

  /// Receives the number of bytes transferred during the I/O operation that has
  /// completed.
  @Uint32()
  external int dwNumberOfBytesTransferred;
}

/// Contains information for an application.
///
/// This information can be used to paint the client area of a window owned by
/// that application.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-paintstruct>.
///
/// {@category struct}
base class PAINTSTRUCT extends Struct {
  /// A handle to the display DC to be used for painting.
  @IntPtr()
  external int hdc;

  /// Indicates whether the background must be erased.
  @Int32()
  external int fErase;

  /// A `RECT` structure that specifies the upper left and lower right corners
  /// of the rectangle in which the painting is requested, in device units
  /// relative to the upper-left corner of the client area.
  external RECT rcPaint;

  /// Reserved; used internally by the system.
  @Int32()
  external int fRestore;

  /// Reserved; used internally by the system.
  @Int32()
  external int fIncUpdate;

  /// Reserved; used internally by the system.
  @Array(32)
  // ignore: unused_field
  external Array<Uint8> _rgbReserved;
}

/// Specifies the color and usage of an entry in a logical palette.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-paletteentry>.
///
/// {@category struct}
base class PALETTEENTRY extends Struct {
  /// The red intensity value for the palette entry.
  @Uint8()
  external int peRed;

  /// The green intensity value for the palette entry.
  @Uint8()
  external int peGreen;

  /// The blue intensity value for the palette entry.
  @Uint8()
  external int peBlue;

  /// The alpha intensity value for the palette entry.
  @Uint8()
  external int peFlags;
}

/// Contains information needed for transferring a structure element, parameter,
/// or function return value between processes.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-paramdesc>.
///
/// {@category struct}
base class PARAMDESC extends Struct {
  /// The default value for the parameter, if PARAMFLAG_FHASDEFAULT is specified
  /// in <b>wParamFlags</b>.
  external Pointer<PARAMDESCEX> pparamdescex;

  /// The parameter flags.
  @Uint16()
  external int wParamFlags;
}

/// Contains information about the default value of a parameter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-paramdescex>.
///
/// {@category struct}
base class PARAMDESCEX extends Struct {
  /// The size of the structure.
  @Uint32()
  external int cBytes;

  /// The default value of the parameter.
  external VARIANT varDefaultValue;
}

/// Contains performance information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-performance_information>.
///
/// {@category struct}
base class PERFORMANCE_INFORMATION extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cb;

  /// The number of pages currently committed by the system.
  @IntPtr()
  external int CommitTotal;

  /// The current maximum number of pages that can be committed by the system
  /// without extending the paging file(s).
  @IntPtr()
  external int CommitLimit;

  /// The maximum number of pages that were simultaneously in the committed
  /// state since the last system reboot.
  @IntPtr()
  external int CommitPeak;

  /// The amount of actual physical memory, in pages.
  @IntPtr()
  external int PhysicalTotal;

  /// The amount of physical memory currently available, in pages.
  @IntPtr()
  external int PhysicalAvailable;

  /// The amount of system cache memory, in pages.
  @IntPtr()
  external int SystemCache;

  /// The sum of the memory currently in the paged and nonpaged kernel pools, in
  /// pages.
  @IntPtr()
  external int KernelTotal;

  /// The memory currently in the paged kernel pool, in pages.
  @IntPtr()
  external int KernelPaged;

  /// The memory currently in the nonpaged kernel pool, in pages.
  @IntPtr()
  external int KernelNonpaged;

  /// The size of a page, in bytes.
  @IntPtr()
  external int PageSize;

  /// The current number of open handles.
  @Uint32()
  external int HandleCount;

  /// The current number of processes.
  @Uint32()
  external int ProcessCount;

  /// The current number of threads.
  @Uint32()
  external int ThreadCount;
}

/// Contains a handle and text description corresponding to a physical monitor.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/ns-physicalmonitorenumerationapi-physical_monitor>.
///
/// {@category struct}
@Packed(1)
base class PHYSICAL_MONITOR extends Struct {
  /// Handle to the physical monitor.
  @IntPtr()
  external int hPhysicalMonitor;

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  /// Text description of the physical monitor.
  String get szPhysicalMonitorDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      if (_szPhysicalMonitorDescription[i] == 0x00) break;
      charCodes.add(_szPhysicalMonitorDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPhysicalMonitorDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szPhysicalMonitorDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-point>.
///
/// {@category struct}
base class POINT extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int32()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int32()
  external int y;
}

/// Contains basic pointer information common to all pointer types.
///
/// Applications can retrieve this information using the GetPointerInfo,
/// GetPointerFrameInfo, GetPointerInfoHistory and GetPointerFrameInfoHistory
/// functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_info>.
///
/// {@category struct}
base class POINTER_INFO extends Struct {
  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/win32/api/winuser/ne-winuser-tagpointer_input_type">POINTER_INPUT_TYPE</a>
  /// enumeration that specifies the pointer type.
  @Int32()
  external int pointerType;

  /// An identifier that uniquely identifies a pointer during its lifetime.
  @Uint32()
  external int pointerId;

  /// An identifier common to multiple pointers for which the source device
  /// reported an update in a single input frame.
  @Uint32()
  external int frameId;

  /// May be any reasonable combination of flags from the <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">Pointer
  /// Flags</a> constants.
  @Uint32()
  external int pointerFlags;

  /// Handle to the source device that can be used in calls to the raw input
  /// device API and the digitizer device API.
  @IntPtr()
  external int sourceDevice;

  /// Window to which this message was targeted.
  @IntPtr()
  external int hwndTarget;

  /// The predicted screen coordinates of the pointer, in pixels.
  external POINT ptPixelLocation;

  /// The predicted screen coordinates of the pointer, in HIMETRIC units.
  external POINT ptHimetricLocation;

  /// The screen coordinates of the pointer, in pixels.
  external POINT ptPixelLocationRaw;

  /// The screen coordinates of the pointer, in HIMETRIC units.
  external POINT ptHimetricLocationRaw;

  /// 0 or the time stamp of the message, based on the system tick count when
  /// the message was received.
  @Uint32()
  external int dwTime;

  /// Count of inputs that were coalesced into this message.
  @Uint32()
  external int historyCount;

  @Int32()
  external int InputData;

  @Uint32()
  external int dwKeyStates;

  /// The value of the high-resolution performance counter when the pointer
  /// message was received (high-precision, 64 bit alternative to
  /// <b>dwTime</b>).
  @Uint64()
  external int PerformanceCount;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/ne-winuser-pointer_button_change_type">POINTER_BUTTON_CHANGE_TYPE</a>
  /// enumeration that specifies the change in button state between this input
  /// and the previous input.
  @Int32()
  external int ButtonChangeType;
}

/// Defines basic pen information common to all pointer types.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_pen_info>.
///
/// {@category struct}
base class POINTER_PEN_INFO extends Struct {
  /// An embedded <a
  /// href="https://docs.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_info">POINTER_INFO</a>
  /// structure.
  external POINTER_INFO pointerInfo;

  /// The pen flag.
  @Uint32()
  external int penFlags;

  /// The pen mask.
  @Uint32()
  external int penMask;

  /// A pen pressure normalized to a range between 0 and 1024.
  @Uint32()
  external int pressure;

  /// The clockwise rotation, or twist, of the pointer normalized in a range of
  /// 0 to 359.
  @Uint32()
  external int rotation;

  /// The angle of tilt of the pointer along the x-axis in a range of -90 to
  /// +90, with a positive value indicating a tilt to the right.
  @Int32()
  external int tiltX;

  /// The angle of tilt of the pointer along the y-axis in a range of -90 to
  /// +90, with a positive value indicating a tilt toward the user.
  @Int32()
  external int tiltY;
}

/// Defines basic touch information common to all pointer types.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_touch_info>.
///
/// {@category struct}
base class POINTER_TOUCH_INFO extends Struct {
  /// An embedded `POINTER_INFO` header structure.
  external POINTER_INFO pointerInfo;

  /// Currently none.
  @Uint32()
  external int touchFlags;

  /// Indicates which of the optional fields contain valid values.
  @Uint32()
  external int touchMask;

  /// The predicted screen coordinates of the contact area, in pixels.
  external RECT rcContact;

  /// The raw screen coordinates of the contact area, in pixels.
  external RECT rcContactRaw;

  /// A pointer orientation, with a value between 0 and 359, where 0 indicates a
  /// touch pointer aligned with the x-axis and pointing from left to right;
  /// increasing values indicate degrees of rotation in the clockwise direction.
  @Uint32()
  external int orientation;

  /// A pen pressure normalized to a range between 0 and 1024.
  @Uint32()
  external int pressure;
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-pointl>.
///
/// {@category struct}
base class POINTL extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int32()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int32()
  external int y;
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-points>.
///
/// {@category struct}
base class POINTS extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int16()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int16()
  external int y;
}

/// Describes how the PolyTextOut function should draw a string of text.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-polytextw>.
///
/// {@category struct}
base class POLYTEXT extends Struct {
  /// The horizontal reference point for the string.
  @Int32()
  external int x;

  /// The vertical reference point for the string.
  @Int32()
  external int y;

  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/gdi/specifying-length-of-text-output-string">length
  /// of the string</a> pointed to by <b>lpstr</b>.
  @Uint32()
  external int n;

  /// Pointer to a string of text to be drawn by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-polytextouta">PolyTextOut</a>
  /// function.
  external Pointer<Utf16> lpstr;

  @Uint32()
  external int uiFlags;

  /// A rectangle structure that contains the dimensions of the opaquing or
  /// clipping rectangle.
  external RECT rcl;

  /// Pointer to an array containing the width value for each character in the
  /// string.
  external Pointer<Int32> pdx;
}

/// Identifies a supported printer port.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-1>.
///
/// {@category struct}
base class PORT_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  external Pointer<Utf16> pName;
}

/// Identifies a supported printer port.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-2>.
///
/// {@category struct}
base class PORT_INFO_2 extends Struct {
  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  external Pointer<Utf16> pPortName;

  /// Pointer to a null-terminated string that identifies an installed monitor
  /// (for example, "PJL monitor").
  external Pointer<Utf16> pMonitorName;

  /// Pointer to a null-terminated string that describes the port in more detail
  /// (for example, if **pPortName** is "LPT1:", **pDescription** is "printer
  /// port").
  external Pointer<Utf16> pDescription;

  /// Bitmask describing the type of port.
  @Uint32()
  external int fPortType;

  /// Reserved; must be zero.
  @Uint32()
  // ignore: unused_field
  external int _Reserved;
}

/// Sent with a power setting event and contains data about the specific change.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-powerbroadcast_setting>.
///
/// {@category struct}
base class POWERBROADCAST_SETTING extends Struct {
  /// Indicates the power setting for which this notification is being
  /// delivered.
  external GUID PowerSetting;

  /// The size in bytes of the data in the <i>Data</i> member.
  @Uint32()
  external int DataLength;

  /// The new value of the power setting.
  @Array(1)
  external Array<Uint8> Data;
}

/// Specifies the default data type, environment, initialization data, and
/// access rights for a printer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-defaults>.
///
/// {@category struct}
base class PRINTER_DEFAULTS extends Struct {
  /// Pointer to a null-terminated string that specifies the default data type
  /// for a printer.
  external Pointer<Utf16> pDatatype;

  /// Pointer to a `DEVMODE` structure that identifies the default environment
  /// and initialization data for a printer.
  external Pointer<DEVMODE> pDevMode;

  /// Specifies desired access rights for a printer.
  @Uint32()
  external int DesiredAccess;
}

/// Specifies general printer information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-1>.
///
/// {@category struct}
base class PRINTER_INFO_1 extends Struct {
  /// Specifies information about the returned data.
  @Uint32()
  external int Flags;

  /// Pointer to a null-terminated string that describes the contents of the
  /// structure.
  external Pointer<Utf16> pDescription;

  /// Pointer to a null-terminated string that names the contents of the
  /// structure.
  external Pointer<Utf16> pName;

  /// Pointer to a null-terminated string that contains additional data
  /// describing the structure.
  external Pointer<Utf16> pComment;
}

/// Specifies detailed printer information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-2>.
///
/// {@category struct}
base class PRINTER_INFO_2 extends Struct {
  /// A pointer to a null-terminated string identifying the server that controls
  /// the printer.
  external Pointer<Utf16> pServerName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  external Pointer<Utf16> pPrinterName;

  /// A pointer to a null-terminated string that identifies the share point for
  /// the printer.
  external Pointer<Utf16> pShareName;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  external Pointer<Utf16> pPortName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer driver.
  external Pointer<Utf16> pDriverName;

  /// A pointer to a null-terminated string that provides a brief description of
  /// the printer.
  external Pointer<Utf16> pComment;

  /// A pointer to a null-terminated string that specifies the physical location
  /// of the printer (for example, "Bldg.
  external Pointer<Utf16> pLocation;

  /// A pointer to a `DEVMODE` structure that defines default printer data such
  /// as the paper orientation and the resolution.
  external Pointer<DEVMODE> pDevMode;

  /// A pointer to a null-terminated string that specifies the name of the file
  /// used to create the separator page.
  external Pointer<Utf16> pSepFile;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// processor used by the printer.
  external Pointer<Utf16> pPrintProcessor;

  /// A pointer to a null-terminated string that specifies the data type used to
  /// record the print job.
  external Pointer<Utf16> pDatatype;

  /// A pointer to a null-terminated string that specifies the default
  /// print-processor parameters.
  external Pointer<Utf16> pParameters;

  /// A pointer to a `SECURITY_DESCRIPTOR` structure for the printer.
  external PSECURITY_DESCRIPTOR pSecurityDescriptor;

  /// The printer attributes.
  @Uint32()
  external int Attributes;

  /// A priority value that the spooler uses to route print jobs.
  @Uint32()
  external int Priority;

  /// The default priority value assigned to each print job.
  @Uint32()
  external int DefaultPriority;

  /// The earliest time at which the printer will print a job.
  @Uint32()
  external int StartTime;

  /// The latest time at which the printer will print a job.
  @Uint32()
  external int UntilTime;

  /// The printer status.
  @Uint32()
  external int Status;

  /// The number of print jobs that have been queued for the printer.
  @Uint32()
  external int cJobs;

  /// The average number of pages per minute that have been printed on the
  /// printer.
  @Uint32()
  external int AveragePPM;
}

/// Specifies printer security information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-3>.
///
/// {@category struct}
base class PRINTER_INFO_3 extends Struct {
  /// Pointer to a `SECURITY_DESCRIPTOR` structure that specifies a printer's
  /// security information.
  external PSECURITY_DESCRIPTOR pSecurityDescriptor;
}

/// Specifies general printer information.
///
/// The structure can be used to retrieve minimal printer information on a call
/// to EnumPrinters.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-4>.
///
/// {@category struct}
base class PRINTER_INFO_4 extends Struct {
  /// Pointer to a null-terminated string that specifies the name of the printer
  /// (local or remote).
  external Pointer<Utf16> pPrinterName;

  /// Pointer to a null-terminated string that is the name of the server.
  external Pointer<Utf16> pServerName;

  /// Specifies information about the returned data.
  @Uint32()
  external int Attributes;
}

/// Specifies detailed printer information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-5>.
///
/// {@category struct}
base class PRINTER_INFO_5 extends Struct {
  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  external Pointer<Utf16> pPrinterName;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  external Pointer<Utf16> pPortName;

  /// The printer attributes.
  @Uint32()
  external int Attributes;

  /// This value is not used.
  @Uint32()
  external int DeviceNotSelectedTimeout;

  /// This value is not used.
  @Uint32()
  external int TransmissionRetryTimeout;
}

/// Specifies the status value of a printer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-6>.
///
/// {@category struct}
base class PRINTER_INFO_6 extends Struct {
  /// The printer status.
  @Uint32()
  external int dwStatus;
}

/// Contains printer information returned by the
/// FindNextPrinterChangeNotification function.
///
/// The function returns this information after a wait operation on a printer
/// change notification object has been satisfied.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-notify-info>.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO extends Struct {
  /// The version of this structure.
  @Uint32()
  external int Version;

  /// A bit flag that indicates the state of the notification structure.
  @Uint32()
  external int Flags;

  /// The number of `PRINTER_NOTIFY_INFO_DATA` elements in the **aData** array.
  @Uint32()
  external int Count;

  /// An array of `PRINTER_NOTIFY_INFO_DATA` structures.
  @Array(1)
  external Array<PRINTER_NOTIFY_INFO_DATA> aData;
}

/// Identifies a job or printer information field and provides the current data
/// for that field.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-notify-info-data>.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO_DATA extends Struct {
  /// Indicates the type of information provided.
  @Uint16()
  external int Type;

  /// Indicates the field that changed.
  @Uint16()
  external int Field;

  /// Reserved.
  @Uint32()
  // ignore: unused_field
  external int _Reserved;

  /// Indicates the job identifier if the **Type** member specifies
  /// JOB_NOTIFY_TYPE.
  @Uint32()
  external int Id;

  /// A union of data information based on the **Type** and **Field** members.
  external PRINTER_NOTIFY_INFO_DATA_0 NotifyData;
}

/// {@category union}
sealed class PRINTER_NOTIFY_INFO_DATA_0 extends Union {
  @Array(2)
  external Array<Uint32> adwData;

  external PRINTER_NOTIFY_INFO_DATA_0_0 Data;
}

extension PRINTER_NOTIFY_INFO_DATA_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  Array<Uint32> get adwData => this.NotifyData.adwData;
  set adwData(Array<Uint32> value) => this.NotifyData.adwData = value;

  PRINTER_NOTIFY_INFO_DATA_0_0 get Data => this.NotifyData.Data;
  set Data(PRINTER_NOTIFY_INFO_DATA_0_0 value) => this.NotifyData.Data = value;
}

/// {@category struct}
sealed class PRINTER_NOTIFY_INFO_DATA_0_0 extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;
}

extension PRINTER_NOTIFY_INFO_DATA_0_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  int get cbBuf => this.NotifyData.Data.cbBuf;
  set cbBuf(int value) => this.NotifyData.Data.cbBuf = value;

  Pointer get pBuf => this.NotifyData.Data.pBuf;
  set pBuf(Pointer value) => this.NotifyData.Data.pBuf = value;
}

/// Represents printer options.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-options>.
///
/// {@category struct}
base class PRINTER_OPTIONS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A set of `PRINTER_OPTION_FLAGS` that specifies how the handle to a printer
  /// returned by `OpenPrinter2` will be used by other functions.
  @Uint32()
  external int dwFlags;
}

/// Contains the execution context of the printer driver that calls
/// GetPrintExecutionData.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/printdocs/print-execution-data>.
///
/// {@category struct}
base class PRINT_EXECUTION_DATA extends Struct {
  /// The `PRINT_EXECUTION_CONTEXT` value that represents the current execution
  /// context of the printer driver.
  @Int32()
  external int context;

  /// If the value of **context** is **PRINT_EXECUTION_CONTEXT_WOW64**,
  /// **clientAppPID** identifies the client application on whose behalf the
  /// splwow64.exe process loaded the printer driver.
  @Uint32()
  external int clientAppPID;
}

/// Contains information about a heap element.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-process_heap_entry>.
///
/// {@category struct}
base class PROCESS_HEAP_ENTRY extends Struct {
  /// A pointer to the data portion of the heap element.
  external Pointer lpData;

  /// The size of the data portion of the heap element, in bytes.
  @Uint32()
  external int cbData;

  /// The size of the data used by the system to maintain information about the
  /// heap element, in bytes.
  @Uint8()
  external int cbOverhead;

  /// A handle to the heap region that contains the heap element.
  @Uint8()
  external int iRegionIndex;

  /// The properties of the heap element.
  @Uint16()
  external int wFlags;

  external PROCESS_HEAP_ENTRY_0 Anonymous;
}

/// {@category union}
sealed class PROCESS_HEAP_ENTRY_0 extends Union {
  external PROCESS_HEAP_ENTRY_0_0 Block;

  external PROCESS_HEAP_ENTRY_0_1 Region;
}

extension PROCESS_HEAP_ENTRY_0_Extension on PROCESS_HEAP_ENTRY {
  PROCESS_HEAP_ENTRY_0_0 get Block => this.Anonymous.Block;
  set Block(PROCESS_HEAP_ENTRY_0_0 value) => this.Anonymous.Block = value;

  PROCESS_HEAP_ENTRY_0_1 get Region => this.Anonymous.Region;
  set Region(PROCESS_HEAP_ENTRY_0_1 value) => this.Anonymous.Region = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_0 extends Struct {
  @IntPtr()
  external int hMem;

  @Array(3)
  // ignore: unused_field
  external Array<Uint32> _dwReserved;
}

extension PROCESS_HEAP_ENTRY_0_0_Extension on PROCESS_HEAP_ENTRY {
  int get hMem => this.Anonymous.Block.hMem;
  set hMem(int value) => this.Anonymous.Block.hMem = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_1 extends Struct {
  @Uint32()
  external int dwCommittedSize;

  @Uint32()
  external int dwUnCommittedSize;

  external Pointer lpFirstBlock;

  external Pointer lpLastBlock;
}

extension PROCESS_HEAP_ENTRY_0_1_Extension on PROCESS_HEAP_ENTRY {
  int get dwCommittedSize => this.Anonymous.Region.dwCommittedSize;
  set dwCommittedSize(int value) =>
      this.Anonymous.Region.dwCommittedSize = value;

  int get dwUnCommittedSize => this.Anonymous.Region.dwUnCommittedSize;
  set dwUnCommittedSize(int value) =>
      this.Anonymous.Region.dwUnCommittedSize = value;

  Pointer get lpFirstBlock => this.Anonymous.Region.lpFirstBlock;
  set lpFirstBlock(Pointer value) => this.Anonymous.Region.lpFirstBlock = value;

  Pointer get lpLastBlock => this.Anonymous.Region.lpLastBlock;
  set lpLastBlock(Pointer value) => this.Anonymous.Region.lpLastBlock = value;
}

/// Contains information about a newly created process and its primary thread.
///
/// It is used with the CreateProcess, CreateProcessAsUser,
/// CreateProcessWithLogonW, or CreateProcessWithTokenW function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ns-processthreadsapi-process_information>.
///
/// {@category struct}
base class PROCESS_INFORMATION extends Struct {
  /// A handle to the newly created process.
  @IntPtr()
  external int hProcess;

  /// A handle to the primary thread of the newly created process.
  @IntPtr()
  external int hThread;

  /// A value that can be used to identify a process.
  @Uint32()
  external int dwProcessId;

  /// A value that can be used to identify a thread.
  @Uint32()
  external int dwThreadId;
}

/// Specifies the FMTID/PID identifier that programmatically identifies a
/// property.
///
/// Replaces SHCOLUMNID.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-propertykey>.
///
/// {@category struct}
base class PROPERTYKEY extends Struct {
  /// A unique GUID for the property.
  external GUID fmtid;

  /// A property identifier (PID).
  @Uint32()
  external int pid;
}

/// Used by many of the methods of IPropertyStorage to specify a property either
/// by its property identifier (ID) or the associated string name.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-propspec>.
///
/// {@category struct}
base class PROPSPEC extends Struct {
  @Uint32()
  external int ulKind;

  external PROPSPEC_0 Anonymous;
}

/// {@category union}
sealed class PROPSPEC_0 extends Union {
  @Uint32()
  external int propid;

  external Pointer<Utf16> lpwstr;
}

extension PROPSPEC_0_Extension on PROPSPEC {
  int get propid => this.Anonymous.propid;
  set propid(int value) => this.Anonymous.propid = value;

  Pointer<Utf16> get lpwstr => this.Anonymous.lpwstr;
  set lpwstr(Pointer<Utf16> value) => this.Anonymous.lpwstr = value;
}

/// Used in the ReadMultiple and WriteMultiple methods of IPropertyStorage to
/// define the type tag and the value of a property in a property set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-propvariant>.
///
/// {@category struct}
base class PROPVARIANT extends Struct {
  external PROPVARIANT_0 Anonymous;
}

/// {@category union}
sealed class PROPVARIANT_0 extends Union {
  external PROPVARIANT_0_0 Anonymous;

  external DECIMAL decVal;
}

extension PROPVARIANT_0_Extension on PROPVARIANT {
  PROPVARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0 value) => this.Anonymous.Anonymous = value;

  DECIMAL get decVal => this.Anonymous.decVal;
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;
}

/// {@category struct}
sealed class PROPVARIANT_0_0 extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  // ignore: unused_field
  external int _wReserved1;

  @Uint16()
  // ignore: unused_field
  external int _wReserved2;

  @Uint16()
  // ignore: unused_field
  external int _wReserved3;

  external PROPVARIANT_0_0_0 Anonymous;
}

extension PROPVARIANT_0_0_Extension on PROPVARIANT {
  int get vt => this.Anonymous.Anonymous.vt;
  set vt(int value) => this.Anonymous.Anonymous.vt = value;

  PROPVARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

/// {@category union}
sealed class PROPVARIANT_0_0_0 extends Union {
  @Int8()
  external int cVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Uint16()
  external int uiVal;

  @Int32()
  external int lVal;

  @Uint32()
  external int ulVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  @Int64()
  external int hVal;

  @Uint64()
  external int uhVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int boolVal;

  @Int16()
  // ignore: unused_field
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external FILETIME filetime;

  external Pointer<GUID> puuid;

  external Pointer<CLIPDATA> pclipdata;

  external Pointer<Utf16> bstrVal;

  external BSTRBLOB bstrblobVal;

  external BLOB blob;

  external Pointer<Utf8> pszVal;

  external Pointer<Utf16> pwszVal;

  external VTablePointer punkVal;

  external VTablePointer pdispVal;

  external VTablePointer pStream;

  external VTablePointer pStorage;

  external Pointer<VERSIONEDSTREAM> pVersionedStream;

  external Pointer<SAFEARRAY> parray;

  external CAC cac;

  external CAUB caub;

  external CAI cai;

  external CAUI caui;

  external CAL cal;

  external CAUL caul;

  external CAH cah;

  external CAUH cauh;

  external CAFLT caflt;

  external CADBL cadbl;

  external CABOOL cabool;

  external CASCODE cascode;

  external CACY cacy;

  external CADATE cadate;

  external CAFILETIME cafiletime;

  external CACLSID cauuid;

  external CACLIPDATA caclipdata;

  external CABSTR cabstr;

  external CABSTRBLOB cabstrblob;

  external CALPSTR calpstr;

  external CALPWSTR calpwstr;

  external CAPROPVARIANT capropvar;

  external Pointer<Utf8> pcVal;

  external Pointer<Uint8> pbVal;

  external Pointer<Int16> piVal;

  external Pointer<Uint16> puiVal;

  external Pointer<Int32> plVal;

  external Pointer<Uint32> pulVal;

  external Pointer<Int32> pintVal;

  external Pointer<Uint32> puintVal;

  external Pointer<Float> pfltVal;

  external Pointer<Double> pdblVal;

  external Pointer<VARIANT_BOOL> pboolVal;

  external Pointer<DECIMAL> pdecVal;

  external Pointer<Int32> pscode;

  external Pointer<CY> pcyVal;

  external Pointer<Double> pdate;

  external Pointer<Pointer<Utf16>> pbstrVal;

  external Pointer<VTablePointer> ppunkVal;

  external Pointer<VTablePointer> ppdispVal;

  external Pointer<Pointer<SAFEARRAY>> pparray;

  external Pointer<PROPVARIANT> pvarVal;
}

extension PROPVARIANT_0_0_0_Extension on PROPVARIANT {
  int get cVal => this.Anonymous.Anonymous.Anonymous.cVal;
  set cVal(int value) => this.Anonymous.Anonymous.Anonymous.cVal = value;

  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;

  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;

  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;

  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;

  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;

  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;

  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;

  int get hVal => this.Anonymous.Anonymous.Anonymous.hVal;
  set hVal(int value) => this.Anonymous.Anonymous.Anonymous.hVal = value;

  int get uhVal => this.Anonymous.Anonymous.Anonymous.uhVal;
  set uhVal(int value) => this.Anonymous.Anonymous.Anonymous.uhVal = value;

  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;

  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;

  int get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;
  set boolVal(int value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;

  int get scode => this.Anonymous.Anonymous.Anonymous.scode;
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;

  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;

  double get date => this.Anonymous.Anonymous.Anonymous.date;
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;

  FILETIME get filetime => this.Anonymous.Anonymous.Anonymous.filetime;
  set filetime(FILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.filetime = value;

  Pointer<GUID> get puuid => this.Anonymous.Anonymous.Anonymous.puuid;
  set puuid(Pointer<GUID> value) =>
      this.Anonymous.Anonymous.Anonymous.puuid = value;

  Pointer<CLIPDATA> get pclipdata =>
      this.Anonymous.Anonymous.Anonymous.pclipdata;
  set pclipdata(Pointer<CLIPDATA> value) =>
      this.Anonymous.Anonymous.Anonymous.pclipdata = value;

  Pointer<Utf16> get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.Anonymous.bstrVal = value;

  BSTRBLOB get bstrblobVal => this.Anonymous.Anonymous.Anonymous.bstrblobVal;
  set bstrblobVal(BSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.bstrblobVal = value;

  BLOB get blob => this.Anonymous.Anonymous.Anonymous.blob;
  set blob(BLOB value) => this.Anonymous.Anonymous.Anonymous.blob = value;

  Pointer<Utf8> get pszVal => this.Anonymous.Anonymous.Anonymous.pszVal;
  set pszVal(Pointer<Utf8> value) =>
      this.Anonymous.Anonymous.Anonymous.pszVal = value;

  Pointer<Utf16> get pwszVal => this.Anonymous.Anonymous.Anonymous.pwszVal;
  set pwszVal(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.Anonymous.pwszVal = value;

  VTablePointer get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;
  set punkVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;

  VTablePointer get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;
  set pdispVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;

  VTablePointer get pStream => this.Anonymous.Anonymous.Anonymous.pStream;
  set pStream(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pStream = value;

  VTablePointer get pStorage => this.Anonymous.Anonymous.Anonymous.pStorage;
  set pStorage(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pStorage = value;

  Pointer<VERSIONEDSTREAM> get pVersionedStream =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream;
  set pVersionedStream(Pointer<VERSIONEDSTREAM> value) =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream = value;

  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;

  CAC get cac => this.Anonymous.Anonymous.Anonymous.cac;
  set cac(CAC value) => this.Anonymous.Anonymous.Anonymous.cac = value;

  CAUB get caub => this.Anonymous.Anonymous.Anonymous.caub;
  set caub(CAUB value) => this.Anonymous.Anonymous.Anonymous.caub = value;

  CAI get cai => this.Anonymous.Anonymous.Anonymous.cai;
  set cai(CAI value) => this.Anonymous.Anonymous.Anonymous.cai = value;

  CAUI get caui => this.Anonymous.Anonymous.Anonymous.caui;
  set caui(CAUI value) => this.Anonymous.Anonymous.Anonymous.caui = value;

  CAL get cal => this.Anonymous.Anonymous.Anonymous.cal;
  set cal(CAL value) => this.Anonymous.Anonymous.Anonymous.cal = value;

  CAUL get caul => this.Anonymous.Anonymous.Anonymous.caul;
  set caul(CAUL value) => this.Anonymous.Anonymous.Anonymous.caul = value;

  CAH get cah => this.Anonymous.Anonymous.Anonymous.cah;
  set cah(CAH value) => this.Anonymous.Anonymous.Anonymous.cah = value;

  CAUH get cauh => this.Anonymous.Anonymous.Anonymous.cauh;
  set cauh(CAUH value) => this.Anonymous.Anonymous.Anonymous.cauh = value;

  CAFLT get caflt => this.Anonymous.Anonymous.Anonymous.caflt;
  set caflt(CAFLT value) => this.Anonymous.Anonymous.Anonymous.caflt = value;

  CADBL get cadbl => this.Anonymous.Anonymous.Anonymous.cadbl;
  set cadbl(CADBL value) => this.Anonymous.Anonymous.Anonymous.cadbl = value;

  CABOOL get cabool => this.Anonymous.Anonymous.Anonymous.cabool;
  set cabool(CABOOL value) => this.Anonymous.Anonymous.Anonymous.cabool = value;

  CASCODE get cascode => this.Anonymous.Anonymous.Anonymous.cascode;
  set cascode(CASCODE value) =>
      this.Anonymous.Anonymous.Anonymous.cascode = value;

  CACY get cacy => this.Anonymous.Anonymous.Anonymous.cacy;
  set cacy(CACY value) => this.Anonymous.Anonymous.Anonymous.cacy = value;

  CADATE get cadate => this.Anonymous.Anonymous.Anonymous.cadate;
  set cadate(CADATE value) => this.Anonymous.Anonymous.Anonymous.cadate = value;

  CAFILETIME get cafiletime => this.Anonymous.Anonymous.Anonymous.cafiletime;
  set cafiletime(CAFILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.cafiletime = value;

  CACLSID get cauuid => this.Anonymous.Anonymous.Anonymous.cauuid;
  set cauuid(CACLSID value) =>
      this.Anonymous.Anonymous.Anonymous.cauuid = value;

  CACLIPDATA get caclipdata => this.Anonymous.Anonymous.Anonymous.caclipdata;
  set caclipdata(CACLIPDATA value) =>
      this.Anonymous.Anonymous.Anonymous.caclipdata = value;

  CABSTR get cabstr => this.Anonymous.Anonymous.Anonymous.cabstr;
  set cabstr(CABSTR value) => this.Anonymous.Anonymous.Anonymous.cabstr = value;

  CABSTRBLOB get cabstrblob => this.Anonymous.Anonymous.Anonymous.cabstrblob;
  set cabstrblob(CABSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.cabstrblob = value;

  CALPSTR get calpstr => this.Anonymous.Anonymous.Anonymous.calpstr;
  set calpstr(CALPSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpstr = value;

  CALPWSTR get calpwstr => this.Anonymous.Anonymous.Anonymous.calpwstr;
  set calpwstr(CALPWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpwstr = value;

  CAPROPVARIANT get capropvar => this.Anonymous.Anonymous.Anonymous.capropvar;
  set capropvar(CAPROPVARIANT value) =>
      this.Anonymous.Anonymous.Anonymous.capropvar = value;

  Pointer<Utf8> get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(Pointer<Utf8> value) =>
      this.Anonymous.Anonymous.Anonymous.pcVal = value;

  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;

  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;

  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;

  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;

  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;

  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;

  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;

  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;

  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;

  Pointer<VARIANT_BOOL> get pboolVal =>
      this.Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<VARIANT_BOOL> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;

  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;

  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;

  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;

  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;

  Pointer<Pointer<Utf16>> get pbstrVal =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;

  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;

  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;

  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;

  Pointer<PROPVARIANT> get pvarVal =>
      this.Anonymous.Anonymous.Anonymous.pvarVal;
  set pvarVal(Pointer<PROPVARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;
}

/// Contains the name and protocol numbers that correspond to a given protocol
/// name.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-protoent>.
///
/// {@category struct}
base class PROTOENT extends Struct {
  /// Official name of the protocol.
  external Pointer<Utf8> p_name;

  /// Null-terminated array of alternate names.
  external Pointer<Pointer<Int8>> p_aliases;

  /// Protocol number, in host byte order.
  @Int16()
  external int p_proto;
}

/// {@category struct}
typedef PSECURITY_DESCRIPTOR = Pointer;

/// {@category struct}
typedef PSID = Pointer;

/// Contains configuration information for an installed service.
///
/// It is used by the QueryServiceConfig function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-query_service_configw>.
///
/// {@category struct}
base class QUERY_SERVICE_CONFIG extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwStartType;

  @Uint32()
  external int dwErrorControl;

  /// The fully qualified path to the service binary file.
  external Pointer<Utf16> lpBinaryPathName;

  /// The name of the load ordering group to which this service belongs.
  external Pointer<Utf16> lpLoadOrderGroup;

  /// A unique tag value for this service in the group specified by the
  /// <i>lpLoadOrderGroup</i> parameter.
  @Uint32()
  external int dwTagId;

  /// A pointer to an array of null-separated names of services or load ordering
  /// groups that must start before this service.
  external Pointer<Utf16> lpDependencies;

  /// If the service type is <b>SERVICE_WIN32_OWN_PROCESS</b> or
  /// <b>SERVICE_WIN32_SHARE_PROCESS</b>, this member is the name of the account
  /// that the service process will be logged on as when it runs.
  external Pointer<Utf16> lpServiceStartName;

  /// The display name to be used by service control programs to identify the
  /// service.
  external Pointer<Utf16> lpDisplayName;
}

/// Contains information about the lock status of a service control manager
/// database.
///
/// It is used by the QueryServiceLockStatus function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-query_service_lock_statusw>.
///
/// {@category struct}
base class QUERY_SERVICE_LOCK_STATUS extends Struct {
  /// The lock status of the database.
  @Uint32()
  external int fIsLocked;

  /// The name of the user who acquired the lock.
  external Pointer<Utf16> lpLockOwner;

  /// The time since the lock was first acquired, in seconds.
  @Uint32()
  external int dwLockDuration;
}

/// Describes the format of the raw input from a Human Interface Device (HID).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawhid>.
///
/// {@category struct}
base class RAWHID extends Struct {
  /// The size, in bytes, of each HID input in <b>bRawData</b>.
  @Uint32()
  external int dwSizeHid;

  /// The number of HID inputs in <b>bRawData</b>.
  @Uint32()
  external int dwCount;

  /// The raw input data, as an array of bytes.
  @Array(1)
  external Array<Uint8> bRawData;
}

/// Contains the raw input from a device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinput>.
///
/// {@category struct}
base class RAWINPUT extends Struct {
  /// The raw input data.
  external RAWINPUTHEADER header;

  external RAWINPUT_0 data;
}

/// {@category union}
sealed class RAWINPUT_0 extends Union {
  external RAWMOUSE mouse;

  external RAWKEYBOARD keyboard;

  external RAWHID hid;
}

extension RAWINPUT_0_Extension on RAWINPUT {
  RAWMOUSE get mouse => this.data.mouse;
  set mouse(RAWMOUSE value) => this.data.mouse = value;

  RAWKEYBOARD get keyboard => this.data.keyboard;
  set keyboard(RAWKEYBOARD value) => this.data.keyboard = value;

  RAWHID get hid => this.data.hid;
  set hid(RAWHID value) => this.data.hid = value;
}

/// Defines information for the raw input devices.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputdevice>.
///
/// {@category struct}
base class RAWINPUTDEVICE extends Struct {
  /// `Top level collection` `Usage page` for the raw input device.
  @Uint16()
  external int usUsagePage;

  /// `Top level collection` `Usage ID` for the raw input device.
  @Uint16()
  external int usUsage;

  @Uint32()
  external int dwFlags;

  /// A handle to the target window.
  @IntPtr()
  external int hwndTarget;
}

/// Contains information about a raw input device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputdevicelist>.
///
/// {@category struct}
base class RAWINPUTDEVICELIST extends Struct {
  /// A handle to the raw input device.
  @IntPtr()
  external int hDevice;

  @Uint32()
  external int dwType;
}

/// Contains the header information that is part of the raw input data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputheader>.
///
/// {@category struct}
base class RAWINPUTHEADER extends Struct {
  @Uint32()
  external int dwType;

  /// The size, in bytes, of the entire input packet of data.
  @Uint32()
  external int dwSize;

  /// A handle to the device generating the raw input data.
  @IntPtr()
  external int hDevice;

  /// The value passed in the <i>wParam</i> parameter of the `WM_INPUT` message.
  @IntPtr()
  external int wParam;
}

/// Contains information about the state of the keyboard.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawkeyboard>.
///
/// {@category struct}
base class RAWKEYBOARD extends Struct {
  /// Specifies the scan code associated with a key press.
  @Uint16()
  external int MakeCode;

  /// Flags for scan code information.
  @Uint16()
  external int Flags;

  /// Reserved; must be zero.
  @Uint16()
  // ignore: unused_field
  external int _Reserved;

  /// The corresponding `legacy virtual-key code`.
  @Uint16()
  external int VKey;

  /// The corresponding `legacy keyboard window message`, for example
  /// `WM_KEYDOWN`, `WM_SYSKEYDOWN`, and so forth.
  @Uint32()
  external int Message;

  /// The device-specific additional information for the event.
  @Uint32()
  external int ExtraInformation;
}

/// Contains information about the state of the mouse.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawmouse>.
///
/// {@category struct}
base class RAWMOUSE extends Struct {
  /// The mouse state.
  @Uint16()
  external int usFlags;

  external RAWMOUSE_0 Anonymous;

  /// The raw state of the mouse buttons.
  @Uint32()
  external int ulRawButtons;

  /// The motion in the X direction.
  @Int32()
  external int lLastX;

  /// The motion in the Y direction.
  @Int32()
  external int lLastY;

  /// The device-specific additional information for the event.
  @Uint32()
  external int ulExtraInformation;
}

/// {@category union}
sealed class RAWMOUSE_0 extends Union {
  @Uint32()
  external int ulButtons;

  external RAWMOUSE_0_0 Anonymous;
}

extension RAWMOUSE_0_Extension on RAWMOUSE {
  int get ulButtons => this.Anonymous.ulButtons;
  set ulButtons(int value) => this.Anonymous.ulButtons = value;

  RAWMOUSE_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(RAWMOUSE_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class RAWMOUSE_0_0 extends Struct {
  @Uint16()
  external int usButtonFlags;

  @Uint16()
  external int usButtonData;
}

extension RAWMOUSE_0_0_Extension on RAWMOUSE {
  int get usButtonFlags => this.Anonymous.Anonymous.usButtonFlags;
  set usButtonFlags(int value) =>
      this.Anonymous.Anonymous.usButtonFlags = value;

  int get usButtonData => this.Anonymous.Anonymous.usButtonData;
  set usButtonData(int value) => this.Anonymous.Anonymous.usButtonData = value;
}

/// Defines a rectangle by the coordinates of its upper-left and lower-right
/// corners.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-rect>.
///
/// {@category struct}
base class RECT extends Struct {
  /// Specifies the <i>x</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int left;

  /// Specifies the <i>y</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int top;

  /// Specifies the <i>x</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int right;

  /// Specifies the <i>y</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int bottom;
}

/// Defines a rectangle by the coordinates of its upper-left and lower-right
/// corners.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-rectl>.
///
/// {@category struct}
base class RECTL extends Struct {
  /// Specifies the <i>x</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int left;

  /// Specifies the <i>y</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int top;

  /// Specifies the <i>x</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int right;

  /// Specifies the <i>y</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int bottom;
}

/// Describes a color consisting of relative intensities of red, green, and
/// blue.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-rgbquad>.
///
/// {@category struct}
base class RGBQUAD extends Struct {
  /// The intensity of blue in the color.
  @Uint8()
  external int rgbBlue;

  /// The intensity of green in the color.
  @Uint8()
  external int rgbGreen;

  /// The intensity of red in the color.
  @Uint8()
  external int rgbRed;

  /// This member is reserved and must be zero.
  @Uint8()
  // ignore: unused_field
  external int _rgbReserved;
}

/// Represents a safe array.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-safearray>.
///
/// {@category struct}
base class SAFEARRAY extends Struct {
  /// The number of dimensions.
  @Uint16()
  external int cDims;

  /// Flags.
  @Uint16()
  external int fFeatures;

  /// The size of an array element.
  @Uint32()
  external int cbElements;

  /// The number of times the array has been locked without a corresponding
  /// unlock.
  @Uint32()
  external int cLocks;

  /// The data.
  external Pointer pvData;

  /// One bound for each dimension.
  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

/// Represents the bounds of one dimension of the array.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-safearraybound>.
///
/// {@category struct}
base class SAFEARRAYBOUND extends Struct {
  /// The number of elements in the dimension.
  @Uint32()
  external int cElements;

  /// The lower bound of the dimension.
  @Int32()
  external int lLbound;
}

/// Used by the SCardLocateCardsByATR function to locate cards.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-scard_atrmask>.
///
/// {@category struct}
base class SCARD_ATRMASK extends Struct {
  /// The number of bytes in the ATR and the mask.
  @Uint32()
  external int cbAtr;

  /// An array of <b>BYTE</b> values for the ATR of the card with extra
  /// alignment bytes.
  @Array(36)
  external Array<Uint8> rgbAtr;

  /// An array of <b>BYTE</b> values for the mask for the ATR with extra
  /// alignment bytes.
  @Array(36)
  external Array<Uint8> rgbMask;
}

/// Begins a protocol control information structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/SecAuthN/scard-io-request>.
///
/// {@category struct}
base class SCARD_IO_REQUEST extends Struct {
  /// Protocol in use.
  @Uint32()
  external int dwProtocol;

  /// Length, in bytes, of the **SCARD_IO_REQUEST** structure plus any following
  /// PCI-specific information.
  @Uint32()
  external int cbPciLength;
}

/// Used by functions for tracking smart cards within readers.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-scard_readerstatew>.
///
/// {@category struct}
base class SCARD_READERSTATE extends Struct {
  /// A pointer to the name of the reader being monitored.
  external Pointer<Utf16> szReader;

  external Pointer pvUserData;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwEventState;

  /// Number of bytes in the returned ATR.
  @Uint32()
  external int cbAtr;

  /// ATR of the inserted card, with extra alignment bytes.
  @Array(36)
  external Array<Uint8> rgbAtr;
}

/// Contains scroll bar information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-scrollbarinfo>.
///
/// {@category struct}
base class SCROLLBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Coordinates of the scroll bar as specified in a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/windef/ns-windef-rect">RECT</a>
  /// structure.
  external RECT rcScrollBar;

  /// Height or width of the thumb.
  @Int32()
  external int dxyLineButton;

  /// Position of the top or left of the thumb.
  @Int32()
  external int xyThumbTop;

  /// Position of the bottom or right of the thumb.
  @Int32()
  external int xyThumbBottom;

  /// Reserved.
  @Int32()
  external int reserved;

  /// An array of <b>DWORD</b> elements.
  @Array(6)
  external Array<Uint32> rgstate;
}

/// Contains scroll bar parameters to be set by the SetScrollInfo function (or
/// SBM_SETSCROLLINFO message), or retrieved by the GetScrollInfo function (or
/// SBM_GETSCROLLINFO message).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-scrollinfo>.
///
/// {@category struct}
base class SCROLLINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  /// Specifies the minimum scrolling position.
  @Int32()
  external int nMin;

  /// Specifies the maximum scrolling position.
  @Int32()
  external int nMax;

  /// Specifies the page size, in device units.
  @Uint32()
  external int nPage;

  /// Specifies the position of the scroll box.
  @Int32()
  external int nPos;

  /// Specifies the immediate position of a scroll box that the user is
  /// dragging.
  @Int32()
  external int nTrackPos;
}

/// Represents an action that the service control manager can perform.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-sc_action>.
///
/// {@category struct}
base class SC_ACTION extends Struct {
  @Int32()
  external int Type;

  /// The time to wait before performing the specified action, in milliseconds.
  @Uint32()
  external int Delay;
}

/// {@category struct}
typedef SC_HANDLE = IntPtr;

/// Stores SDP element data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-sdp_element_data>.
///
/// {@category struct}
base class SDP_ELEMENT_DATA extends Struct {
  /// Enumeration of SDP element types.
  @Int32()
  external int type;

  /// Specific type of SDP element, used to further specify generic element
  /// types.
  @Int32()
  external int specificType;

  external SDP_ELEMENT_DATA_0 data;
}

/// {@category union}
sealed class SDP_ELEMENT_DATA_0 extends Union {
  external SDP_LARGE_INTEGER_16 int128;

  @Int64()
  external int int64;

  @Int32()
  external int int32;

  @Int16()
  external int int16;

  @Int8()
  external int int8;

  external SDP_ULARGE_INTEGER_16 uint128;

  @Uint64()
  external int uint64;

  @Uint32()
  external int uint32;

  @Uint16()
  external int uint16;

  @Uint8()
  external int uint8;

  @Uint8()
  external int booleanVal;

  external GUID uuid128;

  @Uint32()
  external int uuid32;

  @Uint16()
  external int uuid16;

  external SDP_ELEMENT_DATA_0_0 string;

  external SDP_ELEMENT_DATA_0_1 url;

  external SDP_ELEMENT_DATA_0_2 sequence;

  external SDP_ELEMENT_DATA_0_3 alternative;
}

extension SDP_ELEMENT_DATA_0_Extension on SDP_ELEMENT_DATA {
  SDP_LARGE_INTEGER_16 get int128 => this.data.int128;
  set int128(SDP_LARGE_INTEGER_16 value) => this.data.int128 = value;

  int get int64 => this.data.int64;
  set int64(int value) => this.data.int64 = value;

  int get int32 => this.data.int32;
  set int32(int value) => this.data.int32 = value;

  int get int16 => this.data.int16;
  set int16(int value) => this.data.int16 = value;

  int get int8 => this.data.int8;
  set int8(int value) => this.data.int8 = value;

  SDP_ULARGE_INTEGER_16 get uint128 => this.data.uint128;
  set uint128(SDP_ULARGE_INTEGER_16 value) => this.data.uint128 = value;

  int get uint64 => this.data.uint64;
  set uint64(int value) => this.data.uint64 = value;

  int get uint32 => this.data.uint32;
  set uint32(int value) => this.data.uint32 = value;

  int get uint16 => this.data.uint16;
  set uint16(int value) => this.data.uint16 = value;

  int get uint8 => this.data.uint8;
  set uint8(int value) => this.data.uint8 = value;

  int get booleanVal => this.data.booleanVal;
  set booleanVal(int value) => this.data.booleanVal = value;

  GUID get uuid128 => this.data.uuid128;
  set uuid128(GUID value) => this.data.uuid128 = value;

  int get uuid32 => this.data.uuid32;
  set uuid32(int value) => this.data.uuid32 = value;

  int get uuid16 => this.data.uuid16;
  set uuid16(int value) => this.data.uuid16 = value;

  SDP_ELEMENT_DATA_0_0 get string => this.data.string;
  set string(SDP_ELEMENT_DATA_0_0 value) => this.data.string = value;

  SDP_ELEMENT_DATA_0_1 get url => this.data.url;
  set url(SDP_ELEMENT_DATA_0_1 value) => this.data.url = value;

  SDP_ELEMENT_DATA_0_2 get sequence => this.data.sequence;
  set sequence(SDP_ELEMENT_DATA_0_2 value) => this.data.sequence = value;

  SDP_ELEMENT_DATA_0_3 get alternative => this.data.alternative;
  set alternative(SDP_ELEMENT_DATA_0_3 value) => this.data.alternative = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_0 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_0_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.string.value;
  set value(Pointer<Uint8> value) => this.data.string.value = value;

  int get length => this.data.string.length;
  set length(int value) => this.data.string.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_1 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_1_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.url.value;
  set value(Pointer<Uint8> value) => this.data.url.value = value;

  int get length => this.data.url.length;
  set length(int value) => this.data.url.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_2 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_2_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.sequence.value;
  set value(Pointer<Uint8> value) => this.data.sequence.value = value;

  int get length => this.data.sequence.length;
  set length(int value) => this.data.sequence.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_3 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_3_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.alternative.value;
  set value(Pointer<Uint8> value) => this.data.alternative.value = value;

  int get length => this.data.alternative.length;
  set length(int value) => this.data.alternative.length = value;
}

/// {@category struct}
base class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

/// Stores information about SDP string types.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-sdp_string_type_data>.
///
/// {@category struct}
base class SDP_STRING_TYPE_DATA extends Struct {
  /// Specifies how the string is encoded according to ISO 639:1988 (E/F): Code
  /// for the representation of the names of languages.
  @Uint16()
  external int encoding;

  /// MIBE number from the IANA database.
  @Uint16()
  external int mibeNum;

  /// Identifier of the base attribute in which the string is to be found in the
  /// record.
  @Uint16()
  external int attributeId;
}

/// {@category struct}
base class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Uint64()
  external int HighPart;
}

/// Contains the security descriptor for an object and specifies whether the
/// handle retrieved by specifying this structure is inheritable.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wtypesbase/ns-wtypesbase-security_attributes>.
///
/// {@category struct}
base class SECURITY_ATTRIBUTES extends Struct {
  /// The size, in bytes, of this structure.
  @Uint32()
  external int nLength;

  /// A pointer to a `SECURITY_DESCRIPTOR` structure that controls access to the
  /// object.
  external Pointer lpSecurityDescriptor;

  /// A Boolean value that specifies whether the returned handle is inherited
  /// when a new process is created.
  @Int32()
  external int bInheritHandle;
}

/// Contains the security information associated with an object.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-security_descriptor>.
///
/// {@category struct}
base class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int Control;

  external PSID Owner;

  external PSID Group;

  external Pointer<ACL> Sacl;

  external Pointer<ACL> Dacl;
}

/// Used to store or return the name and service number for a given service
/// name.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-servent>.
///
/// {@category struct}
base class SERVENT extends Struct {
  /// The official name of the service.
  external Pointer<Utf8> s_name;

  /// A <b>NULL</b>-terminated array of alternate names.
  external Pointer<Pointer<Int8>> s_aliases;

  /// The name of the protocol to use when contacting the service.
  external Pointer<Utf8> s_proto;

  /// The port number at which the service can be contacted.
  @Int16()
  external int s_port;
}

/// Contains service control parameters.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_control_status_reason_paramsw>.
///
/// {@category struct}
base class SERVICE_CONTROL_STATUS_REASON_PARAMS extends Struct {
  /// The reason for changing the service status to SERVICE_CONTROL_STOP.
  @Uint32()
  external int dwReason;

  /// An optional string that provides additional information about the service
  /// stop.
  external Pointer<Utf16> pszComment;

  /// A pointer to a `SERVICE_STATUS_PROCESS` structure that receives the latest
  /// service status information.
  external SERVICE_STATUS_PROCESS ServiceStatus;
}

/// Contains the delayed auto-start setting of an auto-start service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_delayed_auto_start_info>.
///
/// {@category struct}
base class SERVICE_DELAYED_AUTO_START_INFO extends Struct {
  /// If this member is [TRUE], the service is started after other auto-start
  /// services are started plus a short delay.
  @Int32()
  external int fDelayedAutostart;
}

/// Contains a service description.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_descriptionw>.
///
/// {@category struct}
base class SERVICE_DESCRIPTION extends Struct {
  /// The description of the service.
  external Pointer<Utf16> lpDescription;
}

/// Represents the action the service controller should take on each failure of
/// a service.
///
/// A service is considered failed when it terminates without reporting a status
/// of SERVICE_STOPPED to the service controller.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_failure_actionsw>.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS extends Struct {
  /// The time after which to reset the failure count to zero if there are no
  /// failures, in seconds.
  @Uint32()
  external int dwResetPeriod;

  /// The message to be broadcast to server users before rebooting in response
  /// to the <b>SC_ACTION_REBOOT</b> service controller action.
  external Pointer<Utf16> lpRebootMsg;

  /// The command line of the process for the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/processthreadsapi/nf-processthreadsapi-createprocessa">CreateProcess</a>
  /// function to execute in response to the <b>SC_ACTION_RUN_COMMAND</b>
  /// service controller action.
  external Pointer<Utf16> lpCommand;

  /// The number of elements in the <b>lpsaActions</b> array.
  @Uint32()
  external int cActions;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-sc_action">SC_ACTION</a>
  /// structures.
  external Pointer<SC_ACTION> lpsaActions;
}

/// Contains the failure actions flag setting of a service.
///
/// This setting determines when failure actions are to be executed.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_failure_actions_flag>.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS_FLAG extends Struct {
  /// If this member is [TRUE] and the service has configured failure actions,
  /// the failure actions are queued if the service process terminates without
  /// reporting a status of SERVICE_STOPPED or if it enters the SERVICE_STOPPED
  /// state but the <b>dwWin32ExitCode</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_status">SERVICE_STATUS</a>
  /// structure is not ERROR_SUCCESS (0).
  @Int32()
  external int fFailureActionsOnNonCrashFailures;
}

/// Indicates a service protection type.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_launch_protected_info>.
///
/// {@category struct}
base class SERVICE_LAUNCH_PROTECTED_INFO extends Struct {
  @Uint32()
  external int dwLaunchProtected;
}

/// Represents service status notification information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_notify_2w>.
///
/// {@category struct}
base class SERVICE_NOTIFY_2 extends Struct {
  /// The structure version.
  @Uint32()
  external int dwVersion;

  /// A pointer to the callback function.
  external Pointer<NativeFunction<PFN_SC_NOTIFY_CALLBACK>> pfnNotifyCallback;

  /// Any user-defined data to be passed to the callback function.
  external Pointer pContext;

  /// A value that indicates the notification status.
  @Uint32()
  external int dwNotificationStatus;

  /// A `SERVICE_STATUS_PROCESS` structure that contains the service status
  /// information.
  external SERVICE_STATUS_PROCESS ServiceStatus;

  /// If <b>dwNotificationStatus</b> is <b>ERROR_SUCCESS</b>, this member
  /// contains a bitmask of the notifications that triggered this call to the
  /// callback function.
  @Uint32()
  external int dwNotificationTriggered;

  /// If <b>dwNotificationStatus</b> is <b>ERROR_SUCCESS</b> and the
  /// notification is <b>SERVICE_NOTIFY_CREATED</b> or
  /// <b>SERVICE_NOTIFY_DELETED</b>, this member is valid and it is a
  /// <b>MULTI_SZ</b> string that contains one or more service names.
  external Pointer<Utf16> pszServiceNames;
}

/// Represents the preferred node on which to run a service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_preferred_node_info>.
///
/// {@category struct}
base class SERVICE_PREFERRED_NODE_INFO extends Struct {
  /// The node number of the preferred node.
  @Uint16()
  external int usPreferredNode;

  /// If this member is TRUE, the preferred node setting is deleted.
  @Uint8()
  external int fDelete;
}

/// Contains preshutdown settings.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_preshutdown_info>.
///
/// {@category struct}
base class SERVICE_PRESHUTDOWN_INFO extends Struct {
  /// The time-out value, in milliseconds.
  @Uint32()
  external int dwPreshutdownTimeout;
}

/// Represents the required privileges for a service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_required_privileges_infow>.
///
/// {@category struct}
base class SERVICE_REQUIRED_PRIVILEGES_INFO extends Struct {
  /// A multi-string that specifies the privileges.
  external Pointer<Utf16> pmszRequiredPrivileges;
}

/// Represents a service security identifier (SID).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_sid_info>.
///
/// {@category struct}
base class SERVICE_SID_INFO extends Struct {
  /// The service SID type.
  @Uint32()
  external int dwServiceSidType;
}

/// Contains status information for a service.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_status>.
///
/// {@category struct}
base class SERVICE_STATUS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  /// The control codes the service accepts and processes in its handler
  /// function (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function">Handler</a>
  /// and <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function_ex">HandlerEx</a>).
  @Uint32()
  external int dwControlsAccepted;

  /// The error code the service uses to report an error that occurs when it is
  /// starting or stopping.
  @Uint32()
  external int dwWin32ExitCode;

  /// A service-specific error code that the service returns when an error
  /// occurs while the service is starting or stopping.
  @Uint32()
  external int dwServiceSpecificExitCode;

  /// The check-point value the service increments periodically to report its
  /// progress during a lengthy start, stop, pause, or continue operation.
  @Uint32()
  external int dwCheckPoint;

  /// The estimated time required for a pending start, stop, pause, or continue
  /// operation, in milliseconds.
  @Uint32()
  external int dwWaitHint;
}

/// {@category struct}
typedef SERVICE_STATUS_HANDLE = IntPtr;

/// Contains process status information for a service.
///
/// The ControlServiceEx, EnumServicesStatusEx, NotifyServiceStatusChange, and
/// QueryServiceStatusEx functions use this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_status_process>.
///
/// {@category struct}
base class SERVICE_STATUS_PROCESS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  /// The control codes the service accepts and processes in its handler
  /// function (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function">Handler</a>
  /// and <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function_ex">HandlerEx</a>).
  @Uint32()
  external int dwControlsAccepted;

  /// The error code that the service uses to report an error that occurs when
  /// it is starting or stopping.
  @Uint32()
  external int dwWin32ExitCode;

  /// The service-specific error code that the service returns when an error
  /// occurs while the service is starting or stopping.
  @Uint32()
  external int dwServiceSpecificExitCode;

  /// The check-point value that the service increments periodically to report
  /// its progress during a lengthy start, stop, pause, or continue operation.
  @Uint32()
  external int dwCheckPoint;

  /// The estimated time required for a pending start, stop, pause, or continue
  /// operation, in milliseconds.
  @Uint32()
  external int dwWaitHint;

  /// The process identifier of the service.
  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwServiceFlags;
}

/// Specifies the ServiceMain function for a service that can run in the calling
/// process.
///
/// It is used by the StartServiceCtrlDispatcher function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_table_entryw>.
///
/// {@category struct}
base class SERVICE_TABLE_ENTRY extends Struct {
  /// The name of a service to be run in this service process.
  external Pointer<Utf16> lpServiceName;

  /// A pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lpservice_main_functiona">ServiceMain</a>
  /// function.
  external Pointer<NativeFunction<LPSERVICE_MAIN_FUNCTION>> lpServiceProc;
}

/// Contains system time change settings.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_timechange_info>.
///
/// {@category struct}
base class SERVICE_TIMECHANGE_INFO extends Struct {
  /// The new system time.
  @Int64()
  external int liNewTime;

  /// The previous system time.
  @Int64()
  external int liOldTime;
}

/// Represents a service trigger event.
///
/// This structure is used by the SERVICE_TRIGGER_INFO structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger>.
///
/// {@category struct}
base class SERVICE_TRIGGER extends Struct {
  @Uint32()
  external int dwTriggerType;

  @Uint32()
  external int dwAction;

  /// Points to a GUID that identifies the trigger event subtype.
  external Pointer<GUID> pTriggerSubtype;

  /// The number of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger_specific_data_item">SERVICE_TRIGGER_SPECIFIC_DATA_ITEM</a>
  /// structures in the array pointed to by <i>pDataItems</i>.
  @Uint32()
  external int cDataItems;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger_specific_data_item">SERVICE_TRIGGER_SPECIFIC_DATA_ITEM</a>
  /// structures that contain trigger-specific data.
  external Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> pDataItems;
}

/// Contains trigger event information for a service.
///
/// This structure is used by the ChangeServiceConfig2 and QueryServiceConfig2
/// functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger_info>.
///
/// {@category struct}
base class SERVICE_TRIGGER_INFO extends Struct {
  /// The number of triggers in the array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger">SERVICE_TRIGGER</a>
  /// structures pointed to by the <b>pTriggers</b> member.
  @Uint32()
  external int cTriggers;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger">SERVICE_TRIGGER</a>
  /// structures that specify the trigger events for the service.
  external Pointer<SERVICE_TRIGGER> pTriggers;

  /// This member is reserved and must be NULL.
  // ignore: unused_field
  external Pointer<Uint8> _pReserved;
}

/// Contains trigger-specific data for a service trigger event.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger_specific_data_item>.
///
/// {@category struct}
base class SERVICE_TRIGGER_SPECIFIC_DATA_ITEM extends Struct {
  @Uint32()
  external int dwDataType;

  /// The size of the trigger-specific data pointed to <b>pData</b>, in bytes.
  @Uint32()
  external int cbData;

  /// A pointer to the trigger-specific data for the service trigger event.
  external Pointer<Uint8> pData;
}

/// Contains information used by ShellExecuteEx.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shellexecuteinfow>.
///
/// {@category struct}
base class SHELLEXECUTEINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  /// Optional.
  @IntPtr()
  external int hwnd;

  /// A string, referred to as a <i>verb</i>, that specifies the action to be
  /// performed.
  external Pointer<Utf16> lpVerb;

  /// The address of a null-terminated string that specifies the name of the
  /// file or object on which <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// will perform the action specified by the <b>lpVerb</b> parameter.
  external Pointer<Utf16> lpFile;

  /// Optional.
  external Pointer<Utf16> lpParameters;

  /// Optional.
  external Pointer<Utf16> lpDirectory;

  /// Required.
  @Int32()
  external int nShow;

  /// If SEE_MASK_NOCLOSEPROCESS is set and the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// call succeeds, it sets this member to a value greater than 32.
  @IntPtr()
  external int hInstApp;

  /// The address of an absolute <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shtypes/ns-shtypes-itemidlist">ITEMIDLIST</a>
  /// structure (PCIDLIST_ABSOLUTE) to contain an item identifier list that
  /// uniquely identifies the file to execute.
  external Pointer lpIDList;

  /// The address of a null-terminated string that specifies one of the
  /// following: - A ProgId.
  external Pointer<Utf16> lpClass;

  /// A handle to the registry key for the file type.
  @IntPtr()
  external int hkeyClass;

  /// A keyboard shortcut to associate with the application.
  @Uint32()
  external int dwHotKey;

  external SHELLEXECUTEINFO_0 Anonymous;

  /// A handle to the newly started application.
  @IntPtr()
  external int hProcess;
}

/// {@category union}
sealed class SHELLEXECUTEINFO_0 extends Union {
  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hMonitor;
}

extension SHELLEXECUTEINFO_0_Extension on SHELLEXECUTEINFO {
  int get hIcon => this.Anonymous.hIcon;
  set hIcon(int value) => this.Anonymous.hIcon = value;

  int get hMonitor => this.Anonymous.hMonitor;
  set hMonitor(int value) => this.Anonymous.hMonitor = value;
}

/// Defines Shell item resource.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ns-shobjidl_core-shell_item_resource>.
///
/// {@category struct}
base class SHELL_ITEM_RESOURCE extends Struct {
  /// The [GUID] that identifies the item.
  external GUID guidType;

  @Array(260)
  external Array<Uint16> _szName;

  /// The item name.
  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      if (_szName[i] == 0x00) break;
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains information about a file object.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileinfow>.
///
/// {@category struct}
base class SHFILEINFO extends Struct {
  /// A handle to the icon that represents the file.
  @IntPtr()
  external int hIcon;

  /// The index of the icon image within the system image list.
  @Int32()
  external int iIcon;

  /// An array of values that indicates the attributes of the file object.
  @Uint32()
  external int dwAttributes;

  @Array(260)
  external Array<Uint16> _szDisplayName;

  /// A string that contains the name of the file as it appears in the Windows
  /// Shell, or the path and file name of the file that contains the icon
  /// representing the file.
  String get szDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      if (_szDisplayName[i] == 0x00) break;
      charCodes.add(_szDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDisplayName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szTypeName;

  /// A string that describes the type of file.
  String get szTypeName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      if (_szTypeName[i] == 0x00) break;
      charCodes.add(_szTypeName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTypeName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szTypeName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains information that the SHFileOperation function uses to perform file
/// operations.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileopstructw>.
///
/// {@category struct}
base class SHFILEOPSTRUCT extends Struct {
  /// A window handle to the dialog box to display information about the status
  /// of the file operation.
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int wFunc;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to one or more source file names.
  external Pointer<Utf16> pFrom;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to the destination file or directory name.
  external Pointer<Utf16> pTo;

  /// Flags that control the file operation.
  @Uint16()
  external int fFlags;

  /// When the function returns, this member contains [TRUE] if any file
  /// operations were aborted before they were completed; otherwise, [FALSE].
  @Int32()
  external int fAnyOperationsAborted;

  /// When the function returns, this member contains a handle to a name mapping
  /// object that contains the old and new names of the renamed files.
  external Pointer hNameMappings;

  /// A pointer to the title of a progress dialog box.
  external Pointer<Utf16> lpszProgressTitle;
}

/// Defines an item identifier.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-shitemid>.
///
/// {@category struct}
@Packed(1)
base class SHITEMID extends Struct {
  /// The size of identifier, in bytes, including <b>cb</b> itself.
  @Uint16()
  external int cb;

  /// A variable-length item identifier.
  @Array(1)
  external Array<Uint8> abID;
}

/// Contains the size and item count information retrieved by the
/// SHQueryRecycleBin function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shqueryrbinfo>.
///
/// {@category struct}
base class SHQUERYRBINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The total size of all the objects in the specified Recycle Bin, in bytes.
  @Int64()
  external int i64Size;

  /// The total number of items in the specified Recycle Bin.
  @Int64()
  external int i64NumItems;
}

/// Defines the width and height of a rectangle.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-size>.
///
/// {@category struct}
base class SIZE extends Struct {
  /// Specifies the rectangle's width.
  @Int32()
  external int cx;

  /// Specifies the rectangle's height.
  @Int32()
  external int cy;
}

/// Defines the coordinates of the upper left and lower right corners of a
/// rectangle.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/small-rect-str>.
///
/// {@category struct}
base class SMALL_RECT extends Struct {
  /// The x-coordinate of the upper left corner of the rectangle.
  @Int16()
  external int Left;

  /// The y-coordinate of the upper left corner of the rectangle.
  @Int16()
  external int Top;

  /// The x-coordinate of the lower right corner of the rectangle.
  @Int16()
  external int Right;

  /// The y-coordinate of the lower right corner of the rectangle.
  @Int16()
  external int Bottom;
}

/// Varies depending on the protocol selected.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-sockaddr>.
///
/// {@category struct}
base class SOCKADDR extends Struct {
  @Uint16()
  external int sa_family;

  @Array(14)
  external Array<CHAR> sa_data;
}

/// Used in conjunction with Bluetooth socket operations, defined by address
/// family AF_BTH.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-sockaddr_bth>.
///
/// {@category struct}
@Packed(1)
base class SOCKADDR_BTH extends Struct {
  /// Address family of the socket.
  @Uint16()
  external int addressFamily;

  /// Address of the target Bluetooth device.
  @Uint64()
  external int btAddr;

  /// Service Class Identifier of the socket.
  external GUID serviceClassId;

  /// RFCOMM channel associated with the socket.
  @Uint32()
  external int port;
}

/// {@category struct}
typedef SOCKET = IntPtr;

/// Stores protocol-specific address information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/ws2def/ns-ws2def-socket_address>.
///
/// {@category struct}
base class SOCKET_ADDRESS extends Struct {
  /// A pointer to a socket address represented as a <a
  /// href="https://docs.microsoft.com/windows/desktop/WinSock/sockaddr-2">SOCKADDR</a>
  /// structure.
  external Pointer<SOCKADDR> lpSockaddr;

  /// The length, in bytes, of the socket address.
  @Int32()
  external int iSockaddrLength;
}

/// Identifies an authentication service that a server is willing to use to
/// communicate to a client.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/ns-objidlbase-sole_authentication_service>.
///
/// {@category struct}
base class SOLE_AUTHENTICATION_SERVICE extends Struct {
  /// The authentication service.
  @Uint32()
  external int dwAuthnSvc;

  /// The authorization service.
  @Uint32()
  external int dwAuthzSvc;

  /// The principal name to be used with the authentication service.
  external Pointer<Utf16> pPrincipalName;

  /// When used in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>,
  /// set on return to indicate the status of the call to register the
  /// authentication services.
  @Int32()
  external int hr;
}

/// {@category struct}
base class SPEVENT extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;
}

/// {@category struct}
base class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;

  @Uint64()
  external int ullQueuedInterest;

  @Uint32()
  external int ulCount;
}

/// {@category struct}
base class SPVOICESTATUS extends Struct {
  @Uint32()
  external int ulCurrentStream;

  @Uint32()
  external int ulLastStreamQueued;

  @Int32()
  external int hrLastResult;

  @Uint32()
  external int dwRunningState;

  @Uint32()
  external int ulInputWordPos;

  @Uint32()
  external int ulInputWordLen;

  @Uint32()
  external int ulInputSentPos;

  @Uint32()
  external int ulInputSentLen;

  @Int32()
  external int lBookmarkId;

  @Uint16()
  external int PhonemeId;

  @Int32()
  external int VisemeId;

  @Uint32()
  // ignore: unused_field
  external int _dwReserved1;

  @Uint32()
  // ignore: unused_field
  external int _dwReserved2;
}

/// Defines a device interface in a device information set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_device_interface_data>.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The GUID for the class to which the device interface belongs.
  external GUID InterfaceClassGuid;

  /// Can be one or more of the following:
  @Uint32()
  external int Flags;

  /// Reserved.
  @IntPtr()
  // ignore: unused_field
  external int _Reserved;
}

/// Contains the path for a device interface.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_device_interface_detail_data_w>.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DETAIL_DATA_ extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A NULL-terminated string that contains the device interface path.
  @Array(1)
  external Array<Uint16> DevicePath;
}

/// Defines a device instance that is a member of a device information set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_devinfo_data>.
///
/// {@category struct}
base class SP_DEVINFO_DATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The GUID of the device's setup class.
  external GUID ClassGuid;

  /// An opaque handle to the device instance (also known as a handle to the <a
  /// href="https://docs.microsoft.com/windows-hardware/drivers/">devnode</a>).
  @Uint32()
  external int DevInst;

  /// Reserved.
  @IntPtr()
  // ignore: unused_field
  external int _Reserved;
}

/// Specifies the window station, desktop, standard handles, and appearance of
/// the main window for a process at creation time.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ns-processthreadsapi-startupinfow>.
///
/// {@category struct}
base class STARTUPINFO extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int cb;

  /// Reserved; must be NULL.
  // ignore: unused_field
  external Pointer<Utf16> _lpReserved;

  /// The name of the desktop, or the name of both the desktop and window
  /// station for this process.
  external Pointer<Utf16> lpDesktop;

  /// For console processes, this is the title displayed in the title bar if a
  /// new console window is created.
  external Pointer<Utf16> lpTitle;

  /// If <b>dwFlags</b> specifies STARTF_USEPOSITION, this member is the x
  /// offset of the upper left corner of a window if a new window is created, in
  /// pixels.
  @Uint32()
  external int dwX;

  /// If <b>dwFlags</b> specifies STARTF_USEPOSITION, this member is the y
  /// offset of the upper left corner of a window if a new window is created, in
  /// pixels.
  @Uint32()
  external int dwY;

  /// If <b>dwFlags</b> specifies STARTF_USESIZE, this member is the width of
  /// the window if a new window is created, in pixels.
  @Uint32()
  external int dwXSize;

  /// If <b>dwFlags</b> specifies STARTF_USESIZE, this member is the height of
  /// the window if a new window is created, in pixels.
  @Uint32()
  external int dwYSize;

  /// If <b>dwFlags</b> specifies STARTF_USECOUNTCHARS, if a new console window
  /// is created in a console process, this member specifies the screen buffer
  /// width, in character columns.
  @Uint32()
  external int dwXCountChars;

  /// If <b>dwFlags</b> specifies STARTF_USECOUNTCHARS, if a new console window
  /// is created in a console process, this member specifies the screen buffer
  /// height, in character rows.
  @Uint32()
  external int dwYCountChars;

  /// If <b>dwFlags</b> specifies STARTF_USEFILLATTRIBUTE, this member is the
  /// initial text and background colors if a new console window is created in a
  /// console application.
  @Uint32()
  external int dwFillAttribute;

  /// A bitfield that determines whether certain
  @Uint32()
  external int dwFlags;

  /// If <b>dwFlags</b> specifies STARTF_USESHOWWINDOW, this member can be any
  /// of the values that can be specified in the <i>nCmdShow</i> parameter for
  /// the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-showwindow">ShowWindow</a>
  /// function, except for SW_SHOWDEFAULT.
  @Uint16()
  external int wShowWindow;

  /// Reserved for use by the C Run-time; must be zero.
  @Uint16()
  // ignore: unused_field
  external int _cbReserved2;

  /// Reserved for use by the C Run-time; must be NULL.
  // ignore: unused_field
  external Pointer<Uint8> _lpReserved2;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard input handle for the process.
  @IntPtr()
  external int hStdInput;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard output handle for the process.
  @IntPtr()
  external int hStdOutput;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard error handle for the process.
  @IntPtr()
  external int hStdError;
}

/// Specifies the window station, desktop, standard handles, and attributes for
/// a new process.
///
/// It is used with the CreateProcess and CreateProcessAsUser functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-startupinfoexw>.
///
/// {@category struct}
base class STARTUPINFOEX extends Struct {
  /// A `STARTUPINFO` structure.
  external STARTUPINFO StartupInfo;

  /// An attribute list.
  external LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
}

/// Contains information about a property set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-statpropsetstg>.
///
/// {@category struct}
base class STATPROPSETSTG extends Struct {
  /// FMTID of the current property set, specified when the property set was
  /// initially created.
  external GUID fmtid;

  /// <b>CLSID</b> associated with this property set, specified when the
  /// property set was initially created and possibly modified thereafter with
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propidl/nf-propidl-ipropertystorage-setclass">IPropertyStorage::SetClass</a>.
  external GUID clsid;

  /// Flag values of the property set, as specified in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propidl/nf-propidl-ipropertysetstorage-create">IPropertySetStorage::Create</a>.
  @Uint32()
  external int grfFlags;

  /// Time in Universal Coordinated Time (UTC) when the property set was last
  /// modified.
  external FILETIME mtime;

  /// Time in UTC when this property set was created.
  external FILETIME ctime;

  /// Time in UTC when this property set was last accessed.
  external FILETIME atime;

  @Uint32()
  external int dwOSVersion;
}

/// Contains data about a single property in a property set.
///
/// This data is the property ID and type tag, and the optional string name that
/// may be associated with the property.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-statpropstg>.
///
/// {@category struct}
base class STATPROPSTG extends Struct {
  /// A wide-character null-terminated Unicode string that contains the optional
  /// string name associated with the property.
  external Pointer<Utf16> lpwstrName;

  /// A 32-bit identifier that uniquely identifies the property within the
  /// property set.
  @Uint32()
  external int propid;

  /// The property type.
  @Uint16()
  external int vt;
}

/// Contains statistical data about an open storage, stream, or byte-array
/// object.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ns-objidl-statstg>.
///
/// {@category struct}
base class STATSTG extends Struct {
  /// A pointer to a <b>NULL</b>-terminated Unicode string that contains the
  /// name.
  external Pointer<Utf16> pwcsName;

  /// Indicates the type of storage object.
  @Uint32()
  external int type;

  /// The size of the struct in bytes.
  @Uint64()
  external int cbSize;

  /// Indicates the last modification time for this storage, stream, or byte
  /// array.
  external FILETIME mtime;

  /// Indicates the creation time for this storage, stream, or byte array.
  external FILETIME ctime;

  /// Indicates the last access time for this storage, stream, or byte array.
  external FILETIME atime;

  /// Indicates the access mode specified when the object was opened.
  @Uint32()
  external int grfMode;

  /// Indicates the types of region locking supported by the stream or byte
  /// array.
  @Uint32()
  external int grfLocksSupported;

  /// Indicates the class identifier for the storage object; set to CLSID_NULL
  /// for new storage objects.
  external GUID clsid;

  /// Indicates the current state bits of the storage object; that is, the value
  /// most recently set by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/objidl/nf-objidl-istorage-setstatebits">IStorage::SetStateBits</a>
  /// method.
  @Uint32()
  external int grfStateBits;

  /// Reserved for future use.
  @Uint32()
  external int reserved;
}

/// Contains information about a device.
///
/// This structure is used by the IOCTL_STORAGE_GET_DEVICE_NUMBER control code.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-storage_device_number>.
///
/// {@category struct}
base class STORAGE_DEVICE_NUMBER extends Struct {
  /// The type of device.
  @Uint32()
  external int DeviceType;

  /// The number of this device.
  @Uint32()
  external int DeviceNumber;

  /// The partition number of the device, if the device can be partitioned.
  @Uint32()
  external int PartitionNumber;
}

/// Contains strings returned from the IShellFolder interface methods.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-strret>.
///
/// {@category struct}
base class STRRET extends Struct {
  @Uint32()
  external int uType;

  external STRRET_0 Anonymous;
}

/// {@category union}
sealed class STRRET_0 extends Union {
  external Pointer<Utf16> pOleStr;

  @Uint32()
  external int uOffset;

  @Array(260)
  external Array<Uint8> cStr;
}

extension STRRET_0_Extension on STRRET {
  Pointer<Utf16> get pOleStr => this.Anonymous.pOleStr;
  set pOleStr(Pointer<Utf16> value) => this.Anonymous.pOleStr = value;

  int get uOffset => this.Anonymous.uOffset;
  set uOffset(int value) => this.Anonymous.uOffset = value;

  Array<Uint8> get cStr => this.Anonymous.cStr;
  set cStr(Array<Uint8> value) => this.Anonymous.cStr = value;
}

/// Contains the styles for a window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-stylestruct>.
///
/// {@category struct}
base class STYLESTRUCT extends Struct {
  /// The previous styles for a window.
  @Uint32()
  external int styleOld;

  /// The new styles for a window.
  @Uint32()
  external int styleNew;
}

/// Contains symbol information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ns-dbghelp-symbol_infow>.
///
/// {@category struct}
base class SYMBOL_INFO extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int SizeOfStruct;

  /// A unique value that identifies the type data that describes the symbol.
  @Uint32()
  external int TypeIndex;

  /// This member is reserved for system use.
  @Array(2)
  // ignore: unused_field
  external Array<Uint64> _Reserved;

  /// The unique value for the symbol.
  @Uint32()
  external int Index;

  /// The symbol size, in bytes.
  @Uint32()
  external int Size;

  /// The base address of the module that contains the symbol.
  @Uint64()
  external int ModBase;

  @Uint32()
  external int Flags;

  /// The value of a constant.
  @Uint64()
  external int Value;

  /// The virtual address of the start of the symbol.
  @Uint64()
  external int Address;

  /// The register.
  @Uint32()
  external int Register;

  /// The DIA scope.
  @Uint32()
  external int Scope;

  /// The PDB classification.
  @Uint32()
  external int Tag;

  /// The length of the name, in characters, not including the null-terminating
  /// character.
  @Uint32()
  external int NameLen;

  /// The size of the <b>Name</b> buffer, in characters.
  @Uint32()
  external int MaxNameLen;

  /// The name of the symbol.
  @Array(1)
  external Array<Uint16> Name;
}

/// Specifies a date and time, using individual members for the month, day,
/// year, weekday, hour, minute, second, and millisecond.
///
/// The time is either in coordinated universal time (UTC) or local time,
/// depending on the function that is being called.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-systemtime>.
///
/// {@category struct}
base class SYSTEMTIME extends Struct {
  /// The year.
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDayOfWeek;

  /// The day of the month.
  @Uint16()
  external int wDay;

  /// The hour.
  @Uint16()
  external int wHour;

  /// The minute.
  @Uint16()
  external int wMinute;

  /// The second.
  @Uint16()
  external int wSecond;

  /// The millisecond.
  @Uint16()
  external int wMilliseconds;
}

/// {@category struct}
base class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;

  @Array(4)
  // ignore: unused_field
  external Array<Pointer> _Reserved2;

  @Int8()
  external int NumberOfProcessors;
}

/// Contains information about the current state of the system battery.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-system_battery_state>.
///
/// {@category struct}
base class SYSTEM_BATTERY_STATE extends Struct {
  /// If this member is [TRUE], the system battery charger is currently
  /// operating on external power.
  @Uint8()
  external int AcOnLine;

  /// If this member is [TRUE], at least one battery is present in the system.
  @Uint8()
  external int BatteryPresent;

  /// If this member is [TRUE], a battery is currently charging.
  @Uint8()
  external int Charging;

  /// If this member is [TRUE], a battery is currently discharging.
  @Uint8()
  external int Discharging;

  /// Reserved.
  @Array(3)
  external Array<BOOLEAN> Spare1;

  @Uint8()
  external int Tag;

  /// The theoretical capacity of the battery when new.
  @Uint32()
  external int MaxCapacity;

  /// The estimated remaining capacity of the battery.
  @Uint32()
  external int RemainingCapacity;

  /// The current rate of discharge of the battery, in mW.
  @Uint32()
  external int Rate;

  /// The estimated time remaining on the battery, in seconds.
  @Uint32()
  external int EstimatedTime;

  /// The manufacturer's suggestion of a capacity, in mWh, at which a low
  /// battery alert should occur.
  @Uint32()
  external int DefaultAlert1;

  /// The manufacturer's suggestion of a capacity, in mWh, at which a warning
  /// battery alert should occur.
  @Uint32()
  external int DefaultAlert2;
}

/// {@category struct}
base class SYSTEM_CODEINTEGRITY_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int CodeIntegrityOptions;
}

/// {@category struct}
base class SYSTEM_EXCEPTION_INFORMATION extends Struct {
  @Array(16)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;
}

/// Contains information about the current computer system.
///
/// This includes the architecture and type of the processor, the number of
/// processors in the system, the page size, and other such information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/ns-sysinfoapi-system_info>.
///
/// {@category struct}
base class SYSTEM_INFO extends Struct {
  external SYSTEM_INFO_0 Anonymous;

  /// The page size and the granularity of page protection and commitment.
  @Uint32()
  external int dwPageSize;

  /// A pointer to the lowest memory address accessible to applications and
  /// dynamic-link libraries (DLLs).
  external Pointer lpMinimumApplicationAddress;

  /// A pointer to the highest memory address accessible to applications and
  /// DLLs.
  external Pointer lpMaximumApplicationAddress;

  /// A mask representing the set of processors configured into the system.
  @IntPtr()
  external int dwActiveProcessorMask;

  /// The number of logical processors in the current group.
  @Uint32()
  external int dwNumberOfProcessors;

  /// An obsolete member that is retained for compatibility.
  @Uint32()
  external int dwProcessorType;

  /// The granularity for the starting address at which virtual memory can be
  /// allocated.
  @Uint32()
  external int dwAllocationGranularity;

  /// The architecture-dependent processor level.
  @Uint16()
  external int wProcessorLevel;

  /// The architecture-dependent processor revision.
  @Uint16()
  external int wProcessorRevision;
}

/// {@category union}
sealed class SYSTEM_INFO_0 extends Union {
  @Uint32()
  external int dwOemId;

  external SYSTEM_INFO_0_0 Anonymous;
}

extension SYSTEM_INFO_0_Extension on SYSTEM_INFO {
  int get dwOemId => this.Anonymous.dwOemId;
  set dwOemId(int value) => this.Anonymous.dwOemId = value;

  SYSTEM_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(SYSTEM_INFO_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class SYSTEM_INFO_0_0 extends Struct {
  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  // ignore: unused_field
  external int _wReserved;
}

extension SYSTEM_INFO_0_0_Extension on SYSTEM_INFO {
  int get wProcessorArchitecture =>
      this.Anonymous.Anonymous.wProcessorArchitecture;
  set wProcessorArchitecture(int value) =>
      this.Anonymous.Anonymous.wProcessorArchitecture = value;
}

/// {@category struct}
base class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;
}

/// Describes the relationship between the specified processor set.
///
/// This structure is used with the GetLogicalProcessorInformation function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-system_logical_processor_information>.
///
/// {@category struct}
base class SYSTEM_LOGICAL_PROCESSOR_INFORMATION extends Struct {
  /// The processor mask identifying the processors described by this structure.
  @IntPtr()
  external int ProcessorMask;

  /// The relationship between the processors identified by the value of the
  /// <b>ProcessorMask</b> member.
  @Int32()
  external int Relationship;

  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0 Anonymous;
}

/// {@category union}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0 extends Union {
  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 ProcessorCore;

  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 NumaNode;

  external CACHE_DESCRIPTOR Cache;

  @Array(2)
  // ignore: unused_field
  external Array<Uint64> _Reserved;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 get ProcessorCore =>
      this.Anonymous.ProcessorCore;
  set ProcessorCore(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 value) =>
      this.Anonymous.ProcessorCore = value;

  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 get NumaNode =>
      this.Anonymous.NumaNode;
  set NumaNode(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 value) =>
      this.Anonymous.NumaNode = value;

  CACHE_DESCRIPTOR get Cache => this.Anonymous.Cache;
  set Cache(CACHE_DESCRIPTOR value) => this.Anonymous.Cache = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 extends Struct {
  @Uint8()
  external int Flags;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get Flags => this.Anonymous.ProcessorCore.Flags;
  set Flags(int value) => this.Anonymous.ProcessorCore.Flags = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 extends Struct {
  @Uint32()
  external int NodeNumber;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get NodeNumber => this.Anonymous.NumaNode.NodeNumber;
  set NodeNumber(int value) => this.Anonymous.NumaNode.NodeNumber = value;
}

/// {@category struct}
base class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;
}

/// {@category struct}
base class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(312)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;
}

/// {@category struct}
base class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  // ignore: unused_field
  external Array<Pointer> _Reserved1;

  @Array(3)
  // ignore: unused_field
  external Array<Uint32> _Reserved2;
}

/// Contains information about the power status of the system.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-system_power_status>.
///
/// {@category struct}
base class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  external int ACLineStatus;

  /// The battery charge status.
  @Uint8()
  external int BatteryFlag;

  /// The percentage of full battery charge remaining.
  @Uint8()
  external int BatteryLifePercent;

  /// The status of battery saver.
  @Uint8()
  external int SystemStatusFlag;

  /// The number of seconds of battery life remaining, or –1 if remaining
  /// seconds are unknown or if the device is connected to AC power.
  @Uint32()
  external int BatteryLifeTime;

  /// The number of seconds of battery life when at full charge, or –1 if full
  /// battery lifetime is unknown or if the device is connected to AC power.
  @Uint32()
  external int BatteryFullLifeTime;
}

/// {@category struct}
base class SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION extends Struct {
  @Int64()
  external int IdleTime;

  @Int64()
  external int KernelTime;

  @Int64()
  external int UserTime;

  @Array(2)
  // ignore: unused_field
  external Array<Int64> _Reserved1;

  @Uint32()
  // ignore: unused_field
  external int _Reserved2;
}

/// {@category struct}
base class SYSTEM_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int NumberOfThreads;

  @Array(48)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;

  external UNICODE_STRING ImageName;

  @Int32()
  external int BasePriority;

  @IntPtr()
  external int UniqueProcessId;

  // ignore: unused_field
  external Pointer _Reserved2;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int SessionId;

  // ignore: unused_field
  external Pointer _Reserved3;

  @IntPtr()
  external int PeakVirtualSize;

  @IntPtr()
  external int VirtualSize;

  @Uint32()
  // ignore: unused_field
  external int _Reserved4;

  @IntPtr()
  external int PeakWorkingSetSize;

  @IntPtr()
  external int WorkingSetSize;

  // ignore: unused_field
  external Pointer _Reserved5;

  @IntPtr()
  external int QuotaPagedPoolUsage;

  // ignore: unused_field
  external Pointer _Reserved6;

  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  @IntPtr()
  external int PagefileUsage;

  @IntPtr()
  external int PeakPagefileUsage;

  @IntPtr()
  external int PrivatePageCount;

  @Array(6)
  // ignore: unused_field
  external Array<Int64> _Reserved7;
}

/// {@category struct}
base class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;

  @Uint32()
  external int RegistryQuotaUsed;

  // ignore: unused_field
  external Pointer _Reserved1;
}

/// {@category struct}
base class SYSTEM_THREAD_INFORMATION extends Struct {
  @Array(3)
  // ignore: unused_field
  external Array<Int64> _Reserved1;

  @Uint32()
  // ignore: unused_field
  external int _Reserved2;

  external Pointer StartAddress;

  external CLIENT_ID ClientId;

  @Int32()
  external int Priority;

  @Int32()
  external int BasePriority;

  @Uint32()
  // ignore: unused_field
  external int _Reserved3;

  @Uint32()
  external int ThreadState;

  @Uint32()
  external int WaitReason;
}

/// {@category struct}
base class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  // ignore: unused_field
  external Array<Uint8> _Reserved1;
}

/// Used in a Bluetooth query to constrain the set of attributes to return in
/// the query.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpattributerange>.
///
/// {@category struct}
base class SdpAttributeRange extends Struct {
  /// Minimum attribute value for which to search.
  @Uint16()
  external int minAttribute;

  /// Maximum attribute value for which to search.
  @Uint16()
  external int maxAttribute;
}

/// Facilitates searching for UUIDs.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpqueryuuid>.
///
/// {@category struct}
base class SdpQueryUuid extends Struct {
  /// Union containing the UUID on which to search.
  external SdpQueryUuidUnion u;

  /// Type of UUID being searched.
  @Uint16()
  external int uuidType;
}

/// Contains the UUID on which to perform an SDP query.
///
/// Used in conjunction with the SdpQueryUuid structure.
///
/// To learn more about this union, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpqueryuuidunion>.
///
/// {@category union}
sealed class SdpQueryUuidUnion extends Union {
  /// UUID in 128-bit format.
  external GUID uuid128;

  /// UUID in 32-bit format.
  @Uint32()
  external int uuid32;

  /// UUID in 16-bit format.
  @Uint16()
  external int uuid16;
}

/// Contains information used to display a task dialog.
///
/// The TaskDialogIndirect function uses this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-taskdialogconfig>.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOGCONFIG extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Handle to the parent window.
  @IntPtr()
  external int hwndParent;

  /// Handle to the module that contains the icon resource identified by the
  /// <b>pszMainIcon</b> or <b>pszFooterIcon</b> members, and the string
  /// resources identified by the <b>pszWindowTitle</b>,
  /// <b>pszMainInstruction</b>, <b>pszContent</b>, <b>pszVerificationText</b>,
  /// <b>pszExpandedInformation</b>, <b>pszExpandedControlText</b>,
  /// <b>pszCollapsedControlText</b> or <b>pszFooter</b> members.
  @IntPtr()
  external int hInstance;

  /// Specifies the behavior of the task dialog.
  @Int32()
  external int dwFlags;

  /// Specifies the push buttons displayed in the task dialog.
  @Int32()
  external int dwCommonButtons;

  /// Pointer that references the string to be used for the task dialog title.
  external Pointer<Utf16> pszWindowTitle;

  external TASKDIALOGCONFIG_0 Anonymous1;

  /// Pointer that references the string to be used for the main instruction.
  external Pointer<Utf16> pszMainInstruction;

  /// Pointer that references the string to be used for the dialog's primary
  /// content.
  external Pointer<Utf16> pszContent;

  /// The number of entries in the <b>pButtons</b> array that is used to create
  /// buttons or command links in the task dialog.
  @Uint32()
  external int cButtons;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/commctrl/ns-commctrl-taskdialog_button">TASKDIALOG_BUTTON</a>
  /// structures containing the definition of the custom buttons that are to be
  /// displayed in the task dialog.
  external Pointer<TASKDIALOG_BUTTON> pButtons;

  /// The default button for the task dialog.
  @Int32()
  external int nDefaultButton;

  /// The number of entries in the <b>pRadioButtons</b> array that is used to
  /// create radio buttons in the task dialog.
  @Uint32()
  external int cRadioButtons;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/commctrl/ns-commctrl-taskdialog_button">TASKDIALOG_BUTTON</a>
  /// structures containing the definition of the radio buttons that are to be
  /// displayed in the task dialog.
  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  /// The button ID of the radio button that is selected by default.
  @Int32()
  external int nDefaultRadioButton;

  /// Pointer that references the string to be used to label the verification
  /// checkbox.
  external Pointer<Utf16> pszVerificationText;

  /// Pointer that references the string to be used for displaying additional
  /// information.
  external Pointer<Utf16> pszExpandedInformation;

  /// Pointer that references the string to be used to label the button for
  /// collapsing the expandable information.
  external Pointer<Utf16> pszExpandedControlText;

  /// Pointer that references the string to be used to label the button for
  /// expanding the expandable information.
  external Pointer<Utf16> pszCollapsedControlText;

  external TASKDIALOGCONFIG_1 Anonymous2;

  /// Pointer to the string to be used in the footer area of the task dialog.
  external Pointer<Utf16> pszFooter;

  /// Pointer to an application-defined callback function.
  external Pointer<NativeFunction<PFTASKDIALOGCALLBACK>> pfCallback;

  /// A pointer to application-defined reference data.
  @IntPtr()
  external int lpCallbackData;

  /// The width of the task dialog's client area, in dialog units.
  @Uint32()
  external int cxWidth;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_0 extends Union {
  @IntPtr()
  external int hMainIcon;

  external Pointer<Utf16> pszMainIcon;
}

extension TASKDIALOGCONFIG_0_Extension on TASKDIALOGCONFIG {
  int get hMainIcon => this.Anonymous1.hMainIcon;
  set hMainIcon(int value) => this.Anonymous1.hMainIcon = value;

  Pointer<Utf16> get pszMainIcon => this.Anonymous1.pszMainIcon;
  set pszMainIcon(Pointer<Utf16> value) => this.Anonymous1.pszMainIcon = value;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_1 extends Union {
  @IntPtr()
  external int hFooterIcon;

  external Pointer<Utf16> pszFooterIcon;
}

extension TASKDIALOGCONFIG_1_Extension on TASKDIALOGCONFIG {
  int get hFooterIcon => this.Anonymous2.hFooterIcon;
  set hFooterIcon(int value) => this.Anonymous2.hFooterIcon = value;

  Pointer<Utf16> get pszFooterIcon => this.Anonymous2.pszFooterIcon;
  set pszFooterIcon(Pointer<Utf16> value) =>
      this.Anonymous2.pszFooterIcon = value;
}

/// Contains information used to display a button in a task dialog.
///
/// The TASKDIALOGCONFIG structure uses this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-taskdialog_button>.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOG_BUTTON extends Struct {
  /// Indicates the value to be returned when this button is selected.
  @Int32()
  external int nButtonID;

  /// Pointer that references the string to be used to label the button.
  external Pointer<Utf16> pszButtonText;
}

/// Contains basic information about a physical font.
///
/// All sizes are specified in logical units; that is, they depend on the
/// current mapping mode of the display context.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-textmetricw>.
///
/// {@category struct}
base class TEXTMETRIC extends Struct {
  /// The height (ascent + descent) of characters.
  @Int32()
  external int tmHeight;

  /// The ascent (units above the base line) of characters.
  @Int32()
  external int tmAscent;

  /// The descent (units below the base line) of characters.
  @Int32()
  external int tmDescent;

  /// The amount of leading (space) inside the bounds set by the <b>tmHeight</b>
  /// member.
  @Int32()
  external int tmInternalLeading;

  /// The amount of extra leading (space) that the application adds between
  /// rows.
  @Int32()
  external int tmExternalLeading;

  /// The average width of characters in the font (generally defined as the
  /// width of the letter <i>x</i> ).
  @Int32()
  external int tmAveCharWidth;

  /// The width of the widest character in the font.
  @Int32()
  external int tmMaxCharWidth;

  /// The weight of the font.
  @Int32()
  external int tmWeight;

  /// The extra width per string that may be added to some synthesized fonts.
  @Int32()
  external int tmOverhang;

  /// The horizontal aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectX;

  /// The vertical aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectY;

  /// The value of the first character defined in the font.
  @Uint16()
  external int tmFirstChar;

  /// The value of the last character defined in the font.
  @Uint16()
  external int tmLastChar;

  /// The value of the character to be substituted for characters not in the
  /// font.
  @Uint16()
  external int tmDefaultChar;

  /// The value of the character that will be used to define word breaks for
  /// text justification.
  @Uint16()
  external int tmBreakChar;

  /// Specifies an italic font if it is nonzero.
  @Uint8()
  external int tmItalic;

  /// Specifies an underlined font if it is nonzero.
  @Uint8()
  external int tmUnderlined;

  /// A strikeout font if it is nonzero.
  @Uint8()
  external int tmStruckOut;

  /// Specifies information about the pitch, the technology, and the family of a
  /// physical font.
  @Uint8()
  external int tmPitchAndFamily;

  @Uint8()
  external int tmCharSet;
}

/// Used to specify a time interval.
///
/// It is associated with the Berkeley Software Distribution (BSD) Time.h header
/// file.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-timeval>.
///
/// {@category struct}
base class TIMEVAL extends Struct {
  /// Time interval, in seconds.
  @Int32()
  external int tv_sec;

  /// Time interval, in microseconds.
  @Int32()
  external int tv_usec;
}

/// Contains title bar information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-titlebarinfo>.
///
/// {@category struct}
base class TITLEBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the title bar.
  external RECT rcTitleBar;

  /// An array that receives a value for each element of the title bar.
  @Array(6)
  external Array<Uint32> rgstate;
}

/// Expands on the information described in the TITLEBARINFO structure by
/// including the coordinates of each element of the title bar.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-titlebarinfoex>.
///
/// {@category struct}
base class TITLEBARINFOEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The bounding rectangle of the title bar.
  external RECT rcTitleBar;

  /// An array that receives a <b>DWORD</b> value for each element of the title
  /// bar.
  @Array(6)
  external Array<Uint32> rgstate;

  /// An array that receives a structure for each element of the title bar.
  @Array(6)
  external Array<RECT> rgrect;
}

/// Specifies all the information in a token that is necessary for an app
/// container.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-token_appcontainer_information>.
///
/// {@category struct}
base class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">security
  /// identifier</a> (SID) of the app container.
  external PSID TokenAppContainer;
}

/// Encapsulates data for touch input.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-touchinput>.
///
/// {@category struct}
base class TOUCHINPUT extends Struct {
  /// The x-coordinate (horizontal point) of the touch input.
  @Int32()
  external int x;

  /// The y-coordinate (vertical point) of the touch input.
  @Int32()
  external int y;

  /// A device handle for the source input device.
  @IntPtr()
  external int hSource;

  /// A touch point identifier that distinguishes a particular touch input.
  @Uint32()
  external int dwID;

  /// A set of bit flags that specify various aspects of touch point press,
  /// release, and motion.
  @Uint32()
  external int dwFlags;

  /// A set of bit flags that specify which of the optional fields in the
  /// structure contain valid values.
  @Uint32()
  external int dwMask;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int dwTime;

  /// An additional value associated with the touch event.
  @IntPtr()
  external int dwExtraInfo;

  /// The width of the touch contact area in hundredths of a pixel in physical
  /// screen coordinates.
  @Uint32()
  external int cxContact;

  /// The height of the touch contact area in hundredths of a pixel in physical
  /// screen coordinates.
  @Uint32()
  external int cyContact;
}

/// Contains hardware input details that can be used to predict touch targets
/// and help compensate for hardware latency when processing touch and gesture
/// input that contains distance and velocity data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-touchpredictionparameters>.
///
/// {@category struct}
base class TOUCHPREDICTIONPARAMETERS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Latency in milliseconds.
  @Uint32()
  external int dwLatency;

  /// Sample time in milliseconds (used to calculate velocity).
  @Uint32()
  external int dwSampleTime;

  /// Use timestamps provided by the hardware.
  @Uint32()
  external int bUseHWTimeStamp;
}

/// Contains extended parameters for the TrackPopupMenuEx function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-tpmparams>.
///
/// {@category struct}
base class TPMPARAMS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The rectangle to be excluded when positioning the window, in screen
  /// coordinates.
  external RECT rcExclude;
}

/// Contains attributes of a type.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-typeattr>.
///
/// {@category struct}
base class TYPEATTR extends Struct {
  /// The GUID of the type information.
  external GUID guid;

  /// The locale of member names and documentation strings.
  @Uint32()
  external int lcid;

  /// Reserved.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved;

  /// The constructor ID, or MEMBERID_NIL if none.
  @Int32()
  external int memidConstructor;

  /// The destructor ID, or MEMBERID_NIL if none.
  @Int32()
  external int memidDestructor;

  /// Reserved.
  external Pointer<Utf16> lpstrSchema;

  /// The size of an instance of this type.
  @Uint32()
  external int cbSizeInstance;

  /// The kind of type.
  @Int32()
  external int typekind;

  /// The number of functions.
  @Uint16()
  external int cFuncs;

  /// The number of variables or data members.
  @Uint16()
  external int cVars;

  /// The number of implemented interfaces.
  @Uint16()
  external int cImplTypes;

  /// The size of this type's VTBL.
  @Uint16()
  external int cbSizeVft;

  /// The byte alignment for an instance of this type.
  @Uint16()
  external int cbAlignment;

  /// The type flags.
  @Uint16()
  external int wTypeFlags;

  /// The major version number.
  @Uint16()
  external int wMajorVerNum;

  /// The minor version number.
  @Uint16()
  external int wMinorVerNum;

  /// If <b>typekind</b> is TKIND_ALIAS, specifies the type for which this type
  /// is an alias.
  external TYPEDESC tdescAlias;

  /// The IDL attributes of the described type.
  external IDLDESC idldescType;
}

/// Describes the type of a variable, the return type of a function, or the type
/// of a function parameter.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-typedesc>.
///
/// {@category struct}
base class TYPEDESC extends Struct {
  external TYPEDESC_0 Anonymous;

  /// The variant type.
  @Uint16()
  external int vt;
}

/// {@category union}
sealed class TYPEDESC_0 extends Union {
  external Pointer<TYPEDESC> lptdesc;

  external Pointer<ARRAYDESC> lpadesc;

  @Uint32()
  external int hreftype;
}

extension TYPEDESC_0_Extension on TYPEDESC {
  Pointer<TYPEDESC> get lptdesc => this.Anonymous.lptdesc;
  set lptdesc(Pointer<TYPEDESC> value) => this.Anonymous.lptdesc = value;

  Pointer<ARRAYDESC> get lpadesc => this.Anonymous.lpadesc;
  set lpadesc(Pointer<ARRAYDESC> value) => this.Anonymous.lpadesc = value;

  int get hreftype => this.Anonymous.hreftype;
  set hreftype(int value) => this.Anonymous.hreftype = value;
}

/// Used by various Local Security Authority (LSA) functions to specify a
/// Unicode string.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/subauth/ns-subauth-unicode_string>.
///
/// {@category struct}
base class UNICODE_STRING extends Struct {
  /// Specifies the length, in bytes, of the string pointed to by the
  /// <b>Buffer</b> member, not including the terminating <b>NULL</b> character,
  /// if any.
  @Uint16()
  external int Length;

  /// Specifies the total size, in bytes, of memory allocated for <b>Buffer</b>.
  @Uint16()
  external int MaximumLength;

  /// Pointer to a wide-character string.
  external Pointer<Utf16> Buffer;
}

/// Defines a data type used by the Desktop Window Manager (DWM) APIs.
///
/// It represents a generic ratio and is used for different purposes and units
/// even within a single API.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ns-dwmapi-unsigned_ratio>.
///
/// {@category struct}
@Packed(1)
base class UNSIGNED_RATIO extends Struct {
  /// The ratio numerator.
  @Uint32()
  external int uiNumerator;

  /// The ratio denominator.
  @Uint32()
  external int uiDenominator;
}

/// Used by UpdateLayeredWindowIndirect to provide position, size, shape,
/// content, and translucency information for a layered window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-updatelayeredwindowinfo>.
///
/// {@category struct}
base class UPDATELAYEREDWINDOWINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A handle to a DC for the screen.
  @IntPtr()
  external int hdcDst;

  /// The new screen position of the layered window.
  external Pointer<POINT> pptDst;

  /// The new size of the layered window.
  external Pointer<SIZE> psize;

  /// A handle to the DC for the surface that defines the layered window.
  @IntPtr()
  external int hdcSrc;

  /// The location of the layer in the device context.
  external Pointer<POINT> pptSrc;

  /// The color key to be used when composing the layered window.
  @Uint32()
  external int crKey;

  /// The transparency value to be used when composing the layered window.
  external Pointer<BLENDFUNCTION> pblend;

  @Uint32()
  external int dwFlags;

  /// The area to be updated.
  external Pointer<RECT> prcDirty;
}

/// Contains information about a registry value.
///
/// The RegQueryMultipleValues function uses this structure.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/ns-winreg-valentw>.
///
/// {@category struct}
base class VALENT extends Struct {
  /// The name of the value to be retrieved.
  external Pointer<Utf16> ve_valuename;

  /// The size of the data pointed to by <b>ve_valueptr</b>, in bytes.
  @Uint32()
  external int ve_valuelen;

  /// A pointer to the data for the value entry.
  @IntPtr()
  external int ve_valueptr;

  /// The type of data pointed to by <b>ve_valueptr</b>.
  @Uint32()
  external int ve_type;
}

/// Describes a variable, constant, or data member.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-vardesc>.
///
/// {@category struct}
base class VARDESC extends Struct {
  /// The member ID.
  @Int32()
  external int memid;

  /// Reserved.
  external Pointer<Utf16> lpstrSchema;

  external VARDESC_0 Anonymous;

  /// The variable type.
  external ELEMDESC elemdescVar;

  /// The variable flags.
  @Uint16()
  external int wVarFlags;

  /// The variable type.
  @Int32()
  external int varkind;
}

/// {@category union}
sealed class VARDESC_0 extends Union {
  @Uint32()
  external int oInst;

  external Pointer<VARIANT> lpvarValue;
}

extension VARDESC_0_Extension on VARDESC {
  int get oInst => this.Anonymous.oInst;
  set oInst(int value) => this.Anonymous.oInst = value;

  Pointer<VARIANT> get lpvarValue => this.Anonymous.lpvarValue;
  set lpvarValue(Pointer<VARIANT> value) => this.Anonymous.lpvarValue = value;
}

/// A container for a large union that carries many types of data.
///
/// The value in the first member of the structure, vt, describes which of the
/// union members is valid.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.
///
/// {@category struct}
base class VARIANT extends Struct {
  external VARIANT_0 Anonymous;
}

/// {@category union}
sealed class VARIANT_0 extends Union {
  external VARIANT_0_0 Anonymous;

  external DECIMAL decVal;
}

extension VARIANT_0_Extension on VARIANT {
  VARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(VARIANT_0_0 value) => this.Anonymous.Anonymous = value;

  DECIMAL get decVal => this.Anonymous.decVal;
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;
}

/// {@category struct}
sealed class VARIANT_0_0 extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  // ignore: unused_field
  external int _wReserved1;

  @Uint16()
  // ignore: unused_field
  external int _wReserved2;

  @Uint16()
  // ignore: unused_field
  external int _wReserved3;

  external VARIANT_0_0_0 Anonymous;
}

extension VARIANT_0_0_Extension on VARIANT {
  int get vt => this.Anonymous.Anonymous.vt;
  set vt(int value) => this.Anonymous.Anonymous.vt = value;

  VARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(VARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

/// {@category union}
sealed class VARIANT_0_0_0 extends Union {
  @Int64()
  external int llVal;

  @Int32()
  external int lVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int boolVal;

  @Int16()
  // ignore: unused_field
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external Pointer<Utf16> bstrVal;

  external VTablePointer punkVal;

  external VTablePointer pdispVal;

  external Pointer<SAFEARRAY> parray;

  external Pointer<Uint8> pbVal;

  external Pointer<Int16> piVal;

  external Pointer<Int32> plVal;

  external Pointer<Int64> pllVal;

  external Pointer<Float> pfltVal;

  external Pointer<Double> pdblVal;

  external Pointer<VARIANT_BOOL> pboolVal;

  // ignore: unused_field
  external Pointer<VARIANT_BOOL> __OBSOLETE__VARIANT_PBOOL;

  external Pointer<Int32> pscode;

  external Pointer<CY> pcyVal;

  external Pointer<Double> pdate;

  external Pointer<Pointer<Utf16>> pbstrVal;

  external Pointer<VTablePointer> ppunkVal;

  external Pointer<VTablePointer> ppdispVal;

  external Pointer<Pointer<SAFEARRAY>> pparray;

  external Pointer<VARIANT> pvarVal;

  external Pointer byref;

  @Int8()
  external int cVal;

  @Uint16()
  external int uiVal;

  @Uint32()
  external int ulVal;

  @Uint64()
  external int ullVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  external Pointer<DECIMAL> pdecVal;

  external Pointer<Utf8> pcVal;

  external Pointer<Uint16> puiVal;

  external Pointer<Uint32> pulVal;

  external Pointer<Uint64> pullVal;

  external Pointer<Int32> pintVal;

  external Pointer<Uint32> puintVal;

  external VARIANT_0_0_0_0 Anonymous;
}

extension VARIANT_0_0_0_Extension on VARIANT {
  int get llVal => this.Anonymous.Anonymous.Anonymous.llVal;
  set llVal(int value) => this.Anonymous.Anonymous.Anonymous.llVal = value;

  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;

  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;

  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;

  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;

  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;

  int get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;
  set boolVal(int value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;

  int get scode => this.Anonymous.Anonymous.Anonymous.scode;
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;

  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;

  double get date => this.Anonymous.Anonymous.Anonymous.date;
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;

  Pointer<Utf16> get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.Anonymous.bstrVal = value;

  VTablePointer get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;
  set punkVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;

  VTablePointer get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;
  set pdispVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;

  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;

  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;

  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;

  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;

  Pointer<Int64> get pllVal => this.Anonymous.Anonymous.Anonymous.pllVal;
  set pllVal(Pointer<Int64> value) =>
      this.Anonymous.Anonymous.Anonymous.pllVal = value;

  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;

  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;

  Pointer<VARIANT_BOOL> get pboolVal =>
      this.Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<VARIANT_BOOL> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;

  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;

  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;

  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;

  Pointer<Pointer<Utf16>> get pbstrVal =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;

  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;

  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;

  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;

  Pointer<VARIANT> get pvarVal => this.Anonymous.Anonymous.Anonymous.pvarVal;
  set pvarVal(Pointer<VARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;

  Pointer get byref => this.Anonymous.Anonymous.Anonymous.byref;
  set byref(Pointer value) => this.Anonymous.Anonymous.Anonymous.byref = value;

  int get cVal => this.Anonymous.Anonymous.Anonymous.cVal;
  set cVal(int value) => this.Anonymous.Anonymous.Anonymous.cVal = value;

  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;

  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;

  int get ullVal => this.Anonymous.Anonymous.Anonymous.ullVal;
  set ullVal(int value) => this.Anonymous.Anonymous.Anonymous.ullVal = value;

  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;

  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;

  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;

  Pointer<Utf8> get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(Pointer<Utf8> value) =>
      this.Anonymous.Anonymous.Anonymous.pcVal = value;

  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;

  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;

  Pointer<Uint64> get pullVal => this.Anonymous.Anonymous.Anonymous.pullVal;
  set pullVal(Pointer<Uint64> value) =>
      this.Anonymous.Anonymous.Anonymous.pullVal = value;

  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;

  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;

  VARIANT_0_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous.Anonymous;
  set Anonymous(VARIANT_0_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class VARIANT_0_0_0_0 extends Struct {
  external Pointer pvRecord;

  external VTablePointer pRecInfo;
}

extension VARIANT_0_0_0_0_Extension on VARIANT {
  Pointer get pvRecord => this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord;
  set pvRecord(Pointer value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord = value;

  VTablePointer get pRecInfo =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo;
  set pRecInfo(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo = value;
}

/// {@category struct}
typedef VARIANT_BOOL = Int16;

/// {@category struct}
base class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;

  external VTablePointer pStream;
}

/// Represents a physical location on a disk.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-volume_disk_extents>.
///
/// {@category struct}
base class VOLUME_DISK_EXTENTS extends Struct {
  /// The number of disks in the volume (a volume can span multiple disks).
  @Uint32()
  external int NumberOfDiskExtents;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winioctl/ns-winioctl-disk_extent">DISK_EXTENT</a>
  /// structures.
  @Array(1)
  external Array<DISK_EXTENT> Extents;
}

/// Contains version information for a file.
///
/// This information is language and code page independent.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/verrsrc/ns-verrsrc-vs_fixedfileinfo>.
///
/// {@category struct}
base class VS_FIXEDFILEINFO extends Struct {
  /// Contains the value 0xFEEF04BD.
  @Uint32()
  external int dwSignature;

  /// The binary version number of this structure.
  @Uint32()
  external int dwStrucVersion;

  /// The most significant 32 bits of the file's binary version number.
  @Uint32()
  external int dwFileVersionMS;

  /// The least significant 32 bits of the file's binary version number.
  @Uint32()
  external int dwFileVersionLS;

  /// The most significant 32 bits of the binary version number of the product
  /// with which this file was distributed.
  @Uint32()
  external int dwProductVersionMS;

  /// The least significant 32 bits of the binary version number of the product
  /// with which this file was distributed.
  @Uint32()
  external int dwProductVersionLS;

  /// Contains a bitmask that specifies the valid bits in <b>dwFileFlags</b>.
  @Uint32()
  external int dwFileFlagsMask;

  @Uint32()
  external int dwFileFlags;

  @Uint32()
  external int dwFileOS;

  @Uint32()
  external int dwFileType;

  /// The function of the file.
  @Uint32()
  external int dwFileSubtype;

  /// The most significant 32 bits of the file's 64-bit binary creation date and
  /// time stamp.
  @Uint32()
  external int dwFileDateMS;

  /// The least significant 32 bits of the file's 64-bit binary creation date
  /// and time stamp.
  @Uint32()
  external int dwFileDateLS;
}

/// Defines the format of waveform-audio data.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveformatex>.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEX extends Struct {
  /// Waveform-audio format type.
  @Uint16()
  external int wFormatTag;

  /// Number of channels in the waveform-audio data.
  @Uint16()
  external int nChannels;

  /// Sample rate, in samples per second (hertz).
  @Uint32()
  external int nSamplesPerSec;

  /// Required average data-transfer rate, in bytes per second, for the format
  /// tag.
  @Uint32()
  external int nAvgBytesPerSec;

  /// Block alignment, in bytes.
  @Uint16()
  external int nBlockAlign;

  /// Bits per sample for the <b>wFormatTag</b> format type.
  @Uint16()
  external int wBitsPerSample;

  /// The size of the struct in bytes.
  @Uint16()
  external int cbSize;
}

/// Defines the format of waveform-audio data for formats having more than two
/// channels or higher sample resolutions than allowed by WAVEFORMATEX.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmreg/ns-mmreg-waveformatextensible>.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEXTENSIBLE extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/dd757713(v=vs.85)">WAVEFORMATEX</a>
  /// structure that specifies the basic format.
  external WAVEFORMATEX Format;

  /// A union describing the sample format.
  external WAVEFORMATEXTENSIBLE_0 Samples;

  /// Bitmask specifying the assignment of channels in the stream to speaker
  /// positions.
  @Uint32()
  external int dwChannelMask;

  /// Subformat of the data, such as KSDATAFORMAT_SUBTYPE_PCM.
  external GUID SubFormat;
}

/// {@category union}
@Packed(1)
sealed class WAVEFORMATEXTENSIBLE_0 extends Union {
  @Uint16()
  external int wValidBitsPerSample;

  @Uint16()
  external int wSamplesPerBlock;

  @Uint16()
  // ignore: unused_field
  external int _wReserved;
}

extension WAVEFORMATEXTENSIBLE_0_Extension on WAVEFORMATEXTENSIBLE {
  int get wValidBitsPerSample => this.Samples.wValidBitsPerSample;
  set wValidBitsPerSample(int value) =>
      this.Samples.wValidBitsPerSample = value;

  int get wSamplesPerBlock => this.Samples.wSamplesPerBlock;
  set wSamplesPerBlock(int value) => this.Samples.wSamplesPerBlock = value;
}

/// Defines the header used to identify a waveform-audio buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-wavehdr>.
///
/// {@category struct}
@Packed(1)
base class WAVEHDR extends Struct {
  /// Pointer to the waveform buffer.
  external Pointer<Utf8> lpData;

  /// Length, in bytes, of the buffer.
  @Uint32()
  external int dwBufferLength;

  /// When the header is used in input, specifies how much data is in the
  /// buffer.
  @Uint32()
  external int dwBytesRecorded;

  /// User data.
  @IntPtr()
  external int dwUser;

  /// A bitwise <b>OR</b> of zero or more flags.
  @Uint32()
  external int dwFlags;

  /// Number of times to play the loop.
  @Uint32()
  external int dwLoops;

  /// Reserved.
  external Pointer<WAVEHDR> lpNext;

  /// Reserved.
  @IntPtr()
  external int reserved;
}

/// Describes the capabilities of a waveform-audio input device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveincapsw>.
///
/// {@category struct}
@Packed(1)
base class WAVEINCAPS extends Struct {
  /// Manufacturer identifier for the device driver for the waveform-audio input
  /// device.
  @Uint16()
  external int wMid;

  /// Product identifier for the waveform-audio input device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the waveform-audio input device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Product name in a string.
  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_szPname[i] == 0x00) break;
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Standard formats that are supported.
  @Uint32()
  external int dwFormats;

  /// Number specifying whether the device supports mono (1) or stereo (2)
  /// input.
  @Uint16()
  external int wChannels;

  @Uint16()
  // ignore: unused_field
  external int _wReserved1;
}

/// Describes the capabilities of a waveform-audio output device.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveoutcapsw>.
///
/// {@category struct}
@Packed(1)
base class WAVEOUTCAPS extends Struct {
  /// Manufacturer identifier for the device driver for the device.
  @Uint16()
  external int wMid;

  /// Product identifier for the device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Product name in a string.
  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_szPname[i] == 0x00) break;
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Standard formats that are supported.
  @Uint32()
  external int dwFormats;

  /// Number specifying whether the device supports mono (1) or stereo (2)
  /// output.
  @Uint16()
  external int wChannels;

  @Uint16()
  // ignore: unused_field
  external int _wReserved1;

  /// Optional functionality supported by the device.
  @Uint32()
  external int dwSupport;
}

/// Contains information about the file that is found by the FindFirstFile,
/// FindFirstFileEx, or FindNextFile function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-win32_find_dataw>.
///
/// {@category struct}
base class WIN32_FIND_DATA extends Struct {
  /// The file attributes of a file.
  @Uint32()
  external int dwFileAttributes;

  /// A `FILETIME` structure that specifies when a file or directory was
  /// created.
  external FILETIME ftCreationTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastAccessTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastWriteTime;

  /// The high-order <b>DWORD</b> value of the file size, in bytes.
  @Uint32()
  external int nFileSizeHigh;

  /// The low-order <b>DWORD</b> value of the file size, in bytes.
  @Uint32()
  external int nFileSizeLow;

  /// If the <b>dwFileAttributes</b> member includes the
  /// <b>FILE_ATTRIBUTE_REPARSE_POINT</b> attribute, this member specifies the
  /// reparse point tag.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved0;

  /// Reserved for future use.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved1;

  @Array(260)
  external Array<Uint16> _cFileName;

  /// The name of the file.
  String get cFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      if (_cFileName[i] == 0x00) break;
      charCodes.add(_cFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cFileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _cFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  /// An alternative name for the file.
  String get cAlternateFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      if (_cAlternateFileName[i] == 0x00) break;
      charCodes.add(_cAlternateFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cAlternateFileName(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _cAlternateFileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains window information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowinfo>.
///
/// {@category struct}
base class WINDOWINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the window.
  external RECT rcWindow;

  /// The coordinates of the client area.
  external RECT rcClient;

  /// The window styles.
  @Uint32()
  external int dwStyle;

  /// The extended window styles.
  @Uint32()
  external int dwExStyle;

  /// The window status.
  @Uint32()
  external int dwWindowStatus;

  /// The width of the window border, in pixels.
  @Uint32()
  external int cxWindowBorders;

  /// The height of the window border, in pixels.
  @Uint32()
  external int cyWindowBorders;

  /// The window class atom (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-registerclassa">RegisterClass</a>).
  @Uint16()
  external int atomWindowType;

  /// The Windows version of the application that created the window.
  @Uint16()
  external int wCreatorVersion;
}

/// Contains information about the placement of a window on the screen.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowplacement>.
///
/// {@category struct}
base class WINDOWPLACEMENT extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int length;

  @Uint32()
  external int flags;

  /// The current show state of the window.
  @Uint32()
  external int showCmd;

  /// The coordinates of the window's upper-left corner when the window is
  /// minimized.
  external POINT ptMinPosition;

  /// The coordinates of the window's upper-left corner when the window is
  /// maximized.
  external POINT ptMaxPosition;

  /// The window's coordinates when the window is in the restored position.
  external RECT rcNormalPosition;
}

/// Contains information about the size and position of a window.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowpos>.
///
/// {@category struct}
base class WINDOWPOS extends Struct {
  /// A handle to the window.
  @IntPtr()
  external int hwnd;

  /// The position of the window in Z order (front-to-back position).
  @IntPtr()
  external int hwndInsertAfter;

  /// The position of the left edge of the window.
  @Int32()
  external int x;

  /// The position of the top edge of the window.
  @Int32()
  external int y;

  /// The window width, in pixels.
  @Int32()
  external int cx;

  /// The window height, in pixels.
  @Int32()
  external int cy;

  @Uint32()
  external int flags;
}

/// Describes a change in the size of the console screen buffer.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/console/window-buffer-size-record-str>.
///
/// {@category struct}
base class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  /// A `COORD` structure that contains the size of the console screen buffer,
  /// in character cell columns and rows.
  external COORD dwSize;
}

/// Contains association attributes for a connection.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_association_attributes>.
///
/// {@category struct}
base class WLAN_ASSOCIATION_ATTRIBUTES extends Struct {
  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that specifies whether the network is infrastructure or ad hoc.
  @Int32()
  external int dot11BssType;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-mac-address-type">DOT11_MAC_ADDRESS</a>
  /// that contains the BSSID of the association.
  @Array(6)
  external Array<Uint8> dot11Bssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// value that indicates the physical type of the association.
  @Int32()
  external int dot11PhyType;

  /// The position of the <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// value in the structure containing the list of PHY types.
  @Uint32()
  external int uDot11PhyIndex;

  /// A percentage value that represents the signal quality of the network.
  @Uint32()
  external int wlanSignalQuality;

  /// Contains the receiving rate of the association.
  @Uint32()
  external int ulRxRate;

  /// Contains the transmission rate of the association.
  @Uint32()
  external int ulTxRate;
}

/// Contains a list of authentication and cipher algorithm pairs.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_auth_cipher_pair_list>.
///
/// {@category struct}
base class WLAN_AUTH_CIPHER_PAIR_LIST extends Struct {
  /// Contains the number of supported auth-cipher pairs.
  @Uint32()
  external int dwNumberOfItems;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-cipher-pair">DOT11_AUTH_CIPHER_PAIR</a>
  /// structure containing a list of auth-cipher pairs.
  @Array(1)
  external Array<DOT11_AUTH_CIPHER_PAIR> pAuthCipherPairList;
}

/// Contains information about an available wireless network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_available_network>.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  /// Contains the profile name associated with the network.
  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strProfileName[i] == 0x00) break;
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// A `DOT11_SSID` structure that contains the SSID of the visible wireless
  /// network.
  external DOT11_SSID dot11Ssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that specifies whether the network is infrastructure or ad hoc.
  @Int32()
  external int dot11BssType;

  /// Indicates the number of BSSIDs in the network.
  @Uint32()
  external int uNumberOfBssids;

  /// Indicates whether the network is connectable or not.
  @Int32()
  external int bNetworkConnectable;

  /// A WLAN_REASON_CODE value that indicates why a network cannot be connected
  /// to.
  @Uint32()
  external int wlanNotConnectableReason;

  /// The number of PHY types supported on available networks.
  @Uint32()
  external int uNumberOfPhyTypes;

  /// Contains an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// values that represent the PHY types supported by the available networks.
  @Array(8)
  external Array<Int32> dot11PhyTypes;

  /// Specifies if there are more than <b>WLAN_MAX_PHY_TYPE_NUMBER</b> PHY types
  /// supported.
  @Int32()
  external int bMorePhyTypes;

  /// A percentage value that represents the signal quality of the network.
  @Uint32()
  external int wlanSignalQuality;

  /// Indicates whether security is enabled on the network.
  @Int32()
  external int bSecurityEnabled;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that indicates the default authentication algorithm used to join
  /// this network for the first time.
  @Int32()
  external int dot11DefaultAuthAlgorithm;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that indicates the default cipher algorithm to be used when joining
  /// this network.
  @Int32()
  external int dot11DefaultCipherAlgorithm;

  /// Contains various flags for the network.
  @Uint32()
  external int dwFlags;

  /// Reserved for future use.
  @Uint32()
  // ignore: unused_field
  external int _dwReserved;
}

/// Contains an array of information about available networks.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_available_network_list>.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK_LIST extends Struct {
  /// Contains the number of items in the <b>Network</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_available_network">WLAN_AVAILABLE_NETWORK</a>
  /// structures containing interface information.
  @Array(1)
  external Array<WLAN_AVAILABLE_NETWORK> Network;
}

/// Contains information about a basic service set (BSS).
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_bss_entry>.
///
/// {@category struct}
base class WLAN_BSS_ENTRY extends Struct {
  /// The SSID of the access point (AP) or peer station associated with the BSS.
  external DOT11_SSID dot11Ssid;

  /// The identifier (ID) of the PHY that the wireless LAN interface used to
  /// detect the BSS network.
  @Uint32()
  external int uPhyId;

  /// The media access control (MAC) address of the access point for
  /// infrastructure BSS networks or the peer station for independent BSS
  /// networks (ad hoc networks) that sent the 802.11 Beacon or Probe Response
  /// frame received by the wireless LAN interface while scanning.
  @Array(6)
  external Array<Uint8> dot11Bssid;

  /// The BSS network type.
  @Int32()
  external int dot11BssType;

  /// The PHY type for this network.
  @Int32()
  external int dot11BssPhyType;

  /// The received signal strength indicator (RSSI) value, in units of decibels
  /// referenced to 1.0 milliwatts (dBm), as detected by the wireless LAN
  /// interface driver for the AP or peer station.
  @Int32()
  external int lRssi;

  /// The link quality reported by the wireless LAN interface driver.
  @Uint32()
  external int uLinkQuality;

  /// A value that specifies whether the AP or peer station is operating within
  /// the regulatory domain as identified by the country/region.
  @Uint8()
  external int bInRegDomain;

  /// The value of the Beacon Interval field from the 802.11 Beacon or Probe
  /// Response frame received by the wireless LAN interface.
  @Uint16()
  external int usBeaconPeriod;

  /// The value of the Timestamp field from the 802.11 Beacon or Probe Response
  /// frame received by the wireless LAN interface.
  @Uint64()
  external int ullTimestamp;

  /// The host timestamp value that records when wireless LAN interface received
  /// the Beacon or Probe Response frame.
  @Uint64()
  external int ullHostTimestamp;

  /// The value of the Capability Information field from the 802.11 Beacon or
  /// Probe Response frame received by the wireless LAN interface.
  @Uint16()
  external int usCapabilityInformation;

  /// The channel center frequency of the band on which the 802.11 Beacon or
  /// Probe Response frame was received.
  @Uint32()
  external int ulChCenterFrequency;

  /// A set of data transfer rates supported by the BSS.
  external WLAN_RATE_SET wlanRateSet;

  /// The offset, in bytes, of the information element (IE) data blob from the
  /// beginning of the <b>WLAN_BSS_ENTRY</b> structure.
  @Uint32()
  external int ulIeOffset;

  /// The size, in bytes, of the IE data blob in the <b>WLAN_BSS_ENTRY</b>
  /// structure.
  @Uint32()
  external int ulIeSize;
}

/// Contains a list of basic service set (BSS) entries.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_bss_list>.
///
/// {@category struct}
base class WLAN_BSS_LIST extends Struct {
  /// The total size of this structure, in bytes.
  @Uint32()
  external int dwTotalSize;

  /// The number of items in the <b>wlanBssEntries</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_bss_entry">WLAN_BSS_ENTRY</a>
  /// structures that contains information about a BSS.
  @Array(1)
  external Array<WLAN_BSS_ENTRY> wlanBssEntries;
}

/// Defines the attributes of a wireless connection.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_attributes>.
///
/// {@category struct}
base class WLAN_CONNECTION_ATTRIBUTES extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state-r1">WLAN_INTERFACE_STATE</a>
  /// value that indicates the state of the interface.
  @Int32()
  external int isState;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that indicates the mode of the connection.
  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// The name of the profile used for the connection.
  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strProfileName[i] == 0x00) break;
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// A `WLAN_ASSOCIATION_ATTRIBUTES` structure that contains the attributes of
  /// the association.
  external WLAN_ASSOCIATION_ATTRIBUTES wlanAssociationAttributes;

  /// A `WLAN_SECURITY_ATTRIBUTES` structure that contains the security
  /// attributes of the connection.
  external WLAN_SECURITY_ATTRIBUTES wlanSecurityAttributes;
}

/// Contains information about connection related notifications.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_notification_data>.
///
/// {@category struct}
base class WLAN_CONNECTION_NOTIFICATION_DATA extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of the connection.
  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// The name of the profile used for the connection.
  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strProfileName[i] == 0x00) break;
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  @Int32()
  external int dot11BssType;

  /// Indicates whether security is enabled for this connection.
  @Int32()
  external int bSecurityEnabled;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/wlan-reason-code">WLAN_REASON_CODE</a>
  /// that indicates the reason for an operation failure.
  @Uint32()
  external int wlanReasonCode;

  /// A set of flags that provide additional information for the network
  /// connection.
  @Uint32()
  external int dwFlags;

  /// This field contains the XML presentation of the profile used for
  /// discovery, if the connection succeeds.
  @Array(1)
  external Array<Uint16> strProfileXml;
}

/// Specifies the parameters used when using the WlanConnect function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_parameters>.
///
/// {@category struct}
base class WLAN_CONNECTION_PARAMETERS extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of connection.
  @Int32()
  external int wlanConnectionMode;

  /// Specifies the profile being used for the connection.
  external Pointer<Utf16> strProfile;

  /// Pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-ssid">DOT11_SSID</a>
  /// structure that specifies the SSID of the network to connect to.
  external Pointer<DOT11_SSID> pDot11Ssid;

  /// Pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bssid-list">DOT11_BSSID_LIST</a>
  /// structure that contains the list of basic service set (BSS) identifiers
  /// desired for the connection.
  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS type of the network.
  @Int32()
  external int dot11BssType;

  @Uint32()
  external int dwFlags;
}

/// Contains a list of supported country or region strings.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_country_or_region_string_list>.
///
/// {@category struct}
base class WLAN_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  /// Indicates the number of supported country or region strings.
  @Uint32()
  external int dwNumberOfItems;

  /// A list of supported country or region strings.
  @Array(3)
  external Array<Uint8> pCountryOrRegionStringList;
}

/// Contains an array of device service GUIDs.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_device_service_guid_list>.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_GUID_LIST extends Struct {
  /// The number of items in the *DeviceService* argument.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// A pointer to an array containing [GUID]s; each corresponds to a WLAN
  /// device service that the driver supports.
  @Array(1)
  external Array<GUID> DeviceService;
}

/// A structure that represents a device service notification.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_device_service_notification_data>.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_NOTIFICATION_DATA extends Struct {
  /// The [GUID] identifying the device service for this notification.
  external GUID DeviceService;

  /// The opcode that identifies the operation under the device service for this
  /// notification.
  @Uint32()
  external int dwOpCode;

  /// The size, in bytes, of the *DataBlob* member.
  @Uint32()
  external int dwDataSize;

  /// A pointer to an array containing **BYTES**s, representing the data blob.
  @Array(1)
  external Array<Uint8> DataBlob;
}

/// Contains information about the connection settings on the wireless Hosted
/// Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_connection_settings>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS extends Struct {
  /// The SSID associated with the wireless Hosted Network.
  external DOT11_SSID hostedNetworkSSID;

  /// The maximum number of concurrent peers allowed by the wireless Hosted
  /// Network.
  @Uint32()
  external int dwMaxNumberOfPeers;
}

/// Contains information about a network state change for a data peer on the
/// wireless Hosted Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_data_peer_state_change>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE extends Struct {
  /// The previous network state for a data peer on the wireless Hosted Network.
  external WLAN_HOSTED_NETWORK_PEER_STATE OldState;

  /// The current network state for a data peer on the wireless Hosted Network.
  external WLAN_HOSTED_NETWORK_PEER_STATE NewState;

  /// The reason for the network state change for the data peer.
  @Int32()
  external int PeerStateChangeReason;
}

/// Contains information about the peer state for a peer on the wireless Hosted
/// Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_peer_state>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_PEER_STATE extends Struct {
  /// The MAC address of the peer being described.
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  /// The current authentication state of this peer.
  @Int32()
  external int PeerAuthState;
}

/// Contains information about the radio state on the wireless Hosted Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_radio_state>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_RADIO_STATE extends Struct {
  /// The software radio state of the wireless Hosted Network.
  @Int32()
  external int dot11SoftwareRadioState;

  /// The hardware radio state of the wireless Hosted Network.
  @Int32()
  external int dot11HardwareRadioState;
}

/// Contains information about the security settings on the wireless Hosted
/// Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_security_settings>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_SECURITY_SETTINGS extends Struct {
  /// The authentication algorithm used by the wireless Hosted Network.
  @Int32()
  external int dot11AuthAlgo;

  /// The cipher algorithm used by the wireless Hosted Network.
  @Int32()
  external int dot11CipherAlgo;
}

/// Contains information about a network state change on the wireless Hosted
/// Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_state_change>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATE_CHANGE extends Struct {
  /// The previous network state on the wireless Hosted Network.
  @Int32()
  external int OldState;

  /// The current network state on the wireless Hosted Network.
  @Int32()
  external int NewState;

  /// The reason for the network state change.
  @Int32()
  external int StateChangeReason;
}

/// Contains information about the status of the wireless Hosted Network.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_status>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATUS extends Struct {
  /// The current state of the wireless Hosted Network.
  @Int32()
  external int HostedNetworkState;

  /// The actual network Device ID used for the wireless Hosted Network.
  external GUID IPDeviceID;

  /// The BSSID used by the wireless Hosted Network in packets, beacons, and
  /// probe responses.
  @Array(6)
  external Array<Uint8> wlanHostedNetworkBSSID;

  /// The physical type of the network interface used by wireless Hosted
  /// Network.
  @Int32()
  external int dot11PhyType;

  /// The channel frequency of the network interface used by wireless Hosted
  /// Network.
  @Uint32()
  external int ulChannelFrequency;

  /// The current number of authenticated peers on the wireless Hosted Network.
  @Uint32()
  external int dwNumberOfPeers;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_hosted_network_peer_state">WLAN_HOSTED_NETWORK_PEER_STATE</a>
  /// structures describing each of the current peers on the wireless Hosted
  /// Network.
  @Array(1)
  external Array<WLAN_HOSTED_NETWORK_PEER_STATE> PeerList;
}

/// Contains information about the capabilities of an interface.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_capability>.
///
/// {@category struct}
base class WLAN_INTERFACE_CAPABILITY extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_interface_type">WLAN_INTERFACE_TYPE</a>
  /// value that indicates the type of the interface.
  @Int32()
  external int interfaceType;

  /// Indicates whether 802.11d is supported by the interface.
  @Int32()
  external int bDot11DSupported;

  /// The maximum size of the SSID list supported by this interface.
  @Uint32()
  external int dwMaxDesiredSsidListSize;

  /// The maximum size of the basic service set (BSS) identifier list supported
  /// by this interface.
  @Uint32()
  external int dwMaxDesiredBssidListSize;

  /// Contains the number of supported PHY types.
  @Uint32()
  external int dwNumberOfSupportedPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// values that specify the supported PHY types.
  @Array(64)
  external Array<Int32> dot11PhyTypes;
}

/// Contains information about a wireless LAN interface.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_info>.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO extends Struct {
  /// Contains the GUID of the interface.
  external GUID InterfaceGuid;

  @Array(256)
  external Array<Uint16> _strInterfaceDescription;

  /// Contains the description of the interface.
  String get strInterfaceDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strInterfaceDescription[i] == 0x00) break;
      charCodes.add(_strInterfaceDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strInterfaceDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strInterfaceDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// Contains a <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state-r1">WLAN_INTERFACE_STATE</a>
  /// value that indicates the current state of the interface.
  @Int32()
  external int isState;
}

/// Array of NIC interface information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_info_list>.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO_LIST extends Struct {
  /// Contains the number of items in the <b>InterfaceInfo</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_interface_info">WLAN_INTERFACE_INFO</a>
  /// structures containing interface information.
  @Array(1)
  external Array<WLAN_INTERFACE_INFO> InterfaceInfo;
}

/// Contains information about sent and received MAC frames.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_mac_frame_statistics>.
///
/// {@category struct}
base class WLAN_MAC_FRAME_STATISTICS extends Struct {
  /// Contains the number of successfully transmitted MSDU/MMPDUs.
  @Uint64()
  external int ullTransmittedFrameCount;

  /// Contains the number of successfully received MSDU/MMPDUs.
  @Uint64()
  external int ullReceivedFrameCount;

  /// Contains the number of frames discarded due to having a "Protected" status
  /// indicated in the frame control field.
  @Uint64()
  external int ullWEPExcludedCount;

  /// Contains the number of MIC failures encountered while checking the
  /// integrity of packets received from the AP or peer station.
  @Uint64()
  external int ullTKIPLocalMICFailures;

  /// Contains the number of TKIP replay errors detected.
  @Uint64()
  external int ullTKIPReplays;

  /// Contains the number of TKIP protected packets that the NIC failed to
  /// decrypt.
  @Uint64()
  external int ullTKIPICVErrorCount;

  /// Contains the number of received unicast fragments discarded by the replay
  /// mechanism.
  @Uint64()
  external int ullCCMPReplays;

  /// Contains the number of received fragments discarded by the CCMP decryption
  /// algorithm.
  @Uint64()
  external int ullCCMPDecryptErrors;

  /// Contains the number of WEP protected packets received for which a
  /// decryption key was not available on the NIC.
  @Uint64()
  external int ullWEPUndecryptableCount;

  /// Contains the number of WEP protected packets the NIC failed to decrypt.
  @Uint64()
  external int ullWEPICVErrorCount;

  /// Contains the number of encrypted packets that the NIC has successfully
  /// decrypted.
  @Uint64()
  external int ullDecryptSuccessCount;

  /// Contains the number of encrypted packets that the NIC has failed to
  /// decrypt.
  @Uint64()
  external int ullDecryptFailureCount;
}

/// Contains information about media specific module (MSM) connection related
/// notifications.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_msm_notification_data>.
///
/// {@category struct}
base class WLAN_MSM_NOTIFICATION_DATA extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of the connection.
  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// The name of the profile used for the connection.
  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strProfileName[i] == 0x00) break;
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  @Int32()
  external int dot11BssType;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-mac-address-type">DOT11_MAC_ADDRESS</a>
  /// that specifies the MAC address of the peer or access point.
  @Array(6)
  external Array<Uint8> dot11MacAddr;

  /// Indicates whether security is enabled for this connection.
  @Int32()
  external int bSecurityEnabled;

  /// Indicates whether the peer is the first to join the ad hoc network created
  /// by the machine.
  @Int32()
  external int bFirstPeer;

  /// Indicates whether the peer is the last to leave the ad hoc network created
  /// by the machine.
  @Int32()
  external int bLastPeer;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/wlan-reason-code">WLAN_REASON_CODE</a>
  /// that indicates the reason for an operation failure.
  @Uint32()
  external int wlanReasonCode;
}

/// Contains information about sent and received PHY frames.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_phy_frame_statistics>.
///
/// {@category struct}
base class WLAN_PHY_FRAME_STATISTICS extends Struct {
  /// Contains the number of successfully transmitted MSDU/MMPDUs.
  @Uint64()
  external int ullTransmittedFrameCount;

  /// Contains the number of successfully transmitted MSDU/MMPDUs in which the
  /// multicast bit is set as the destination MAC address.
  @Uint64()
  external int ullMulticastTransmittedFrameCount;

  /// Contains the number of MSDU/MMPDUs transmission failures due to the number
  /// of transmit attempts exceeding the retry limit.
  @Uint64()
  external int ullFailedCount;

  /// Contains the number of MSDU/MMPDUs successfully transmitted after one or
  /// more retransmissions.
  @Uint64()
  external int ullRetryCount;

  /// Contains the number of MSDU/MMPDUs successfully transmitted after more
  /// than one retransmission.
  @Uint64()
  external int ullMultipleRetryCount;

  /// Contains the number of fragmented MSDU/MMPDUs that failed to send due to
  /// timeout.
  @Uint64()
  external int ullMaxTXLifetimeExceededCount;

  /// Contains the number of MPDUs with an individual address in the address 1
  /// field and MPDUs that have a multicast address with types Data or
  /// Management.
  @Uint64()
  external int ullTransmittedFragmentCount;

  /// Contains the number of times a CTS has been received in response to an
  /// RTS.
  @Uint64()
  external int ullRTSSuccessCount;

  /// Contains the number of times a CTS has not been received in response to an
  /// RTS.
  @Uint64()
  external int ullRTSFailureCount;

  /// Contains the number of times an expected ACK has not been received.
  @Uint64()
  external int ullACKFailureCount;

  /// Contains the number of MSDU/MMPDUs successfully received.
  @Uint64()
  external int ullReceivedFrameCount;

  /// Contains the number of successfully received MSDU/MMPDUs with the
  /// multicast bit set in the MAC address.
  @Uint64()
  external int ullMulticastReceivedFrameCount;

  /// Contains the number of MSDU/MMPDUs successfully received only because
  /// promiscuous mode is enabled.
  @Uint64()
  external int ullPromiscuousReceivedFrameCount;

  /// Contains the number of fragmented MSDU/MMPDUs dropped due to timeout.
  @Uint64()
  external int ullMaxRXLifetimeExceededCount;

  /// Contains the number of frames received that the Sequence Control field
  /// indicates as a duplicate.
  @Uint64()
  external int ullFrameDuplicateCount;

  /// Contains the number of successfully received Data or Management MPDUs.
  @Uint64()
  external int ullReceivedFragmentCount;

  /// Contains the number of MPDUs successfully received only because
  /// promiscuous mode is enabled.
  @Uint64()
  external int ullPromiscuousReceivedFragmentCount;

  /// Contains the number of times an FCS error has been detected in a received
  /// MPDU.
  @Uint64()
  external int ullFCSErrorCount;
}

/// Specifies the radio state.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_phy_radio_state>.
///
/// {@category struct}
base class WLAN_PHY_RADIO_STATE extends Struct {
  /// The index of the PHY type on which the radio state is being set or
  /// queried.
  @Uint32()
  external int dwPhyIndex;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state-r1">DOT11_RADIO_STATE</a>
  /// value that indicates the software radio state.
  @Int32()
  external int dot11SoftwareRadioState;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state-r1">DOT11_RADIO_STATE</a>
  /// value that indicates the hardware radio state.
  @Int32()
  external int dot11HardwareRadioState;
}

/// Basic information about a profile.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_profile_info>.
///
/// {@category struct}
base class WLAN_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  /// The name of the profile.
  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      if (_strProfileName[i] == 0x00) break;
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  /// A set of flags specifying settings for wireless profile.
  @Uint32()
  external int dwFlags;
}

/// Contains a list of wireless profile information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_profile_info_list>.
///
/// {@category struct}
base class WLAN_PROFILE_INFO_LIST extends Struct {
  /// The number of wireless profile entries in the <b>ProfileInfo</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_profile_info">WLAN_PROFILE_INFO</a>
  /// structures containing interface information.
  @Array(1)
  external Array<WLAN_PROFILE_INFO> ProfileInfo;
}

/// Specifies the radio state on a list of physical layer (PHY) types.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_radio_state>.
///
/// {@category struct}
base class WLAN_RADIO_STATE extends Struct {
  /// The number of valid PHY indices in the <b>PhyRadioState</b> member.
  @Uint32()
  external int dwNumberOfPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_phy_radio_state">WLAN_PHY_RADIO_STATE</a>
  /// structures that specify the radio states of a number of PHY indices.
  @Array(64)
  external Array<WLAN_PHY_RADIO_STATE> PhyRadioState;
}

/// The set of supported data rates.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_rate_set>.
///
/// {@category struct}
base class WLAN_RATE_SET extends Struct {
  /// The length, in bytes, of <b>usRateSet</b>.
  @Uint32()
  external int uRateSetLength;

  /// An array of supported data transfer rates.
  @Array(126)
  external Array<Uint16> usRateSet;
}

/// Contains raw data in the form of a blob that is used by some Native Wifi
/// functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_raw_data>.
///
/// {@category struct}
base class WLAN_RAW_DATA extends Struct {
  /// The size, in bytes, of the <b>DataBlob</b> member.
  @Uint32()
  external int dwDataSize;

  /// The data blob.
  @Array(1)
  external Array<Uint8> DataBlob;
}

/// Contains raw data in the form of an array of data blobs that are used by
/// some Native Wifi functions.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_raw_data_list>.
///
/// {@category struct}
base class WLAN_RAW_DATA_LIST extends Struct {
  /// The total size, in bytes, of the <b>WLAN_RAW_DATA_LIST</b> structure.
  @Uint32()
  external int dwTotalSize;

  /// The number of raw data entries or blobs in the <b>WLAN_RAW_DATA_LIST</b>
  /// structure.
  @Uint32()
  external int dwNumberOfItems;

  /// An array of raw data entries or blobs that make up the data list.
  @Array(1)
  external Array<WLAN_RAW_DATA_LIST_0> DataList;
}

/// {@category struct}
sealed class WLAN_RAW_DATA_LIST_0 extends Struct {
  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;
}

/// Defines the security attributes for a wireless connection.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_security_attributes>.
///
/// {@category struct}
base class WLAN_SECURITY_ATTRIBUTES extends Struct {
  /// Indicates whether security is enabled for this connection.
  @Int32()
  external int bSecurityEnabled;

  /// Indicates whether 802.1X is enabled for this connection.
  @Int32()
  external int bOneXEnabled;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that identifies the authentication algorithm.
  @Int32()
  external int dot11AuthAlgorithm;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that identifies the cipher algorithm.
  @Int32()
  external int dot11CipherAlgorithm;
}

/// Assorted statistics about an interface.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_statistics>.
///
/// {@category struct}
base class WLAN_STATISTICS extends Struct {
  /// Indicates the number of 4-way handshake failures.
  @Uint64()
  external int ullFourWayHandshakeFailures;

  /// Indicates the number of TKIP countermeasures performed by an IHV Miniport
  /// driver.
  @Uint64()
  external int ullTKIPCounterMeasuresInvoked;

  /// Reserved for use by Microsoft.
  @Uint64()
  // ignore: unused_field
  external int _ullReserved;

  /// A `WLAN_MAC_FRAME_STATISTICS` structure that contains MAC layer counters
  /// for unicast packets directed to the receiver of the NIC.
  external WLAN_MAC_FRAME_STATISTICS MacUcastCounters;

  /// A `WLAN_MAC_FRAME_STATISTICS` structure that contains MAC layer counters
  /// for multicast packets directed to the current multicast address.
  external WLAN_MAC_FRAME_STATISTICS MacMcastCounters;

  /// Contains the number of <b>WLAN_PHY_FRAME_STATISTICS</b> structures in the
  /// <b>PhyCounters</b> member.
  @Uint32()
  external int dwNumberOfPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_phy_frame_statistics">WLAN_PHY_FRAME_STATISTICS</a>
  /// structures that contain PHY layer counters.
  @Array(1)
  external Array<WLAN_PHY_FRAME_STATISTICS> PhyCounters;
}

/// Contains the window class attributes that are registered by the
/// RegisterClass function.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-wndclassw>.
///
/// {@category struct}
base class WNDCLASS extends Struct {
  /// The class style(s).
  @Uint32()
  external int style;

  /// A pointer to the window procedure.
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  /// The number of extra bytes to allocate following the window-class
  /// structure.
  @Int32()
  external int cbClsExtra;

  /// The number of extra bytes to allocate following the window instance.
  @Int32()
  external int cbWndExtra;

  /// A handle to the instance that contains the window procedure for the class.
  @IntPtr()
  external int hInstance;

  /// A handle to the class icon.
  @IntPtr()
  external int hIcon;

  /// A handle to the class cursor.
  @IntPtr()
  external int hCursor;

  /// A handle to the class background brush.
  @IntPtr()
  external int hbrBackground;

  /// The resource name of the class menu, as the name appears in the resource
  /// file.
  external Pointer<Utf16> lpszMenuName;

  /// A pointer to a null-terminated string or is an atom.
  external Pointer<Utf16> lpszClassName;
}

/// Contains window class information.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-wndclassexw>.
///
/// {@category struct}
base class WNDCLASSEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The class style(s).
  @Uint32()
  external int style;

  /// A pointer to the window procedure.
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  /// The number of extra bytes to allocate following the window-class
  /// structure.
  @Int32()
  external int cbClsExtra;

  /// The number of extra bytes to allocate following the window instance.
  @Int32()
  external int cbWndExtra;

  /// A handle to the instance that contains the window procedure for the class.
  @IntPtr()
  external int hInstance;

  /// A handle to the class icon.
  @IntPtr()
  external int hIcon;

  /// A handle to the class cursor.
  @IntPtr()
  external int hCursor;

  /// A handle to the class background brush.
  @IntPtr()
  external int hbrBackground;

  /// Pointer to a null-terminated character string that specifies the resource
  /// name of the class menu, as the name appears in the resource file.
  external Pointer<Utf16> lpszMenuName;

  /// A pointer to a null-terminated string or is an atom.
  external Pointer<Utf16> lpszClassName;

  /// A handle to a small icon that is associated with the window class.
  @IntPtr()
  external int hIconSm;
}

/// {@category struct}
typedef WPARAM = IntPtr;

/// Defines options that are used to set window visual style attributes.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-wta_options>.
///
/// {@category struct}
base class WTA_OPTIONS extends Struct {
  /// A combination of flags that modify window visual style attributes.
  @Uint32()
  external int dwFlags;

  /// A bitmask that describes how the values specified in <b>dwFlags</b> should
  /// be applied.
  @Uint32()
  external int dwMask;
}

/// Specifies a world-space to page-space transformation.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-xform>.
///
/// {@category struct}
base class XFORM extends Struct {
  @Float()
  external double eM11;

  @Float()
  external double eM12;

  @Float()
  external double eM21;

  @Float()
  external double eM22;

  /// The horizontal translation component, in logical units.
  @Float()
  external double eDx;

  /// The vertical translation component, in logical units.
  @Float()
  external double eDy;
}

/// Contains information on battery type and charge state.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_battery_information>.
///
/// {@category struct}
base class XINPUT_BATTERY_INFORMATION extends Struct {
  @Uint8()
  external int BatteryType;

  @Uint8()
  external int BatteryLevel;
}

/// Describes the capabilities of a connected controller.
///
/// The XInputGetCapabilities function returns XINPUT_CAPABILITIES.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_capabilities>.
///
/// {@category struct}
base class XINPUT_CAPABILITIES extends Struct {
  @Uint8()
  external int Type;

  /// Subtype of the game controller.
  @Uint8()
  external int SubType;

  /// Features of the controller.
  @Uint16()
  external int Flags;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_gamepad">XINPUT_GAMEPAD</a>
  /// structure that describes available controller features and control
  /// resolutions.
  external XINPUT_GAMEPAD Gamepad;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_vibration">XINPUT_VIBRATION</a>
  /// structure that describes available vibration functionality and
  /// resolutions.
  external XINPUT_VIBRATION Vibration;
}

/// Describes the current state of the Xbox 360 Controller.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_gamepad>.
///
/// {@category struct}
base class XINPUT_GAMEPAD extends Struct {
  /// Bitmask of the device digital buttons, as follows.
  @Uint16()
  external int wButtons;

  /// The current value of the left trigger analog control.
  @Uint8()
  external int bLeftTrigger;

  /// The current value of the right trigger analog control.
  @Uint8()
  external int bRightTrigger;

  /// Left thumbstick x-axis value.
  @Int16()
  external int sThumbLX;

  /// Left thumbstick y-axis value.
  @Int16()
  external int sThumbLY;

  /// Right thumbstick x-axis value.
  @Int16()
  external int sThumbRX;

  /// Right thumbstick y-axis value.
  @Int16()
  external int sThumbRY;
}

/// Specifies keystroke data returned by XInputGetKeystroke.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_keystroke>.
///
/// {@category struct}
base class XINPUT_KEYSTROKE extends Struct {
  /// Virtual-key code of the key, button, or stick movement.
  @Uint16()
  external int VirtualKey;

  /// This member is unused and the value is zero.
  @Uint16()
  external int Unicode;

  /// Flags that indicate the keyboard state at the time of the input event.
  @Uint16()
  external int Flags;

  /// Index of the signed-in gamer associated with the device.
  @Uint8()
  external int UserIndex;

  /// HID code corresponding to the input.
  @Uint8()
  external int HidCode;
}

/// Represents the state of a controller.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_state>.
///
/// {@category struct}
base class XINPUT_STATE extends Struct {
  /// State packet number.
  @Uint32()
  external int dwPacketNumber;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_gamepad">XINPUT_GAMEPAD</a>
  /// structure containing the current state of an Xbox 360 Controller.
  external XINPUT_GAMEPAD Gamepad;
}

/// Specifies motor speed levels for the vibration function of a controller.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_vibration>.
///
/// {@category struct}
base class XINPUT_VIBRATION extends Struct {
  /// Speed of the left motor.
  @Uint16()
  external int wLeftMotorSpeed;

  /// Speed of the right motor.
  @Uint16()
  external int wRightMotorSpeed;
}

/// {@category struct}
typedef socklen_t = Int32;
