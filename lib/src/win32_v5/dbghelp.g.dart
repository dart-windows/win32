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

final _dbghelp = DynamicLibrary.open('dbghelp.dll');

/// Deallocates all resources associated with the process handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symcleanup>.
///
/// {@category dbghelp}
int SymCleanup(int hProcess) => _SymCleanup(hProcess);

final _SymCleanup = _dbghelp.lookupFunction<BOOL Function(HANDLE hProcess),
    int Function(int hProcess)>('SymCleanup');

/// Enumerates all symbols in a process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symenumsymbolsw>.
///
/// {@category dbghelp}
int SymEnumSymbols(
        int hProcess,
        int baseOfDll,
        Pointer<Utf16>? mask,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>
            enumSymbolsCallback,
        Pointer? userContext) =>
    _SymEnumSymbols(hProcess, baseOfDll, mask ?? nullptr, enumSymbolsCallback,
        userContext ?? nullptr);

final _SymEnumSymbols = _dbghelp.lookupFunction<
    BOOL Function(
        HANDLE hProcess,
        Uint64 baseOfDll,
        Pointer<Utf16> mask,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>
            enumSymbolsCallback,
        Pointer userContext),
    int Function(
        int hProcess,
        int baseOfDll,
        Pointer<Utf16> mask,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>
            enumSymbolsCallback,
        Pointer userContext)>('SymEnumSymbolsW');

/// Retrieves symbol information for the specified address.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromaddrw>.
///
/// {@category dbghelp}
int SymFromAddr(int hProcess, int address, Pointer<Uint64>? displacement,
        Pointer<SYMBOL_INFO> symbol) =>
    _SymFromAddr(hProcess, address, displacement ?? nullptr, symbol);

final _SymFromAddr = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 address, Pointer<Uint64> displacement,
        Pointer<SYMBOL_INFO> symbol),
    int Function(int hProcess, int address, Pointer<Uint64> displacement,
        Pointer<SYMBOL_INFO> symbol)>('SymFromAddrW');

/// Retrieves symbol information for the specified managed code token.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromtokenw>.
///
/// {@category dbghelp}
int SymFromToken(
        int hProcess, int base, int token, Pointer<SYMBOL_INFO> symbol) =>
    _SymFromToken(hProcess, base, token, symbol);

final _SymFromToken = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 base, Uint32 token,
        Pointer<SYMBOL_INFO> symbol),
    int Function(int hProcess, int base, int token,
        Pointer<SYMBOL_INFO> symbol)>('SymFromTokenW');

/// Gets whether the specified extended symbol option on or off.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symgetextendedoption>.
///
/// {@category dbghelp}
int SymGetExtendedOption(int option) => _SymGetExtendedOption(option);

final _SymGetExtendedOption = _dbghelp.lookupFunction<
    BOOL Function(Int32 option),
    int Function(int option)>('SymGetExtendedOption');

/// Initializes the symbol handler for a process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-syminitializew>.
///
/// {@category dbghelp}
int SymInitialize(
        int hProcess, Pointer<Utf16>? userSearchPath, int fInvadeProcess) =>
    _SymInitialize(hProcess, userSearchPath ?? nullptr, fInvadeProcess);

final _SymInitialize = _dbghelp.lookupFunction<
    BOOL Function(
        HANDLE hProcess, Pointer<Utf16> userSearchPath, BOOL fInvadeProcess),
    int Function(int hProcess, Pointer<Utf16> userSearchPath,
        int fInvadeProcess)>('SymInitializeW');

/// Loads the symbol table for the specified module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symloadmoduleexw>.
///
/// {@category dbghelp}
int SymLoadModuleEx(
        int hProcess,
        int? hFile,
        Pointer<Utf16>? imageName,
        Pointer<Utf16>? moduleName,
        int baseOfDll,
        int dllSize,
        Pointer<MODLOAD_DATA>? data,
        int? flags) =>
    _SymLoadModuleEx(hProcess, hFile ?? 0, imageName ?? nullptr,
        moduleName ?? nullptr, baseOfDll, dllSize, data ?? nullptr, flags ?? 0);

final _SymLoadModuleEx = _dbghelp.lookupFunction<
    Uint64 Function(
        HANDLE hProcess,
        HANDLE hFile,
        Pointer<Utf16> imageName,
        Pointer<Utf16> moduleName,
        Uint64 baseOfDll,
        Uint32 dllSize,
        Pointer<MODLOAD_DATA> data,
        Uint32 flags),
    int Function(
        int hProcess,
        int hFile,
        Pointer<Utf16> imageName,
        Pointer<Utf16> moduleName,
        int baseOfDll,
        int dllSize,
        Pointer<MODLOAD_DATA> data,
        int flags)>('SymLoadModuleExW');

/// Turns the specified extended symbol option on or off.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetextendedoption>.
///
/// {@category dbghelp}
int SymSetExtendedOption(int option, int value) =>
    _SymSetExtendedOption(option, value);

final _SymSetExtendedOption = _dbghelp.lookupFunction<
    BOOL Function(Int32 option, BOOL value),
    int Function(int option, int value)>('SymSetExtendedOption');

/// Sets the options mask.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetoptions>.
///
/// {@category dbghelp}
int SymSetOptions(int symOptions) => _SymSetOptions(symOptions);

final _SymSetOptions = _dbghelp.lookupFunction<
    Uint32 Function(Uint32 symOptions),
    int Function(int symOptions)>('SymSetOptions');

/// Sets the window that the caller will use to display a user interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetparentwindow>.
///
/// {@category dbghelp}
int SymSetParentWindow(int hwnd) => _SymSetParentWindow(hwnd);

final _SymSetParentWindow =
    _dbghelp.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'SymSetParentWindow');

/// Sets the local scope to the symbol that matches the specified address.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromaddr>.
///
/// {@category dbghelp}
int SymSetScopeFromAddr(int hProcess, int address) =>
    _SymSetScopeFromAddr(hProcess, address);

final _SymSetScopeFromAddr = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 address),
    int Function(int hProcess, int address)>('SymSetScopeFromAddr');

/// Sets the local scope to the symbol that matches the specified index.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromindex>.
///
/// {@category dbghelp}
int SymSetScopeFromIndex(int hProcess, int baseOfDll, int index) =>
    _SymSetScopeFromIndex(hProcess, baseOfDll, index);

final _SymSetScopeFromIndex = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 baseOfDll, Uint32 index),
    int Function(
        int hProcess, int baseOfDll, int index)>('SymSetScopeFromIndex');

/// Sets the local scope to the symbol that matches the specified address and
/// inline context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefrominlinecontext>.
///
/// {@category dbghelp}
int SymSetScopeFromInlineContext(
        int hProcess, int address, int inlineContext) =>
    _SymSetScopeFromInlineContext(hProcess, address, inlineContext);

final _SymSetScopeFromInlineContext = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 address, Uint32 inlineContext),
    int Function(int hProcess, int address,
        int inlineContext)>('SymSetScopeFromInlineContext');

/// Sets the search path for the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetsearchpathw>.
///
/// {@category dbghelp}
int SymSetSearchPath(int hProcess, Pointer<Utf16>? searchPathA) =>
    _SymSetSearchPath(hProcess, searchPathA ?? nullptr);

final _SymSetSearchPath = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<Utf16> searchPathA),
    int Function(
        int hProcess, Pointer<Utf16> searchPathA)>('SymSetSearchPathW');

/// Unloads the symbol table.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule>.
///
/// {@category dbghelp}
int SymUnloadModule(int hProcess, int baseOfDll) =>
    _SymUnloadModule(hProcess, baseOfDll);

final _SymUnloadModule = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint32 baseOfDll),
    int Function(int hProcess, int baseOfDll)>('SymUnloadModule');

/// Unloads the symbol table.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule64>.
///
/// {@category dbghelp}
int SymUnloadModule64(int hProcess, int baseOfDll) =>
    _SymUnloadModule64(hProcess, baseOfDll);

final _SymUnloadModule64 = _dbghelp.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint64 baseOfDll),
    int Function(int hProcess, int baseOfDll)>('SymUnloadModule64');

/// Undecorates the specified decorated C++ symbol name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-undecoratesymbolnamew>.
///
/// {@category dbghelp}
int UnDecorateSymbolName(Pointer<Utf16> name, Pointer<Utf16> outputString,
        int maxStringLength, int flags) =>
    _UnDecorateSymbolName(name, outputString, maxStringLength, flags);

final _UnDecorateSymbolName = _dbghelp.lookupFunction<
    Uint32 Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
        Uint32 maxStringLength, Uint32 flags),
    int Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
        int maxStringLength, int flags)>('UnDecorateSymbolNameW');
