// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/typedef.dart';
import 'function.dart';

/// Represents a Dart projection for a Win32 delegate defined by a [TypeDef].
class CallbackProjection {
  /// Creates an instance of this class for the given Win32 delegate [typeDef].
  ///
  /// Throws an [AssertionError] if the provided [typeDef] is not a delegate or
  /// if it does not have the required `Invoke` method.
  CallbackProjection(TypeDef typeDef)
      : assert(typeDef.isDelegate && typeDef.findMethod('Invoke') != null,
            '${typeDef.name} is not a callback.'),
        callbackName = typeDef.safeIdentifier,
        functionProjection = FunctionProjection(typeDef.findMethod('Invoke')!);

  /// The name of the callback type.
  final String callbackName;

  /// The function projection of the `Invoke` method of the callback.
  final FunctionProjection functionProjection;

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
