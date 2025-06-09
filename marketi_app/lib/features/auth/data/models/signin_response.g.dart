// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) => SignInResponse()
  ..message = json['message'] as String?
  ..token = json['token'] as String?
  ..name = json['name'] as String?
  ..statusCode = json['statusCode'] as int?
  ..status = json['status'] as bool?;

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) => <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'name': instance.name,
      'statusCode': instance.statusCode,
      'status': instance.status,
    };
