import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductResponse {
  @JsonKey(includeIfNull: true)
  LocationWrapper? location;
  @JsonKey(name: '_id', includeIfNull: true)
  String? id;
  @JsonKey(includeIfNull: true)
  String? title;
  @JsonKey(includeIfNull: true)
  int? price;
  @JsonKey(includeIfNull: true)
  String? description;
  @JsonKey(includeIfNull: true)
  List<String>? images;
  @JsonKey(includeIfNull: true)
  double? rating;
  @JsonKey(includeIfNull: true)
  int? discount;
  @JsonKey(includeIfNull: true)
  int? remain;
  @JsonKey(includeIfNull: true)
  int? sold;
  @JsonKey(includeIfNull: true)
  String? category;
  @JsonKey(includeIfNull: true)
  String? brand;
  @JsonKey(includeIfNull: true)
  String? createdAt;
  @JsonKey(includeIfNull: true)
  String? updatedAt;
  @JsonKey(name: '__v', includeIfNull: true)
  int? v;

  ProductResponse();

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LocationWrapper {
  @JsonKey(includeIfNull: true)
  Location? location;

  @JsonKey(includeIfNull: true)
  String? name;

  LocationWrapper();

  factory LocationWrapper.fromJson(Map<String, dynamic> json) => _$LocationWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$LocationWrapperToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(includeIfNull: true)
  String? type;

  @JsonKey(includeIfNull: true)
  List<double>? coordinates;

  Location();

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
