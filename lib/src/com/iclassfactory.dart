// iclassfactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-c000-000000000046}';

/// Creates a call object for processing calls to the methods of an
/// asynchronous interface.
///
/// {@category com}
class IClassFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IClassFactory(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IClassFactoryVtbl>().ref;

  final IClassFactoryVtbl _vtable;

  factory IClassFactory.from(IUnknown interface) =>
      IClassFactory(interface.toInterface(IID_IClassFactory));

  int createInstance(Pointer<COMObject> pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObject) =>
      _vtable.CreateInstance.asFunction<
              int Function(Pointer, Pointer<COMObject> pUnkOuter,
                  Pointer<GUID> riid, Pointer<Pointer> ppvObject)>()(
          ptr.ref.lpVtbl, pUnkOuter, riid, ppvObject);

  int lockServer(int fLock) =>
      _vtable.LockServer.asFunction<int Function(Pointer, int fLock)>()(
          ptr.ref.lpVtbl, fLock);
}

/// @nodoc
base class IClassFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pUnkOuter,
              Pointer<GUID> riid, Pointer<Pointer> ppvObject)>> CreateInstance;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 fLock)>>
      LockServer;
}
