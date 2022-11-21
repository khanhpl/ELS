import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color black9007e = fromHex('#7e000000');

  static Color BG = fromHex('EEE2FF');

  static Color bluegray50 = fromHex('#efeff4');

  static Color whiteA7007e = fromHex('#7effffff');

  static Color blueA400 = fromHex('#1877f2');

  static Color purple90063 = fromHex('#63512678');

  static Color purple90000 = fromHex('#00512678');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f9f9f9');

  static Color amberA400 = fromHex('#ffcc00');

  static Color green400 = fromHex('#4cd964');

  static Color black90087 = fromHex('#87000000');

  static Color black90089 = fromHex('#89000000');

  static Color black900 = fromHex('#000000');

  static Color black901 = fromHex('#030303');

  static Color purple900 = fromHex('#512678');

  static Color pink300 = fromHex('#ff61ad');

  static Color black9002a = fromHex('#2a000000');

  static Color gray700 = fromHex('#666666');

  static Color gray400 = fromHex('#c8c7cc');

  static Color gray301 = fromHex('#e0e0e0');

  static Color gray800 = fromHex('#3a3a3a');

  static Color bluegray100 = fromHex('#d8d8d8');

  static Color gray7007e = fromHex('#7e666666');

  static Color gray300 = fromHex('#e5e5e5');

  static Color bluegray900 = fromHex('#333333');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color bluegray402 = fromHex('#858e99');

  static Color bluegray401 = fromHex('#8c8c8c');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color onboard1 = fromHex('C8C7CC');
  static Color onboard2 = fromHex('ACA3B8');
  static Color onboard3 = fromHex('8D77A3');
  static Color onboard4 = fromHex('82689A');
  static Color onboard5 = fromHex('6C4A8B');
  static Color onboard6 = fromHex('5D3781');
  static Color onboard7 = fromHex('#522779');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
