// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../doc/api_details.dart';
import '../doc/docs_provider.dart';
import '../docs.dart';
import '../extension/collection.dart';
import '../extension/field.dart';
import '../extension/string.dart';
import '../extension/typedef.dart';
import 'field.dart';

/// Represents a Dart projection for a struct defined by a [TypeDef].
class StructProjection {
  /// Creates an instance of this class for a [typeDef].
  StructProjection(this.typeDef)
      : assert(typeDef.isStruct, '${typeDef.name} is not a struct.'),
        name = typeDef.safeTypename;

  /// The name of the struct.
  final String name;

  /// The metadata associated with the struct.
  final TypeDef typeDef;

  /// The base type of the struct.
  String get baseType => switch (typeDef) {
        _ when typeDef.isUnion => 'Union', // e.g., CY.
        _ => 'Struct'
      };

  /// The packing alignment of the struct.
  int get packingAlignment => switch (typeDef) {
        // Tokens like System.Guid have no packing alignment.
        _ when typeDef.token == 0 => 0,
        _ => typeDef.classLayout.packingAlignment ?? 0
      };

  /// The comment associated with the struct.
  String get comment {
    final buffer = StringBuffer();

    final docs = structDocs[name] ??
        DocsProvider.getDocs(typeDef.name.lastComponent) ??
        DocsProvider.getDocs(typeDef.nameWithoutEncoding.lastComponent);
    if (docs case ApiDetails(:final description, :final helpLink)) {
      buffer.write(description);
      if (helpLink != null) {
        buffer.write(' \nTo learn more about this '
            '${baseType.toLowerCase()}, see <$helpLink>.');
      }
    }

    buffer.write(' \n{@category ${baseType.toLowerCase()}}');

    return buffer.toString().toDocComment();
  }

  /// The class preamble that includes a doc comment, a dartdoc `@category` tag
  /// derived from the [baseType], and an optional `@Packed` annotation if the
  /// [packingAlignment] is greater than `0`.
  String get classPreamble => [
        if (comment.isNotEmpty) comment,
        if (packingAlignment > 0) '@Packed($packingAlignment)',
      ].join('\n');

  /// The class modifier for the generated class.
  String get classModifier =>
      typeDef.isNested || typeDef.isUnion ? 'sealed' : 'base';

  /// The class header for the generated class.
  String get classHeader => '$classModifier class $name extends $baseType';

  /// The field projections of the struct.
  List<FieldProjection> get fieldProjections =>
      typeDef.fields.map(FieldProjection.new).toFixedList();

  String? _propertyAccessors;

  /// The property accessors for a nested struct to allow accessing its members
  /// from the parent type.
  String get propertyAccessors =>
      _propertyAccessors ??= _cachePropertyAccessors();

  String _cachePropertyAccessors() {
    // Property accessors are only generated for nested structs.
    if (!typeDef.isNested) return '';

    // Try to find the parent field corresponding to the current TypeDef.
    // This ignores Array<T> or Pointer<T> types because property accessors are
    // not generated for them.
    final parentField = typeDef.enclosingClass!.fields
        .where((field) => field.typeIdentifier.type == typeDef)
        .firstOrNull;

    // If the parent field is found, then generate property accessors for the
    // nested struct.
    if (parentField != null) return typeDef.propertyAccessors;

    // Otherwise, return an empty string.
    return '';
  }

  List<StructProjection>? _nestedTypeProjections;

  /// The nested type projections of the struct.
  List<StructProjection> get nestedTypeProjections =>
      _nestedTypeProjections ??= _cacheNestedTypeProjections();

  List<StructProjection> _cacheNestedTypeProjections() => typeDef.fields
      .where((f) => f.isNested || f.isNestedArray || f.isNestedPointer)
      .map((field) => StructProjection(field.isNested
          ? field.typeIdentifier.type!
          : field.typeIdentifier.typeArg!.type!))
      .toFixedList();

  @override
  String toString() {
    if (typeDef.isWrapperStruct) {
      final [fieldProjection] = fieldProjections;
      final nativeType = fieldProjection.typeProjection.nativeType;
      return '''
/// {@category struct}
typedef $name = $nativeType;''';
    }

    return '''
$classPreamble
$classHeader {
  ${fieldProjections.join('\n\n')}
}

$propertyAccessors

${nestedTypeProjections.join('\n\n')}
''';
  }
}

extension NestedStructExtension on TypeDef {
  /// The property accessors for a nested struct to allow accessing its members
  /// from the parent type.
  ///
  /// This is particularly useful for anonymous nested structs, commonly found
  /// in more complex Win32 structs.
  String get propertyAccessors {
    final buffer = StringBuffer()
      ..writeln(
          'extension ${safeTypename}_Extension on ${rootType.safeTypename} {');

    // Iterate through the fields of the nested struct and generate property
    // accessors.
    for (final field in fields) {
      // Skip reserved and obsolete fields as they are not exposed.
      if (field.name.contains('Reserved') ||
          field.name.startsWith('__OBSOLETE')) {
        continue;
      }

      final instanceName = field.instanceName;
      final FieldProjection(:name, :type) = FieldProjection(field);
      buffer
        ..writeln('$type get $name => this.$instanceName;')
        ..writeln('set $name($type value) => this.$instanceName = value;')
        ..writeln();
    }

    buffer.write('}');

    return buffer.toString();
  }
}
