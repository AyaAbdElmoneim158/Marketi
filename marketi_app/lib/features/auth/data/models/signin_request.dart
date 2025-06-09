import 'package:json_annotation/json_annotation.dart';

part 'signin_request.g.dart';

////! JsonKey + JsonSerializable
@JsonSerializable(explicitToJson: true)
class SignInRequest {
  @JsonKey(includeIfNull: true)
  String? email;
  @JsonKey(includeIfNull: true)
  String? password;

  SignInRequest();

  factory SignInRequest.fromJson(Map<String, dynamic> json) => _$SignInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
