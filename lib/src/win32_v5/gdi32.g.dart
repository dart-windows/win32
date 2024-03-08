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

final _gdi32 = DynamicLibrary.open('gdi32.dll');

/// Closes and discards any paths in the specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-abortpath>.
///
/// {@category gdi32}
int AbortPath(int hdc) => _AbortPath(hdc);

final _AbortPath = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('AbortPath');

/// Adds the font resource from the specified file to the system font table.
///
/// The font can subsequently be used for text output by any application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-addfontresourcew>.
///
/// {@category gdi32}
int AddFontResource(Pointer<Utf16> param0) => _AddFontResource(param0);

final _AddFontResource = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> param0),
    int Function(Pointer<Utf16> param0)>('AddFontResourceW');

/// Adds the font resource from the specified file to the system.
///
/// Fonts added with the AddFontResourceEx function can be marked as private and
/// not enumerable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-addfontresourceexw>.
///
/// {@category gdi32}
int AddFontResourceEx(Pointer<Utf16> name, int fl) =>
    _AddFontResourceEx(name, fl, nullptr);

final _AddFontResourceEx = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer res),
    int Function(
        Pointer<Utf16> name, int fl, Pointer res)>('AddFontResourceExW');

/// Draws a line segment and an arc.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-anglearc>.
///
/// {@category gdi32}
int AngleArc(
        int hdc, int x, int y, int r, double startAngle, double sweepAngle) =>
    _AngleArc(hdc, x, y, r, startAngle, sweepAngle);

final _AngleArc = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Uint32 r, Float startAngle,
        Float sweepAngle),
    int Function(int hdc, int x, int y, int r, double startAngle,
        double sweepAngle)>('AngleArc');

/// Replaces entries in the specified logical palette.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-animatepalette>.
///
/// {@category gdi32}
int AnimatePalette(
        int hPal, int iStartIndex, int cEntries, Pointer<PALETTEENTRY> ppe) =>
    _AnimatePalette(hPal, iStartIndex, cEntries, ppe);

final _AnimatePalette = _gdi32.lookupFunction<
    BOOL Function(HPALETTE hPal, Uint32 iStartIndex, Uint32 cEntries,
        Pointer<PALETTEENTRY> ppe),
    int Function(int hPal, int iStartIndex, int cEntries,
        Pointer<PALETTEENTRY> ppe)>('AnimatePalette');

/// Draws an elliptical arc.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arc>.
///
/// {@category gdi32}
int Arc(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

final _Arc = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Arc');

/// Draws an elliptical arc.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arcto>.
///
/// {@category gdi32}
int ArcTo(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

final _ArcTo = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('ArcTo');

/// Opens a path bracket in the specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-beginpath>.
///
/// {@category gdi32}
int BeginPath(int hdc) => _BeginPath(hdc);

final _BeginPath = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('BeginPath');

/// Performs a bit-block transfer of the color data corresponding to a rectangle
/// of pixels from the specified source device context into a destination device
/// context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-bitblt>.
///
/// {@category gdi32}
int BitBlt(int hdc, int x, int y, int cx, int cy, int? hdcSrc, int x1, int y1,
        int rop) =>
    _BitBlt(hdc, x, y, cx, cy, hdcSrc ?? 0, x1, y1, rop);

final _BitBlt = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Int32 cx, Int32 cy, HDC hdcSrc,
        Int32 x1, Int32 y1, Uint32 rop),
    int Function(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1,
        int y1, int rop)>('BitBlt');

/// Cancels any pending operation on the specified device context (DC).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-canceldc>.
///
/// {@category gdi32}
int CancelDC(int hdc) => _CancelDC(hdc);

final _CancelDC = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('CancelDC');

/// Draws a chord (a region bounded by the intersection of an ellipse and a line
/// segment, called a secant).
///
/// The chord is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-chord>.
///
/// {@category gdi32}
int Chord(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

final _Chord = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Chord');

/// Closes an open figure in a path.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-closefigure>.
///
/// {@category gdi32}
int CloseFigure(int hdc) => _CloseFigure(hdc);

final _CloseFigure =
    _gdi32.lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>(
        'CloseFigure');

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmap>.
///
/// {@category gdi32}
int CreateBitmap(
        int nWidth, int nHeight, int nPlanes, int nBitCount, Pointer? lpBits) =>
    _CreateBitmap(nWidth, nHeight, nPlanes, nBitCount, lpBits ?? nullptr);

final _CreateBitmap = _gdi32.lookupFunction<
    HBITMAP Function(Int32 nWidth, Int32 nHeight, Uint32 nPlanes,
        Uint32 nBitCount, Pointer lpBits),
    int Function(int nWidth, int nHeight, int nPlanes, int nBitCount,
        Pointer lpBits)>('CreateBitmap');

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmapindirect>.
///
/// {@category gdi32}
int CreateBitmapIndirect(Pointer<BITMAP> pbm) => _CreateBitmapIndirect(pbm);

final _CreateBitmapIndirect = _gdi32.lookupFunction<
    HBITMAP Function(Pointer<BITMAP> pbm),
    int Function(Pointer<BITMAP> pbm)>('CreateBitmapIndirect');

/// Creates a bitmap compatible with the device that is associated with the
/// specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatiblebitmap>.
///
/// {@category gdi32}
int CreateCompatibleBitmap(int hdc, int cx, int cy) =>
    _CreateCompatibleBitmap(hdc, cx, cy);

final _CreateCompatibleBitmap = _gdi32.lookupFunction<
    HBITMAP Function(HDC hdc, Int32 cx, Int32 cy),
    int Function(int hdc, int cx, int cy)>('CreateCompatibleBitmap');

/// Creates a memory device context (DC) compatible with the specified device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatibledc>.
///
/// {@category gdi32}
int CreateCompatibleDC(int? hdc) => _CreateCompatibleDC(hdc ?? 0);

final _CreateCompatibleDC =
    _gdi32.lookupFunction<HDC Function(HDC hdc), int Function(int hdc)>(
        'CreateCompatibleDC');

/// Creates a device context (DC) for a device using the specified name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdcw>.
///
/// {@category gdi32}
int CreateDC(Pointer<Utf16>? pwszDriver, Pointer<Utf16>? pwszDevice,
        Pointer<Utf16>? pszPort, Pointer<DEVMODE>? pdm) =>
    _CreateDC(pwszDriver ?? nullptr, pwszDevice ?? nullptr, pszPort ?? nullptr,
        pdm ?? nullptr);

final _CreateDC = _gdi32.lookupFunction<
    HDC Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice,
        Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm),
    int Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice,
        Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm)>('CreateDCW');

/// Creates a compatible bitmap (DDB) from a DIB and, optionally, sets the
/// bitmap bits.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibitmap>.
///
/// {@category gdi32}
int CreateDIBitmap(int hdc, Pointer<BITMAPINFOHEADER>? pbmih, int flInit,
        Pointer? pjBits, Pointer<BITMAPINFO>? pbmi, int iUsage) =>
    _CreateDIBitmap(hdc, pbmih ?? nullptr, flInit, pjBits ?? nullptr,
        pbmi ?? nullptr, iUsage);

final _CreateDIBitmap = _gdi32.lookupFunction<
    HBITMAP Function(HDC hdc, Pointer<BITMAPINFOHEADER> pbmih, Uint32 flInit,
        Pointer pjBits, Pointer<BITMAPINFO> pbmi, Uint32 iUsage),
    int Function(
        int hdc,
        Pointer<BITMAPINFOHEADER> pbmih,
        int flInit,
        Pointer pjBits,
        Pointer<BITMAPINFO> pbmi,
        int iUsage)>('CreateDIBitmap');

/// Creates a logical brush that has the pattern specified by the
/// device-independent bitmap (DIB).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibpatternbrushpt>.
///
/// {@category gdi32}
int CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage) =>
    _CreateDIBPatternBrushPt(lpPackedDIB, iUsage);

final _CreateDIBPatternBrushPt = _gdi32.lookupFunction<
    HBRUSH Function(Pointer lpPackedDIB, Uint32 iUsage),
    int Function(Pointer lpPackedDIB, int iUsage)>('CreateDIBPatternBrushPt');

/// Creates a DIB that applications can write to directly.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibsection>.
///
/// {@category gdi32}
int CreateDIBSection(int? hdc, Pointer<BITMAPINFO> pbmi, int usage,
        Pointer<Pointer> ppvBits, int? hSection, int offset) =>
    _CreateDIBSection(hdc ?? 0, pbmi, usage, ppvBits, hSection ?? 0, offset);

final _CreateDIBSection = _gdi32.lookupFunction<
    HBITMAP Function(HDC hdc, Pointer<BITMAPINFO> pbmi, Uint32 usage,
        Pointer<Pointer> ppvBits, HANDLE hSection, Uint32 offset),
    int Function(
        int hdc,
        Pointer<BITMAPINFO> pbmi,
        int usage,
        Pointer<Pointer> ppvBits,
        int hSection,
        int offset)>('CreateDIBSection');

/// Creates an elliptical region.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createellipticrgn>.
///
/// {@category gdi32}
int CreateEllipticRgn(int x1, int y1, int x2, int y2) =>
    _CreateEllipticRgn(x1, y1, x2, y2);

final _CreateEllipticRgn = _gdi32.lookupFunction<
    HRGN Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2),
    int Function(int x1, int y1, int x2, int y2)>('CreateEllipticRgn');

/// Creates a logical font that has the specified characteristics.
///
/// The font can subsequently be selected as the current font for any device
/// context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createfontindirectw>.
///
/// {@category gdi32}
int CreateFontIndirect(Pointer<LOGFONT> lplf) => _CreateFontIndirect(lplf);

final _CreateFontIndirect = _gdi32.lookupFunction<
    HFONT Function(Pointer<LOGFONT> lplf),
    int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');

/// Creates a halftone palette for the specified device context (DC).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhalftonepalette>.
///
/// {@category gdi32}
int CreateHalftonePalette(int? hdc) => _CreateHalftonePalette(hdc ?? 0);

final _CreateHalftonePalette =
    _gdi32.lookupFunction<HPALETTE Function(HDC hdc), int Function(int hdc)>(
        'CreateHalftonePalette');

/// Creates a logical brush that has the specified hatch pattern and color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhatchbrush>.
///
/// {@category gdi32}
int CreateHatchBrush(int iHatch, int color) => _CreateHatchBrush(iHatch, color);

final _CreateHatchBrush = _gdi32.lookupFunction<
    HBRUSH Function(Int32 iHatch, COLORREF color),
    int Function(int iHatch, int color)>('CreateHatchBrush');

/// Creates a logical pen that has the specified style, width, and color.
///
/// The pen can subsequently be selected into a device context and used to draw
/// lines and curves.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createpen>.
///
/// {@category gdi32}
int CreatePen(int iStyle, int cWidth, int color) =>
    _CreatePen(iStyle, cWidth, color);

final _CreatePen = _gdi32.lookupFunction<
    HPEN Function(Int32 iStyle, Int32 cWidth, COLORREF color),
    int Function(int iStyle, int cWidth, int color)>('CreatePen');

/// Creates a logical brush that has the specified solid color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createsolidbrush>.
///
/// {@category gdi32}
int CreateSolidBrush(int color) => _CreateSolidBrush(color);

final _CreateSolidBrush = _gdi32.lookupFunction<HBRUSH Function(COLORREF color),
    int Function(int color)>('CreateSolidBrush');

/// Deletes the specified device context (DC).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deletedc>.
///
/// {@category gdi32}
int DeleteDC(int hdc) => _DeleteDC(hdc);

final _DeleteDC = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('DeleteDC');

/// Deletes a logical pen, brush, font, bitmap, region, or palette, freeing all
/// system resources associated with the object.
///
/// After the object is deleted, the specified handle is no longer valid.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deleteobject>.
///
/// {@category gdi32}
int DeleteObject(int ho) => _DeleteObject(ho);

final _DeleteObject =
    _gdi32.lookupFunction<BOOL Function(HGDIOBJ ho), int Function(int ho)>(
        'DeleteObject');

/// Provides drawing capabilities of the specified video display that are not
/// directly available through the graphics device interface (GDI).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-drawescape>.
///
/// {@category gdi32}
int DrawEscape(int hdc, int iEscape, int cjIn, Pointer<Utf8>? lpIn) =>
    _DrawEscape(hdc, iEscape, cjIn, lpIn ?? nullptr);

final _DrawEscape = _gdi32.lookupFunction<
    Int32 Function(HDC hdc, Int32 iEscape, Int32 cjIn, Pointer<Utf8> lpIn),
    int Function(
        int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn)>('DrawEscape');

/// Creates a D2D1_ELLIPSE structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/d2d1helper/nf-d2d1helper-ellipse>.
///
/// {@category gdi32}
int Ellipse(int hdc, int left, int top, int right, int bottom) =>
    _Ellipse(hdc, left, top, right, bottom);

final _Ellipse = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(int hdc, int left, int top, int right, int bottom)>('Ellipse');

/// Closes a path bracket and selects the path defined by the bracket into the
/// specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-endpath>.
///
/// {@category gdi32}
int EndPath(int hdc) => _EndPath(hdc);

final _EndPath = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('EndPath');

/// Enumerates all uniquely-named fonts in the system that match the font
/// characteristics specified by the LOGFONT structure.
///
/// EnumFontFamiliesEx enumerates fonts based on typeface name, character set,
/// or both.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw>.
///
/// {@category gdi32}
int EnumFontFamiliesEx(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROC>> lpProc,
        int lParam,
        int dwFlags) =>
    _EnumFontFamiliesEx(hdc, lpLogfont, lpProc, lParam, dwFlags);

final _EnumFontFamiliesEx = _gdi32.lookupFunction<
    Int32 Function(
        HDC hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROC>> lpProc,
        LPARAM lParam,
        Uint32 dwFlags),
    int Function(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROC>> lpProc,
        int lParam,
        int dwFlags)>('EnumFontFamiliesExW');

/// Creates a logical cosmetic or geometric pen that has the specified style,
/// width, and brush attributes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-extcreatepen>.
///
/// {@category gdi32}
int ExtCreatePen(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32>? pstyle) =>
    _ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle ?? nullptr);

final _ExtCreatePen = _gdi32.lookupFunction<
    HPEN Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGBRUSH> plbrush,
        Uint32 cStyle, Pointer<Uint32> pstyle),
    int Function(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32> pstyle)>('ExtCreatePen');

/// Draws text using the currently selected font, background color, and text
/// color.
///
/// You can optionally provide dimensions to be used for clipping, opaquing, or
/// both.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-exttextoutw>.
///
/// {@category gdi32}
int ExtTextOut(int hdc, int x, int y, int options, Pointer<RECT>? lprect,
        Pointer<Utf16>? lpString, int c, Pointer<Int32>? lpDx) =>
    _ExtTextOut(hdc, x, y, options, lprect ?? nullptr, lpString ?? nullptr, c,
        lpDx ?? nullptr);

final _ExtTextOut = _gdi32.lookupFunction<
    BOOL Function(
        HDC hdc,
        Int32 x,
        Int32 y,
        Uint32 options,
        Pointer<RECT> lprect,
        Pointer<Utf16> lpString,
        Uint32 c,
        Pointer<Int32> lpDx),
    int Function(int hdc, int x, int y, int options, Pointer<RECT> lprect,
        Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx)>('ExtTextOutW');

/// Closes any open figures in the current path and fills the path's interior by
/// using the current brush and polygon-filling mode.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-fillpath>.
///
/// {@category gdi32}
int FillPath(int hdc) => _FillPath(hdc);

final _FillPath = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('FillPath');

/// Transforms any curves in the path that is selected into the current device
/// context (DC), turning each curve into a sequence of lines.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-flattenpath>.
///
/// {@category gdi32}
int FlattenPath(int hdc) => _FlattenPath(hdc);

final _FlattenPath =
    _gdi32.lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>(
        'FlattenPath');

/// Retrieves device-specific information for the specified device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdevicecaps>.
///
/// {@category gdi32}
int GetDeviceCaps(int? hdc, int index) => _GetDeviceCaps(hdc ?? 0, index);

final _GetDeviceCaps = _gdi32.lookupFunction<
    Int32 Function(HDC hdc, Int32 index),
    int Function(int hdc, int index)>('GetDeviceCaps');

/// Retrieves the bits of the specified compatible bitmap and copies them into a
/// buffer as a DIB using the specified format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdibits>.
///
/// {@category gdi32}
int GetDIBits(int hdc, int hbm, int start, int cLines, Pointer? lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage) =>
    _GetDIBits(hdc, hbm, start, cLines, lpvBits ?? nullptr, lpbmi, usage);

final _GetDIBits = _gdi32.lookupFunction<
    Int32 Function(HDC hdc, HBITMAP hbm, Uint32 start, Uint32 cLines,
        Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 usage),
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage)>('GetDIBits');

/// Retrieves a color value identifying a color from the system palette that
/// will be displayed when the specified color value is used.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getnearestcolor>.
///
/// {@category gdi32}
int GetNearestColor(int hdc, int color) => _GetNearestColor(hdc, color);

final _GetNearestColor = _gdi32.lookupFunction<
    COLORREF Function(HDC hdc, COLORREF color),
    int Function(int hdc, int color)>('GetNearestColor');

/// Retrieves information for the specified graphics object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getobjectw>.
///
/// {@category gdi32}
int GetObject(int h, int c, Pointer? pv) => _GetObject(h, c, pv ?? nullptr);

final _GetObject = _gdi32.lookupFunction<
    Int32 Function(HGDIOBJ h, Int32 c, Pointer pv),
    int Function(int h, int c, Pointer pv)>('GetObjectW');

/// Retrieves the coordinates defining the endpoints of lines and the control
/// points of curves found in the path that is selected into the specified
/// device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpath>.
///
/// {@category gdi32}
int GetPath(int hdc, Pointer<POINT>? apt, Pointer<Uint8>? aj, int cpt) =>
    _GetPath(hdc, apt ?? nullptr, aj ?? nullptr, cpt);

final _GetPath = _gdi32.lookupFunction<
    Int32 Function(HDC hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
    int Function(
        int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('GetPath');

/// Retrieves the red, green, blue (RGB) color value of the pixel at the
/// specified coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpixel>.
///
/// {@category gdi32}
int GetPixel(int hdc, int x, int y) => _GetPixel(hdc, x, y);

final _GetPixel = _gdi32.lookupFunction<
    COLORREF Function(HDC hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('GetPixel');

/// Retrieves a handle to one of the stock pens, brushes, fonts, or palettes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getstockobject>.
///
/// {@category gdi32}
int GetStockObject(int i) => _GetStockObject(i);

final _GetStockObject =
    _gdi32.lookupFunction<HGDIOBJ Function(Int32 i), int Function(int i)>(
        'GetStockObject');

/// Fills the specified buffer with the metrics for the currently selected font.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-gettextmetricsw>.
///
/// {@category gdi32}
int GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm) =>
    _GetTextMetrics(hdc, lptm);

final _GetTextMetrics = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<TEXTMETRIC> lptm),
    int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetricsW');

/// This function retrieves the x-extent and y-extent of the window for the
/// specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindowextex>.
///
/// {@category gdi32}
int GetWindowExtEx(int hdc, Pointer<SIZE> lpsize) =>
    _GetWindowExtEx(hdc, lpsize);

final _GetWindowExtEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<SIZE> lpsize),
    int Function(int hdc, Pointer<SIZE> lpsize)>('GetWindowExtEx');

/// Retrieves the x-coordinates and y-coordinates of the window origin for the
/// specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindoworgex>.
///
/// {@category gdi32}
int GetWindowOrgEx(int hdc, Pointer<POINT> lppoint) =>
    _GetWindowOrgEx(hdc, lppoint);

final _GetWindowOrgEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> lppoint),
    int Function(int hdc, Pointer<POINT> lppoint)>('GetWindowOrgEx');

/// Draws a line from the current position up to, but not including, the
/// specified point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-lineto>.
///
/// {@category gdi32}
int LineTo(int hdc, int x, int y) => _LineTo(hdc, x, y);

final _LineTo = _gdi32.lookupFunction<BOOL Function(HDC hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('LineTo');

/// Updates the current position to the specified point and optionally returns
/// the previous position.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-movetoex>.
///
/// {@category gdi32}
int MoveToEx(int hdc, int x, int y, Pointer<POINT>? lppt) =>
    _MoveToEx(hdc, x, y, lppt ?? nullptr);

final _MoveToEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');

/// Draws a pie-shaped wedge bounded by the intersection of an ellipse and two
/// radials.
///
/// The pie is outlined by using the current pen and filled by using the current
/// brush.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-pie>.
///
/// {@category gdi32}
int Pie(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

final _Pie = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('Pie');

/// Draws one or more Bézier curves.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezier>.
///
/// {@category gdi32}
int PolyBezier(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezier(hdc, apt, cpt);

final _PolyBezier = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');

/// Draws one or more Bézier curves.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezierto>.
///
/// {@category gdi32}
int PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezierTo(hdc, apt, cpt);

final _PolyBezierTo = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezierTo');

/// Draws a set of line segments and Bézier curves.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polydraw>.
///
/// {@category gdi32}
int PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _PolyDraw(hdc, apt, aj, cpt);

final _PolyDraw = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
    int Function(
        int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('PolyDraw');

/// Draws a polygon consisting of two or more vertices connected by straight
/// lines.
///
/// The polygon is outlined by using the current pen and filled by using the
/// current brush and polygon fill mode.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polygon>.
///
/// {@category gdi32}
int Polygon(int hdc, Pointer<POINT> apt, int cpt) => _Polygon(hdc, apt, cpt);

final _Polygon = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polygon');

/// Draws a series of line segments by connecting the points in the specified
/// array.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polyline>.
///
/// {@category gdi32}
int Polyline(int hdc, Pointer<POINT> apt, int cpt) => _Polyline(hdc, apt, cpt);

final _Polyline = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polyline');

/// Draws one or more straight lines.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polylineto>.
///
/// {@category gdi32}
int PolylineTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolylineTo(hdc, apt, cpt);

final _PolylineTo = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolylineTo');

/// Draws a series of closed polygons.
///
/// Each polygon is outlined by using the current pen and filled by using the
/// current brush and polygon fill mode. The polygons drawn by this function can
/// overlap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polypolygon>.
///
/// {@category gdi32}
int PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) =>
    _PolyPolygon(hdc, apt, asz, csz);

final _PolyPolygon = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
        int csz)>('PolyPolygon');

/// Draws multiple series of connected line segments.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polypolyline>.
///
/// {@category gdi32}
int PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) =>
    _PolyPolyline(hdc, apt, asz, csz);

final _PolyPolyline = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<POINT> apt, Pointer<Uint32> asz, Uint32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz,
        int csz)>('PolyPolyline');

/// Determines whether the specified point is inside the specified region.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-ptinregion>.
///
/// {@category gdi32}
int PtInRegion(int hrgn, int x, int y) => _PtInRegion(hrgn, x, y);

final _PtInRegion = _gdi32.lookupFunction<
    BOOL Function(HRGN hrgn, Int32 x, Int32 y),
    int Function(int hrgn, int x, int y)>('PtInRegion');

/// Draws a rectangle.
///
/// The rectangle is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-rectangle>.
///
/// {@category gdi32}
int Rectangle(int hdc, int left, int top, int right, int bottom) =>
    _Rectangle(hdc, left, top, right, bottom);

final _Rectangle = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hdc, int left, int top, int right, int bottom)>('Rectangle');

/// Determines whether any part of the specified rectangle is within the
/// boundaries of a region.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-rectinregion>.
///
/// {@category gdi32}
int RectInRegion(int hrgn, Pointer<RECT> lprect) => _RectInRegion(hrgn, lprect);

final _RectInRegion = _gdi32.lookupFunction<
    BOOL Function(HRGN hrgn, Pointer<RECT> lprect),
    int Function(int hrgn, Pointer<RECT> lprect)>('RectInRegion');

/// Draws a rectangle with rounded corners.
///
/// The rectangle is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-roundrect>.
///
/// {@category gdi32}
int RoundRect(int hdc, int left, int top, int right, int bottom, int width,
        int height) =>
    _RoundRect(hdc, left, top, right, bottom, width, height);

final _RoundRect = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 width, Int32 height),
    int Function(int hdc, int left, int top, int right, int bottom, int width,
        int height)>('RoundRect');

/// Saves the current state of the specified device context (DC) by copying data
/// describing selected objects and graphic modes (such as the bitmap, brush,
/// palette, font, pen, region, drawing mode, and mapping mode) to a context
/// stack.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-savedc>.
///
/// {@category gdi32}
int SaveDC(int hdc) => _SaveDC(hdc);

final _SaveDC = _gdi32
    .lookupFunction<Int32 Function(HDC hdc), int Function(int hdc)>('SaveDC');

/// Selects the current path as a clipping region for a device context,
/// combining the new region with any existing clipping region using the
/// specified mode.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectclippath>.
///
/// {@category gdi32}
int SelectClipPath(int hdc, int mode) => _SelectClipPath(hdc, mode);

final _SelectClipPath = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 mode),
    int Function(int hdc, int mode)>('SelectClipPath');

/// Selects an object into the specified device context (DC).
///
/// The new object replaces the previous object of the same type.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectobject>.
///
/// {@category gdi32}
int SelectObject(int hdc, int h) => _SelectObject(hdc, h);

final _SelectObject = _gdi32.lookupFunction<
    HGDIOBJ Function(HDC hdc, HGDIOBJ h),
    int Function(int hdc, int h)>('SelectObject');

/// Sets the current background color to the specified color value, or to the
/// nearest physical color if the device cannot represent the specified color
/// value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setbkcolor>.
///
/// {@category gdi32}
int SetBkColor(int hdc, int color) => _SetBkColor(hdc, color);

final _SetBkColor = _gdi32.lookupFunction<
    COLORREF Function(HDC hdc, COLORREF color),
    int Function(int hdc, int color)>('SetBkColor');

/// Sets the background mix mode of the specified device context.
///
/// The background mix mode is used with text, hatched brushes, and pen styles
/// that are not solid lines.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setbkmode>.
///
/// {@category gdi32}
int SetBkMode(int hdc, int mode) => _SetBkMode(hdc, mode);

final _SetBkMode = _gdi32.lookupFunction<Int32 Function(HDC hdc, Int32 mode),
    int Function(int hdc, int mode)>('SetBkMode');

/// Sets the mapping mode of the specified device context.
///
/// The mapping mode defines the unit of measure used to transform page-space
/// units into device-space units, and also defines the orientation of the
/// device's x and y axes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setmapmode>.
///
/// {@category gdi32}
int SetMapMode(int hdc, int iMode) => _SetMapMode(hdc, iMode);

final _SetMapMode = _gdi32.lookupFunction<Int32 Function(HDC hdc, Int32 iMode),
    int Function(int hdc, int iMode)>('SetMapMode');

/// Sets the pixel at the specified coordinates to the specified color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setpixel>.
///
/// {@category gdi32}
int SetPixel(int hdc, int x, int y, int color) => _SetPixel(hdc, x, y, color);

final _SetPixel = _gdi32.lookupFunction<
    COLORREF Function(HDC hdc, Int32 x, Int32 y, COLORREF color),
    int Function(int hdc, int x, int y, int color)>('SetPixel');

/// Sets the bitmap stretching mode in the specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setstretchbltmode>.
///
/// {@category gdi32}
int SetStretchBltMode(int hdc, int mode) => _SetStretchBltMode(hdc, mode);

final _SetStretchBltMode = _gdi32.lookupFunction<
    Int32 Function(HDC hdc, Int32 mode),
    int Function(int hdc, int mode)>('SetStretchBltMode');

/// Sets the text color for the specified device context to the specified color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-settextcolor>.
///
/// {@category gdi32}
int SetTextColor(int hdc, int color) => _SetTextColor(hdc, color);

final _SetTextColor = _gdi32.lookupFunction<
    COLORREF Function(HDC hdc, COLORREF color),
    int Function(int hdc, int color)>('SetTextColor');

/// Sets the horizontal and vertical extents of the viewport for a device
/// context by using the specified values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportextex>.
///
/// {@category gdi32}
int SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetViewportExtEx(hdc, x, y, lpsz ?? nullptr);

final _SetViewportExtEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(
        int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');

/// Specifies which device point maps to the window origin (0,0).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportorgex>.
///
/// {@category gdi32}
int SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT>? lppt) =>
    _SetViewportOrgEx(hdc, x, y, lppt ?? nullptr);

final _SetViewportOrgEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');

/// Sets the horizontal and vertical extents of the window for a device context
/// by using the specified values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setwindowextex>.
///
/// {@category gdi32}
int SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetWindowExtEx(hdc, x, y, lpsz ?? nullptr);

final _SetWindowExtEx = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');

/// Copies a bitmap from a source rectangle into a destination rectangle,
/// stretching or compressing the bitmap to fit the dimensions of the
/// destination rectangle, if necessary.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-stretchblt>.
///
/// {@category gdi32}
int StretchBlt(int hdcDest, int xDest, int yDest, int wDest, int hDest,
        int? hdcSrc, int xSrc, int ySrc, int wSrc, int hSrc, int rop) =>
    _StretchBlt(hdcDest, xDest, yDest, wDest, hDest, hdcSrc ?? 0, xSrc, ySrc,
        wSrc, hSrc, rop);

final _StretchBlt = _gdi32.lookupFunction<
    BOOL Function(
        HDC hdcDest,
        Int32 xDest,
        Int32 yDest,
        Int32 wDest,
        Int32 hDest,
        HDC hdcSrc,
        Int32 xSrc,
        Int32 ySrc,
        Int32 wSrc,
        Int32 hSrc,
        Uint32 rop),
    int Function(
        int hdcDest,
        int xDest,
        int yDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xSrc,
        int ySrc,
        int wSrc,
        int hSrc,
        int rop)>('StretchBlt');

/// Copies the color data for a rectangle of pixels in a DIB, JPEG, or PNG image
/// to the specified destination rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-stretchdibits>.
///
/// {@category gdi32}
int StretchDIBits(
        int hdc,
        int xDest,
        int yDest,
        int destWidth,
        int destHeight,
        int xSrc,
        int ySrc,
        int srcWidth,
        int srcHeight,
        Pointer? lpBits,
        Pointer<BITMAPINFO> lpbmi,
        int iUsage,
        int rop) =>
    _StretchDIBits(hdc, xDest, yDest, destWidth, destHeight, xSrc, ySrc,
        srcWidth, srcHeight, lpBits ?? nullptr, lpbmi, iUsage, rop);

final _StretchDIBits = _gdi32.lookupFunction<
    Int32 Function(
        HDC hdc,
        Int32 xDest,
        Int32 yDest,
        Int32 destWidth,
        Int32 destHeight,
        Int32 xSrc,
        Int32 ySrc,
        Int32 srcWidth,
        Int32 srcHeight,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbmi,
        Uint32 iUsage,
        Uint32 rop),
    int Function(
        int hdc,
        int xDest,
        int yDest,
        int destWidth,
        int destHeight,
        int xSrc,
        int ySrc,
        int srcWidth,
        int srcHeight,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbmi,
        int iUsage,
        int rop)>('StretchDIBits');

/// Closes any open figures in a path, strokes the outline of the path by using
/// the current pen, and fills its interior by using the current brush.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokeandfillpath>.
///
/// {@category gdi32}
int StrokeAndFillPath(int hdc) => _StrokeAndFillPath(hdc);

final _StrokeAndFillPath =
    _gdi32.lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>(
        'StrokeAndFillPath');

/// Renders the specified path by using the current pen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokepath>.
///
/// {@category gdi32}
int StrokePath(int hdc) => _StrokePath(hdc);

final _StrokePath =
    _gdi32.lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>(
        'StrokePath');

/// Writes a character string at the specified location, using the currently
/// selected font, background color, and text color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-textoutw>.
///
/// {@category gdi32}
int TextOut(int hdc, int x, int y, Pointer<Utf16> lpString, int c) =>
    _TextOut(hdc, x, y, lpString, c);

final _TextOut = _gdi32.lookupFunction<
    BOOL Function(HDC hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
    int Function(
        int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');

/// Redefines the current path as the area that would be painted if the path
/// were stroked using the pen currently selected into the given device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-widenpath>.
///
/// {@category gdi32}
int WidenPath(int hdc) => _WidenPath(hdc);

final _WidenPath = _gdi32
    .lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>('WidenPath');
