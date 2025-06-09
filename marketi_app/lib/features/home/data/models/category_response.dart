import 'package:json_annotation/json_annotation.dart';
import 'base_home_response.dart';

part 'category_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryResponse extends BaseHomeResponse {
  CategoryResponse();

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}
