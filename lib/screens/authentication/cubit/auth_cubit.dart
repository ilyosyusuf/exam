import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(SignUpState());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  changeState(AuthState state) {
    emit(state);
  }
}