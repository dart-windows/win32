// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import 'type.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  FieldProjection(this.field)
      : name = field.name.safeIdentifier,
        typeProjection = TypeProjection(field.typeIdentifier);

  final Field field;
  final String name;
  final TypeProjection typeProjection;

  String get type {
    // If the field is a nested type (e.g. a nested union), then it's OK for it
    // to be internal only, since it will be accessed via a property instead.
    // But it should only have one underscore, for consistency later. Nested
    // types are not likely to be reserved keywords, so it should be OK to not
    // do the extra work necessary to test whether they're safe or not.
    //
    // Otherwise strip it so that it's accessible from outside the library.
    var dartType =
        typeProjection.dartType.stripLeadingUnderscores().safeTypename;

    if (field.typeIdentifier.type?.isNested ?? false) {
      dartType = '_${typeProjection.dartType.stripLeadingUnderscores()}';
    }

    if (field.typeIdentifier.typeArg?.type?.isNested ?? false) {
      dartType = typeProjection.dartType;
    }

    return dartType;
  }

  @override
  String toString() => [
        typeProjection.attribute,
        if (field.isCharArray && !field.isFlexibleArray)
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
