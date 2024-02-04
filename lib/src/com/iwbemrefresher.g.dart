// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IWbemRefresher = '{49353c99-516b-11d1-aea6-00c04fb68820}';

/// The IWbemRefresher interface provides an entry point through which
/// refreshable objects such as enumerators or refresher objects, can be
/// refreshed. Implementers of `IWbemHiPerfProvider` must provide an
/// implementation of this interface.
///
/// {@category com}
class IWbemRefresher extends IUnknown {
  IWbemRefresher(super.ptr)
      : _vtable = ptr.value.cast<IWbemRefresherVtbl>().ref;

  final IWbemRefresherVtbl _vtable;

  factory IWbemRefresher.from(IUnknown interface) =>
      IWbemRefresher(interface.toInterface(IID_IWbemRefresher));

  int refresh(int lFlags) =>
      _vtable.Refresh.asFunction<int Function(VTablePointer, int lFlags)>()(
          ptr, lFlags);
}

/// @nodoc
base class IWbemRefresherVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 lFlags)>>
      Refresh;
}

/// @nodoc
const WbemRefresher = '{c71566f2-561e-11d1-ad87-00c04fd8fdff}';
