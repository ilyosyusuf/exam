import 'package:examapp/screens/authentication/state/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(SignUpState());
  
  changeState(AuthState state) {
    emit(state);
  }
}