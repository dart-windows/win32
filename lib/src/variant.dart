// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of COM variant structs used in the Win32 API.

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

/// The PROPVARIANT structure is used in the ReadMultiple and WriteMultiple
/// methods of IPropertyStorage to define the type tag and the value of a
/// property in a property set.
///
/// {@category struct}
base class PROPVARIANT extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  external int wReserved1;

  @Uint16()
  external int wReserved2;

  @Uint16()
  external int wReserved3;

  @IntPtr()
  external int val1;

  @IntPtr()
  external int val2;
}
