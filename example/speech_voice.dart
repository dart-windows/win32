// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example of using ISpeechVoice to text-to-speech.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const textToSpeak =
    'Dart is a portable, high-performance language from Google.';

void main() {
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final speechVoice =
      ISpeechVoice(createCOMObject(CLSID_SpVoice, IID_ISpeechVoice));
  final pText = textToSpeak.toNativeUtf16();

  final pTokens = calloc<VTablePointer>();
  final voices = speechVoice.getVoices(nullptr, nullptr, pTokens);
  if (FAILED(voices)) throw WindowsException(voices);

  if (pTokens.value != nullptr) {
    final tokens = ISpeechObjectTokens(pTokens.value);
    free(pTokens);
    final pCount = calloc<Int32>();
    var hr = tokens.get_Count(pCount);
    if (FAILED(hr)) throw WindowsException(hr);
    final count = pCount.value;
    free(pCount);
    print('There are $count voices available for text-to-speech:');

    for (var i = 0; i < count; i++) {
      final pToken = calloc<VTablePointer>();
      hr = tokens.item(i, pToken);
      if (FAILED(hr)) throw WindowsException(hr);

      if (pTokens.value != nullptr) {
        final token = ISpeechObjectToken(pToken.value);
        free(pToken);

        final pDescription = calloc<Pointer<Utf16>>();
        hr = token.getDescription(0, pDescription);
        if (FAILED(hr)) throw WindowsException(hr);
        final description = pDescription.value.toDartString();
        print(' - Voice ${i + 1}: $description');

        // Set the current voice for text-to-speech
        hr = speechVoice.putref_Voice(token.ptr);
        if (FAILED(hr)) throw WindowsException(hr);

        hr = speechVoice.speak(pText, SPEAKFLAGS.SPF_IS_NOT_XML, nullptr);
        if (FAILED(hr)) throw WindowsException(hr);

        token.release();
      }
    }

    tokens.release();
  }

  speechVoice.release();

  free(pText);
  CoUninitialize();
}
