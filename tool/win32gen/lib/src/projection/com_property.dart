// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extensions/string.dart';
import 'com_method.dart';
import 'type.dart';

abstract class ComPropertyProjection extends ComMethodProjection {
  ComPropertyProjection(super.method);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName =>
      method.name.startsWith('get__') | method.name.startsWith('put__')
          ? method.name.substring(5).safeIdentifier.toCamelCase()
          : method.name.substring(4).safeIdentifier.toCamelCase();

  String ffiCall({
    required String identifier,
    bool freeRetValOnFailure = false,
  }) =>
      [
        'final hr = _vtable.$name.asFunction<$dartPrototype>()(ptr, $identifier);',
        if (freeRetValOnFailure)
          'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
        else
          'if (FAILED(hr)) throw WindowsException(hr);'
      ].join('\n');
}

class ComGetPropertyProjection extends ComPropertyProjection {
  ComGetPropertyProjection(super.method);

  bool get convertBool => parameters.first.type == 'bool';

  @override
  String toString() {
    final returnValue = parameters.first.typeProjection.dereference();
    final valRef = returnValue.dartType == 'double' ||
            returnValue.dartType == 'int' ||
            returnValue.dartType == 'VTablePointer' ||
            returnValue.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';
    return '''
  ${returnValue.dartType} get $exposedMethodName {
    final retValuePtr = calloc<${returnValue.nativeType}>();

    try {
      ${ffiCall(identifier: 'retValuePtr')}

      final retValue = retValuePtr.$valRef;
      return ${convertBool ? 'retValue == 0' : 'retValue'};
    } finally {
      free(retValuePtr);
    }
  }
''';
  }
}

class ComSetPropertyProjection extends ComPropertyProjection {
  ComSetPropertyProjection(super.method);

  @override
  String toString() => '''
  set $exposedMethodName(${parameters.first.type} value) {
    ${ffiCall(identifier: 'value')}
  }
''';
}
