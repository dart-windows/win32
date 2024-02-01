// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/string.dart';
import 'com_method.dart';
import 'type.dart';

/// Represents a Dart projection for a COM property defined by a [Method].
abstract class ComPropertyProjection extends ComMethodProjection {
  /// Creates an instance of this class for a COM [method].
  ComPropertyProjection(super.method);

  /// The exposed method name without the `get_` or `put_` prefix in camel case
  /// format.
  String get exposedMethodName {
    final startIndex =
        name.startsWith('get__') | method.name.startsWith('put__') ? 5 : 4;
    return name.substring(startIndex).toCamelCase().safeIdentifier;
  }

  /// Generates the FFI call code for invoking the COM property.
  ///
  /// The generated code includes handling for `HRESULT` return values and
  /// optional freeing of the pointer on failure.
  String ffiCall({
    required String identifier,
    bool freeRetValOnFailure = false,
  }) =>
      [
        'final hr = _vtable.$name.asFunction<$dartPrototype>()(ptr, $identifier);',
        if (freeRetValOnFailure)
          'if (FAILED(hr)) { free($identifier); throw WindowsException(hr); }'
        else
          'if (FAILED(hr)) throw WindowsException(hr);'
      ].join('\n');
}

/// Represents a Dart projection for a COM get property defined by a [Method].
class ComGetPropertyProjection extends ComPropertyProjection {
  /// Creates an instance of this class for a COM [method].
  ComGetPropertyProjection(super.method)
      : assert(method.name.startsWith(RegExp('get_(_)?')),
            '$method is not a COM get property.');

  /// Whether to convert the return value to a Dart [bool].
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

/// Represents a Dart projection for a COM set property defined by a [Method].
class ComSetPropertyProjection extends ComPropertyProjection {
  /// Creates an instance of this class for a COM [method].
  ComSetPropertyProjection(super.method)
      : assert(method.name.startsWith(RegExp('put_(_)?')),
            '$method is not a COM set property.');

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
