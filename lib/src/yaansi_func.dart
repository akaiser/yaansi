import 'package:yaansi/src/yaansi_string_ext.dart';

// @formatter:off
// modes
String bold(String message) => message.bold;
String italic(String message) => message.italic;
String underline(String message) => message.underline;
String strikethrough(String message) => message.strikethrough;

// fg colors
String black(String message) => message.black;
String red(String message) => message.red;
String green(String message) => message.green;
String yellow(String message) => message.yellow;
String blue(String message) => message.blue;
String magenta(String message) => message.magenta;
String cyan(String message) => message.cyan;
String white(String message) => message.white;

// bg colors
String blackBg(String message) => message.blackBg;
String redBg(String message) => message.redBg;
String greenBg(String message) => message.greenBg;
String yellowBg(String message) => message.yellowBg;
String blueBg(String message) => message.blueBg;
String magentaBg(String message) => message.magentaBg;
String cyanBg(String message) => message.cyanBg;
String whiteBg(String message) => message.whiteBg;
// @formatter:on
