// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example of using Windows speech client.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(COINIT_APARTMENTTHREADED);

  final speechEngine = ISpVoice(createCOMObject(SpVoice, IID_ISpVoice));
  final pText = textToSpeak.toNativeUtf16();
  speechEngine.speak(pText, SPEAKFLAGS.SPF_IS_NOT_XML, null);

  free(pText);
  speechEngine.release();
  CoUninitialize();
}
