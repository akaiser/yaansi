import 'package:yaansi/yaansi.dart';

void main() {
  // extensions
  print('Lorem ipsum'.bold.red);

  // functions
  print(blue(italic('Lorem ipsum')));

  // inline mixing and nesting
  print('${green(' Lorem').bold} ${redBg(' ipsum ').white}'.whiteBg);

  // reusable styling
  const style = YaansiStyle(
    color: YaansiColor.yellow,
    bgColor: YaansiColor.black,
    modes: {YaansiMode.bold, YaansiMode.italic},
  );
  print(style.apply('One'));
  print(style.apply('Two'));
}
