import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/extensions/context_extension.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/widgets/textform/buttons/elevated_button.dart';
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
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConst.kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
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
                      text: "Create new password",
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
              child: Text("Sign Up", style: FStyles.headline3s), onPressed: (){

            }),
            SizedBox(height: context.h * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Text("Log In,", style: FStyles.headline4sbold,),
                ),
                Text(" if you have an account", style: FStyles.headline4text,)
              ],
            ),
            SizedBox(height: context.h * 0.03),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: ColorConst.formFieldColor,
                )),
                SizedBox(width: context.w * 0.05),
                Text("or continue with"),
                SizedBox(width: context.w * 0.05),
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
