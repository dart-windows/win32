// iunknown.dart

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';

/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the
/// object through the AddRef and Release methods. All other COM interfaces
/// are inherited, directly or indirectly, from IUnknown. Therefore, the
/// three methods in IUnknown are the first entries in the vtable for every
/// interface.
///
/// {@category com}
class IUnknown {
  IUnknown(this.ptr) : _vtable = ptr.value.value.cast<IUnknownVtbl>().ref {
    if (ptr.value != nullptr) {
      _finalizer.attach(this, ptr, detach: this);
    }
  }

  final Pointer<VTablePointer> ptr;
  final IUnknownVtbl _vtable;

  factory IUnknown.from(IUnknown interface) =>
      IUnknown(interface.toInterface(IID_IUnknown));

  static final _finalizer = Finalizer<Pointer<VTablePointer>>((ptr) {
    // Decrement the reference count of the object only when COM is initialized,
    // otherwise this will cause the program to crash.
    if (isCOMInitialized) _release(ptr);
    free(ptr);
  });

  /// Decrements the reference count of the object referenced by [ptr].
  static int _release(Pointer<VTablePointer> ptr) => ptr.value.value
      .cast<IUnknownVtbl>()
      .ref
      .Release
      .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.value);

  /// Queries a COM object for a pointer to one of its interface; identifying
  /// the interface by a reference to its interface identifier (IID).
  ///
  /// If the COM object implements the interface, then it returns a pointer to
  /// that interface after calling `addRef` on it.
  int queryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) =>
      _vtable.QueryInterface.asFunction<
          int Function(VTablePointer, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr.value, riid, ppvObject);

  /// Increments the reference count for an interface pointer to a COM object.
  ///
  /// You should call this method whenever you make a copy of an interface
  /// pointer.
  int addRef() =>
      _vtable.AddRef.asFunction<int Function(VTablePointer)>()(ptr.value);

  /// Decrements the reference count for an interface on a COM object.
  ///
  /// This method is automatically called by [Finalizer] when the object goes
  /// out of scope. Therefore, you should never call this method unless you're
  /// manually managing the lifetime of the object (i.e. by calling the
  /// [detach] method).
  ///
  /// Calling this method with [Finalizer] attached may result in use after
  /// free and cause the process to crash.
  int release() =>
      _vtable.Release.asFunction<int Function(VTablePointer)>()(ptr.value);

  /// Detaches the object from the `Finalizer`.
  ///
  /// Call this method only if you want to manually manage the lifetime of the
  /// object.
  void detach() => _finalizer.detach(this);
}

/// @nodoc
base class IUnknownVtbl extends Struct {
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>> QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      Release;
}

extension IUnknownToInterfaceHelper on IUnknown {
  /// Cast an existing COM object to a specified interface.
  ///
  /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
  /// a COM QueryInterface to return a reference to that interface.
  Pointer<VTablePointer> toInterface(String iid) {
    final riid = convertToIID(iid);
    final ppvObject = calloc<VTablePointer>();

    try {
      final hr = queryInterface(riid, ppvObject.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      return ppvObject;
    } finally {
      free(riid);
    }
  }
}
