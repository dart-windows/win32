// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/string.dart';
import 'type.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  FieldProjection(this.field) : fieldName = field.name.safeIdentifier;

  final Field field;
  final String fieldName;

  String _printCharArray(TypeProjection typeProjection) {
    final dimensionsUpperBound = typeProjection.arrayUpperBound;
    if (dimensionsUpperBound == null) {
      throw StateError('Array $fieldName should have dimensions.');
    }

    return '''
  ${typeProjection.attribute}
  external ${typeProjection.nativeType} _$fieldName;

  String get $fieldName {
    final charCodes = <int>[];
    for (var i = 0; i < $dimensionsUpperBound; i++) {
      if (_$fieldName[i] == 0x00) break;
      charCodes.add(_$fieldName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set $fieldName(String value) {
    final stringToStore = value.padRight($dimensionsUpperBound, '\\x00');
    for (var i = 0; i < $dimensionsUpperBound; i++) {
      _$fieldName[i] = stringToStore.codeUnitAt(i);
    }
  }''';
  }

  @override
  String toString() {
    final typeProjection = TypeProjection(field.typeIdentifier);
    if (typeProjection.isCharArray) return _printCharArray(typeProjection);

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

    return '  ${typeProjection.attribute}\n  external $dartType $fieldName;\n';
  }
}
