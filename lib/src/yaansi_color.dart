/// Basic colors.
enum YaansiColor {
  black._(90, 100),
  red._(91, 101),
  green._(92, 102),
  yellow._(93, 103),
  blue._(94, 104),
  magenta._(95, 105),
  cyan._(96, 106),
  white._(97, 107);

  const YaansiColor._(this.fg, this.bg);

  final int fg;
  final int fgReset = 39;
  final int bg;
  final int bgReset = 49;
}
