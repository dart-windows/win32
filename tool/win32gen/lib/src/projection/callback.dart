// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'function.dart';
import 'safenames.dart';

class CallbackProjection {
  late final String callbackName;
  late final FunctionProjection functionProjection;

  CallbackProjection(TypeDef typeDef) {
    final invokeMethod = typeDef.findMethod('Invoke');

    if (invokeMethod == null) {
      throw Exception('${typeDef.name} is not a callback.');
    }

    callbackName = safeIdentifierForTypeDef(typeDef);
    functionProjection = FunctionProjection(invokeMethod, '');
  }

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
