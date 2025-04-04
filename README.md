# yaansi

Yet another ANSI implementation! A utility package to color your terminal.

Notable source: https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797

## Usage

### Installation

```bash
dart pub add yaansi
```

### Example:

```dart
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
 ```

![example output](https://raw.githubusercontent.com/akaiser/yaansi/main/images/example.png)

## Notes

- Supports only basic colors and modes.

## License

See the [LICENSE](LICENSE) file.

## Version history

See the [CHANGELOG.md](CHANGELOG.md) file.
