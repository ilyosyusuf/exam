import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/constants/font/radius_const.dart';
import 'package:flutter/material.dart';

class ButtonStyleWidget {
  static elevetedStyle({required double  width,required double height,required BuildContext context, Color backgroundcolor = ColorConst.buttonColor, Color borderColor = Colors.transparent}) {
    return ElevatedButton.styleFrom(
      elevation: 0,
        textStyle: FStyles.headline3s,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusConst.small)),
        primary: backgroundcolor,
        side: BorderSide(color: borderColor),
        fixedSize: Size(width, height));
  }

}