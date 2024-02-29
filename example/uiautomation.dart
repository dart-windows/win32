// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Get the root element of the given [uiAutomation].
IUIAutomationElement getRootElement(IUIAutomation uiAutomation) {
  final pElement = calloc<VTablePointer>();
  try {
    final hr = uiAutomation.getRootElement(pElement);
    if (FAILED(hr)) throw WindowsException(hr);
    return IUIAutomationElement(pElement.value);
  } finally {
    free(pElement);
  }
}

/// Get the top-level window element from the given [processId].
IUIAutomationElement getTopLevelWindowByProcessId(int processId) {
  // Create an instance of the CUIAutomation class
  final uiAutomation =
      IUIAutomation(createComObject(CUIAutomation, IID_IUIAutomation));
  final root = getRootElement(uiAutomation);
  final valueParam = Variant.int32(processId);

  try {
    final pCondition = calloc<VTablePointer>();
    var hr = uiAutomation.createPropertyCondition(
      UIA_ProcessIdPropertyId,
      valueParam.ref,
      pCondition,
    );
    if (FAILED(hr)) {
      free(pCondition);
      throw WindowsException(hr);
    }

    final propertyCondition = IUIAutomationPropertyCondition(pCondition.value);
    free(pCondition);

    final pElement = calloc<VTablePointer>();
    hr = root.findFirst(
      TreeScope.TreeScope_Children,
      propertyCondition.ptr,
      pElement,
    );
    if (FAILED(hr)) {
      free(pElement);
      throw WindowsException(hr);
    }

    if (pElement.value == nullptr) {
      free(pElement);
      throw StateError('Could not find the window.');
    }

    final elm = IUIAutomationElement(pElement.value);
    free(pElement);
    return elm;
  } finally {
    valueParam.free();
    uiAutomation.release();
  }
}

/// Takes a Control Pattern Availability [propertyId] (e.g.
/// `UIA_IsTextPatternAvailablePropertyId`) and checks if the given [element]
/// supports that particular control pattern.
bool isControlPatternAvailable(int propertyId, IUIAutomationElement element) {
  final retVal = Variant.empty();
  try {
    final hr = element.getCurrentPropertyValue(propertyId, retVal);
    if (FAILED(hr)) throw WindowsException(hr);
    return retVal.ref.boolVal == VARIANT_TRUE;
  } finally {
    retVal.free();
  }
}

/// Get the window pattern of the given [element].
IUIAutomationWindowPattern getWindowPattern(IUIAutomationElement element) {
  // Check if the window pattern is available for the element.
  if (!isControlPatternAvailable(
      UIA_IsWindowPatternAvailablePropertyId, element)) {
    throw StateError('Window pattern is not available for this element');
  }

  final pPattern = calloc<VTablePointer>();
  final hr = element.getCurrentPattern(UIA_WindowPatternId, pPattern);
  if (FAILED(hr)) {
    free(pPattern);
    throw WindowsException(hr);
  }

  if (pPattern.value == nullptr) {
    free(pPattern);
    throw StateError('Could not get the window pattern');
  }

  final pattern = IUIAutomationWindowPattern(pPattern.value);
  free(pPattern);
  return pattern;
}

void maximizeWindow(IUIAutomationWindowPattern window) {
  final hr = window
      .setWindowVisualState(WindowVisualState.WindowVisualState_Maximized);
  if (FAILED(hr)) throw WindowsException(hr);
}

void restoreWindow(IUIAutomationWindowPattern window) {
  final hr =
      window.setWindowVisualState(WindowVisualState.WindowVisualState_Normal);
  if (FAILED(hr)) throw WindowsException(hr);
}

void closeWindow(IUIAutomationWindowPattern window) {
  final hr = window.close();
  if (FAILED(hr)) throw WindowsException(hr);
}

void main() {
  final process = Process.runSync('notepad.exe', []); // Start notepad.exe
  Sleep(500); // Wait for the Notepad to start

  // Initialize COM
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final notepad = getTopLevelWindowByProcessId(process.pid);
  final window = getWindowPattern(notepad);

  if (window.currentCanMaximize == TRUE) {
    maximizeWindow(window);
    Sleep(500);
    restoreWindow(window);
    Sleep(500);
  }

  closeWindow(window);

  window.release();
  notepad.release();
}
