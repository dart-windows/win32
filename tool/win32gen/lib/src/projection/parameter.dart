import 'safenames.dart';
import 'type.dart';

/// A parameter.
///
/// Parameters are a tuple of a type and a name.
class ParameterProjection {
  const ParameterProjection(this.name, this.type);

  final String name;
  final TypeProjection type;

  String get ffiProjection =>
      '${safeTypenameForString(type.nativeType)} ${safeIdentifierForString(name)}';

  String get dartProjection =>
      '${safeTypenameForString(type.dartType)} ${safeIdentifierForString(name)}';

  String get identifier => safeIdentifierForString(name);

  @override
  String toString() => '$name (${type.nativeType})';
}
