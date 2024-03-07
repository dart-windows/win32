// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../doc/api_details.dart';
import '../doc/docs_provider.dart';
import '../docs.dart';
import '../extension/string.dart';
import '../extension/typedef.dart';
import 'function.dart';

/// Represents a Dart projection for a Win32 delegate defined by a [TypeDef].
class CallbackProjection {
  /// Creates an instance of this class for the given Win32 delegate [typeDef].
  ///
  /// Throws an [AssertionError] if the provided [typeDef] is not a delegate or
  /// if it does not have the required `Invoke` method.
  CallbackProjection(this.typeDef)
      : assert(typeDef.isDelegate && typeDef.findMethod('Invoke') != null,
            '${typeDef.name} is not a callback.'),
        functionProjection = FunctionProjection(typeDef.findMethod('Invoke')!),
        name = typeDef.safeIdentifier;

  /// The function projection of the callback.
  final FunctionProjection functionProjection;

  /// The name of the callback converted to safe Dart identifier.
  final String name;

  /// The metadata associated with the callback.
  final TypeDef typeDef;

  /// The comment associated with the callback.
  String get comment {
    final buffer = StringBuffer();

    if (callbackDocs.containsKey(typeDef.name)) {
      buffer.write(callbackDocs[typeDef.name]);
    } else {
      final docs = DocsProvider.getDocs(typeDef.name.lastComponent);
      if (docs != null) {
        final ApiDetails(:description, :helpLink) = docs;
        buffer.write(description);
        if (helpLink != null) {
          buffer
              .write(' \nTo learn more about this callback, see <$helpLink>.');
        }
      }
    }

    buffer.write(' \n{@category callback}');

    return buffer.toString().toDocComment();
  }

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
  String toString() =>
      [if (comment.isNotEmpty) comment, 'typedef $name = $type;'].join('\n');
}
