// isupporterrorinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISupportErrorInfo = '{df0b3d60-548f-101b-8e65-08002b2bd119}';

/// Ensures that error information can be propagated up the call chain
/// correctly. Automation objects that use the error handling interfaces
/// must implement ISupportErrorInfo.
///
/// {@category com}
class ISupportErrorInfo extends IUnknown {
  ISupportErrorInfo(super.ptr)
      : _vtable = ptr.value.cast<ISupportErrorInfoVtbl>().ref;

  final ISupportErrorInfoVtbl _vtable;

  factory ISupportErrorInfo.from(IUnknown interface) =>
      ISupportErrorInfo(interface.toInterface(IID_ISupportErrorInfo));

  int interfaceSupportsErrorInfo(Pointer<GUID> riid) =>
      _vtable.InterfaceSupportsErrorInfo.asFunction<
          int Function(VTablePointer, Pointer<GUID> riid)>()(ptr, riid);
}

/// @nodoc
base class ISupportErrorInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> riid)>>
      InterfaceSupportsErrorInfo;
}
