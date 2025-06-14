import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordRequest {
  @JsonKey(includeIfNull: true)
  String? email;

  @JsonKey(includeIfNull: true)
  String? password;

  @JsonKey(includeIfNull: true)
  String? confirmPassword;

  ResetPasswordRequest();

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}
