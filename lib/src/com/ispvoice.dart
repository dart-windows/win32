// ispvoice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
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
  ISpVoice(super.ptr) : _vtable = ptr.ref.vtable.cast<ISpVoiceVtbl>().ref;

  final ISpVoiceVtbl _vtable;

  factory ISpVoice.from(IUnknown interface) =>
      ISpVoice(interface.toInterface(IID_ISpVoice));

  int setOutput(Pointer<COMObject> pUnkOutput, int fAllowFormatChanges) =>
      _vtable.SetOutput.asFunction<
              int Function(Pointer, Pointer<COMObject> pUnkOutput,
                  int fAllowFormatChanges)>()(
          ptr.ref.lpVtbl, pUnkOutput, fAllowFormatChanges);

  int getOutputObjectToken(Pointer<Pointer<COMObject>> ppObjectToken) =>
      _vtable.GetOutputObjectToken.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppObjectToken)>()(
          ptr.ref.lpVtbl, ppObjectToken);

  int getOutputStream(Pointer<Pointer<COMObject>> ppStream) =>
      _vtable.GetOutputStream.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppStream)>()(
          ptr.ref.lpVtbl, ppStream);

  int pause() =>
      _vtable.Pause.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int resume() =>
      _vtable.Resume.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setVoice(Pointer<COMObject> pToken) => _vtable.SetVoice.asFunction<
      int Function(
          Pointer, Pointer<COMObject> pToken)>()(ptr.ref.lpVtbl, pToken);

  int getVoice(Pointer<Pointer<COMObject>> ppToken) =>
      _vtable.GetVoice.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppToken)>()(
          ptr.ref.lpVtbl, ppToken);

  int speak(
          Pointer<Utf16> pwcs, int dwFlags, Pointer<Uint32> pulStreamNumber) =>
      _vtable.Speak.asFunction<
              int Function(Pointer, Pointer<Utf16> pwcs, int dwFlags,
                  Pointer<Uint32> pulStreamNumber)>()(
          ptr.ref.lpVtbl, pwcs, dwFlags, pulStreamNumber);

  int speakStream(Pointer<COMObject> pStream, int dwFlags,
          Pointer<Uint32> pulStreamNumber) =>
      _vtable.SpeakStream.asFunction<
              int Function(Pointer, Pointer<COMObject> pStream, int dwFlags,
                  Pointer<Uint32> pulStreamNumber)>()(
          ptr.ref.lpVtbl, pStream, dwFlags, pulStreamNumber);

  int getStatus(Pointer<SPVOICESTATUS> pStatus,
          Pointer<Pointer<Utf16>> ppszLastBookmark) =>
      _vtable.GetStatus.asFunction<
              int Function(Pointer, Pointer<SPVOICESTATUS> pStatus,
                  Pointer<Pointer<Utf16>> ppszLastBookmark)>()(
          ptr.ref.lpVtbl, pStatus, ppszLastBookmark);

  int skip(Pointer<Utf16> pItemType, int lNumItems,
          Pointer<Uint32> pulNumSkipped) =>
      _vtable.Skip.asFunction<
              int Function(Pointer, Pointer<Utf16> pItemType, int lNumItems,
                  Pointer<Uint32> pulNumSkipped)>()(
          ptr.ref.lpVtbl, pItemType, lNumItems, pulNumSkipped);

  int setPriority(int ePriority) =>
      _vtable.SetPriority.asFunction<int Function(Pointer, int ePriority)>()(
          ptr.ref.lpVtbl, ePriority);

  int getPriority(Pointer<Int32> pePriority) => _vtable.GetPriority.asFunction<
      int Function(
          Pointer, Pointer<Int32> pePriority)>()(ptr.ref.lpVtbl, pePriority);

  int setAlertBoundary(int eBoundary) => _vtable.SetAlertBoundary.asFunction<
      int Function(Pointer, int eBoundary)>()(ptr.ref.lpVtbl, eBoundary);

  int getAlertBoundary(Pointer<Int32> peBoundary) => _vtable.GetAlertBoundary
          .asFunction<int Function(Pointer, Pointer<Int32> peBoundary)>()(
      ptr.ref.lpVtbl, peBoundary);

  int setRate(int RateAdjust) =>
      _vtable.SetRate.asFunction<int Function(Pointer, int RateAdjust)>()(
          ptr.ref.lpVtbl, RateAdjust);

  int getRate(Pointer<Int32> pRateAdjust) => _vtable.GetRate.asFunction<
      int Function(
          Pointer, Pointer<Int32> pRateAdjust)>()(ptr.ref.lpVtbl, pRateAdjust);

  int setVolume(int usVolume) =>
      _vtable.SetVolume.asFunction<int Function(Pointer, int usVolume)>()(
          ptr.ref.lpVtbl, usVolume);

  int getVolume(Pointer<Uint16> pusVolume) => _vtable.GetVolume.asFunction<
      int Function(
          Pointer, Pointer<Uint16> pusVolume)>()(ptr.ref.lpVtbl, pusVolume);

  int waitUntilDone(int msTimeout) =>
      _vtable.WaitUntilDone.asFunction<int Function(Pointer, int msTimeout)>()(
          ptr.ref.lpVtbl, msTimeout);

  int setSyncSpeakTimeout(int msTimeout) =>
      _vtable.SetSyncSpeakTimeout.asFunction<
          int Function(Pointer, int msTimeout)>()(ptr.ref.lpVtbl, msTimeout);

  int getSyncSpeakTimeout(Pointer<Uint32> pmsTimeout) =>
      _vtable.GetSyncSpeakTimeout.asFunction<
              int Function(Pointer, Pointer<Uint32> pmsTimeout)>()(
          ptr.ref.lpVtbl, pmsTimeout);

  int speakCompleteEvent() =>
      _vtable.SpeakCompleteEvent.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int isUISupported(Pointer<Utf16> pszTypeOfUI, Pointer pvExtraData,
          int cbExtraData, Pointer<Int32> pfSupported) =>
      _vtable.IsUISupported.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> pszTypeOfUI,
                  Pointer pvExtraData,
                  int cbExtraData,
                  Pointer<Int32> pfSupported)>()(
          ptr.ref.lpVtbl, pszTypeOfUI, pvExtraData, cbExtraData, pfSupported);

  int displayUI(int hwndParent, Pointer<Utf16> pszTitle,
          Pointer<Utf16> pszTypeOfUI, Pointer pvExtraData, int cbExtraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  Pointer,
                  int hwndParent,
                  Pointer<Utf16> pszTitle,
                  Pointer<Utf16> pszTypeOfUI,
                  Pointer pvExtraData,
                  int cbExtraData)>()(ptr.ref.lpVtbl, hwndParent, pszTitle,
          pszTypeOfUI, pvExtraData, cbExtraData);
}

/// @nodoc
base class ISpVoiceVtbl extends Struct {
  external ISpEventSourceVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pUnkOutput,
              Int32 fAllowFormatChanges)>> SetOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> ppObjectToken)>>
      GetOutputObjectToken;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppStream)>>
      GetOutputStream;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Pause;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Resume;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pToken)>>
      SetVoice;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppToken)>>
      GetVoice;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pwcs, Uint32 dwFlags,
              Pointer<Uint32> pulStreamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pStream, Uint32 dwFlags,
              Pointer<Uint32> pulStreamNumber)>> SpeakStream;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<SPVOICESTATUS> pStatus,
              Pointer<Pointer<Utf16>> ppszLastBookmark)>> GetStatus;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pItemType, Int32 lNumItems,
              Pointer<Uint32> pulNumSkipped)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 ePriority)>>
      SetPriority;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pePriority)>>
      GetPriority;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 eBoundary)>>
      SetAlertBoundary;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> peBoundary)>>
      GetAlertBoundary;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 RateAdjust)>>
      SetRate;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pRateAdjust)>>
      GetRate;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint16 usVolume)>>
      SetVolume;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint16> pusVolume)>>
      GetVolume;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 msTimeout)>>
      WaitUntilDone;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 msTimeout)>>
      SetSyncSpeakTimeout;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pmsTimeout)>>
      GetSyncSpeakTimeout;
  external Pointer<NativeFunction<IntPtr Function(Pointer)>> SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> pszTypeOfUI,
              Pointer pvExtraData,
              Uint32 cbExtraData,
              Pointer<Int32> pfSupported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
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
      SpVoice(COMObject.createFromID(CLSID_SpVoice, IID_ISpVoice));
}
