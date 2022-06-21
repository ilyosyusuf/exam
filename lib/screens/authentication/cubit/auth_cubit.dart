import 'package:examapp/core/constants/icons/icon_const.dart';
import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(SignUpState());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List socialAccounts = [IconConst.google, IconConst.facebook, IconConst.apple];

  changeState(AuthState state) {
    emit(state);
  }
}