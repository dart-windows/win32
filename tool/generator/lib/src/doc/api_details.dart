// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extension/string.dart';

/// Represents detailed documentation for an API, including its description,
/// remarks, return value, parameters, fields, and help link.
final class ApiDetails {
  /// Creates an instance of `ApiDetails` with the specified parameters.
  const ApiDetails({
    required this.apiName,
    required this.description,
    this.helpLink,
    this.remarks,
    this.returnValue,
    this.parameters = const {},
    this.fields = const {},
  });

  // The API name.
  final String apiName;

  /// The URL that provides comprehensive documentation for this API.
  final String? helpLink;

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

  /// Creates an instance of `ApiDetails` from an [apiName] and [list] of
  /// dynamic values.
  ///
  /// This factory constructor is used to create an [ApiDetails] object from an
  /// external data source, such as MessagePack.
  factory ApiDetails.create(String apiName, List<dynamic> list) {
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
        apiName: apiName,
        helpLink: helpLink,
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
        .replaceAllMapped(
            RegExp(r'&quot;(\w+)&quot;'), (match) => '`${match.group(1)}`')
        .replaceAllMapped(RegExp(r'\s(?!\()([a-z]+)\.([A-Z]\w+)(?!\))'),
            (match) => ' ${match.group(1)}. ${match.group(2)}')
        .replaceAll('Note\u{00a0}', '**Note:**')
        .replaceAll('\u{00a0}', ' ')
        .replaceFirst(RegExp(r'\s.$'), '.')
        .replaceFirst(RegExp(r'\.\s\([\w:\._\s]+\)$'), '.')
        .replaceFirst(RegExp(r'^Deprecated. (I[A-Z][a-z]\w+\s)?'), '')
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
            (match) => match.group(2)!.capitalize())
        .replaceFirst(
            RegExp(r'^The\s[\w\s\_]+\sspecifies\sthe'), 'Specifies the')
        .replaceFirst(
            RegExp(r'^The\s[\w\s\_]+\s[\w\s\_]+\s\(\w+\.h\)\sstructure\sis\s'),
            '')
        .replaceFirst(
            RegExp(
              r'^(A|An|The)\s[\w:]+\s(\(\w+(\.h)?\)\s)?(macro\s)?(enumeration|function|interface|method|property|structure|union)\s(\(\w+(\.h)?\)\s)?(is\s)?(optionally\s)?(type\s)?(values\s)?',
            ),
            '')
        .replaceFirstMapped(
            RegExp(
                r'^(The\s)?[\w\s]+\sstructure\s(begins|contains|describes|identifies|stores)'),
            (match) => match.group(2)!.capitalize())
        .replaceFirst(
            RegExp(
                r'^See\sreference\sinformation\sabout\sthe\s[\w\s\_]+\s(function|structure),\swhich\s'),
            '')
        .replaceFirst(RegExp(r'\sFor more information,\ssee\s[\w\s\_]+.'), '')
        .replaceAllMapped(
            RegExp(
                r'\[(\*\*)?([\w\s_\-\*\\]+)(\*\*)?\]\(([\w\s_\(\)=\.\-\*\/#]+)\)'),
            (match) => '`${match.group(2)}`')
        .capitalize();
    if (!string.endsWith('.')) {
      string = '$string.';
    }

    return string;
  }
}
