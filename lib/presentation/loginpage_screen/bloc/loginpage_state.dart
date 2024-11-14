part of 'loginpage_bloc.dart';

/// Represents the state of Loginpage in the application.

// ignore_for_file: must_be_immutable
class LoginpageState extends Equatable {
  LoginpageState(
      {this.emailController, this.passwordController, this.loginpageModelObj});

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginpageModel? loginpageModelObj;

  @override
  List<Object?> get props =>
      [emailController, passwordController, loginpageModelObj];
  LoginpageState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LoginpageModel? loginpageModelObj,
  }) {
    return LoginpageState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      loginpageModelObj: loginpageModelObj ?? this.loginpageModelObj,
    );
  }
}
