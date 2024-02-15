// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/string.dart';
import 'com_method.dart';
import 'type.dart';

/// Represents a Dart projection for a COM property defined by a [Method].
sealed class ComPropertyProjection extends ComMethodProjection {
  /// Creates an instance of this class for a COM [method].
  ComPropertyProjection(super.method);

  @override
  String get camelCasedName {
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

  /// The name of the parameter that is safe to use as a Dart identifier.
  String get parameterIdentifier =>
      parameters.first.name.toCamelCase().safeIdentifier;
}

/// Represents a Dart projection for a COM get property defined by a [Method].
class ComGetPropertyProjection extends ComPropertyProjection {
  /// Creates an instance of this class for a COM [method].
  ComGetPropertyProjection(super.method)
      : assert(method.name.startsWith(RegExp('get_(_)?')),
            '$method is not a COM get property.');

  /// Whether to convert the return value to a Dart [bool].
  bool get _convertBool => parameters.first.type == 'bool';

  TypeProjection get _returnValue =>
      parameters.first.typeProjection.dereference();

  String get _valRef => _returnValue.dartType == 'double' ||
          _returnValue.dartType == 'int' ||
          _returnValue.isPointer
      ? 'value'
      : 'ref';

  @override
  String get returnType => _valRef == 'ref'
      ? parameters.first.typeProjection.dartType
      : _returnValue.dartType;

  @override
  String get header => '$returnType get $camelCasedName';

  @override
  String get methodBody {
    final buffer = StringBuffer()
      ..writeln(
        'final $parameterIdentifier = calloc<${_returnValue.nativeType}>();',
      );

    if (_valRef == 'ref') {
      buffer
        ..writeln(
          ffiCall(identifier: parameterIdentifier, freeRetValOnFailure: true),
        )
        ..write('return $parameterIdentifier;');
    } else {
      buffer
        ..writeln('try {')
        ..writeln(ffiCall(identifier: parameterIdentifier))
        ..writeln('final retValue = $parameterIdentifier.$_valRef;')
        ..writeln('return ${_convertBool ? 'retValue == 0' : 'retValue'};')
        ..writeln('} finally {')
        ..writeln('free($parameterIdentifier);')
        ..writeln('}');
    }

    return buffer.toString();
  }

  @override
  String toString() => '$header {\n$methodBody\n}';
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
    if (parameterType == 'VTablePointer?') {
      return '$parameterIdentifier ?? nullptr';
    }

    return parameterIdentifier;
  }

  @override
  String get returnType => 'void';

  @override
  String get header =>
      'set $camelCasedName($parameterType $parameterIdentifier)';

  @override
  String get methodBody => ffiCall(identifier: identifier);

  @override
  String toString() => '$header {\n$methodBody\n}';
}
