// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Reads and writes credentials.

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void write({
  required String credentialName,
  required String username,
  required String password,
}) {
  print('Writing $credentialName ...');

  final targetName = PWSTR.fromString(credentialName);
  final userName = PWSTR.fromString(username);
  final examplePassword = utf8.encode(password);
  final blob = examplePassword.allocatePointer();

  final credential = calloc<CREDENTIAL>();
  credential.ref
    ..Type = CRED_TYPE_GENERIC
    ..TargetName = targetName
    ..Persist = CRED_PERSIST_LOCAL_MACHINE
    ..UserName = userName
    ..CredentialBlob = blob
    ..CredentialBlobSize = examplePassword.length;

  try {
    if (CredWrite(credential, 0) == TRUE) {
      print('Success (blob size: ${credential.ref.CredentialBlobSize})');
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    targetName.free();
    userName.free();
    free(blob);
    free(credential);
  }
}

void read(String credentialName) {
  print('Reading $credentialName...');
  final targetName = PWSTR.fromString(credentialName);
  final credPointer = calloc<Pointer<CREDENTIAL>>();
  final result = CredRead(targetName, CRED_TYPE_GENERIC, credPointer);
  targetName.free();
  if (result != TRUE) {
    final errorCode = GetLastError();
    var errorText = '$errorCode';
    if (errorCode == ERROR_NOT_FOUND) {
      errorText += ' Not found.';
    }
    print('Error ($result): $errorText');
    return;
  }
  final cred = credPointer.value.ref;
  print('Success.');
  print('Read username: ${cred.UserName.toDartString()}');
  print('Password size: ${cred.CredentialBlobSize}');
  final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
  final password = utf8.decode(blob);
  print('Read password: $password');
  CredFree(credPointer.value);
  free(credPointer);
}

void delete(String credentialName) {
  print('Deleting $credentialName...');
  final targetName = PWSTR.fromString(credentialName);
  final result = CredDelete(targetName, CRED_TYPE_GENERIC);
  if (result != TRUE) {
    final errorCode = GetLastError();
    print('Error ($result): $errorCode');
    return;
  }
  targetName.free();
  print('Successfully deleted credential.');
}

void main() {
  print('Accessing Credentials...');
  const credentialName = 'exampleCredential';
  write(
    credentialName: credentialName,
    username: 'MyUserName',
    password: 'MyPassword',
  );
  read(credentialName);
  delete(credentialName);
  print('Reading deleted credential should fail:');
  read(credentialName);
}
