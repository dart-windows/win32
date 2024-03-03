// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents detailed documentation for an API, including its description,
/// remarks, return value, parameters, fields, and help link.
final class ApiDetails {
  /// Creates an instance of `ApiDetails` with the specified parameters.
  const ApiDetails({
    required this.helpLink,
    required this.description,
    required this.remarks,
    required this.returnValue,
    this.parameters = const {},
    this.fields = const {},
  });

  /// The URL that provides comprehensive documentation for this API.
  final Uri? helpLink;

  /// A concise summary of the API's purpose and functionality.
  final String? description;

  /// Additional remarks and detailed information about the API.
  final String? remarks;

  /// Collection of parameter documentation, organized by parameter names.
  final Map<String, String> parameters;

  /// Collection of field documentation, organized by field names.
  final Map<String, String> fields;

  /// Documentation for the return value of the API, if applicable.
  final String? returnValue;

  /// Creates an instance of `ApiDetails` from a [list] of dynamic values.
  ///
  /// This factory constructor is particularly useful when initializing
  /// an [ApiDetails] object from an external data source, such as MessagePack.
  factory ApiDetails.fromList(List<dynamic> list) {
    if (list
        case [
          final String? helpLink,
          final String? description,
          final String? remarks,
          final Map<dynamic, dynamic> parameters,
          final Map<dynamic, dynamic> fields,
          final String? returnValue
        ]) {
      return ApiDetails(
        helpLink: helpLink != null ? Uri.parse(helpLink) : null,
        description: description?.sanitize(),
        remarks: remarks,
        parameters: parameters.cast(),
        fields: fields.cast(),
        returnValue: returnValue,
      );
    }

    throw FormatException('Invalid data: $list');
  }

  @override
  String toString() =>
      'ApiDetails(helpLink: $helpLink, description: $description, '
      'remarks: $remarks, parameters: $parameters, fields: $fields, '
      'returnValue: $returnValue)';
}

extension on String {
  String sanitize() {
    var string = replaceAll(r'\_', ' ')
        .replaceAllMapped(
            RegExp(r'\.([A-Z])'), (match) => '. ${match.group(1)}')
        .replaceFirst(RegExp(r'\. \(\w+\)$'), '.')
        .replaceFirst(RegExp(r'^Deprecated. (IShellService )?'), '')
        .replaceFirst(RegExp(r'^A callback function prototype'),
            'An application-defined callback function')
        .replaceFirst(RegExp(r'^Application-defined'), 'An application-defined')
        .replaceFirst(RegExp(r'^\w+ \(\w+(\.h)?\)\sis\s'), '')
        .replaceFirst(
          RegExp(
            r'^(A|An|The)\s\w+\s(\(\w+(\.h)?\)\s)?(function|interface)\s(is\s)?(optionally\s)?',
          ),
          '',
        );
    if (string.length > 1) {
      string = string[0].toUpperCase() + string.substring(1);
    }

    return string;
  }
}
