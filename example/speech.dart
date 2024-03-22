// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example of using Windows speech client.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(
      COINIT.COINIT_APARTMENTTHREADED | COINIT.COINIT_DISABLE_OLE1DDE);

  final speechVoice = ISpeechVoice(createComObject(SpVoice, IID_ISpeechVoice));
  final pText = BSTR.fromString(textToSpeak);

  final pTokens = calloc<VTablePointer>();
  final voices = speechVoice.getVoices(nullptr, nullptr, pTokens);
  if (FAILED(voices)) throw WindowsException(voices);

  if (pTokens.value != nullptr) {
    final tokens = ISpeechObjectTokens(pTokens.value);
    print('There are ${tokens.count} voices available for text-to-speech:');

    for (var i = 0; i < tokens.count; i++) {
      final pToken = calloc<VTablePointer>();
      var hr = tokens.item(i, pToken);
      if (FAILED(hr)) throw WindowsException(hr);

      if (pTokens.value != nullptr) {
        final token = ISpeechObjectToken(pToken.value);

        final pDescription = calloc<Pointer<Utf16>>();
        hr = token.getDescription(0, pDescription);
        if (FAILED(hr)) throw WindowsException(hr);
        final description = pDescription.value.toDartString();
        SysFreeString(pDescription.value);
        free(pDescription);

        print(' - Voice ${i + 1}: $description');

        // Set the current voice for text-to-speech
        hr = speechVoice.putref_Voice(token.ptr);
        if (FAILED(hr)) throw WindowsException(hr);

        hr = speechVoice.speak(pText, SPEAKFLAGS.SPF_IS_NOT_XML, nullptr);
        if (FAILED(hr)) throw WindowsException(hr);

        token.release();
      }

      free(pToken);
    }

    tokens.release();
  }

  free(pTokens);
  pText.free();
  speechVoice.release();
  CoUninitialize();
}
