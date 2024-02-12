// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/collection.dart';
import '../extensions/method.dart';
import '../extensions/string.dart';
import 'parameter.dart';
import 'type.dart';

/// Represents a Dart projection for a Win32 function defined by a [Method].
class FunctionProjection {
  /// Creates an instance of this class for a Win32 [method].
  FunctionProjection(this.method)
      : name = method.nameWithoutEncoding.safeTypename,
        returnTypeProjection = TypeProjection(method.returnType.typeIdentifier),
        parameters =
            method.parameters.map(ParameterProjection.new).toFixedList();

  /// The metadata associated with the function.
  final Method method;

  /// The name of the method converted to a legal Dart typename.
  final String name;

  /// The type projection for the return type of the function.
  final TypeProjection returnTypeProjection;

  /// The parameter projections for the function.
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

  /// The Dart parameter list for the function (e.g.,
  /// `int string1, int string2, Pointer<Int32> result`).
  String get dartParameters =>
      parameters.map((p) => p.dartProjection).join(', ');

  /// The Dart prototype for the function (e.g.,
  /// `int Function(int string1, int string2, Pointer<Int32> result)`).
  String get dartPrototype =>
      '${returnTypeProjection.dartType} Function($dartParameters)';

  /// The native parameter list for the function (e.g.,
  /// `IntPtr string1, IntPtr string2, Pointer<Int32> result`).
  String get nativeParameters =>
      parameters.map((p) => p.nativeProjection).join(', ');

  /// The native prototype for the function (e.g.,
  /// `Int32 Function(IntPtr string1, IntPtr string2, Pointer<Int32> result)`).
  String get nativePrototype =>
      '${returnTypeProjection.nativeType} Function($nativeParameters)';

  /// The parameters exposed by the function (e.g.,
  /// `int? string1, int? string2, Pointer<Int32> result`).
  String get functionParameters => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters.
      .join(', ');

  /// The argument list for the function body (e.g.,
  /// `string1 ?? 0, string2 ?? 0, result`).
  String get functionArguments =>
      parameters.map((p) => p.identifier).join(', ');

  /// The return type of the function.
  String get returnType => returnTypeProjection.dartType.safeTypename;

  /// The function header.
  String get header => '$returnType $name($functionParameters)';

  /// The function body.
  String get functionBody => '_$name($functionArguments);';

  /// The cached lookup for the function.
  String get cachedLookup => "final _$name = _$lib.lookupFunction<"
      "$nativePrototype, $dartPrototype>('${method.name}');";

  @override
  String toString() => '$header => $functionBody\n\n$cachedLookup';
}
