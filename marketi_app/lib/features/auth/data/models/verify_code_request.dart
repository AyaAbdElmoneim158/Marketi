import 'package:json_annotation/json_annotation.dart';

part 'verify_code_request.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyCodeRequest {
  @JsonKey(includeIfNull: true)
  String? email;

  @JsonKey(includeIfNull: true)
  String? code;

  VerifyCodeRequest();

  factory VerifyCodeRequest.fromJson(Map<String, dynamic> json) => _$VerifyCodeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyCodeRequestToJson(this);
}
