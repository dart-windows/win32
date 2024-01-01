// iappxmanifestreader2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iappxmanifestreader.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader2 = '{d06f67bc-b31d-4eba-a8af-638e73e77b4d}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader2 extends IAppxManifestReader {
  // vtable begins at 12, is 1 entries long.
  IAppxManifestReader2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxManifestReader2Vtbl>().ref;

  final IAppxManifestReader2Vtbl _vtable;

  factory IAppxManifestReader2.from(IUnknown interface) =>
      IAppxManifestReader2(interface.toInterface(IID_IAppxManifestReader2));

  int getQualifiedResources(Pointer<Pointer<COMObject>> resources) =>
      _vtable.GetQualifiedResources.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> resources)>()(
          ptr.ref.lpVtbl, resources);
}

/// @nodoc
base class IAppxManifestReader2Vtbl extends Struct {
  external IAppxManifestReaderVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> resources)>>
      GetQualifiedResources;
}
