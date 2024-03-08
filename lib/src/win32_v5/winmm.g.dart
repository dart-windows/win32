// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _winmm = DynamicLibrary.open('winmm.dll');

/// Retrieves the device identifier corresponding to the name of an open device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)>.
///
/// {@category winmm}
int mciGetDeviceID(Pointer<Utf16> pszDevice) => _mciGetDeviceID(pszDevice);

final _mciGetDeviceID = _winmm.lookupFunction<
    Uint32 Function(Pointer<Utf16> pszDevice),
    int Function(Pointer<Utf16> pszDevice)>('mciGetDeviceIDW');

/// Retrieves the MCI device identifier corresponding to an element identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)>.
///
/// {@category winmm}
int mciGetDeviceIDFromElementID(int dwElementID, Pointer<Utf16> lpstrType) =>
    _mciGetDeviceIDFromElementID(dwElementID, lpstrType);

final _mciGetDeviceIDFromElementID = _winmm.lookupFunction<
    Uint32 Function(Uint32 dwElementID, Pointer<Utf16> lpstrType),
    int Function(int dwElementID,
        Pointer<Utf16> lpstrType)>('mciGetDeviceIDFromElementIDW');

/// Retrieves a string that describes the specified MCI error code.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)>.
///
/// {@category winmm}
int mciGetErrorString(int mcierr, Pointer<Utf16> pszText, int cchText) =>
    _mciGetErrorString(mcierr, pszText, cchText);

final _mciGetErrorString = _winmm.lookupFunction<
    BOOL Function(Uint32 mcierr, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(
        int mcierr, Pointer<Utf16> pszText, int cchText)>('mciGetErrorStringW');

/// Sends a command message to the specified MCI device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)>.
///
/// {@category winmm}
int mciSendCommand(int mciId, int uMsg, int? dwParam1, int? dwParam2) =>
    _mciSendCommand(mciId, uMsg, dwParam1 ?? 0, dwParam2 ?? 0);

final _mciSendCommand = _winmm.lookupFunction<
    Uint32 Function(
        Uint32 mciId, Uint32 uMsg, IntPtr dwParam1, IntPtr dwParam2),
    int Function(
        int mciId, int uMsg, int dwParam1, int dwParam2)>('mciSendCommandW');

/// Sends a command string to an MCI device.
///
/// The device that the command is sent to is specified in the command string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/dd757161(v=vs.85)>.
///
/// {@category winmm}
int mciSendString(
        Pointer<Utf16> lpstrCommand,
        Pointer<Utf16>? lpstrReturnString,
        int uReturnLength,
        int? hwndCallback) =>
    _mciSendString(lpstrCommand, lpstrReturnString ?? nullptr, uReturnLength,
        hwndCallback ?? 0);

final _mciSendString = _winmm.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> lpstrCommand,
        Pointer<Utf16> lpstrReturnString,
        Uint32 uReturnLength,
        HWND hwndCallback),
    int Function(Pointer<Utf16> lpstrCommand, Pointer<Utf16> lpstrReturnString,
        int uReturnLength, int hwndCallback)>('mciSendStringW');

/// Connects a MIDI input device to a MIDI thru or output device, or connects a
/// MIDI thru device to a MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiconnect>.
///
/// {@category winmm}
int midiConnect(int hmi, int hmo) => _midiConnect(hmi, hmo, nullptr);

final _midiConnect = _winmm.lookupFunction<
    Uint32 Function(HMIDI hmi, HMIDIOUT hmo, Pointer pReserved),
    int Function(int hmi, int hmo, Pointer pReserved)>('midiConnect');

/// Disconnects a MIDI input device from a MIDI thru or output device, or
/// disconnects a MIDI thru device from a MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-mididisconnect>.
///
/// {@category winmm}
int midiDisconnect(int hmi, int hmo) => _midiDisconnect(hmi, hmo, nullptr);

final _midiDisconnect = _winmm.lookupFunction<
    Uint32 Function(HMIDI hmi, HMIDIOUT hmo, Pointer pReserved),
    int Function(int hmi, int hmo, Pointer pReserved)>('midiDisconnect');

/// Sends an input buffer to a specified opened MIDI input device.
///
/// This function is used for system-exclusive messages.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinaddbuffer>.
///
/// {@category winmm}
int midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInAddBuffer(hmi, pmh, cbmh);

final _midiInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(HMIDIIN hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInAddBuffer');

/// Closes the specified MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinclose>.
///
/// {@category winmm}
int midiInClose(int hmi) => _midiInClose(hmi);

final _midiInClose =
    _winmm.lookupFunction<Uint32 Function(HMIDIIN hmi), int Function(int hmi)>(
        'midiInClose');

/// Determines the capabilities of a specified MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetdevcapsw>.
///
/// {@category winmm}
int midiInGetDevCaps(int uDeviceID, Pointer<MIDIINCAPS> pmic, int cbmic) =>
    _midiInGetDevCaps(uDeviceID, pmic, cbmic);

final _midiInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<MIDIINCAPS> pmic, Uint32 cbmic),
    int Function(int uDeviceID, Pointer<MIDIINCAPS> pmic,
        int cbmic)>('midiInGetDevCapsW');

/// Retrieves a textual description for an error identified by the specified
/// error code.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingeterrortextw>.
///
/// {@category winmm}
int midiInGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _midiInGetErrorText(mmrError, pszText, cchText);

final _midiInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('midiInGetErrorTextW');

/// Gets the device identifier for the given MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetid>.
///
/// {@category winmm}
int midiInGetID(int hmi, Pointer<Uint32> puDeviceID) =>
    _midiInGetID(hmi, puDeviceID);

final _midiInGetID = _winmm.lookupFunction<
    Uint32 Function(HMIDIIN hmi, Pointer<Uint32> puDeviceID),
    int Function(int hmi, Pointer<Uint32> puDeviceID)>('midiInGetID');

/// Retrieves the number of MIDI input devices in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetnumdevs>.
///
/// {@category winmm}
int midiInGetNumDevs() => _midiInGetNumDevs();

final _midiInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');

/// Sends a message to the MIDI device driver.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinmessage>.
///
/// {@category winmm}
int midiInMessage(int? hmi, int uMsg, int? dw1, int? dw2) =>
    _midiInMessage(hmi ?? 0, uMsg, dw1 ?? 0, dw2 ?? 0);

final _midiInMessage = _winmm.lookupFunction<
    Uint32 Function(HMIDIIN hmi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hmi, int uMsg, int dw1, int dw2)>('midiInMessage');

/// Opens a specified MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinopen>.
///
/// {@category winmm}
int midiInOpen(Pointer<HMIDIIN> phmi, int uDeviceID, int? dwCallback,
        int? dwInstance, int fdwOpen) =>
    _midiInOpen(phmi, uDeviceID, dwCallback ?? 0, dwInstance ?? 0, fdwOpen);

final _midiInOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<HMIDIIN> phmi, Uint32 uDeviceID, IntPtr dwCallback,
        IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<HMIDIIN> phmi, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen)>('midiInOpen');

/// Prepares a buffer for MIDI input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinprepareheader>.
///
/// {@category winmm}
int midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInPrepareHeader(hmi, pmh, cbmh);

final _midiInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(HMIDIIN hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInPrepareHeader');

/// Stops input on a given MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinreset>.
///
/// {@category winmm}
int midiInReset(int hmi) => _midiInReset(hmi);

final _midiInReset =
    _winmm.lookupFunction<Uint32 Function(HMIDIIN hmi), int Function(int hmi)>(
        'midiInReset');

/// Starts MIDI input on the specified MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstart>.
///
/// {@category winmm}
int midiInStart(int hmi) => _midiInStart(hmi);

final _midiInStart =
    _winmm.lookupFunction<Uint32 Function(HMIDIIN hmi), int Function(int hmi)>(
        'midiInStart');

/// Stops MIDI input on the specified MIDI input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstop>.
///
/// {@category winmm}
int midiInStop(int hmi) => _midiInStop(hmi);

final _midiInStop =
    _winmm.lookupFunction<Uint32 Function(HMIDIIN hmi), int Function(int hmi)>(
        'midiInStop');

/// Cleans up the preparation performed by the midiInPrepareHeader function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinunprepareheader>.
///
/// {@category winmm}
int midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInUnprepareHeader(hmi, pmh, cbmh);

final _midiInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(HMIDIIN hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInUnprepareHeader');

/// Requests that an internal MIDI synthesizer device preload and cache a
/// specified set of key-based percussion patches.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutcachedrumpatches>.
///
/// {@category winmm}
int midiOutCacheDrumPatches(
        int hmo, int uPatch, Pointer<Uint16> pwkya, int fuCache) =>
    _midiOutCacheDrumPatches(hmo, uPatch, pwkya, fuCache);

final _midiOutCacheDrumPatches = _winmm.lookupFunction<
    Uint32 Function(
        HMIDIOUT hmo, Uint32 uPatch, Pointer<Uint16> pwkya, Uint32 fuCache),
    int Function(int hmo, int uPatch, Pointer<Uint16> pwkya,
        int fuCache)>('midiOutCacheDrumPatches');

/// Requests that an internal MIDI synthesizer device preload and cache a
/// specified set of patches.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutcachepatches>.
///
/// {@category winmm}
int midiOutCachePatches(
        int hmo, int uBank, Pointer<Uint16> pwpa, int fuCache) =>
    _midiOutCachePatches(hmo, uBank, pwpa, fuCache);

final _midiOutCachePatches = _winmm.lookupFunction<
    Uint32 Function(
        HMIDIOUT hmo, Uint32 uBank, Pointer<Uint16> pwpa, Uint32 fuCache),
    int Function(int hmo, int uBank, Pointer<Uint16> pwpa,
        int fuCache)>('midiOutCachePatches');

/// Closes the specified MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutclose>.
///
/// {@category winmm}
int midiOutClose(int hmo) => _midiOutClose(hmo);

final _midiOutClose =
    _winmm.lookupFunction<Uint32 Function(HMIDIOUT hmo), int Function(int hmo)>(
        'midiOutClose');

/// Queries a specified MIDI output device to determine its capabilities.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetdevcapsw>.
///
/// {@category winmm}
int midiOutGetDevCaps(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc, int cbmoc) =>
    _midiOutGetDevCaps(uDeviceID, pmoc, cbmoc);

final _midiOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<MIDIOUTCAPS> pmoc, Uint32 cbmoc),
    int Function(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc,
        int cbmoc)>('midiOutGetDevCapsW');

/// Retrieves a textual description for an error identified by the specified
/// error code.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgeterrortextw>.
///
/// {@category winmm}
int midiOutGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _midiOutGetErrorText(mmrError, pszText, cchText);

final _midiOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('midiOutGetErrorTextW');

/// Retrieves the device identifier for the given MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetid>.
///
/// {@category winmm}
int midiOutGetID(int hmo, Pointer<Uint32> puDeviceID) =>
    _midiOutGetID(hmo, puDeviceID);

final _midiOutGetID = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Pointer<Uint32> puDeviceID),
    int Function(int hmo, Pointer<Uint32> puDeviceID)>('midiOutGetID');

/// Retrieves the number of MIDI output devices present in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetnumdevs>.
///
/// {@category winmm}
int midiOutGetNumDevs() => _midiOutGetNumDevs();

final _midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');

/// Retrieves the current volume setting of a MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetvolume>.
///
/// {@category winmm}
int midiOutGetVolume(int? hmo, Pointer<Uint32> pdwVolume) =>
    _midiOutGetVolume(hmo ?? 0, pdwVolume);

final _midiOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Pointer<Uint32> pdwVolume),
    int Function(int hmo, Pointer<Uint32> pdwVolume)>('midiOutGetVolume');

/// Sends a system-exclusive MIDI message to the specified MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutlongmsg>.
///
/// {@category winmm}
int midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutLongMsg(hmo, pmh, cbmh);

final _midiOutLongMsg = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutLongMsg');

/// Sends a message to the MIDI device drivers.
///
/// This function is used only for driver-specific messages that are not
/// supported by the MIDI API.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutmessage>.
///
/// {@category winmm}
int midiOutMessage(int? hmo, int uMsg, int? dw1, int? dw2) =>
    _midiOutMessage(hmo ?? 0, uMsg, dw1 ?? 0, dw2 ?? 0);

final _midiOutMessage = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hmo, int uMsg, int dw1, int dw2)>('midiOutMessage');

/// Opens a MIDI output device for playback.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutopen>.
///
/// {@category winmm}
int midiOutOpen(Pointer<HMIDIOUT> phmo, int uDeviceID, int? dwCallback,
        int? dwInstance, int fdwOpen) =>
    _midiOutOpen(phmo, uDeviceID, dwCallback ?? 0, dwInstance ?? 0, fdwOpen);

final _midiOutOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<HMIDIOUT> phmo, Uint32 uDeviceID, IntPtr dwCallback,
        IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<HMIDIOUT> phmo, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen)>('midiOutOpen');

/// Prepares a MIDI system-exclusive or stream buffer for output.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutprepareheader>.
///
/// {@category winmm}
int midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutPrepareHeader(hmo, pmh, cbmh);

final _midiOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutPrepareHeader');

/// Turns off all notes on all MIDI channels for the specified MIDI output
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutreset>.
///
/// {@category winmm}
int midiOutReset(int hmo) => _midiOutReset(hmo);

final _midiOutReset =
    _winmm.lookupFunction<Uint32 Function(HMIDIOUT hmo), int Function(int hmo)>(
        'midiOutReset');

/// Sets the volume of a MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutsetvolume>.
///
/// {@category winmm}
int midiOutSetVolume(int? hmo, int dwVolume) =>
    _midiOutSetVolume(hmo ?? 0, dwVolume);

final _midiOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Uint32 dwVolume),
    int Function(int hmo, int dwVolume)>('midiOutSetVolume');

/// Sends a short MIDI message to the specified MIDI output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutshortmsg>.
///
/// {@category winmm}
int midiOutShortMsg(int hmo, int dwMsg) => _midiOutShortMsg(hmo, dwMsg);

final _midiOutShortMsg = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Uint32 dwMsg),
    int Function(int hmo, int dwMsg)>('midiOutShortMsg');

/// Cleans up the preparation performed by the midiOutPrepareHeader function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutunprepareheader>.
///
/// {@category winmm}
int midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutUnprepareHeader(hmo, pmh, cbmh);

final _midiOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutUnprepareHeader');

/// Plays a sound specified by the given file name, resource, or system event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)>.
///
/// {@category winmm}
int PlaySound(Pointer<Utf16>? pszSound, int? hmod, int fdwSound) =>
    _PlaySound(pszSound ?? nullptr, hmod ?? 0, fdwSound);

final _PlaySound = _winmm.lookupFunction<
    BOOL Function(Pointer<Utf16> pszSound, HMODULE hmod, Uint32 fdwSound),
    int Function(
        Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');

/// Sends an input buffer to the given waveform-audio input device.
///
/// When the buffer is filled, the application is notified.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinaddbuffer>.
///
/// {@category winmm}
int waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInAddBuffer(hwi, pwh, cbwh);

final _waveInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInAddBuffer');

/// Closes the given waveform-audio input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinclose>.
///
/// {@category winmm}
int waveInClose(int hwi) => _waveInClose(hwi);

final _waveInClose =
    _winmm.lookupFunction<Uint32 Function(HWAVEIN hwi), int Function(int hwi)>(
        'waveInClose');

/// Retrieves the capabilities of a given waveform-audio input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetdevcaps>.
///
/// {@category winmm}
int waveInGetDevCaps(int uDeviceID, Pointer<WAVEINCAPS> pwic, int cbwic) =>
    _waveInGetDevCaps(uDeviceID, pwic, cbwic);

final _waveInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<WAVEINCAPS> pwic, Uint32 cbwic),
    int Function(int uDeviceID, Pointer<WAVEINCAPS> pwic,
        int cbwic)>('waveInGetDevCapsW');

/// Retrieves a textual description of the error identified by the given error
/// number.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingeterrortext>.
///
/// {@category winmm}
int waveInGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _waveInGetErrorText(mmrError, pszText, cchText);

final _waveInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('waveInGetErrorTextW');

/// Gets the device identifier for the given waveform-audio input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetid>.
///
/// {@category winmm}
int waveInGetID(int hwi, Pointer<Uint32> puDeviceID) =>
    _waveInGetID(hwi, puDeviceID);

final _waveInGetID = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Pointer<Uint32> puDeviceID),
    int Function(int hwi, Pointer<Uint32> puDeviceID)>('waveInGetID');

/// Returns the number of waveform-audio input devices present in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetnumdevs>.
///
/// {@category winmm}
int waveInGetNumDevs() => _waveInGetNumDevs();

final _waveInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');

/// Retrieves the current input position of the given waveform-audio input
/// device.
///
/// **Note**: This function is no longer supported for use as of Windows Vista.
/// Instead, use IAudioClock.getPosition.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetposition>.
///
/// {@category winmm}
int waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveInGetPosition(hwi, pmmt, cbmmt);

final _waveInGetPosition = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(
        int hwi, Pointer<MMTIME> pmmt, int cbmmt)>('waveInGetPosition');

/// Sends messages to the waveform-audio input device drivers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinmessage>.
///
/// {@category winmm}
int waveInMessage(int? hwi, int uMsg, int? dw1, int? dw2) =>
    _waveInMessage(hwi ?? 0, uMsg, dw1 ?? 0, dw2 ?? 0);

final _waveInMessage = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hwi, int uMsg, int dw1, int dw2)>('waveInMessage');

/// Opens the given waveform-audio input device for recording.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinopen>.
///
/// {@category winmm}
int waveInOpen(
        Pointer<HWAVEIN>? phwi,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int? dwCallback,
        int? dwInstance,
        int fdwOpen) =>
    _waveInOpen(phwi ?? nullptr, uDeviceID, pwfx, dwCallback ?? 0,
        dwInstance ?? 0, fdwOpen);

final _waveInOpen = _winmm.lookupFunction<
    Uint32 Function(
        Pointer<HWAVEIN> phwi,
        Uint32 uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        IntPtr dwCallback,
        IntPtr dwInstance,
        Uint32 fdwOpen),
    int Function(
        Pointer<HWAVEIN> phwi,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int dwCallback,
        int dwInstance,
        int fdwOpen)>('waveInOpen');

/// Prepares a buffer for waveform-audio input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinprepareheader>.
///
/// {@category winmm}
int waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInPrepareHeader(hwi, pwh, cbwh);

final _waveInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInPrepareHeader');

/// Stops input on the given waveform-audio input device and resets the current
/// position to zero.
///
/// All pending buffers are marked as done and returned to the application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinreset>.
///
/// {@category winmm}
int waveInReset(int hwi) => _waveInReset(hwi);

final _waveInReset =
    _winmm.lookupFunction<Uint32 Function(HWAVEIN hwi), int Function(int hwi)>(
        'waveInReset');

/// Starts input on the given waveform-audio input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstart>.
///
/// {@category winmm}
int waveInStart(int hwi) => _waveInStart(hwi);

final _waveInStart =
    _winmm.lookupFunction<Uint32 Function(HWAVEIN hwi), int Function(int hwi)>(
        'waveInStart');

/// Stops waveform-audio input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstop>.
///
/// {@category winmm}
int waveInStop(int hwi) => _waveInStop(hwi);

final _waveInStop =
    _winmm.lookupFunction<Uint32 Function(HWAVEIN hwi), int Function(int hwi)>(
        'waveInStop');

/// Cleans up the preparation performed by the waveInPrepareHeader function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinunprepareheader>.
///
/// {@category winmm}
int waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInUnprepareHeader(hwi, pwh, cbwh);

final _waveInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(HWAVEIN hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInUnprepareHeader');

/// Closes the given waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutclose>.
///
/// {@category winmm}
int waveOutClose(int hwo) => _waveOutClose(hwo);

final _waveOutClose =
    _winmm.lookupFunction<Uint32 Function(HWAVEOUT hwo), int Function(int hwo)>(
        'waveOutClose');

/// Retrieves the capabilities of a given waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetdevcaps>.
///
/// {@category winmm}
int waveOutGetDevCaps(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) =>
    _waveOutGetDevCaps(uDeviceID, pwoc, cbwoc);

final _waveOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
    int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc,
        int cbwoc)>('waveOutGetDevCapsW');

/// Retrieves a textual description of the error identified by the given error
/// number.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgeterrortext>.
///
/// {@category winmm}
int waveOutGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _waveOutGetErrorText(mmrError, pszText, cchText);

final _waveOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('waveOutGetErrorTextW');

/// Retrieves the device identifier for the given waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetid>.
///
/// {@category winmm}
int waveOutGetID(int hwo, Pointer<Uint32> puDeviceID) =>
    _waveOutGetID(hwo, puDeviceID);

final _waveOutGetID = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<Uint32> puDeviceID),
    int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');

/// Retrieves the number of waveform-audio output devices present in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetnumdevs>.
///
/// {@category winmm}
int waveOutGetNumDevs() => _waveOutGetNumDevs();

final _waveOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');

/// Retrieves the current pitch setting for the specified waveform-audio output
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetpitch>.
///
/// {@category winmm}
int waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch) =>
    _waveOutGetPitch(hwo, pdwPitch);

final _waveOutGetPitch = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<Uint32> pdwPitch),
    int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');

/// Retrieves the current playback rate for the specified waveform-audio output
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetplaybackrate>.
///
/// {@category winmm}
int waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate) =>
    _waveOutGetPlaybackRate(hwo, pdwRate);

final _waveOutGetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<Uint32> pdwRate),
    int Function(int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');

/// Retrieves the current playback position of the given waveform-audio output
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetposition>.
///
/// {@category winmm}
int waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveOutGetPosition(hwo, pmmt, cbmmt);

final _waveOutGetPosition = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(
        int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');

/// Retrieves the current volume level of the specified waveform-audio output
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetvolume>.
///
/// {@category winmm}
int waveOutGetVolume(int? hwo, Pointer<Uint32> pdwVolume) =>
    _waveOutGetVolume(hwo ?? 0, pdwVolume);

final _waveOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<Uint32> pdwVolume),
    int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');

/// Sends messages to the waveform-audio output device drivers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutmessage>.
///
/// {@category winmm}
int waveOutMessage(int? hwo, int uMsg, int dw1, int dw2) =>
    _waveOutMessage(hwo ?? 0, uMsg, dw1, dw2);

final _waveOutMessage = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');

/// Opens the given waveform-audio output device for playback.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutopen>.
///
/// {@category winmm}
int waveOutOpen(
        Pointer<HWAVEOUT>? phwo,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int? dwCallback,
        int? dwInstance,
        int fdwOpen) =>
    _waveOutOpen(phwo ?? nullptr, uDeviceID, pwfx, dwCallback ?? 0,
        dwInstance ?? 0, fdwOpen);

final _waveOutOpen = _winmm.lookupFunction<
    Uint32 Function(
        Pointer<HWAVEOUT> phwo,
        Uint32 uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        IntPtr dwCallback,
        IntPtr dwInstance,
        Uint32 fdwOpen),
    int Function(
        Pointer<HWAVEOUT> phwo,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int dwCallback,
        int dwInstance,
        int fdwOpen)>('waveOutOpen');

/// Pauses playback on the given waveform-audio output device.
///
/// The current position is saved. Use the waveOutRestart function to resume
/// playback from the current position.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutpause>.
///
/// {@category winmm}
int waveOutPause(int hwo) => _waveOutPause(hwo);

final _waveOutPause =
    _winmm.lookupFunction<Uint32 Function(HWAVEOUT hwo), int Function(int hwo)>(
        'waveOutPause');

/// Prepares a waveform-audio data block for playback.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutprepareheader>.
///
/// {@category winmm}
int waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutPrepareHeader(hwo, pwh, cbwh);

final _waveOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');

/// Stops playback on the given waveform-audio output device and resets the
/// current position to zero.
///
/// All pending playback buffers are marked as done (WHDR_DONE) and returned to
/// the application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutreset>.
///
/// {@category winmm}
int waveOutReset(int hwo) => _waveOutReset(hwo);

final _waveOutReset =
    _winmm.lookupFunction<Uint32 Function(HWAVEOUT hwo), int Function(int hwo)>(
        'waveOutReset');

/// Resumes playback on a paused waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutrestart>.
///
/// {@category winmm}
int waveOutRestart(int hwo) => _waveOutRestart(hwo);

final _waveOutRestart =
    _winmm.lookupFunction<Uint32 Function(HWAVEOUT hwo), int Function(int hwo)>(
        'waveOutRestart');

/// Sets the pitch for the specified waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetpitch>.
///
/// {@category winmm}
int waveOutSetPitch(int hwo, int dwPitch) => _waveOutSetPitch(hwo, dwPitch);

final _waveOutSetPitch = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Uint32 dwPitch),
    int Function(int hwo, int dwPitch)>('waveOutSetPitch');

/// Sets the playback rate for the specified waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetplaybackrate>.
///
/// {@category winmm}
int waveOutSetPlaybackRate(int hwo, int dwRate) =>
    _waveOutSetPlaybackRate(hwo, dwRate);

final _waveOutSetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Uint32 dwRate),
    int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');

/// Sets the volume level of the specified waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetvolume>.
///
/// {@category winmm}
int waveOutSetVolume(int? hwo, int dwVolume) =>
    _waveOutSetVolume(hwo ?? 0, dwVolume);

final _waveOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Uint32 dwVolume),
    int Function(int hwo, int dwVolume)>('waveOutSetVolume');

/// Cleans up the preparation performed by the waveOutPrepareHeader function.
///
/// This function must be called after the device driver is finished with a data
/// block. You must call this function before freeing the buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutunprepareheader>.
///
/// {@category winmm}
int waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutUnprepareHeader(hwo, pwh, cbwh);

final _waveOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutUnprepareHeader');

/// Sends a data block to the given waveform-audio output device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutwrite>.
///
/// {@category winmm}
int waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutWrite(hwo, pwh, cbwh);

final _waveOutWrite = _winmm.lookupFunction<
    Uint32 Function(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');
