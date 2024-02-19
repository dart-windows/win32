// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Helpful utilities

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/iunknown.g.dart';
import 'constants.dart';
import 'exceptions.dart';
import 'extensions/int_to_hexstring.dart';
import 'guid.dart';
import 'macros.dart';
import 'pwstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32_v5/kernel32.g.dart';
import 'win32_v5/ole32.g.dart';
import 'win32_v5/shell32.g.dart';
import 'win32_v5/user32.g.dart';

/// Converts a Dart string into an CLSID using the [CLSIDFromString] function.
///
/// You can pass this method one of two things: a brace-enclosed string, such as
/// `{00000000-0000-0000-c000-000000000046}`, or a ProgID, such as
/// `Excel.Application`. If you pass a ProgID, it will look up the CLSID
/// associated with it. In either case, it will return a pointer to a GUID
/// struct that matches the string.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
///
/// {@category com}
Pointer<GUID> convertToCLSID(String strCLSID, {Allocator allocator = calloc}) {
  final lpszCLSID = PWSTR.fromString(strCLSID);
  final clsid = allocator<GUID>();

  try {
    final hr = CLSIDFromString(lpszCLSID, clsid);
    if (FAILED(hr)) throw WindowsException(hr);
    return clsid;
  } finally {
    lpszCLSID.free();
  }
}

/// Converts a Dart string into an IID using the [IIDFromString] function.
///
/// You can pass this method a brace-enclosed string, such as
/// `{00000000-0000-0000-c000-000000000046}`, and it will return a pointer to a
/// GUID struct that matches the string.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a
/// custom allocator for ease of memory management.
///
/// {@category com}
Pointer<GUID> convertToIID(String strIID, {Allocator allocator = calloc}) {
  final lpszIID = PWSTR.fromString(strIID);
  final iid = allocator<GUID>();

  try {
    final hr = IIDFromString(lpszIID, iid);
    if (FAILED(hr)) throw WindowsException(hr);
    return iid;
  } finally {
    lpszIID.free();
  }
}

/// Create an instance of a COM object using its class identifier, cast to the
/// specified interface.
///
/// Example:
/// ```dart
/// final dialog = IFileOpenDialog(
///     createComObject(FileOpenDialog, IID_IFileOpenDialog));
/// ```
///
/// Another example that uses a ProgID for [clsid]:
/// ```dart
/// final dispatch = IDispatch(
///     createComObject('Shell.Application', IID_IDispatch));
/// ```
///
/// {@category com}
VTablePointer createComObject(String clsid, String iid) {
  final rclsid = convertToCLSID(clsid);
  final riid = convertToIID(iid);
  final ppv = calloc<VTablePointer>();

  try {
    final hr = CoCreateInstance(rclsid, null, CLSCTX_ALL, riid, ppv.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    return ppv.value;
  } finally {
    free(ppv);
    free(riid);
    free(rclsid);
  }
}

/// Sets up a WinMain function with all the relevant information.
///
/// Add the following line to your command line app:
/// ```dart
/// void main() => initApp(winMain);
/// ```
///
/// Now you can declare a winMain function as:
/// ```dart
/// void winMain(int hInstance, List<String> args, int nShowCmd) {
/// ...
/// }
/// ```
void initApp(Function winMain) {
  final nArgs = calloc<Int32>();
  final args = <String>[];
  final lpStartupInfo = calloc<STARTUPINFO>();

  // Parse command line args using Win32 functions, to reduce ceremony in the
  // app that uses this.
  final szArgList = CommandLineToArgv(GetCommandLine(), nArgs);
  if (szArgList.address != 0) {
    final numberOfArgs = nArgs.value;
    for (var i = 0; i < numberOfArgs; i++) {
      final arg = szArgList[i].toDartString();
      args.add(arg);
    }
    LocalFree(szArgList);
  }

  final hInstance = GetModuleHandle(null);
  GetStartupInfo(lpStartupInfo);

  try {
    winMain(
      hInstance,
      args,
      lpStartupInfo.ref.dwFlags & STARTF_USESHOWWINDOW == STARTF_USESHOWWINDOW
          ? lpStartupInfo.ref.wShowWindow
          : SW_SHOWDEFAULT,
    );
  } finally {
    free(nArgs);
    free(lpStartupInfo);
  }
}

/// Determines whether the Component Object Model (COM) is initialized on the
/// current thread.
bool get isComInitialized {
  final pAptType = calloc<Int32>();
  final pAptQualifier = calloc<Int32>();
  try {
    return CoGetApartmentType(pAptType, pAptQualifier) == S_OK;
  } finally {
    free(pAptType);
    free(pAptQualifier);
  }
}

/// Detects whether the Windows Runtime (WinRT) is available by attempting to
/// open its core library.
bool isWindowsRuntimeAvailable() {
  try {
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
  } on ArgumentError {
    return false;
  }

  return true;
}

/// Frees allocated memory.
///
/// `calloc.free` and `malloc.free` do the same thing, so this works regardless
/// of whether memory was zero-allocated on creation or not.
void free(Pointer pointer) => calloc.free(pointer);

/// For debugging, print the memory structure of a given struct.
void printStruct(Pointer struct, int sizeInBytes) {
  final words = <int>[];
  final ptr = struct.cast<WCHAR>();
  for (var i = 0; i < sizeInBytes ~/ 2; i++) {
    words.add((ptr + i).value);
  }
  print(words.map((word) => word.toHexString(16)).join(', '));
}

/// Returns the current reference count of the COM object.
int refCount(IUnknown unk) {
  // Call addRef() and release(), which are inherited from IUnknown. Both return
  // the refcount after the operation, so by adding a reference and immediately
  // removing it, we can get the original refcount.
  unk.addRef();
  final refCount = unk.release();
  return refCount;
}

/// Registers a traditional Win32 app process as supporting high-DPI.
///
/// Reduces blurriness but requires the app to provide necessary DPI awareness.
void registerHighDPISupport() {
  final result =
      SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);
  if (result == FALSE) {
    final debugMessage =
        PWSTR.fromString('WARNING: could not set DPI awareness');
    OutputDebugString(debugMessage);
    debugMessage.free();
  }
}
