// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Generates Win32 and COM APIs for the `win32` package based on metadata
/// provided by Microsoft.
library;

export 'src/attributes.dart';
export 'src/doc/api_details.dart';
export 'src/doc/docs_provider.dart';
export 'src/doc/local_storage.dart';
export 'src/doc/nuget_package.dart';
export 'src/docs.dart';
export 'src/exclusions.dart';
export 'src/extension/collection.dart';
export 'src/extension/custom_attributes_mixin.dart';
export 'src/extension/field.dart';
export 'src/extension/method.dart';
export 'src/extension/parameter.dart';
export 'src/extension/string.dart';
export 'src/extension/typedef.dart';
export 'src/headers.dart';
export 'src/model/functions.dart';
export 'src/model/load_json.dart';
export 'src/projection/callback.dart';
export 'src/projection/com_interface.dart';
export 'src/projection/com_method.dart';
export 'src/projection/com_property.dart';
export 'src/projection/enum.dart';
export 'src/projection/field.dart';
export 'src/projection/function.dart';
export 'src/projection/parameter.dart';
export 'src/projection/struct.dart';
export 'src/projection/type.dart';
export 'src/versions.dart';
