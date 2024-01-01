// iuiautomationannotationpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationAnnotationPattern =
    '{9a175b21-339e-41b1-8e8b-623f6b681098}';

/// Provides access to the properties of an annotation in a document.
///
/// {@category com}
class IUIAutomationAnnotationPattern extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IUIAutomationAnnotationPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationAnnotationPatternVtbl>().ref;

  final IUIAutomationAnnotationPatternVtbl _vtable;

  factory IUIAutomationAnnotationPattern.from(IUnknown interface) =>
      IUIAutomationAnnotationPattern(
          interface.toInterface(IID_IUIAutomationAnnotationPattern));

  int get currentAnnotationTypeId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CurrentAnnotationTypeId
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAnnotationTypeName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAnnotationTypeName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAuthor {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAuthor.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentDateTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentDateTime.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentTarget {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentTarget
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedAnnotationTypeId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CachedAnnotationTypeId
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAnnotationTypeName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAnnotationTypeName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAuthor {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAuthor.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedDateTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedDateTime.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedTarget {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedTarget
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
base class IUIAutomationAnnotationPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> retVal)>>
      get_CurrentAnnotationTypeId;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAnnotationTypeName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAuthor;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDateTime;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentTarget;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> retVal)>>
      get_CachedAnnotationTypeId;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAnnotationTypeName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAuthor;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDateTime;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedTarget;
}
