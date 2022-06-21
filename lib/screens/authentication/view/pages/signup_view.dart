import 'package:animate_do/animate_do.dart';
import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/pmconst/pm_const.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:examapp/screens/authentication/view/widgets/auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return signupScaffold(context);
  }

  Scaffold signupScaffold(BuildContext context) {
    var data = context.watch<AuthCubit>();
    var dataFunctions = context.read<AuthCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConst.kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: FadeInLeft(
          child: Padding(
            padding: PMconst.small,
            child: AuthWidget(
              data: data,
              mainText: "Sign Up",
              passwordText: "Create new password",
              secondText: "Log In,",
              haveAccount: " if you have an account",
              elevatedButtonOnPressed: () {},
              changeState: () {
                dataFunctions.changeState(SignInState());
              },
            ),
          ),
        ),
      ),
    );
  }
}
