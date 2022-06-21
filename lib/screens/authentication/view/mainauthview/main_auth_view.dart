import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:examapp/screens/authentication/view/pages/signin_view.dart';
import 'package:examapp/screens/authentication/view/pages/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAuthView extends StatelessWidget {
  const MainAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: authScaffold(),
    );
  }

  Scaffold authScaffold() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: ((context, state) {}),
        builder: (context, state) {
          if (state is SignUpState) {
            return SignUpView();
          } else if(state is SignInState){
            return SignInView();
          } else if(state is ForgotPasswordState){
            return Center(child: Text("Forgot Password"));
          }
           else {
            return Container();
          }
        },
      ),
    );
  }
}
