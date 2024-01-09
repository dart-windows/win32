// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '_app.dart' as app;
import '_menu.dart' as menu;
import '_tray.dart' as tray;
import '_window.dart' as window;

void main() {
  final hWnd = window.createHidden();
  tray.addIcon(hWndParent: hWnd);
  app.registerWndProc(menu.wndProc);
  app.exec();
}
