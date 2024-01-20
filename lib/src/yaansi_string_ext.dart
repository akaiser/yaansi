import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_mode.dart';

/// Extensions to decorate a string with [YaansiColor] and [YaansiMode].
extension StringExt on String {
  String _seq(int open, int reset) => '\x1b[${open}m$this\x1b[${reset}m';

  // @formatter:off
  // modes
  String _modeSeq(YaansiMode mode) => _seq(mode.open, mode.reset);
  String get bold => _modeSeq(YaansiMode.bold);
  String get italic => _modeSeq(YaansiMode.italic);
  String get underline => _modeSeq(YaansiMode.underline);
  String get strikethrough => _modeSeq(YaansiMode.strikethrough);

  // fg colors
  String _fgColorSeq(YaansiColor color) => _seq(color.fg, color.fgReset);
  String get black => _fgColorSeq(YaansiColor.black);
  String get red => _fgColorSeq(YaansiColor.red);
  String get green => _fgColorSeq(YaansiColor.green);
  String get yellow => _fgColorSeq(YaansiColor.yellow);
  String get blue => _fgColorSeq(YaansiColor.blue);
  String get magenta => _fgColorSeq(YaansiColor.magenta);
  String get cyan => _fgColorSeq(YaansiColor.cyan);
  String get white => _fgColorSeq(YaansiColor.white);

  // bg colors
  String _bgColorSeq(YaansiColor color) => _seq(color.bg, color.bgReset);
  String get blackBg => _bgColorSeq(YaansiColor.black);
  String get redBg => _bgColorSeq(YaansiColor.red);
  String get greenBg => _bgColorSeq(YaansiColor.green);
  String get yellowBg => _bgColorSeq(YaansiColor.yellow);
  String get blueBg => _bgColorSeq(YaansiColor.blue);
  String get magentaBg => _bgColorSeq(YaansiColor.magenta);
  String get cyanBg => _bgColorSeq(YaansiColor.cyan);
  String get whiteBg => _bgColorSeq(YaansiColor.white);
  // @formatter:on
}
