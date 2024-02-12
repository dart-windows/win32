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
        functionProjection = FunctionProjection(typeDef.findMethod('Invoke')!),
        name = typeDef.safeIdentifier;

  /// The function projection of the callback.
  final FunctionProjection functionProjection;

  /// The name of the callback converted to safe Dart identifier.
  final String name;

  /// The type of the callback.
  String get type {
    if (functionProjection.parameters.isEmpty) {
      // e.g., FARPROC, NEARPROC, PROC.
      if (functionProjection.returnTypeProjection.nativeType == 'IntPtr') {
        return 'Pointer';
      }
    }

    return functionProjection.nativePrototype;
  }

  @override
  String toString() => 'typedef $name = $type;';
}
