import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color blueColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color lightGrey = Colors.grey.shade600;
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17, color: Colors.blueGrey, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = const TextStyle(
      fontSize: 14, color: Colors.blueGrey, fontWeight: FontWeight.w500);
}
