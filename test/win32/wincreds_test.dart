// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void writeCredential({
  required String credentialName,
  required String username,
  required String password,
}) {
  final targetName = PWSTR.fromString(credentialName);
  final userName = PWSTR.fromString(username);
  final examplePassword = utf8.encode(password);
  final blob = examplePassword.allocatePointer();

  final credential = calloc<CREDENTIAL>();
  credential.ref
    ..Type = CRED_TYPE.CRED_TYPE_GENERIC
    ..TargetName = targetName
    ..Persist = CRED_PERSIST.CRED_PERSIST_LOCAL_MACHINE
    ..UserName = userName
    ..CredentialBlob = blob
    ..CredentialBlobSize = examplePassword.length;

  try {
    if (CredWrite(credential, 0) != TRUE) {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    targetName.free();
    userName.free();
    free(blob);
    free(credential);
  }
}

String readCredential(String credentialName) {
  final credPointer = calloc<Pointer<CREDENTIAL>>();
  final targetName = PWSTR.fromString(credentialName);

  try {
    if (CredRead(targetName, CRED_TYPE.CRED_TYPE_GENERIC, credPointer) !=
        TRUE) {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }

    final cred = credPointer.value.ref;
    final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
    final password = utf8.decode(blob);
    return password;
  } finally {
    if (credPointer.value.address != 0) CredFree(credPointer.value);
    free(credPointer);
    targetName.free();
  }
}

void deleteCredential(String credentialName) {
  final targetName = PWSTR.fromString(credentialName);
  try {
    if (CredDelete(targetName, CRED_TYPE.CRED_TYPE_GENERIC) != TRUE) {
      throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
    }
  } finally {
    targetName.free();
  }
}

void main() {
  test('Credential write / read succeeds', () {
    const credentialName = 'dart.win32.test.credential';
    const credentialValue = 'secretValue';

    // create credential
    writeCredential(
        credentialName: credentialName,
        username: 'userName',
        password: credentialValue);

    // read
    expect(readCredential(credentialName), equals(credentialValue));

    // delete
    deleteCredential(credentialName);
  });

  test('Credential can be updated', () {
    const credentialName = 'dart.win32.test.credential';
    const credentialValue = 'secretValue';
    const credentialValue2 = 'anotherSecret';

    // create credential
    writeCredential(
      credentialName: credentialName,
      username: 'userName',
      password: credentialValue,
    );

    // update credential with a new value
    writeCredential(
      credentialName: credentialName,
      username: 'userName',
      password: credentialValue2,
    );

    expect(readCredential(credentialName), equals(credentialValue2));

    // delete
    deleteCredential(credentialName);
  });
}
