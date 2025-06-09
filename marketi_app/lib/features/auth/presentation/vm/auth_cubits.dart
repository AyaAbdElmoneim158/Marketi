import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/connection_manager.dart';
import '../../../../core/utils/function_helper.dart';
import '../../data/models/signin_request.dart';
import '../../data/models/signup_request.dart';
import '../../data/repo/auth_repo.dart';
import 'auth_states.dart';

////! Septate SignInCubit/SignUpCubit at modules
class SignInCubit extends Cubit<AuthStates> {
  final AuthRepo authRepo;
  SignInCubit(this.authRepo) : super(SignInInitState());
  static SignInCubit get(context) => BlocProvider.of(context);
  final signInEmailController = TextEditingController();
  final signInPasswordController = TextEditingController();
  final signInFormKey = GlobalKey<FormState>();

  void signIn() async {
    closeKeyBoard();
    if (!signInFormKey.currentState!.validate()) return;
    emit(SignInLoading());
    if (!await ConnectionManager.checkConnection()) {
      emit(NoInternetConnectionState());
      return;
    }
    final body = SignInRequest()
      ..email = signInEmailController.text.trim()
      ..password = signInPasswordController.text.trim();
    final response = await authRepo.signIn(body: body);
    response.fold(
      (failure) => emit(SignInFailure(failure)),
      (signInModel) => emit(SignInSuccess(signInModel)),
    );
  }

  @override
  Future<void> close() {
    signInEmailController.dispose();
    signInPasswordController.dispose();
    return super.close();
  }
}

class SignUpCubit extends Cubit<AuthStates> {
  final AuthRepo authRepo;
  SignUpCubit(this.authRepo) : super(SignUpInitState());
  static SignUpCubit get(context) => BlocProvider.of(context);

  final signUpFullNameController = TextEditingController();
  final signUpUserNameController = TextEditingController();
  final signUpPhoneController = TextEditingController();
  final signUpEmailController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpConfirmPasswordController = TextEditingController();
  final signUpFormKey = GlobalKey<FormState>();

  void signUp() async {
    closeKeyBoard();
    if (!signUpFormKey.currentState!.validate()) return;
    emit(SignUpLoading());
    if (!await ConnectionManager.checkConnection()) {
      emit(NoInternetConnectionState());
      return;
    }
    final body = SignUpRequest()
      ..name = signUpUserNameController.text.trim()
      ..phone = signUpPhoneController.text.trim()
      ..email = signUpEmailController.text.trim()
      ..confirmPassword = signUpConfirmPasswordController.text.trim()
      ..password = signUpPasswordController.text.trim();

    final response = await authRepo.signUp(body: body);
    response.fold(
      (failure) => emit(SignUpFailure(failure)),
      (signInModel) => emit(SignUpSuccess(signInModel)),
    );
  }

  @override
  Future<void> close() {
    signUpUserNameController.dispose();
    signUpPhoneController.dispose();
    signUpConfirmPasswordController.dispose();
    signUpEmailController.dispose();
    signUpPasswordController.dispose();
    return super.close();
  }
}

// sendVerificationEmailCode
// verifyCode
// resetPassword
