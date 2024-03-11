// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemRefresher = '{49353c99-516b-11d1-aea6-00c04fb68820}';

/// Provides an entry point through which refreshable objects such as
/// enumerators or refresher objects, can be refreshed.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemrefresher>.
///
/// {@category com}
class IWbemRefresher extends IUnknown {
  IWbemRefresher(super.ptr)
      : _vtable = ptr.value.cast<IWbemRefresherVtbl>().ref;

  final IWbemRefresherVtbl _vtable;

  /// Creates a new instance of `IWbemRefresher` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IWbemRefresher` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IWbemRefresher.from(IUnknown interface) =>
      IWbemRefresher(interface.toInterface(IID_IWbemRefresher));

  /// Updates all refreshable objects, enumerators, and nested refreshers.
  ///
  /// The WMI Refresher calls this function in response to a client request to
  /// Refresh.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemrefresher-refresh>.
  int refresh(int lFlags) => _vtable.Refresh.asFunction<
      int Function(VTablePointer lpVtbl, int lFlags)>()(ptr, lFlags);
}

/// @nodoc
base class IWbemRefresherVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 lFlags)>>
      Refresh;
}

/// @nodoc
const WbemRefresher = '{c71566f2-561e-11d1-ad87-00c04fd8fdff}';
