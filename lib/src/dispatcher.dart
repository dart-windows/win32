// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.g.dart';
import 'constants.dart';
import 'enums.g.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'pwstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'utils.dart';
import 'win32_v5/ole32.g.dart';

/// A thin wrapper around the [IDispatch] interface, which is used to invoke
/// methods and properties on COM automation objects.
class Dispatcher {
  Dispatcher._(this._dispatch) : _IID_NULL = calloc<GUID>();

  /// The [IDispatch] interface associated with the object.
  final IDispatch _dispatch;

  /// A pointer to the 'nil' GUID (i.e.
  /// `{00000000-0000-0000-0000-000000000000}`).
  final Pointer<GUID> _IID_NULL;

  var _isDisposed = false;

  /// Constructs a [Dispatcher] instance from the given programmatic identifier
  /// (ProgID).
  ///
  /// The COM must be initialized before calling this constructor by calling
  /// [CoInitializeEx].
  ///
  /// Throws a [WindowsException] if the object cannot be created.
  factory Dispatcher.fromProgID(String progID) {
    return using((arena) {
      final lpszProgID = PWSTR.fromString(progID, allocator: arena);
      final lpclsid = arena<GUID>();
      final riid = GUIDFromString(IID_IDispatch, allocator: arena);
      final ppv = arena<VTablePointer>();

      var hr = CLSIDFromProgID(lpszProgID, lpclsid);
      if (FAILED(hr)) throw WindowsException(hr);

      hr = CoCreateInstance(
          lpclsid, null, CLSCTX.CLSCTX_INPROC_SERVER, riid, ppv);
      if (FAILED(hr)) throw WindowsException(hr);

      return Dispatcher._(IDispatch(ppv.value));
    });
  }

  /// Retrieves the dispatch identifier (DISPID) for the given [member] of the
  /// object.
  int _getDispId(String member) {
    return using((arena) {
      final ptrMember = PWSTR.fromString(member, allocator: arena);
      final rgszNames = arena<Pointer<Utf16>>()..value = ptrMember;
      final rgDispId = arena<Int32>();

      final hr = _dispatch.getIDsOfNames(
        _IID_NULL,
        rgszNames,
        1,
        LOCALE_USER_DEFAULT,
        rgDispId,
      );
      if (FAILED(hr)) throw WindowsException(hr);

      return rgDispId.value;
    });
  }

  /// Invokes the [method] on the object with the optional [params].
  ///
  /// Throws a [WindowsException] if the invocation fails.
  void invoke(String method, [Pointer<DISPPARAMS>? params]) {
    final args = params ?? calloc<DISPPARAMS>();
    final dispid = _getDispId(method);

    final hr = _dispatch.invoke(
      dispid,
      _IID_NULL,
      LOCALE_SYSTEM_DEFAULT,
      DISPATCH_FLAGS.DISPATCH_METHOD,
      args,
      null,
      null,
      null,
    );
    if (params == null) free(args);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Releases the resources associated with the object.
  void dispose() {
    if (_isDisposed) return;
    free(_IID_NULL);
    _dispatch.release();
    _isDisposed = true;
  }
}
