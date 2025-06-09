import 'package:json_annotation/json_annotation.dart';

part 'signin_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SignInResponse {
  @JsonKey(includeIfNull: true)
  String? message;
  @JsonKey(includeIfNull: true)
  String? token;
  @JsonKey(includeIfNull: true)
  String? name;
  @JsonKey(includeIfNull: true)
  int? statusCode;
  @JsonKey(includeIfNull: true)
  bool? status;

  SignInResponse();

  factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}
