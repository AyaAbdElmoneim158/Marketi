import 'package:json_annotation/json_annotation.dart';

part 'send_verification_email_code.g.dart';

@JsonSerializable(explicitToJson: true)
class SendVerificationEmailCodeRequest {
  @JsonKey(includeIfNull: true)
  String? email;

  SendVerificationEmailCodeRequest();

  factory SendVerificationEmailCodeRequest.fromJson(Map<String, dynamic> json) => _$SendVerificationEmailCodeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendVerificationEmailCodeRequestToJson(this);
}
