import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_mode.dart';

/// Class meant to be used for reusable styling.
///
/// Provided [color], [bgColor] and [modes] will be reset at the end of line.
class YaansiStyle {
  const YaansiStyle({this.color, this.bgColor, this.modes});

  final YaansiColor? color;
  final YaansiColor? bgColor;
  final Set<YaansiMode>? modes;

  static const //
      _escape = '\x1b',
      _reset = '$_escape[0m';

  String get _args => {
        ...?modes?.map((mode) => mode.open),
        color?.fg,
        bgColor?.bg,
      }.nonNulls.join(';');

  /// Decorates a [message] with provided [YaansiColor] and [YaansiMode]s.
  String apply(String message) => '$_escape[${_args}m$message$_reset';
}
