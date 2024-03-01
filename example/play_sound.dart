// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Play a sound

import 'dart:io';

import 'package:win32/win32.dart';

void main() {
  const logonSoundPath = r'C:\Windows\Media\Windows Logon.wav';

  final file = File(logonSoundPath).existsSync();
  if (!file) {
    print('WAV file missing.');
    exit(1);
  }

  final pszSound = PWSTR.fromString(logonSoundPath);
  if (PlaySound(pszSound, null, SND_FILENAME | SND_SYNC) != TRUE) {
    print('Sound playback failed.');
  }
  pszSound.free();
}
