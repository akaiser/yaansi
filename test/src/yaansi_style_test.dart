import 'package:test/test.dart';
import 'package:yaansi/src/yaansi_color.dart';
import 'package:yaansi/src/yaansi_mode.dart';
import 'package:yaansi/src/yaansi_style.dart';

void main() {
  test('applies color', () {
    expect(
      const YaansiStyle(color: YaansiColor.red).apply('test'),
      '\x1B[91mtest\x1B[0m',
    );
  });

  test('applies bgColor', () {
    expect(
      const YaansiStyle(bgColor: YaansiColor.red).apply('test'),
      '\x1B[101mtest\x1B[0m',
    );
  });

  test('applies one mode', () {
    expect(
      const YaansiStyle(modes: {YaansiMode.bold}).apply('test'),
      '\x1B[1mtest\x1B[0m',
    );
  });

  test('applies two modes', () {
    const style = YaansiStyle(modes: {YaansiMode.bold, YaansiMode.italic});

    expect(
      style.apply('test'),
      '\x1B[1;3mtest\x1B[0m',
    );
  });

  test('applies color, bgColor and two modes', () {
    const style = YaansiStyle(
      color: YaansiColor.red,
      bgColor: YaansiColor.white,
      modes: {YaansiMode.bold, YaansiMode.italic},
    );

    expect(
      style.apply('test'),
      '\x1B[1;3;91;107mtest\x1B[0m',
    );
  });
}
