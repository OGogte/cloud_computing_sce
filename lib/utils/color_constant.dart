
import 'package:flutter/material.dart';

class ColorConstant{
  static Color primary = fromHex("#315034");
  static Color primaryLight = fromHex("#3A5E3E");
  static Color secondary = fromHex("#6F8E6A");
  static Color bgDark = fromHex("#A3E9AA");
  static Color bgLight = fromHex("#D4EAD1");
  static Color customwhite = fromHex("#F4F4F9");

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
  static LinearGradient greenWhite = const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0b5d1e), Color(0x00000000)],);
}