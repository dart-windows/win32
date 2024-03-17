// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates a MessageBox from the console

import 'package:win32/win32.dart';

void main() {
  final message =
      TEXT('This is not really an error, but we are pretending for the sake '
          'of this test.\n\nResource error.\nDo you want to try again?');
  final title = TEXT('Dart MessageBox Test');

  final result = MessageBox(
      NULL,
      message,
      title,
      MESSAGEBOX_STYLE.MB_ICONWARNING | // Warning
          MESSAGEBOX_STYLE.MB_CANCELTRYCONTINUE | // Action button
          MESSAGEBOX_STYLE.MB_DEFBUTTON2 // Second button is the default
      );

  free(message);
  free(title);

  switch (result) {
    case MESSAGEBOX_RESULT.IDCANCEL:
      print('Cancel pressed');
    case MESSAGEBOX_RESULT.IDTRYAGAIN:
      print('Try Again pressed');
    case MESSAGEBOX_RESULT.IDCONTINUE:
      print('Continue pressed');
  }
}
