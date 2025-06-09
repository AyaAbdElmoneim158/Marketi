// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) => ProductResponse()
  ..location = json['location'] == null ? null : LocationWrapper.fromJson(json['location'] as Map<String, dynamic>)
  ..id = json['_id'] as String?
  ..title = json['title'] as String?
  ..price = json['price'] as int?
  ..description = json['description'] as String?
  ..images = (json['images'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..rating = (json['rating'] as num?)?.toDouble()
  ..discount = json['discount'] as int?
  ..remain = json['remain'] as int?
  ..sold = json['sold'] as int?
  ..category = json['category'] as String?
  ..brand = json['brand'] as String?
  ..createdAt = json['createdAt'] as String?
  ..updatedAt = json['updatedAt'] as String?
  ..v = json['__v'] as int?;

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) => <String, dynamic>{
      'location': instance.location?.toJson(),
      '_id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'rating': instance.rating,
      'discount': instance.discount,
      'remain': instance.remain,
      'sold': instance.sold,
      'category': instance.category,
      'brand': instance.brand,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };

LocationWrapper _$LocationWrapperFromJson(Map<String, dynamic> json) => LocationWrapper()
  ..location = json['location'] == null ? null : Location.fromJson(json['location'] as Map<String, dynamic>)
  ..name = json['name'] as String?;

Map<String, dynamic> _$LocationWrapperToJson(LocationWrapper instance) => <String, dynamic>{
      'location': instance.location?.toJson(),
      'name': instance.name,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location()
  ..type = json['type'] as String?
  ..coordinates = (json['coordinates'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList();

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
