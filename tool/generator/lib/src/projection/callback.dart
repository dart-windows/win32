// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/typedef.dart';
import 'function.dart';

class CallbackProjection {
  CallbackProjection(TypeDef typeDef)
      : assert(typeDef.findMethod('Invoke') != null,
            '${typeDef.name} is not a callback.'),
        callbackName = typeDef.safeIdentifier,
        functionProjection = FunctionProjection(typeDef.findMethod('Invoke')!);

  final String callbackName;
  final FunctionProjection functionProjection;

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
