class AuthStates {}

class AuthIntial extends AuthStates {}

/////SignUp///
///
class SignUpSuccessState extends AuthStates {}

class SignUpErrorState extends AuthStates {
  final String error;

  SignUpErrorState({required this.error});
}

class SignUpLoadingState extends AuthStates {}

//// loginnnn///
class LoginSuccessState extends AuthStates {}

class LoginErrorState extends AuthStates {
  final String error;

  LoginErrorState({required this.error});
}

class LoginLoadingState extends AuthStates {}
