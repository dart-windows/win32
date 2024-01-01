// iapplicationactivationmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
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
  // vtable begins at 3, is 3 entries long.
  IApplicationActivationManager(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IApplicationActivationManagerVtbl>().ref;

  final IApplicationActivationManagerVtbl _vtable;

  factory IApplicationActivationManager.from(IUnknown interface) =>
      IApplicationActivationManager(
          interface.toInterface(IID_IApplicationActivationManager));

  int activateApplication(Pointer<Utf16> appUserModelId,
          Pointer<Utf16> arguments, int options, Pointer<Uint32> processId) =>
      _vtable.ActivateApplication.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> appUserModelId,
                  Pointer<Utf16> arguments,
                  int options,
                  Pointer<Uint32> processId)>()(
          ptr.ref.lpVtbl, appUserModelId, arguments, options, processId);

  int activateForFile(
          Pointer<Utf16> appUserModelId,
          Pointer<COMObject> itemArray,
          Pointer<Utf16> verb,
          Pointer<Uint32> processId) =>
      _vtable.ActivateForFile.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> appUserModelId,
                  Pointer<COMObject> itemArray,
                  Pointer<Utf16> verb,
                  Pointer<Uint32> processId)>()(
          ptr.ref.lpVtbl, appUserModelId, itemArray, verb, processId);

  int activateForProtocol(Pointer<Utf16> appUserModelId,
          Pointer<COMObject> itemArray, Pointer<Uint32> processId) =>
      _vtable.ActivateForProtocol.asFunction<
              int Function(Pointer, Pointer<Utf16> appUserModelId,
                  Pointer<COMObject> itemArray, Pointer<Uint32> processId)>()(
          ptr.ref.lpVtbl, appUserModelId, itemArray, processId);
}

/// @nodoc
base class IApplicationActivationManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> appUserModelId,
              Pointer<Utf16> arguments,
              Int32 options,
              Pointer<Uint32> processId)>> ActivateApplication;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> appUserModelId,
              Pointer<COMObject> itemArray,
              Pointer<Utf16> verb,
              Pointer<Uint32> processId)>> ActivateForFile;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> appUserModelId,
              Pointer<COMObject> itemArray,
              Pointer<Uint32> processId)>> ActivateForProtocol;
}

/// @nodoc
const CLSID_ApplicationActivationManager =
    '{45ba127d-10a8-46ea-8ab7-56ea9078943c}';

/// {@category com}
class ApplicationActivationManager extends IApplicationActivationManager {
  ApplicationActivationManager(super.ptr);

  factory ApplicationActivationManager.createInstance() =>
      ApplicationActivationManager(COMObject.createFromID(
          CLSID_ApplicationActivationManager,
          IID_IApplicationActivationManager));
}
