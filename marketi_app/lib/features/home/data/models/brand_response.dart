import 'package:json_annotation/json_annotation.dart';
import 'base_home_response.dart';

part 'brand_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BrandResponse extends BaseHomeResponse {
  BrandResponse();

  factory BrandResponse.fromJson(Map<String, dynamic> json) => _$BrandResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BrandResponseToJson(this);
}
