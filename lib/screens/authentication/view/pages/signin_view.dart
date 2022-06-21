import 'package:animate_do/animate_do.dart';
import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/constants/pmconst/pm_const.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:examapp/screens/authentication/view/widgets/auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return signInScaffold(context);
  }

  Scaffold signInScaffold(BuildContext context) {
    var data = context.watch<AuthCubit>();
    var dataFunctions = context.read<AuthCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConst.kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: FadeInRight(
          child: Padding(
            padding: PMconst.small,
            child: AuthWidget(
              data: data,
              mainText: "Log In",
              passwordText: "Your Password",
              secondText: "Sign Up,",
              haveAccount: " if you have not registered yet",
              forgotPassword: Text("Forgot Password?",
                  style: FStyles.headline5text, textAlign: TextAlign.end),
              changeStatePassword: () {
                dataFunctions.changeState(ForgotPasswordState());
              },
              elevatedButtonOnPressed: () {},
              changeState: () {
                dataFunctions.changeState(SignUpState());
              },
            ),
          ),
        ),
      ),
    );
  }
}
