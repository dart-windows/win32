// iuiautomationelement4.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import 'iuiautomationelement3.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement4 = '{3b6e233c-52fb-4063-a4c9-77c075c2a06b}';

/// Extends the IUIAutomationElement3 interface.
///
/// {@category com}
class IUIAutomationElement4 extends IUIAutomationElement3 {
  // vtable begins at 94, is 10 entries long.
  IUIAutomationElement4(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationElement4Vtbl>().ref;

  final IUIAutomationElement4Vtbl _vtable;

  factory IUIAutomationElement4.from(IUnknown interface) =>
      IUIAutomationElement4(interface.toInterface(IID_IUIAutomationElement4));

  int get currentPositionInSet {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentPositionInSet
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentSizeOfSet {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentSizeOfSet
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentLevel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentLevel
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get currentAnnotationTypes {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CurrentAnnotationTypes.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentAnnotationObjects {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentAnnotationObjects
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedPositionInSet {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedPositionInSet
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedSizeOfSet {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedSizeOfSet
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedLevel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedLevel
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get cachedAnnotationTypes {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CachedAnnotationTypes.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedAnnotationObjects {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedAnnotationObjects
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class IUIAutomationElement4Vtbl extends Struct {
  external IUIAutomationElement3Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentPositionInSet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentSizeOfSet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentLevel;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentAnnotationTypes;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentAnnotationObjects;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedPositionInSet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedSizeOfSet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedLevel;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedAnnotationTypes;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedAnnotationObjects;
}
