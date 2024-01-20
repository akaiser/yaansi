import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_mode.dart';

/// Extensions to decorate a string with [YaansiColor] and [YaansiMode].
extension StringExt on String {
  String _seq(int open, int reset) => '\x1b[${open}m$this\x1b[${reset}m';

  String _modeSeq(YaansiMode mode) => _seq(mode.open, mode.reset);

  /// Decorates with [YaansiMode.bold].
  String get bold => _modeSeq(YaansiMode.bold);

  /// Decorates with [YaansiMode.italic].
  String get italic => _modeSeq(YaansiMode.italic);

  /// Decorates with [YaansiMode.underline].
  String get underline => _modeSeq(YaansiMode.underline);

  /// Decorates with [YaansiMode.strikethrough].
  String get strikethrough => _modeSeq(YaansiMode.strikethrough);

  String _fgColorSeq(YaansiColor color) => _seq(color.fg, color.fgReset);

  /// Decorates with [YaansiColor.black].
  String get black => _fgColorSeq(YaansiColor.black);

  /// Decorates with [YaansiColor.red].
  String get red => _fgColorSeq(YaansiColor.red);

  /// Decorates with [YaansiColor.green].
  String get green => _fgColorSeq(YaansiColor.green);

  /// Decorates with [YaansiColor.yellow].
  String get yellow => _fgColorSeq(YaansiColor.yellow);

  /// Decorates with [YaansiColor.blue].
  String get blue => _fgColorSeq(YaansiColor.blue);

  /// Decorates with [YaansiColor.magenta].
  String get magenta => _fgColorSeq(YaansiColor.magenta);

  /// Decorates with [YaansiColor.cyan].
  String get cyan => _fgColorSeq(YaansiColor.cyan);

  /// Decorates with [YaansiColor.white].
  String get white => _fgColorSeq(YaansiColor.white);

  String _bgColorSeq(YaansiColor color) => _seq(color.bg, color.bgReset);

  /// Decorates with [YaansiColor.black].
  String get blackBg => _bgColorSeq(YaansiColor.black);

  /// Decorates with [YaansiColor.red].
  String get redBg => _bgColorSeq(YaansiColor.red);

  /// Decorates with [YaansiColor.green].
  String get greenBg => _bgColorSeq(YaansiColor.green);

  /// Decorates with [YaansiColor.yellow].
  String get yellowBg => _bgColorSeq(YaansiColor.yellow);

  /// Decorates with [YaansiColor.blue].
  String get blueBg => _bgColorSeq(YaansiColor.blue);

  /// Decorates with [YaansiColor.magenta].
  String get magentaBg => _bgColorSeq(YaansiColor.magenta);

  /// Decorates with [YaansiColor.cyan].
  String get cyanBg => _bgColorSeq(YaansiColor.cyan);

  /// Decorates with [YaansiColor.white].
  String get whiteBg => _bgColorSeq(YaansiColor.white);
}
