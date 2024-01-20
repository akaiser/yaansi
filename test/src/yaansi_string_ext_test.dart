import 'package:test/test.dart';
import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_mode.dart';
import 'package:yaansi/src/yaansi_string_ext.dart';

void main() {
  test('nesting', () {
    expect(
      'test'.bold.italic.red.whiteBg,
      '\x1B[107m\x1B[91m\x1B[3m\x1B[1mtest\x1B[22m\x1B[23m\x1B[39m\x1B[49m',
    );
  });

  test('inline mixing', () {
    expect(
      '${'bold'.bold} ${'red'.red}'.whiteBg,
      '\x1B[107m\x1B[1mbold\x1B[22m \x1B[91mred\x1B[39m\x1B[49m',
    );
  });

  group('$YaansiMode ext', () {
    for (final combination in [
      ('test'.bold, 1, 22),
      ('test'.italic, 3, 23),
      ('test'.underline, 4, 24),
      ('test'.strikethrough, 9, 29),
    ]) {
      final (decorated, open, reset) = combination;

      test('resulting $decorated contains $open and $reset', () {
        expect(decorated, '\x1B[${open}mtest\x1B[${reset}m');
      });
    }
  });

  group('$YaansiColor fg color ext', () {
    for (final combination in [
      ('test'.black, 90, 39),
      ('test'.red, 91, 39),
      ('test'.green, 92, 39),
      ('test'.yellow, 93, 39),
      ('test'.blue, 94, 39),
      ('test'.magenta, 95, 39),
      ('test'.cyan, 96, 39),
      ('test'.white, 97, 39),
    ]) {
      final (decorated, fg, fgReset) = combination;

      test('resulting $decorated contains $fg and $fgReset', () {
        expect(decorated, '\x1B[${fg}mtest\x1B[${fgReset}m');
      });
    }
  });

  group('$YaansiColor bg color ext', () {
    for (final combination in [
      ('test'.blackBg, 100, 49),
      ('test'.redBg, 101, 49),
      ('test'.greenBg, 102, 49),
      ('test'.yellowBg, 103, 49),
      ('test'.blueBg, 104, 49),
      ('test'.magentaBg, 105, 49),
      ('test'.cyanBg, 106, 49),
      ('test'.whiteBg, 107, 49),
    ]) {
      final (decorated, bg, bgReset) = combination;

      test('resulting $decorated contains $bg and $bgReset', () {
        expect(decorated, '\x1B[${bg}mtest\x1B[${bgReset}m');
      });
    }
  });
}
