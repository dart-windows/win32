// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Sends RAW data (string or hex sequences) directly to the printer

// Example taken from:
// https://learn.microsoft.com/windows/win32/printdocs/sending-data-directly-to-a-printer

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

enum DataType {
  raw('RAW'),
  text('TEXT'),
  xpsPass('XPS_PASS');

  const DataType(this.value);

  final String value;
}

class RawPrinter {
  RawPrinter(this.printerName, this.allocator);

  final String printerName;
  final Arena allocator;

  Pointer<HANDLE> _startRawPrintJob({
    required String printerName,
    required String documentTitle,
    DataType dataType = DataType.raw,
  }) {
    final pPrinterName = PWSTR.fromString(printerName, allocator: allocator);
    final phPrinter = allocator<HANDLE>();

    // https://learn.microsoft.com/windows/win32/printdocs/openprinter
    var fSuccess = OpenPrinter(pPrinterName, phPrinter, null);
    if (fSuccess == 0) {
      final error = GetLastError();
      throw StateError('OpenPrint error, status: $fSuccess, error: $error');
    }

    // https://learn.microsoft.com/windows/win32/printdocs/doc-info-1
    final pDocInfo = allocator<DOC_INFO_1>();
    pDocInfo.ref
      ..pDocName = PWSTR.fromString(printerName, allocator: allocator)
      ..pDatatype = PWSTR.fromString(dataType.value, allocator: allocator)
      ..pOutputFile = nullptr;

    // https://learn.microsoft.com/windows/win32/printdocs/startdocprinter
    fSuccess = StartDocPrinter(
        phPrinter.value,
        1, // Version of the structure to which pDocInfo points.
        pDocInfo);
    if (fSuccess == 0) {
      final error = GetLastError();
      throw StateError(
        'StartDocPrinter error, status: $fSuccess, error: $error',
      );
    }

    return phPrinter;
  }

  bool _startRawPrintPage(Pointer<HANDLE> phPrinter) =>
      StartPagePrinter(phPrinter.value) != 0;

  bool _endRawPrintPage(Pointer<HANDLE> phPrinter) =>
      EndPagePrinter(phPrinter.value) != 0;

  bool _endRawPrintJob(Pointer<HANDLE> phPrinter) =>
      EndDocPrinter(phPrinter.value) > 0 && ClosePrinter(phPrinter.value) != 0;

  bool _printRawData(Pointer<HANDLE> phPrinter, String dataToPrint) {
    final cWritten = allocator<DWORD>();
    final data = PSTR.fromString(dataToPrint, allocator: allocator);

    // https://learn.microsoft.com/windows/win32/printdocs/writeprinter
    final result =
        WritePrinter(phPrinter.value, data, dataToPrint.length, cWritten);

    if (dataToPrint.length != cWritten.value) {
      final error = GetLastError();
      throw StateError('WritePrinter error, status: $result, error: $error');
    }

    return result != 0;
  }

  bool printLines(List<String> data) {
    var res = false;

    if (data.isEmpty) return res;

    final printerHandle = _startRawPrintJob(
      printerName: printerName,
      documentTitle: 'My document',
      dataType: DataType.raw,
    );

    res = _startRawPrintPage(printerHandle);

    for (final item in data) {
      if (res) {
        res = _printRawData(printerHandle, item);
      }
    }

    _endRawPrintPage(printerHandle);
    _endRawPrintJob(printerHandle);

    return res;
  }
}

void main() {
  // Example: ESC/POS sequence to open the cash drawer.
  const openCashDrawer = '\x1b\x70\x00';

  using((arena) {
    // NOTE: You can get the printer name from the printer_list.dart example.
    final printer = RawPrinter('EPSON TM-T20II Receipt', arena);

    // At the end we send a printer command to open the cash drawer
    // for example for thermal printers using ESC/POS.
    final data = <String>[
      for (var i = 0; i < 10; i++) 'Hello world line $i',
      openCashDrawer
    ];

    // Send to print all the lines at once.
    if (printer.printLines(data)) {
      print('Success!');
    }
  });
}
