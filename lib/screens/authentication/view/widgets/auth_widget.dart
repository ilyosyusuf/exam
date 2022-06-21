
import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/extensions/context_extension.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/widgets/textform/buttons/elevated_button.dart';
import 'package:examapp/widgets/textform/text_form_widget.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  final AuthCubit data;
  const AuthWidget({
    Key? key,
    required this.data,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.h * 0.1),
        Text("Sign Up", style: FStyles.headline2s),
        SizedBox(height: context.h * 0.04),
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField.textField(
                  text: "Email adress",
                  controller: data.emailController),
              SizedBox(height: context.h * 0.03),
              MyTextField.textField(
                  text: "Create new password",
                  controller: data.passwordController),
            ],
          ),
        ),
        SizedBox(height: context.h * 0.06),
        ElevatedButtonWidget(
            height: context.h * 0.07,
            width: context.w,
            child: Text("Sign Up", style: FStyles.headline3s),
            onPressed: () {}),
        SizedBox(height: context.h * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            InkWell(
              child: Text(
                "Log In,",
                style: FStyles.headline4sbold,
              ),
            ),
            Text(
              " if you have an account",
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
            Text("or continue with"),
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
            const Text(
              "By clicking \"Sign Up\" button, you accept the ",
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
