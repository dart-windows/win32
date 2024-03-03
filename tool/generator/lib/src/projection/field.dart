// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extension/field.dart';
import '../extension/string.dart';
import 'type.dart';

/// Represents a Dart projection for a struct field defined by a [Field].
class FieldProjection {
  /// Creates an instance of this class for a [field].
  FieldProjection(this.field)
      : name = field.name.safeIdentifier,
        typeProjection = TypeProjection(field.typeIdentifier);

  /// The metadata associated with the field.
  final Field field;

  /// The name of the field converted to safe Dart identifier.
  final String name;

  /// The type projection for the field.
  final TypeProjection typeProjection;

  /// The Dart type of the field.
  String get type => typeProjection.dartType.safeTypename;

  @override
  String toString() => [
        if (typeProjection.attribute.isNotEmpty) typeProjection.attribute,

        // Don't strip off leading underscores if the field is obsolete.
        if (field.name.startsWith('__OBSOLETE'))
          '  // ignore: unused_field\nexternal $type ${field.name};'

        // Mark the field private if it is reserved.
        else if (field.name.contains('Reserved'))
          '  // ignore: unused_field\nexternal $type _${field.name};'

        // Generate a String getter/setter for char arrays.
        else if (field.isCharArray && !field.isFlexibleArray)
          '''
external $type _$name;

String get $name {
  final charCodes = <int>[];
  for (var i = 0; i < ${field.arrayUpperBound}; i++) {
    if (_$name[i] == 0x00) break;
    charCodes.add(_$name[i]);
  }
  return String.fromCharCodes(charCodes);
}

set $name(String value) {
  final stringToStore = value.padRight(${field.arrayUpperBound}, '\\x00');
  for (var i = 0; i < ${field.arrayUpperBound}; i++) {
    _$name[i] = stringToStore.codeUnitAt(i);
  }
}'''
        else
          'external $type $name;'
      ].join('\n');
}
