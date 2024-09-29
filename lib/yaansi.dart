/// Yet another ANSI implementation! A utility package to color your terminal.
///
/// ## Usage
///
/// Install:
/// ```bash
/// dart pub add yaansi
/// ```
///
/// Use:
/// ```dart
/// import 'package:yaansi/yaansi.dart';
///
/// void main() {
///   // extensions
///   print('Lorem ipsum'.bold.red);
///
///   // functions
///   print(blue(italic('Lorem ipsum')));
///
///   // inline mixing and nesting
///   print('${green(' Lorem').bold} ${redBg(' ipsum ').white}'.whiteBg);
///
///   // reusable styling
///   const style = YaansiStyle(
///     color: YaansiColor.yellow,
///     bgColor: YaansiColor.black,
///     modes: {YaansiMode.bold, YaansiMode.italic},
///   );
///   print(style.apply('One'));
///   print(style.apply('Two'));
/// }
/// ```
library;

export 'src/yaansi_color.dart';
export 'src/yaansi_func.dart';
export 'src/yaansi_mode.dart';
export 'src/yaansi_string_ext.dart';
export 'src/yaansi_style.dart';
