// ispvoice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'ispeventsource.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpVoice = '{6c44df74-72b9-4992-a1ec-ef996e0422d4}';

/// The ISpVoice interface enables an application to perform speech
/// synthesis operations. Applications can speak text strings and text
/// files, or play audio files through this interface. All of these can be
/// done synchronously or asynchronously.
///
/// {@category com}
class ISpVoice extends ISpEventSource {
  // vtable begins at 13, is 25 entries long.
  ISpVoice(super.ptr) : _vtable = ptr.value.value.cast<ISpVoiceVtbl>().ref;

  final ISpVoiceVtbl _vtable;

  factory ISpVoice.from(IUnknown interface) =>
      ISpVoice(interface.toInterface(IID_ISpVoice));

  int setOutput(Pointer<VTablePointer> pUnkOutput, int fAllowFormatChanges) =>
      _vtable.SetOutput.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pUnkOutput,
                  int fAllowFormatChanges)>()(
          ptr.value, pUnkOutput, fAllowFormatChanges);

  int getOutputObjectToken(Pointer<Pointer<VTablePointer>> ppObjectToken) =>
      _vtable.GetOutputObjectToken.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppObjectToken)>()(
          ptr.value, ppObjectToken);

  int getOutputStream(Pointer<Pointer<VTablePointer>> ppStream) =>
      _vtable.GetOutputStream.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppStream)>()(ptr.value, ppStream);

  int pause() =>
      _vtable.Pause.asFunction<int Function(VTablePointer)>()(ptr.value);

  int resume() =>
      _vtable.Resume.asFunction<int Function(VTablePointer)>()(ptr.value);

  int setVoice(Pointer<VTablePointer> pToken) => _vtable.SetVoice.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> pToken)>()(ptr.value, pToken);

  int getVoice(Pointer<Pointer<VTablePointer>> ppToken) =>
      _vtable.GetVoice.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppToken)>()(ptr.value, ppToken);

  int speak(
          Pointer<Utf16> pwcs, int dwFlags, Pointer<Uint32> pulStreamNumber) =>
      _vtable.Speak.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pwcs, int dwFlags,
                  Pointer<Uint32> pulStreamNumber)>()(
          ptr.value, pwcs, dwFlags, pulStreamNumber);

  int speakStream(Pointer<VTablePointer> pStream, int dwFlags,
          Pointer<Uint32> pulStreamNumber) =>
      _vtable.SpeakStream.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pStream,
                  int dwFlags, Pointer<Uint32> pulStreamNumber)>()(
          ptr.value, pStream, dwFlags, pulStreamNumber);

  int getStatus(Pointer<SPVOICESTATUS> pStatus,
          Pointer<Pointer<Utf16>> ppszLastBookmark) =>
      _vtable.GetStatus.asFunction<
              int Function(VTablePointer, Pointer<SPVOICESTATUS> pStatus,
                  Pointer<Pointer<Utf16>> ppszLastBookmark)>()(
          ptr.value, pStatus, ppszLastBookmark);

  int skip(Pointer<Utf16> pItemType, int lNumItems,
          Pointer<Uint32> pulNumSkipped) =>
      _vtable.Skip.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pItemType,
                  int lNumItems, Pointer<Uint32> pulNumSkipped)>()(
          ptr.value, pItemType, lNumItems, pulNumSkipped);

  int setPriority(int ePriority) => _vtable.SetPriority.asFunction<
      int Function(VTablePointer, int ePriority)>()(ptr.value, ePriority);

  int getPriority(Pointer<Int32> pePriority) => _vtable.GetPriority.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> pePriority)>()(ptr.value, pePriority);

  int setAlertBoundary(int eBoundary) => _vtable.SetAlertBoundary.asFunction<
      int Function(VTablePointer, int eBoundary)>()(ptr.value, eBoundary);

  int getAlertBoundary(Pointer<Int32> peBoundary) => _vtable.GetAlertBoundary
          .asFunction<int Function(VTablePointer, Pointer<Int32> peBoundary)>()(
      ptr.value, peBoundary);

  int setRate(int RateAdjust) =>
      _vtable.SetRate.asFunction<int Function(VTablePointer, int RateAdjust)>()(
          ptr.value, RateAdjust);

  int getRate(Pointer<Int32> pRateAdjust) => _vtable.GetRate.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> pRateAdjust)>()(ptr.value, pRateAdjust);

  int setVolume(int usVolume) =>
      _vtable.SetVolume.asFunction<int Function(VTablePointer, int usVolume)>()(
          ptr.value, usVolume);

  int getVolume(Pointer<Uint16> pusVolume) => _vtable.GetVolume.asFunction<
      int Function(
          VTablePointer, Pointer<Uint16> pusVolume)>()(ptr.value, pusVolume);

  int waitUntilDone(int msTimeout) => _vtable.WaitUntilDone.asFunction<
      int Function(VTablePointer, int msTimeout)>()(ptr.value, msTimeout);

  int setSyncSpeakTimeout(int msTimeout) =>
      _vtable.SetSyncSpeakTimeout.asFunction<
          int Function(VTablePointer, int msTimeout)>()(ptr.value, msTimeout);

  int getSyncSpeakTimeout(Pointer<Uint32> pmsTimeout) =>
      _vtable.GetSyncSpeakTimeout.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pmsTimeout)>()(
          ptr.value, pmsTimeout);

  int speakCompleteEvent() =>
      _vtable.SpeakCompleteEvent.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int isUISupported(Pointer<Utf16> pszTypeOfUI, Pointer pvExtraData,
          int cbExtraData, Pointer<Int32> pfSupported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> pszTypeOfUI,
                  Pointer pvExtraData,
                  int cbExtraData,
                  Pointer<Int32> pfSupported)>()(
          ptr.value, pszTypeOfUI, pvExtraData, cbExtraData, pfSupported);

  int displayUI(int hwndParent, Pointer<Utf16> pszTitle,
          Pointer<Utf16> pszTypeOfUI, Pointer pvExtraData, int cbExtraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer,
                  int hwndParent,
                  Pointer<Utf16> pszTitle,
                  Pointer<Utf16> pszTypeOfUI,
                  Pointer pvExtraData,
                  int cbExtraData)>()(ptr.value, hwndParent, pszTitle,
          pszTypeOfUI, pvExtraData, cbExtraData);
}

/// @nodoc
base class ISpVoiceVtbl extends Struct {
  external ISpEventSourceVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pUnkOutput,
              Int32 fAllowFormatChanges)>> SetOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppObjectToken)>>
      GetOutputObjectToken;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppStream)>>
      GetOutputStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Resume;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pToken)>>
      SetVoice;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppToken)>>
      GetVoice;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pwcs, Uint32 dwFlags,
              Pointer<Uint32> pulStreamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pStream,
              Uint32 dwFlags, Pointer<Uint32> pulStreamNumber)>> SpeakStream;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<SPVOICESTATUS> pStatus,
              Pointer<Pointer<Utf16>> ppszLastBookmark)>> GetStatus;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pItemType,
              Int32 lNumItems, Pointer<Uint32> pulNumSkipped)>> Skip;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 ePriority)>>
      SetPriority;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> pePriority)>>
      GetPriority;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 eBoundary)>>
      SetAlertBoundary;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> peBoundary)>>
      GetAlertBoundary;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Int32 RateAdjust)>> SetRate;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> pRateAdjust)>> GetRate;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint16 usVolume)>> SetVolume;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint16> pusVolume)>> GetVolume;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 msTimeout)>>
      WaitUntilDone;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 msTimeout)>>
      SetSyncSpeakTimeout;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pmsTimeout)>>
      GetSyncSpeakTimeout;
  external Pointer<NativeFunction<IntPtr Function(VTablePointer)>>
      SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> pszTypeOfUI,
              Pointer pvExtraData,
              Uint32 cbExtraData,
              Pointer<Int32> pfSupported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hwndParent,
              Pointer<Utf16> pszTitle,
              Pointer<Utf16> pszTypeOfUI,
              Pointer pvExtraData,
              Uint32 cbExtraData)>> DisplayUI;
}

/// @nodoc
const CLSID_SpVoice = '{96749377-3391-11d2-9ee3-00c04f797396}';

/// {@category com}
class SpVoice extends ISpVoice {
  SpVoice(super.ptr);

  factory SpVoice.createInstance() =>
      SpVoice(createCOMObject(CLSID_SpVoice, IID_ISpVoice));
}
