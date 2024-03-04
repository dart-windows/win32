// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void generateCallbacks(List<Scope> scopes, Map<String, String> callbacks) {
  final file = File(Platform.script
      .resolve('../../../lib/src/callbacks.g.dart')
      .toFilePath());

  // These are the manually projected callbacks that are not in the metadata.
  final manuallyProjectedCallbacks = '''
// --- MANUALLY PROJECTED CALLBACKS START ---

/// An application-defined callback function for handling incoming MIDI
/// messages.
///
/// MIDIINPROC is a placeholder for the application-supplied function name. The
/// address of this function can be specified in the callback-address parameter
/// of the midiInOpen function.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/previous-versions/dd798460(v=vs.85)>.
///
/// {@category callback}
typedef MIDIINPROC = Void Function(HMIDIIN hMidiIn, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

/// An application-defined callback function for handling outgoing MIDI
/// messages.
///
/// MIDIOUTPROC is a placeholder for the application-supplied function name. The
/// address of the function can be specified in the callback-address parameter
/// of the midiOutOpen function.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/previous-versions/dd798478(v=vs.85)>.
///
/// {@category callback}
typedef MIDIOUTPROC = Void Function(HMIDIOUT hmo, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

// --- MANUALLY PROJECTED CALLBACKS END ---
''';

  final typeDefs = scopes.expand((scope) => scope.delegates
      .where((typeDef) => callbacks.keys.contains(typeDef.name))
      .where((typeDef) => typeDef.supportedArchitectures.x64)
      .toFixedList()
    ..sort((a, b) => a.safeTypename.compareTo(b.safeTypename)));
  final callbackProjections = typeDefs.map(CallbackProjection.new);
  final callbacksFile = [
    callbackFileHeader,
    manuallyProjectedCallbacks,
    ...callbackProjections
  ].join('\n');
  file.writeAsStringSync(DartFormatter().format(callbacksFile));
}

void generateEnums(List<Scope> scopes, Map<String, String> enums) {
  final file = File(
      Platform.script.resolve('../../../lib/src/enums.g.dart').toFilePath());
  final typeDefs = scopes.expand((scope) => scope.enums
      .where((typeDef) => enums.keys.contains(typeDef.name))
      .where((typeDef) => typeDef.supportedArchitectures.x64)
      .toFixedList()
    ..sort((a, b) => a.safeTypename.compareTo(b.safeTypename)));
  final enumProjections = typeDefs.map(EnumProjection.new);
  final enumsFile = [enumFileHeader, ...enumProjections].join('\n');
  file.writeAsStringSync(DartFormatter().format(enumsFile));
}

void generateStructs(List<Scope> scopes, Map<String, String> structs) {
  final file = File(
      Platform.script.resolve('../../../lib/src/structs.g.dart').toFilePath());
  final typeDefs = scopes.expand((scope) => scope.structs
      .where((typeDef) => structs.keys.contains(typeDef.name))
      .where((typeDef) => typeDef.supportedArchitectures.x64)
      .toFixedList()
    ..sort((a, b) => a.safeTypename.compareTo(b.safeTypename)));
  final structProjections = typeDefs.map(StructProjection.new);
  final structsFile = [structFileHeader, ...structProjections].join();
  file.writeAsStringSync(DartFormatter().format(structsFile));
}

String generateDocComment(Win32Function func, String libraryDartName) {
  final category = func.category.isNotEmpty ? func.category : libraryDartName;
  final buffer = StringBuffer();

  if (func.comment.isNotEmpty) {
    buffer
      ..writeln(func.comment.toDocComment())
      ..writeln('///');
  }

  buffer
    ..writeln('/// ```c')
    ..write('/// ')
    ..writeln(func.prototype.split(r'\n').join('\n/// '))
    ..writeln('/// ```')
    ..write('/// {@category $category}');

  return buffer.toString();
}

void generateDllFile(String library, List<Method> filteredMethods,
    Iterable<Win32Function> functions) {
  /// Methods we're trying to project
  final libraryMethods = filteredMethods
      .where((method) => method.module.name.toLowerCase() == library);

  final buffer = StringBuffer();

  // API set names aren't legal Dart identifiers, so we rename them.
  // Also strip off the trailing .dll (or .cpl, .drv, etc.).
  final libraryDartName = library.replaceAll('-', '_').split('.').first;

  buffer.write('''
  $functionFileHeader

  final _$libraryDartName = DynamicLibrary.open('$library');\n
  ''');

  for (final method in libraryMethods) {
    final function =
        functions.firstWhere((f) => f.functionSymbol == method.name);
    buffer.write('''
  ${generateDocComment(function, libraryDartName)}
  ${FunctionProjection(method).toString()}
  ''');
  }

  File(Platform.script
          .resolve('../../../lib/src/win32_v5/$libraryDartName.g.dart')
          .toFilePath())
      .writeAsStringSync(DartFormatter().format(buffer.toString()));
}

void generateFunctions(
    List<Scope> scopes, Map<String, Win32Function> functions) {
  final apis = scopes.expand((scope) =>
      scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis')));

  final methods = <Method>[];
  final filteredMethods = <Method>[];

  // Create a flat list for every method in the Win32 metadata, and a set
  // containing all the modules (DLLs) referenced.
  for (final api in apis) {
    methods.addAll(api.methods);
  }

  // Gather metadata for all the functions in the JSON file
  for (final function in functions.values) {
    final method = methods.where((m) => m.name == function.functionSymbol);
    if (method.length != 1) {
      throw StateError('${function.functionSymbol} metadata match error.');
    }

    filteredMethods.add(method.first);
  }

  // Gather a list of all the affected libraries
  final dllLibraries =
      filteredMethods.map((m) => m.module.name.toLowerCase()).toSet();

  final tests = <String>[];

  for (final library in dllLibraries) {
    generateDllFile(library, filteredMethods, functions.values);
    tests
        .add(generateFunctionTests(library, filteredMethods, functions.values));
  }

  final testFile = '''
  $testFunctionsHeader

  import '../helpers.dart';

  void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
  ${tests.join('\n')}
  }
''';

  File(Platform.script
          .resolve('../../../test/win32/api_test.dart')
          .toFilePath())
      .writeAsStringSync(DartFormatter().format(testFile));
}

String generateFunctionTests(String library, Iterable<Method> methods,
    Iterable<Win32Function> functions) {
  final buffer = StringBuffer();

  // GitHub Actions doesn't install Native Wifi API on runners, so we remove
  // wlanapi manually to prevent test failures.
  if (library == 'wlanapi.dll') return '';

  /// Methods we're trying to project
  final filteredMethods =
      methods.where((method) => method.module.name.toLowerCase() == library);

  buffer.write("group('Test ${library.split('.').first} functions', () {\n");

  for (final method in filteredMethods) {
    // API set names aren't legal Dart identifiers, so we rename them.
    // Also strip off the trailing .dll (or .cpl, .drv, etc.).
    final libraryDartName = library.replaceAll('-', '_').split('.').first;

    final function =
        functions.firstWhere((f) => f.functionSymbol == method.name);

    // Some functions (e.g. TaskDialog APIs) can only be loaded if the EXE has a
    // manifest, so we ignore those for the purpose of test generation.
    if (!function.test) continue;

    final projection = FunctionProjection(method);
    final returnFFIType =
        TypeProjection(method.returnType.typeIdentifier).nativeType;
    final returnDartType =
        TypeProjection(method.returnType.typeIdentifier).dartType;
    final methodDartName = method.nameWithoutEncoding;

    final test = '''
  test('Can instantiate $methodDartName', () {
    final $libraryDartName = DynamicLibrary.open('$library');
    final $methodDartName = $libraryDartName.lookupFunction<\n
      $returnFFIType Function(${projection.nativeParameters}),
      $returnDartType Function(${projection.dartParameters})>('${method.name}');
    expect($methodDartName, isA<Function>());
  });''';

    if (function.minimumWindowsVersion > 0) {
      buffer.writeln('''
  if (windowsBuildNumber >= ${function.minimumWindowsVersion}) {
    $test
  }''');
    } else {
      buffer.writeln(test);
    }
  }
  buffer.write('});\n\n');

  return buffer.toString();
}

void generateComInterfaces(Scope scope, Map<String, String> comInterfaces) {
  for (final interface in comInterfaces.keys) {
    final typeDef = scope.findTypeDef(interface);
    if (typeDef == null) throw StateError("Can't find $interface");

    final interfaceProjection = ComInterfaceProjection(typeDef);
    final dartClass = interfaceProjection.toString();
    final classOutputFilename = typeDef.safeFilename;
    File(Platform.script
            .resolve('../../../lib/src/com/$classOutputFilename')
            .toFilePath())
        .writeAsStringSync(DartFormatter().format(dartClass));
  }
}

void main() async {
  final stopwatch = Stopwatch()..start();

  print('[${stopwatch.elapsed}] Loading Windows metadata...');
  final wdkScope =
      await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
  final win32Scope =
      await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  // Additionally, load WinRT metadata to ensure the correct resolution of
  // references from Win32 metadata.
  await MetadataStore.loadWinRTMetadata(version: winrtMetadataVersion);

  print('[${stopwatch.elapsed}] Loading Win32 API docs...');
  await ApiDocs.load(version: win32DocsVersion);

  print('[${stopwatch.elapsed}] Loading and sorting functions...');
  final functionsToGenerate = loadFunctionsFromJson();
  saveFunctionsToJson(functionsToGenerate);

  print('[${stopwatch.elapsed}] Generating callbacks...');
  final win32CallbacksPath =
      Platform.script.resolve('../data/win32_callbacks.json').toFilePath();
  final callbacksToGenerate = loadMap(win32CallbacksPath);
  saveMap(callbacksToGenerate, win32CallbacksPath);
  generateCallbacks([wdkScope, win32Scope], callbacksToGenerate);

  print('[${stopwatch.elapsed}] Generating enums...');
  final win32EnumsPath =
      Platform.script.resolve('../data/win32_enums.json').toFilePath();
  final enumsToGenerate = loadMap(win32EnumsPath);
  saveMap(enumsToGenerate, win32EnumsPath);
  generateEnums([wdkScope, win32Scope], enumsToGenerate);

  print('[${stopwatch.elapsed}] Generating structs...');
  final win32StructsPath =
      Platform.script.resolve('../data/win32_structs.json').toFilePath();
  final structsToGenerate = loadMap(win32StructsPath);
  saveMap(structsToGenerate, win32StructsPath);
  generateStructs([wdkScope, win32Scope], structsToGenerate);

  print('[${stopwatch.elapsed}] Generating FFI function bindings...');
  generateFunctions([wdkScope, win32Scope], functionsToGenerate);

  print('[${stopwatch.elapsed}] Generating COM interfaces...');
  final comTypesPath =
      Platform.script.resolve('../data/com_types.json').toFilePath();
  final comTypesToGenerate = loadMap(comTypesPath);
  saveMap(comTypesToGenerate, comTypesPath);
  generateComInterfaces(win32Scope, comTypesToGenerate);

  MetadataStore.close();
  stopwatch.stop();
  print('[${stopwatch.elapsed}] Completed');
}
