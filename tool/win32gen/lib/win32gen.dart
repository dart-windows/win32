// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Generates Win32 and COM APIs for the win32 package based on Windows
/// metadata.
library;

export 'src/attributes.dart';
export 'src/exclusions.dart';
export 'src/extensions/method.dart';
export 'src/extensions/string.dart';
export 'src/extensions/typedef.dart';
export 'src/headers.dart';
export 'src/model/functions.dart';
export 'src/model/load_json.dart';
export 'src/projection/callback.dart';
export 'src/projection/com_class.dart';
export 'src/projection/com_interface.dart';
export 'src/projection/com_method.dart';
export 'src/projection/com_property.dart';
export 'src/projection/field.dart';
export 'src/projection/function.dart';
export 'src/projection/method.dart';
export 'src/projection/nested_struct.dart';
export 'src/projection/parameter.dart';
export 'src/projection/struct.dart';
export 'src/projection/type.dart';
export 'src/versions.dart';
