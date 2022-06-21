import 'package:examapp/core/components/check_validator.dart';
import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/constants/pmconst/pm_const.dart';
import 'package:examapp/core/extensions/context_extension.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/widgets/textform/buttons/elevated_button.dart';
import 'package:examapp/widgets/textform/text_form_widget.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  final AuthCubit data;
  final String mainText;
  final String passwordText;
  final String secondText;
  final String haveAccount;
  final Widget? forgotPassword;
  final VoidCallback elevatedButtonOnPressed;
  final VoidCallback changeState;
  final VoidCallback? changeStatePassword;
  const AuthWidget({
    Key? key,
    required this.data,
    required this.mainText,
    required this.passwordText,
    required this.secondText,
    required this.haveAccount,
    required this.elevatedButtonOnPressed,
    required this.changeState,
    this.changeStatePassword,
    this.forgotPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.h * 0.1),
        Text(mainText, style: FStyles.headline2s),
        SizedBox(height: context.h * 0.04),
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField.textField(
                  text: "Email adress", controller: data.emailController),
              SizedBox(height: context.h * 0.03),
              MyTextField.textField(
                  text: passwordText, controller: data.passwordController),
            ],
          ),
        ),
        Padding(
          padding: PMconst.extraSmall,
          child: SizedBox(
              height: context.h * 0.04,
              width: context.h,
              child: InkWell(
                onTap: changeStatePassword,
                child: forgotPassword,
              )),
        ),
        ElevatedButtonWidget(
            height: context.h * 0.07,
            width: context.w,
            child: Text(mainText, style: FStyles.headline3s),
            onPressed: elevatedButtonOnPressed),
        SizedBox(height: context.h * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: changeState,
              child: Text(
                secondText,
                style: FStyles.headline4sbold,
              ),
            ),
            Text(
              haveAccount,
              style: FStyles.headline4text,
            )
          ],
        ),
        SizedBox(height: context.h * 0.03),
        Row(
          children: [
            const Expanded(
                child: Divider(
              thickness: 1,
              color: ColorConst.formFieldColor,
            )),
            SizedBox(width: context.w * 0.05),
            const Text("or continue with"),
            SizedBox(width: context.w * 0.05),
            const Expanded(
                child: Divider(
              thickness: 1,
            ))
          ],
        ),
        SizedBox(height: context.h * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            data.socialAccounts[0],
            data.socialAccounts[1],
            data.socialAccounts[2],
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              "By clicking \"$mainText\" button, you accept the ",
              style: FStyles.headline5text,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                InkWell(child: Text("Terms of Use")),
                Text(" and ", style: FStyles.headline5text),
                InkWell(child: Text("Privacy Policy")),
              ],
            ),
            SizedBox(height: context.h * 0.01),
          ],
        )
      ],
    );
  }
}
