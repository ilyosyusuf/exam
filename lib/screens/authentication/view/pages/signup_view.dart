import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/extensions/context_extension.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/widgets/textform/text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return signupScaffold(context);
  }

  Scaffold signupScaffold(BuildContext context) {
    var data = context.watch<AuthCubit>();
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.h * 0.15),
            Text("Sign Up", style: FStyles.headline2s),
            SizedBox(height: context.h * 0.04),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyTextField.textField(
                      text: "Create new password",
                      controller: data.emailController),
                  SizedBox(height: context.h * 0.03),
                  MyTextField.textField(
                      text: "Create new password",
                      controller: data.passwordController),
                ],
              ),
            ),
            const SizedBox(height: 65),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Text("or continue with"),
                Expanded(
                    child: Divider(
                  thickness: 1,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
