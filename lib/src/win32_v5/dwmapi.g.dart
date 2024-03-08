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

final _dwmapi = DynamicLibrary.open('dwmapi.dll');

/// Enables the blur effect on a specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmenableblurbehindwindow>.
///
/// {@category dwmapi}
int DwmEnableBlurBehindWindow(int hWnd, Pointer<DWM_BLURBEHIND> pBlurBehind) =>
    _DwmEnableBlurBehindWindow(hWnd, pBlurBehind);

final _DwmEnableBlurBehindWindow = _dwmapi.lookupFunction<
    HRESULT Function(HWND hWnd, Pointer<DWM_BLURBEHIND> pBlurBehind),
    int Function(int hWnd,
        Pointer<DWM_BLURBEHIND> pBlurBehind)>('DwmEnableBlurBehindWindow');

/// Notifies the Desktop Window Manager (DWM) to opt in to or out of Multimedia
/// Class Schedule Service (MMCSS) scheduling while the calling process is
/// alive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmenablemmcss>.
///
/// {@category dwmapi}
int DwmEnableMMCSS(int fEnableMMCSS) => _DwmEnableMMCSS(fEnableMMCSS);

final _DwmEnableMMCSS = _dwmapi.lookupFunction<
    HRESULT Function(BOOL fEnableMMCSS),
    int Function(int fEnableMMCSS)>('DwmEnableMMCSS');

/// Extends the window frame into the client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmextendframeintoclientarea>.
///
/// {@category dwmapi}
int DwmExtendFrameIntoClientArea(int hWnd, Pointer<MARGINS> pMarInset) =>
    _DwmExtendFrameIntoClientArea(hWnd, pMarInset);

final _DwmExtendFrameIntoClientArea = _dwmapi.lookupFunction<
    HRESULT Function(HWND hWnd, Pointer<MARGINS> pMarInset),
    int Function(
        int hWnd, Pointer<MARGINS> pMarInset)>('DwmExtendFrameIntoClientArea');

/// Issues a flush call that blocks the caller until the next present, when all
/// of the Microsoft DirectX surface updates that are currently outstanding have
/// been made.
///
/// This compensates for very complex scenes or calling processes with very low
/// priority.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmflush>.
///
/// {@category dwmapi}
int DwmFlush() => _DwmFlush();

final _DwmFlush =
    _dwmapi.lookupFunction<HRESULT Function(), int Function()>('DwmFlush');

/// Retrieves the current color used for Desktop Window Manager (DWM) glass
/// composition.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgetcolorizationcolor>.
///
/// {@category dwmapi}
int DwmGetColorizationColor(
        Pointer<Uint32> pcrColorization, Pointer<BOOL> pfOpaqueBlend) =>
    _DwmGetColorizationColor(pcrColorization, pfOpaqueBlend);

final _DwmGetColorizationColor = _dwmapi.lookupFunction<
    HRESULT Function(
        Pointer<Uint32> pcrColorization, Pointer<BOOL> pfOpaqueBlend),
    int Function(Pointer<Uint32> pcrColorization,
        Pointer<BOOL> pfOpaqueBlend)>('DwmGetColorizationColor');

/// Retrieves transport attributes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgettransportattributes>.
///
/// {@category dwmapi}
int DwmGetTransportAttributes(Pointer<BOOL> pfIsRemoting,
        Pointer<BOOL> pfIsConnected, Pointer<Uint32> pDwGeneration) =>
    _DwmGetTransportAttributes(pfIsRemoting, pfIsConnected, pDwGeneration);

final _DwmGetTransportAttributes = _dwmapi.lookupFunction<
    HRESULT Function(Pointer<BOOL> pfIsRemoting, Pointer<BOOL> pfIsConnected,
        Pointer<Uint32> pDwGeneration),
    int Function(Pointer<BOOL> pfIsRemoting, Pointer<BOOL> pfIsConnected,
        Pointer<Uint32> pDwGeneration)>('DwmGetTransportAttributes');

/// Retrieves the current value of a specified Desktop Window Manager (DWM)
/// attribute applied to a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgetwindowattribute>.
///
/// {@category dwmapi}
int DwmGetWindowAttribute(
        int hwnd, int dwAttribute, Pointer pvAttribute, int cbAttribute) =>
    _DwmGetWindowAttribute(hwnd, dwAttribute, pvAttribute, cbAttribute);

final _DwmGetWindowAttribute = _dwmapi.lookupFunction<
    HRESULT Function(
        HWND hwnd, Uint32 dwAttribute, Pointer pvAttribute, Uint32 cbAttribute),
    int Function(int hwnd, int dwAttribute, Pointer pvAttribute,
        int cbAttribute)>('DwmGetWindowAttribute');

/// Called by an application to indicate that all previously provided iconic
/// bitmaps from a window, both thumbnails and peek representations, should be
/// refreshed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwminvalidateiconicbitmaps>.
///
/// {@category dwmapi}
int DwmInvalidateIconicBitmaps(int hwnd) => _DwmInvalidateIconicBitmaps(hwnd);

final _DwmInvalidateIconicBitmaps =
    _dwmapi.lookupFunction<HRESULT Function(HWND hwnd), int Function(int hwnd)>(
        'DwmInvalidateIconicBitmaps');

/// Notifies Desktop Window Manager (DWM) that a touch contact has been
/// recognized as a gesture, and that DWM should draw feedback for that gesture.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmrendergesture>.
///
/// {@category dwmapi}
int DwmRenderGesture(int gt, int cContacts, Pointer<Uint32> pdwPointerID,
        Pointer<POINT> pPoints) =>
    _DwmRenderGesture(gt, cContacts, pdwPointerID, pPoints);

final _DwmRenderGesture = _dwmapi.lookupFunction<
    HRESULT Function(Int32 gt, Uint32 cContacts, Pointer<Uint32> pdwPointerID,
        Pointer<POINT> pPoints),
    int Function(int gt, int cContacts, Pointer<Uint32> pdwPointerID,
        Pointer<POINT> pPoints)>('DwmRenderGesture');

/// Sets the value of Desktop Window Manager (DWM) non-client rendering
/// attributes for a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmsetwindowattribute>.
///
/// {@category dwmapi}
int DwmSetWindowAttribute(
        int hwnd, int dwAttribute, Pointer pvAttribute, int cbAttribute) =>
    _DwmSetWindowAttribute(hwnd, dwAttribute, pvAttribute, cbAttribute);

final _DwmSetWindowAttribute = _dwmapi.lookupFunction<
    HRESULT Function(
        HWND hwnd, Uint32 dwAttribute, Pointer pvAttribute, Uint32 cbAttribute),
    int Function(int hwnd, int dwAttribute, Pointer pvAttribute,
        int cbAttribute)>('DwmSetWindowAttribute');

/// Called by an app or framework to specify the visual feedback type to draw in
/// response to a particular touch or pen contact.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmshowcontact>.
///
/// {@category dwmapi}
int DwmShowContact(int dwPointerID, int eShowContact) =>
    _DwmShowContact(dwPointerID, eShowContact);

final _DwmShowContact = _dwmapi.lookupFunction<
    HRESULT Function(Uint32 dwPointerID, Uint32 eShowContact),
    int Function(int dwPointerID, int eShowContact)>('DwmShowContact');
