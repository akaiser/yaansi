import 'package:test/test.dart';
import 'package:yaansi/src/yaansi_color.dart';

void main() {
  test('$YaansiColor has known values count', () {
    expect(YaansiColor.values, hasLength(8));
  });

  for (final combination in [
    (YaansiColor.black, 90, 39, 100, 49),
    (YaansiColor.red, 91, 39, 101, 49),
    (YaansiColor.green, 92, 39, 102, 49),
    (YaansiColor.yellow, 93, 39, 103, 49),
    (YaansiColor.blue, 94, 39, 104, 49),
    (YaansiColor.magenta, 95, 39, 105, 49),
    (YaansiColor.cyan, 96, 39, 106, 49),
    (YaansiColor.white, 97, 39, 107, 49),
  ]) {
    final (color, fg, fgReset, bg, bgReset) = combination;

    test('$color has expected control values', () {
      expect(color.fg, fg);
      expect(color.fgReset, fgReset);
      expect(color.bg, bg);
      expect(color.bgReset, bgReset);
    });
  }
}
