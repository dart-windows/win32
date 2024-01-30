// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extensions/string.dart';
import 'com_method.dart';
import 'type.dart';

abstract class ComPropertyProjection extends ComMethodProjection {
  ComPropertyProjection(super.method);

  /// Strip off all underscores, even if double underscores.
  String get exposedMethodName =>
      name.startsWith('get__') | method.name.startsWith('put__')
          ? name.substring(5).toCamelCase().safeIdentifier
          : name.substring(4).toCamelCase().safeIdentifier;

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
    if (valRef == 'ref') {
      return '''
  ${parameters.first.typeProjection.dartType} get $exposedMethodName {
    final retValuePtr = calloc<${returnValue.nativeType}>();
    ${ffiCall(identifier: 'retValuePtr')}
    return retValuePtr;
  }
''';
    }

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

  String get parameterType {
    final type = parameters.first.type;
    return type;
  }

  String get identifier {
    if (parameterType == 'VTablePointer?') return 'value ?? nullptr';
    return 'value';
  }

  @override
  String toString() => '''
  set $exposedMethodName($parameterType value) {
    ${ffiCall(identifier: identifier)}
  }
''';
}
