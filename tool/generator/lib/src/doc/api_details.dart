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
  // TODO(halildurmus): Refactor this method to use a more efficient approach.
  String sanitize() {
    var string = replaceAll(r'\_', ' ')
        .replaceAll(r'B�zier', 'Bézier')
        .replaceAll(r'�', '—')
        .replaceAllMapped(RegExp(r'(\w)\.([A-Z])'),
            (match) => '${match.group(1)}. ${match.group(2)}')
        .replaceFirst(RegExp(r'\.\s\(\w+\)$'), '.')
        .replaceAll('Note\u{00a0}', '**Note**:')
        .replaceAll('\u{00a0}', ' ')
        .replaceFirst(RegExp(r'^Deprecated. (IShellService )?'), '')
        .replaceFirst(RegExp(r'^The IpRenewAddressfunction'),
            'The IpRenewAddress function')
        .replaceFirst(
            RegExp(
                r'^A callback function, which you define in your application,'),
            'An application-defined callback function')
        .replaceFirst(RegExp(r'^A callback prototype'),
            'An application-defined callback function')
        .replaceFirst(RegExp(r'^A callback function prototype'),
            'An application-defined callback function')
        .replaceFirst(
            RegExp(r'^\w+\sfunction\sis\sa\scallback\sfunction\sprototype'),
            'An application-defined callback function')
        .replaceFirst(RegExp(r'^Application-defined'), 'An application-defined')
        .replaceFirst(RegExp(r'^Is\sused\s'), 'Used ')
        .replaceFirst(RegExp(r'^\w+\s\(\w+(\.h)?\)\sis\s'), '')
        .replaceFirstMapped(
            RegExp(
                r'^[\w\_\s]+\s(enumeration|function|interface|structure|union)\s(creates|defines|indicates|specifies)'),
            (match) =>
                match.group(2)![0].toUpperCase() + match.group(2)!.substring(1))
        .replaceFirst(
            RegExp(r'^The\s[\w\s\_]+\sspecifies\sthe'), 'Specifies the')
        .replaceFirst(
            RegExp(r'^The\s[\w\s\_]+\s[\w\s\_]+\s\(\w+\.h\)\sstructure\sis\s'),
            '')
        .replaceFirst(
            RegExp(
              r'^(A|An|The)\s\w+\s(\(\w+(\.h)?\)\s)?(macro\s)?(enumeration|function|interface|structure|union)\s(\(\w+(\.h)?\)\s)?(is\s)?(optionally\s)?(type\s)?(values\s)?',
            ),
            '')
        .replaceFirstMapped(
            RegExp(
                r'^(The\s)?[\w\s]+\sstructure\s(begins|contains|describes|identifies|stores)'),
            (match) =>
                match.group(2)![0].toUpperCase() + match.group(2)!.substring(1))
        .replaceFirst(
            RegExp(
                r'^See\sreference\sinformation\sabout\sthe\s[\w\s\_]+\s(function|structure),\swhich\s'),
            '')
        .replaceFirst(RegExp(r'\sFor more information,\ssee\s[\w\s\_]+.'), '');
    if (string.length > 1) {
      string = string[0].toUpperCase() + string.substring(1);
    }
    if (!string.endsWith('.')) {
      string = '$string.';
    }

    return string;
  }
}
