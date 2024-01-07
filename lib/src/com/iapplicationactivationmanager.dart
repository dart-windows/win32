// iapplicationactivationmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IApplicationActivationManager =
    '{2e941141-7f97-4756-ba1d-9decde894a3d}';

/// Provides methods which activate Windows Store apps for the Launch, File,
/// and Protocol extensions. You will normally use this interface in
/// debuggers and design tools.
///
/// {@category com}
class IApplicationActivationManager extends IUnknown {
  IApplicationActivationManager(super.ptr)
      : _vtable = ptr.value.cast<IApplicationActivationManagerVtbl>().ref;

  final IApplicationActivationManagerVtbl _vtable;

  factory IApplicationActivationManager.from(IUnknown interface) =>
      IApplicationActivationManager(
          interface.toInterface(IID_IApplicationActivationManager));

  int activateApplication(Pointer<Utf16> appUserModelId,
          Pointer<Utf16> arguments, int options, Pointer<Uint32> processId) =>
      _vtable.ActivateApplication.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> appUserModelId,
                  Pointer<Utf16> arguments,
                  int options,
                  Pointer<Uint32> processId)>()(
          ptr, appUserModelId, arguments, options, processId);

  int activateForFile(Pointer<Utf16> appUserModelId, VTablePointer itemArray,
          Pointer<Utf16> verb, Pointer<Uint32> processId) =>
      _vtable.ActivateForFile.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> appUserModelId,
                  VTablePointer itemArray,
                  Pointer<Utf16> verb,
                  Pointer<Uint32> processId)>()(
          ptr, appUserModelId, itemArray, verb, processId);

  int activateForProtocol(Pointer<Utf16> appUserModelId,
          VTablePointer itemArray, Pointer<Uint32> processId) =>
      _vtable.ActivateForProtocol.asFunction<
              int Function(VTablePointer, Pointer<Utf16> appUserModelId,
                  VTablePointer itemArray, Pointer<Uint32> processId)>()(
          ptr, appUserModelId, itemArray, processId);
}

/// @nodoc
base class IApplicationActivationManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> appUserModelId,
              Pointer<Utf16> arguments,
              Int32 options,
              Pointer<Uint32> processId)>> ActivateApplication;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> appUserModelId,
              VTablePointer itemArray,
              Pointer<Utf16> verb,
              Pointer<Uint32> processId)>> ActivateForFile;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> appUserModelId,
              VTablePointer itemArray,
              Pointer<Uint32> processId)>> ActivateForProtocol;
}

/// @nodoc
const CLSID_ApplicationActivationManager =
    '{45ba127d-10a8-46ea-8ab7-56ea9078943c}';

/// {@category com}
class ApplicationActivationManager extends IApplicationActivationManager {
  ApplicationActivationManager(super.ptr);

  factory ApplicationActivationManager.createInstance() =>
      ApplicationActivationManager(createCOMObject(
          CLSID_ApplicationActivationManager,
          IID_IApplicationActivationManager));
}
