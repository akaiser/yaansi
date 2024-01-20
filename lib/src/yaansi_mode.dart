/// Basic Modes.
enum YaansiMode {
  bold._(1, 22),
  italic._(3, 23),
  underline._(4, 24),
  strikethrough._(9, 29);

  const YaansiMode._(this.open, this.reset);

  final int open;
  final int reset;
}
