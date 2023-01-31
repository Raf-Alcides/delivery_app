import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'mplus1';

  TextStyle get textLigth => TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: font,
      );
  TextStyle get textRegular => TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: font,
      );
  TextStyle get textMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: font,
      );
  TextStyle get textBold => TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: font,
      );
  TextStyle get textExtraBold => TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: font,
      );
  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
  
}


extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}

