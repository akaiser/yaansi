import 'package:test/test.dart';
import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_func.dart';
import 'package:yaansi/src/yaansi_mode.dart';

void main() {
  test('nesting', () {
    expect(
      whiteBg(red(italic(bold('test')))),
      '\x1B[107m\x1B[91m\x1B[3m\x1B[1mtest\x1B[22m\x1B[23m\x1B[39m\x1B[49m',
    );
  });

  test('inline mixing', () {
    expect(
      whiteBg('${bold('bold')} ${red('red')}'),
      '\x1B[107m\x1B[1mbold\x1B[22m \x1B[91mred\x1B[39m\x1B[49m',
    );
  });

  group('$YaansiMode func', () {
    for (final combination in [
      (bold('test'), 1, 22),
      (italic('test'), 3, 23),
      (underline('test'), 4, 24),
      (strikethrough('test'), 9, 29),
    ]) {
      final (decorated, open, reset) = combination;

      test('resulting $decorated contains $open and $reset', () {
        expect(decorated, '\x1B[${open}mtest\x1B[${reset}m');
      });
    }
  });

  group('$YaansiColor fg color func', () {
    for (final combination in [
      (black('test'), 90, 39),
      (red('test'), 91, 39),
      (green('test'), 92, 39),
      (yellow('test'), 93, 39),
      (blue('test'), 94, 39),
      (magenta('test'), 95, 39),
      (cyan('test'), 96, 39),
      (white('test'), 97, 39),
    ]) {
      final (decorated, fg, fgReset) = combination;

      test('resulting $decorated contains $fg and $fgReset', () {
        expect(decorated, '\x1B[${fg}mtest\x1B[${fgReset}m');
      });
    }
  });

  group('$YaansiColor bg color func', () {
    for (final combination in [
      (blackBg('test'), 100, 49),
      (redBg('test'), 101, 49),
      (greenBg('test'), 102, 49),
      (yellowBg('test'), 103, 49),
      (blueBg('test'), 104, 49),
      (magentaBg('test'), 105, 49),
      (cyanBg('test'), 106, 49),
      (whiteBg('test'), 107, 49),
    ]) {
      final (decorated, bg, bgReset) = combination;

      test('resulting $decorated contains $bg and $bgReset', () {
        expect(decorated, '\x1B[${bg}mtest\x1B[${bgReset}m');
      });
    }
  });
}
