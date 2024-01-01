// iuiautomationproxyfactory.dart

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
const IID_IUIAutomationProxyFactory = '{85b94ecd-849d-42b6-b94d-d6db23fdf5a4}';

/// Exposes properties and methods of an object that creates a Microsoft UI
/// Automation provider for UI elements that do not have native support for
/// UI Automation. This interface is implemented by proxies.
///
/// {@category com}
class IUIAutomationProxyFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationProxyFactory(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationProxyFactoryVtbl>().ref;

  final IUIAutomationProxyFactoryVtbl _vtable;

  factory IUIAutomationProxyFactory.from(IUnknown interface) =>
      IUIAutomationProxyFactory(
          interface.toInterface(IID_IUIAutomationProxyFactory));

  int createProvider(int hwnd, int idObject, int idChild,
          Pointer<Pointer<COMObject>> provider) =>
      _vtable.CreateProvider.asFunction<
              int Function(Pointer, int hwnd, int idObject, int idChild,
                  Pointer<Pointer<COMObject>> provider)>()(
          ptr.ref.lpVtbl, hwnd, idObject, idChild, provider);

  Pointer<Utf16> get proxyFactoryId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_ProxyFactoryId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> factoryId)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationProxyFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr hwnd, Int32 idObject, Int32 idChild,
              Pointer<Pointer<COMObject>> provider)>> CreateProvider;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> factoryId)>>
      get_ProxyFactoryId;
}
