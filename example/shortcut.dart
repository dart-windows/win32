// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates using the COM IShellLink interface to create a shell shortcut.

// ignore_for_file: non_constant_identifier_names

import 'package:args/args.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void createShortcut(String path, String pathLink, String? description) {
  final shellLink = IShellLink(createComObject(ShellLink, IID_IShellLink));

  using((arena) {
    final lpPath = PWSTR.fromString(path, allocator: arena);
    shellLink.setPath(lpPath);

    if (description != null) {
      shellLink.setDescription(PWSTR.fromString(description, allocator: arena));
    }

    final lpPathLink = PWSTR.fromString(pathLink, allocator: arena);
    IPersistFile.from(shellLink)
      ..save(lpPathLink, TRUE)
      ..release();
    shellLink.release();
  });
}

void main(List<String> args) {
  final parser = ArgParser(usageLineLength: 80)
    ..addOption('path',
        abbr: 'p',
        mandatory: true,
        help:
            r'Absolute path for which to create a shortcut (e.g. c:\test.txt).')
    ..addOption('shortcut',
        abbr: 's',
        mandatory: true,
        help: 'The name of the shortcut (e.g. shortcut.lnk).')
    ..addOption('description',
        abbr: 'd', help: 'Optional description for the shortcut.');

  try {
    final results = parser.parse(args);
    CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    createShortcut(
      results['path'] as String,
      results['shortcut'] as String,
      results['description'] as String?,
    );
    CoUninitialize();
  } on FormatException {
    print('Creates a Windows shortcut to a given file.\n');
    print('Usage: shortcut [arguments]\n');
    print(parser.usage);
  }
}
