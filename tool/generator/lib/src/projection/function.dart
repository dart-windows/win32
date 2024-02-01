// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import 'parameter.dart';
import 'type.dart';

/// Represents a Dart projection for a Win32 function defined by a [Method].
class FunctionProjection {
  /// Creates an instance of this class for a Win32 [method].
  FunctionProjection(this.method)
      : name = method.nameWithoutEncoding.safeTypename,
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters.map(ParameterProjection.new).toList();

  /// The metadata associated with the method.
  final Method method;

  /// The name of the method.
  final String name;

  /// The type projection for the return type of the method.
  final TypeProjection returnType;

  /// The parameter projections for the method.
  final List<ParameterProjection> parameters;

  /// A legal Dart identifier based on the Win32 module name.
  ///
  /// Dart identifiers cannot match certain patterns found in Win32 module
  /// names.
  ///
  /// The getter converts the Win32 module name to a legal Dart identifier by:
  ///
  /// 1. Converting the module name to lowercase.
  /// 2. Replacing hyphens with underscores.
  /// 3. Extracting the first segment before any dot (`.`) as the Dart
  ///    identifier.
  ///
  /// For example, the Win32 module name `api-ms-win-wsl-api-l1-1-0.dll` becomes
  /// `api_ms_win_wsl_api_l1_1_0`.
  String get lib =>
      method.module.name.toLowerCase().replaceAll('-', '_').split('.').first;

  /// The Dart parameter list for the method (e.g.,
  /// `int string1, int string2, Pointer<Int32> result`).
  String get dartParams => parameters.map((p) => p.dartProjection).join(', ');

  /// The Dart prototype for the method (e.g.,
  /// `int Function(int string1, int string2, Pointer<Int32> result)`).
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  /// The native parameter list for the method (e.g.,
  /// `IntPtr string1, IntPtr string2, Pointer<Int32> result`).
  String get nativeParams =>
      parameters.map((p) => p.nativeProjection).join(', ');

  /// The native prototype for the method (e.g.,
  /// `Int32 Function(IntPtr string1, IntPtr string2, Pointer<Int32> result)`).
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  /// The parameters exposed by the method (e.g.,
  /// `int? string1, int? string2, Pointer<Int32> result`).
  String get functionParams => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters.
      .map((p) => p.paramProjection)
      .join(', ');

  /// The argument list for the function body (e.g.,
  /// `string1 ?? 0, string2 ?? 0, result`).
  String get functionArguments => parameters
      .map((p) => switch (p) {
            _ when p.isOptional && !p.isReserved =>
              p.type.startsWith(RegExp('(VTable)?Pointer'))
                  ? '${p.identifier} ?? nullptr'
                  : '${p.identifier} ?? 0',
            _ when p.isReserved =>
              p.type.startsWith(RegExp('(VTable)?Pointer')) ? 'nullptr' : '0',
            _ => p.identifier,
          })
      .join(', ');

  @override
  String toString() => '''
${returnType.dartType.safeTypename} $name($functionParams) =>
    _$name($functionArguments);

final _$name = _$lib.lookupFunction<
    $nativePrototype,
    $dartPrototype>('${method.name}');
''';
}
