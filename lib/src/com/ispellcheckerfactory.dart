// ispellcheckerfactory.dart

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
const IID_ISpellCheckerFactory = '{8e018a9d-2415-4677-bf08-794ea61f94bb}';

/// A factory for instantiating a spell checker `ISpellChecker` as well as
/// providing functionality for determining which languages are supported.
///
/// {@category com}
class ISpellCheckerFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpellCheckerFactory(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpellCheckerFactoryVtbl>().ref;

  final ISpellCheckerFactoryVtbl _vtable;

  factory ISpellCheckerFactory.from(IUnknown interface) =>
      ISpellCheckerFactory(interface.toInterface(IID_ISpellCheckerFactory));

  Pointer<COMObject> get supportedLanguages {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_SupportedLanguages
            .asFunction<int Function(Pointer, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int isSupported(Pointer<Utf16> languageTag, Pointer<Int32> value) =>
      _vtable.IsSupported.asFunction<
          int Function(Pointer, Pointer<Utf16> languageTag,
              Pointer<Int32> value)>()(ptr.ref.lpVtbl, languageTag, value);

  int createSpellChecker(
          Pointer<Utf16> languageTag, Pointer<Pointer<COMObject>> value) =>
      _vtable.CreateSpellChecker.asFunction<
              int Function(Pointer, Pointer<Utf16> languageTag,
                  Pointer<Pointer<COMObject>> value)>()(
          ptr.ref.lpVtbl, languageTag, value);
}

/// @nodoc
base class ISpellCheckerFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> value)>>
      get_SupportedLanguages;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> languageTag, Pointer<Int32> value)>>
      IsSupported;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> languageTag,
              Pointer<Pointer<COMObject>> value)>> CreateSpellChecker;
}

/// @nodoc
const CLSID_SpellCheckerFactory = '{7ab36653-1796-484b-bdfa-e74f1db7c1dc}';

/// {@category com}
class SpellCheckerFactory extends ISpellCheckerFactory {
  SpellCheckerFactory(super.ptr);

  factory SpellCheckerFactory.createInstance() =>
      SpellCheckerFactory(COMObject.createFromID(
          CLSID_SpellCheckerFactory, IID_ISpellCheckerFactory));
}
