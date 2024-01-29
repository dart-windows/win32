// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryMapping =
    '{09e31e18-872d-4873-93d1-1e541ec133fd}';

/// Exposes properties and methods for a table of proxy factories. Each table
/// entry is represented by an IUIAutomationProxyFactoryEntry interface. The
/// entries are in the order in which the system will attempt to use the
/// proxies.
///
/// {@category com}
class IUIAutomationProxyFactoryMapping extends IUnknown {
  IUIAutomationProxyFactoryMapping(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationProxyFactoryMappingVtbl>().ref;

  final IUIAutomationProxyFactoryMappingVtbl _vtable;

  factory IUIAutomationProxyFactoryMapping.from(IUnknown interface) =>
      IUIAutomationProxyFactoryMapping(
          interface.toInterface(IID_IUIAutomationProxyFactoryMapping));

  int get_Count(Pointer<Uint32> count) => _vtable.get_Count
          .asFunction<int Function(VTablePointer, Pointer<Uint32> count)>()(
      ptr, count);

  int getTable(Pointer<Pointer<SAFEARRAY>> table) =>
      _vtable.GetTable.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<SAFEARRAY>> table)>()(ptr, table);

  int getEntry(int index, Pointer<VTablePointer> entry) =>
      _vtable.GetEntry.asFunction<
          int Function(VTablePointer, int index,
              Pointer<VTablePointer> entry)>()(ptr, index, entry);

  int setTable(Pointer<SAFEARRAY> factoryList) => _vtable.SetTable.asFunction<
      int Function(
          VTablePointer, Pointer<SAFEARRAY> factoryList)>()(ptr, factoryList);

  int insertEntries(int before, Pointer<SAFEARRAY> factoryList) =>
      _vtable.InsertEntries.asFunction<
          int Function(VTablePointer, int before,
              Pointer<SAFEARRAY> factoryList)>()(ptr, before, factoryList);

  int insertEntry(int before, VTablePointer factory) =>
      _vtable.InsertEntry.asFunction<
              int Function(VTablePointer, int before, VTablePointer factory)>()(
          ptr, before, factory);

  int removeEntry(int index) =>
      _vtable.RemoveEntry.asFunction<int Function(VTablePointer, int index)>()(
          ptr, index);

  int clearTable() =>
      _vtable.ClearTable.asFunction<int Function(VTablePointer)>()(ptr);

  int restoreDefaultTable() =>
      _vtable.RestoreDefaultTable.asFunction<int Function(VTablePointer)>()(
          ptr);
}

/// @nodoc
base class IUIAutomationProxyFactoryMappingVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> count)>>
      get_Count;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<SAFEARRAY>> table)>>
      GetTable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 index, Pointer<VTablePointer> entry)>>
      GetEntry;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<SAFEARRAY> factoryList)>>
      SetTable;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 before,
              Pointer<SAFEARRAY> factoryList)>> InsertEntries;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 before, VTablePointer factory)>>
      InsertEntry;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 index)>>
      RemoveEntry;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> ClearTable;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      RestoreDefaultTable;
}
