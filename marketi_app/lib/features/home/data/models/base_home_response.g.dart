// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseHomeResponse _$BaseHomeResponseFromJson(Map<String, dynamic> json) => BaseHomeResponse()
  ..id = json['_id'] as String?
  ..name = json['name'] as String?
  ..imagePath = json['imagePath'] as String?
  ..v = json['__v'] as int?;

Map<String, dynamic> _$BaseHomeResponseToJson(BaseHomeResponse instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      '__v': instance.v,
    };
