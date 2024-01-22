// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import 'struct.dart';
import 'type.dart';

/// A struct or union that is nested in an enclosing class.
///
/// This class has additional support to create extensions so that the nested
/// types can be accessed from the top-most class. This is necessary for
/// anonymous nested types, of which there are many in more complex Win32
/// structs.
class NestedStructProjection extends StructProjection {
  NestedStructProjection(
    super.typeDef,
    super.structName, {
    required this.rootTypePackingAlignment,
  }) : rootType = _getRootTypeDef(typeDef);

  final int rootTypePackingAlignment;
  final TypeDef rootType;

  /// Finds the topmost [TypeDef] in the nested tree. This is the one that
  /// should be extended.
  static TypeDef _getRootTypeDef(TypeDef typeDef) {
    var rootType = typeDef;
    while (rootType.enclosingClass != null) {
      rootType = rootType.enclosingClass!;
    }
    return rootType;
  }

  String _instanceName(Field field) {
    // Walk up the tree and append each item, making sure along the way that
    // each identifier is valid.
    var typeDef = field.parent;
    var name = field.name.safeIdentifier;

    while (typeDef.enclosingClass != null) {
      final parentField = typeDef.enclosingClass!.fields
          .firstWhere((field) => field.typeIdentifier.type == typeDef);
      final parentName = parentField.name.safeIdentifier;
      name = '$parentName.$name';
      typeDef = typeDef.enclosingClass!;
    }

    return name;
  }

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through an extension that contains the field accessors.
  String get propertyAccessors {
    final buffer = StringBuffer()
      ..writeln(
          'extension ${structName}_Extension on ${rootType.safeTypename} {');
    for (final field in typeDef.fields) {
      final instanceName = _instanceName(field);
      final typeProjection = TypeProjection(field.typeIdentifier);
      final fieldType = typeProjection.isCharArray && !field.isFlexibleArray
          ? 'String'
          : typeProjection.dartType.safeTypename;
      final fieldName = field.name.safeIdentifier;
      buffer.writeln('''
  $fieldType get $fieldName => this.$instanceName;
  set $fieldName($fieldType value) => this.$instanceName = value;
''');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  @override
  String toString() {
    final unnestedStructProjection = super.toString();
    return '''
$unnestedStructProjection
$propertyAccessors
''';
  }
}
