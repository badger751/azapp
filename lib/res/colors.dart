import 'package:flutter/material.dart';

class AppColors {
  static Color whiteColor = Colors.white;
  static Color backgroundColor = Colors.black;

  //font Colors
  static Color hintFontColor = const Color(0xffD9D9D9).withOpacity(0.2);
  static const purpleLightColor = Color(0xffBD88FF);
  static Color buttonTextColor = Colors.black;

  ///Containers colors
  static Color containerBackgroundColor = const Color(0xff1A1A1A).withOpacity(0.5);
  static Color darkConatinerColor = const Color(0xff1A1A1A);
  static Color selectedContainerColr = const Color(0xffd9d9d9).withOpacity(0.5);

  //Gradient Colors

  static List<Color> chatScreenBackgroundGradient = [
    Colors.black.withOpacity(0.001),
    Colors.black.withOpacity(0.001),
    Colors.black.withOpacity(0.03),
    Colors.black.withOpacity(0.04),
    Colors.black.withOpacity(0.05),
    Colors.black.withOpacity(0.06),
    Colors.black.withOpacity(0.1),
    Colors.black.withOpacity(0.2),
    Colors.black.withOpacity(0.3),
    Colors.black.withOpacity(0.5),
    Colors.black.withOpacity(0.55),
    Colors.black.withOpacity(0.6),
    Colors.black.withOpacity(0.65),
    Colors.black.withOpacity(0.7),
    Colors.black.withOpacity(0.75),
    Colors.black.withOpacity(0.8),
  ];

  static List<Color> radioButtonGradient = [
    Colors.white.withOpacity(0.5),
    Colors.white.withOpacity(0.4),
    Colors.white.withOpacity(0.45),
    Colors.white.withOpacity(0.5),
  ];
}
