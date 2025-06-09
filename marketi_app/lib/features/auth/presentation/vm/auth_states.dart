import 'package:marketi_app/features/auth/data/models/signup_response.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/signin_response.dart';

abstract class AuthStates {}

class SignInInitState extends AuthStates {}

class NoInternetConnectionState extends AuthStates {}

class SignInSuccess extends AuthStates {
  final SignInResponse signInModel;
  SignInSuccess(this.signInModel);
}

class SignUpInitState extends AuthStates {}

class SignInLoading extends AuthStates {}

class SignInFailure extends AuthStates {
  final Failure error;
  SignInFailure(this.error);
}

class SignUpSuccess extends AuthStates {
  final SignUpResponse signUpModel;
  SignUpSuccess(this.signUpModel);
}

class SignUpLoading extends AuthStates {}

class SignUpFailure extends AuthStates {
  final Failure error;
  SignUpFailure(this.error);
}

/*
class Success extends AuthStates {
  final SignInResponse signInModel;
  Success({required this.signInModel});
}

class Loading extends AuthStates {}

class Failure extends AuthStates {
  final ErrorMarketiModel errorModel;
  Failure({required this.errorModel});
}

 */
