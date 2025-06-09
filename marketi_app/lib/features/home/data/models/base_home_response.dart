import 'package:json_annotation/json_annotation.dart';

part 'base_home_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseHomeResponse {
  @JsonKey(name: '_id', includeIfNull: true)
  String? id;
  @JsonKey(includeIfNull: true)
  String? name;
  @JsonKey(includeIfNull: true)
  String? imagePath;
  @JsonKey(name: '__v', includeIfNull: true)
  int? v;

  BaseHomeResponse();

  factory BaseHomeResponse.fromJson(Map<String, dynamic> json) => _$BaseHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseHomeResponseToJson(this);
}
