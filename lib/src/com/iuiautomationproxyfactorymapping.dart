// iuiautomationproxyfactorymapping.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryMapping =
    '{09e31e18-872d-4873-93d1-1e541ec133fd}';

/// Exposes properties and methods for a table of proxy factories. Each
/// table entry is represented by an IUIAutomationProxyFactoryEntry
/// interface. The entries are in the order in which the system will attempt
/// to use the proxies.
///
/// {@category com}
class IUIAutomationProxyFactoryMapping extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAutomationProxyFactoryMapping(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IUIAutomationProxyFactoryMappingVtbl>().ref;

  final IUIAutomationProxyFactoryMappingVtbl _vtable;

  factory IUIAutomationProxyFactoryMapping.from(IUnknown interface) =>
      IUIAutomationProxyFactoryMapping(
          interface.toInterface(IID_IUIAutomationProxyFactoryMapping));

  int get count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Count
              .asFunction<int Function(Pointer, Pointer<Uint32> count)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getTable(Pointer<Pointer<SAFEARRAY>> table) =>
      _vtable.GetTable.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> table)>()(
          ptr.ref.lpVtbl, table);

  int getEntry(int index, Pointer<Pointer<COMObject>> entry) =>
      _vtable.GetEntry.asFunction<
              int Function(
                  Pointer, int index, Pointer<Pointer<COMObject>> entry)>()(
          ptr.ref.lpVtbl, index, entry);

  int setTable(Pointer<SAFEARRAY> factoryList) => _vtable.SetTable.asFunction<
          int Function(Pointer, Pointer<SAFEARRAY> factoryList)>()(
      ptr.ref.lpVtbl, factoryList);

  int insertEntries(int before, Pointer<SAFEARRAY> factoryList) =>
      _vtable.InsertEntries.asFunction<
              int Function(
                  Pointer, int before, Pointer<SAFEARRAY> factoryList)>()(
          ptr.ref.lpVtbl, before, factoryList);

  int insertEntry(int before, Pointer<COMObject> factory) =>
      _vtable.InsertEntry.asFunction<
              int Function(Pointer, int before, Pointer<COMObject> factory)>()(
          ptr.ref.lpVtbl, before, factory);

  int removeEntry(int index) =>
      _vtable.RemoveEntry.asFunction<int Function(Pointer, int index)>()(
          ptr.ref.lpVtbl, index);

  int clearTable() =>
      _vtable.ClearTable.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int restoreDefaultTable() =>
      _vtable.RestoreDefaultTable.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);
}

/// @nodoc
base class IUIAutomationProxyFactoryMappingVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Uint32> count)>> get_Count;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> table)>> GetTable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 index, Pointer<Pointer<COMObject>> entry)>>
      GetEntry;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<SAFEARRAY> factoryList)>> SetTable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 before, Pointer<SAFEARRAY> factoryList)>>
      InsertEntries;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Uint32 before, Pointer<COMObject> factory)>> InsertEntry;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 index)>>
      RemoveEntry;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> ClearTable;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> RestoreDefaultTable;
}
