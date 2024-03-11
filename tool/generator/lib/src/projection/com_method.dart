// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../doc/api_details.dart';
import '../doc/docs_provider.dart';
import '../docs.dart';
import '../extension/collection.dart';
import '../extension/method.dart';
import '../extension/string.dart';
import '../extension/typedef.dart';
import 'parameter.dart';
import 'type.dart';

/// Represents a Dart projection for a COM method defined by a [Method].
class ComMethodProjection {
  /// Creates an instance of this class for a COM [method].
  ComMethodProjection(this.method)
      : name = method.uniqueName,
        returnTypeProjection = TypeProjection(method.returnType.typeIdentifier),
        parameters =
            method.parameters.map(ParameterProjection.new).toFixedList();

  /// The metadata associated with the method.
  final Method method;

  /// A unique name for the method.
  final String name;

  /// The parameter projections for the method.
  final List<ParameterProjection> parameters;

  /// The type projection for the return type of the method.
  final TypeProjection returnTypeProjection;

  /// The comment associated with the method.
  String get comment {
    final buffer = StringBuffer();

    final docs = methodDocs[camelCasedName] ??
        DocsProvider.getDocs(
            '${method.parent.name.lastComponent}.${method.name}') ??
        DocsProvider.getDocs(
            '${method.parent.nameWithoutEncoding.lastComponent}.${method.name}');
    if (docs case ApiDetails(:final description, :final helpLink)) {
      buffer.write(description?.sanitize());
      if (helpLink != null) {
        buffer.write(
          ' \nTo learn more about this '
          '${method.canBeProjectedAsGetter ? 'property' : 'method'}, see '
          '<$helpLink>.',
        );
      }
    }

    return buffer.toString().toDocComment();
  }

  /// The method name in camel case format.
  ///
  /// COM methods and properties are typically named in TitleCase, but the Dart
  /// idiom is camelCase. This also has the significant advantage of making it
  /// easier to avoid name conflicts.
  String get camelCasedName => name.toCamelCase().safeIdentifier;

  /// The Dart parameter list for the method.
  String get dartParams => [
        // The first parameter is always the v-table itself.
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.dartProjection)
      ].join(', ');

  /// The Dart prototype for the method.
  String get dartPrototype =>
      '${returnTypeProjection.dartType} Function($dartParams)';

  /// The native parameter list for the method.
  String get nativeParams => [
        // The first parameter is always the v-table itself.
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.nativeProjection)
      ].join(', ');

  /// The native prototype for the method.
  String get nativePrototype =>
      '${returnTypeProjection.nativeType} Function($nativeParams)';

  /// The parameters exposed by the method.
  String get methodParams => parameters
      .where((p) => !p.isReserved) // Hide reserved parameters.
      .join(', ');

  /// The return type of the method.
  String get returnType => returnTypeProjection.dartType;

  /// The method header.
  String get header => '$returnType $camelCasedName($methodParams)';

  /// The argument list for the method body.
  String get methodArguments =>
      ['ptr', ...parameters.map((p) => p.identifier)].join(', ');

  /// The method body.
  String get methodBody =>
      '_vtable.$name.asFunction<$dartPrototype>()($methodArguments);';

  @override
  String toString() {
    try {
      return [
        if (comment.isNotEmpty) comment,
        '$header => $methodBody',
      ].join('\n');
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.
      print("Failed to project `$method` method from `${method.parent}`.");
      return '';
    }
  }
}

extension on String {
  String sanitize() => replaceAllMapped(
        RegExp(r'\s(\w+)::(\w+)(\.|,|\s)'),
        (match) =>
            ' `${match.group(1)}.${match.group(2)?.toCamelCase()}`${match.group(3)}',
      );
}
