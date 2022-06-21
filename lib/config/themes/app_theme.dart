import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static get apptheme => ThemeData(
    useMaterial3: true,
    backgroundColor: ColorConst.kPrimaryColor,
    scaffoldBackgroundColor: ColorConst.kPrimaryColor,
    fontFamily: 'InterRegular',
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorConst.kPrimaryColor
    )
  );
}