// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) => SignUpRequest()
  ..name = json['name'] as String?
  ..phone = json['phone'] as String?
  ..email = json['email'] as String?
  ..password = json['password'] as String?
  ..confirmPassword = json['confirmPassword'] as String?;

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
