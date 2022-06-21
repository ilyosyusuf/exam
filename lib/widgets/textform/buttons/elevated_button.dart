import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/widgets/textform/buttons/elevated_button_style.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color borderColor;
  const ElevatedButtonWidget({this.backgroundColor = ColorConst.buttonColor,this.borderColor = Colors.transparent, required this.child,this.height = 30, required this.onPressed,this.width = 360,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyleWidget.elevetedStyle(context: context, width: width, height: height, backgroundcolor: backgroundColor, borderColor: borderColor),
      child: Align(alignment: Alignment.center,child: child),
    );
  }
}