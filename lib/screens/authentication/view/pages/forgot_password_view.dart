import 'package:animate_do/animate_do.dart';
import 'package:examapp/core/constants/colors/color_const.dart';
import 'package:examapp/core/constants/font/font_style.dart';
import 'package:examapp/core/constants/pmconst/pm_const.dart';
import 'package:examapp/core/extensions/context_extension.dart';
import 'package:examapp/screens/authentication/cubit/auth_cubit.dart';
import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:examapp/screens/authentication/view/widgets/auth_widget.dart';
import 'package:examapp/widgets/textform/buttons/elevated_button.dart';
import 'package:examapp/widgets/textform/text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.h * 0.1),
        Text("", style: FStyles.headline2s),
        SizedBox(height: context.h * 0.04),
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField.textField(
                  text: "Email adress", controller: data.emailController),

            ],
          ),
        ),
        SizedBox(height: context.h * 0.01),
        SizedBox(
          child: Text("Enter your registered email. We’ll send you your password", style: FStyles.headline5text,),
        ),
                      SizedBox(height: context.h * 0.04),
        Padding(
          padding: PMconst.extraSmall,
          child: SizedBox(
              height: context.h * 0.04,
              width: context.h,
              ),
        ),
        ElevatedButtonWidget(
            height: context.h * 0.07,
            width: context.w,
            child: Text("Send my password", style: FStyles.headline3s),
            onPressed: (){
              
            }),
        SizedBox(height: context.h * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                dataFunctions.changeState(SignUpState());
              },
              child: Text(
                "Sign Up",
                style: FStyles.headline4sbold,
              ),
            ),
            Text(
              " if you have not registered yet",
              style: FStyles.headline4text,
            )
          ],
        ),
        
        const Spacer(),
      ],
    )
          ),
        ),
      ),
    );
  }
}