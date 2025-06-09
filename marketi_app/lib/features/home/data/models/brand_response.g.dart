// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) => BrandResponse()
  ..id = json['_id'] as String?
  ..name = json['name'] as String?
  ..imagePath = json['imagePath'] as String?
  ..v = json['__v'] as int?;

Map<String, dynamic> _$BrandResponseToJson(BrandResponse instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      '__v': instance.v,
    };
