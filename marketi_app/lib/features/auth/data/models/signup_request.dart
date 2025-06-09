import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUpRequest {
  @JsonKey(includeIfNull: true)
  String? name;
  @JsonKey(includeIfNull: true)
  String? phone;
  @JsonKey(includeIfNull: true)
  String? email;
  @JsonKey(includeIfNull: true)
  String? password;
  @JsonKey(includeIfNull: true)
  String? confirmPassword;
  SignUpRequest();

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
