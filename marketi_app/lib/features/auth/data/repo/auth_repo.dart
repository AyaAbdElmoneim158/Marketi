import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:marketi_app/core/api/api_consumer.dart';
import 'package:marketi_app/features/auth/data/models/signin_request.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/errors/error_marketi_model.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/cache_helper.dart';
import '../models/reset_password_request.dart';
import '../models/reset_password_response.dart';
import '../models/send_verification_email_code.dart';
import '../models/send_verification_email_code_response.dart';
import '../models/signin_response.dart';
import '../models/signup_request.dart';
import '../models/signup_response.dart';
import '../models/verify_code_request.dart';
import '../models/verify_code_response.dart';

class AuthRepo {
  final ApiConsumer api;
  AuthRepo({required this.api});

  Future<Either<Failure, SignInResponse>> signIn({required SignInRequest body}) async {
    try {
      final response = await api.post(EndPoint.signIn, data: body.toJson()) as Map<String, dynamic>;
      final right = SignInResponse.fromJson(response);
      await CacheHelper().saveData(key: StorageKeys.token, value: right.token);
      return Right(right);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errModel));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }
// DartError: TypeError: Instance of 'ServerException': type 'ServerException' is not a subtype of type 'Map<String, dynamic>'

  Future<Either<Failure, SignUpResponse>> signUp({required SignUpRequest body}) async {
    try {
      final response = await api.post(EndPoint.signUp, data: body.toJson()) as Map<String, dynamic>;
      final right = SignUpResponse.fromJson(response);
      return Right(right);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errModel));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
    /* catch (e) {
      final l = e as Map<String, dynamic>;
      return Left(ErrorMarketiModel.fromJson(l));
    }*/
  }

  Future<Either<ErrorMarketiModel, SendVerificationEmailCodeResponse>> sendVerificationEmailCode({required SendVerificationEmailCodeRequest body}) async {
    try {
      final response = await api.post(EndPoint.sendPassEmail, data: body.toJson()) as Map<String, dynamic>;
      final right = SendVerificationEmailCodeResponse.fromJson(response);
      return Right(right);
    } catch (e) {
      final l = e as Map<String, dynamic>;
      return Left(ErrorMarketiModel.fromJson(l));
    }
  }

  Future<Either<ErrorMarketiModel, VerifyCodeResponse>> verifyCode({required VerifyCodeRequest body}) async {
    try {
      final response = await api.post(EndPoint.sendPassEmail, data: body.toJson()) as Map<String, dynamic>;
      final right = VerifyCodeResponse.fromJson(response);
      return Right(right);
    } catch (e) {
      final l = e as Map<String, dynamic>;
      return Left(ErrorMarketiModel.fromJson(l));
    }
  }

  Future<Either<ErrorMarketiModel, ResetPasswordResponse>> resetPassword({required ResetPasswordRequest body}) async {
    try {
      final response = await api.post(EndPoint.resetPassword, data: body.toJson()) as Map<String, dynamic>;
      final right = ResetPasswordResponse.fromJson(response);
      return Right(right);
    } catch (e) {
      final l = e as Map<String, dynamic>;
      return Left(ErrorMarketiModel.fromJson(l));
    }
  }

  // auth/oAuth/-> not work
}
