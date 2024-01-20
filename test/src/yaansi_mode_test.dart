import 'package:test/test.dart';
import 'package:yaansi/src/yaansi_mode.dart';

void main() {
  test('$YaansiMode has known values count', () {
    expect(YaansiMode.values, hasLength(4));
  });

  for (final combination in [
    (YaansiMode.bold, 1, 22),
    (YaansiMode.italic, 3, 23),
    (YaansiMode.underline, 4, 24),
    (YaansiMode.strikethrough, 9, 29),
  ]) {
    final (mode, open, reset) = combination;

    test('$mode has expected control values', () {
      expect(mode.open, open);
      expect(mode.reset, reset);
    });
  }
}
