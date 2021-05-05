import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double width;
  static double height;
  static double titleSize;
  static double fontSize;
  static double mFontSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
    titleSize = _mediaQueryData.size.width * 0.08;
    fontSize = _mediaQueryData.size.width * 0.04;
    mFontSize = _mediaQueryData.size.width * 0.06;
  }
}
