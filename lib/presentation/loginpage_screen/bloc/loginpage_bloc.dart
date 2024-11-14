import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../models/loginpage_model.dart';
part 'loginpage_event.dart';
part 'loginpage_state.dart';

/// A bloc that manages the state of a Loginpage according to the event that is dispatched to it.
class LoginpageBloc extends Bloc<LoginpageEvent, LoginpageState> {
  LoginpageBloc(LoginpageState initialState) : super(initialState) {
    on<LoginpageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginpageInitialEvent event,
    Emitter<LoginpageState> emit,
  ) async {
    emit(
      state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
      ),
    );
  }
}
