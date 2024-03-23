// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of commonly used callbacks in the Win32 API. These
// callbacks are manually projected as they are not included in the metadata.

import 'dart:ffi';

import 'structs.g.dart';
import 'types.dart';

/// An application-defined callback function for handling incoming MIDI
/// messages.
///
/// MIDIINPROC is a placeholder for the application-supplied function name. The
/// address of this function can be specified in the callback-address parameter
/// of the `midiInOpen` function.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/previous-versions/dd798460(v=vs.85)>.
///
/// {@category callback}
typedef MIDIINPROC = Void Function(HMIDIIN hMidiIn, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

/// An application-defined callback function for handling outgoing MIDI
/// messages.
///
/// MIDIOUTPROC is a placeholder for the application-supplied function name. The
/// address of the function can be specified in the callback-address parameter
/// of the `midiOutOpen` function.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/previous-versions/dd798478(v=vs.85)>.
///
/// {@category callback}
typedef MIDIOUTPROC = Void Function(HMIDIOUT hmo, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);
