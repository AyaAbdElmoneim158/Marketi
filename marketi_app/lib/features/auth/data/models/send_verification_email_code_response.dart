import 'package:json_annotation/json_annotation.dart';
import 'package:marketi_app/core/model/base_message_response.dart';

part 'send_verification_email_code_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SendVerificationEmailCodeResponse extends BaseMessageResponse {
  SendVerificationEmailCodeResponse();

  factory SendVerificationEmailCodeResponse.fromJson(Map<String, dynamic> json) => _$SendVerificationEmailCodeResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SendVerificationEmailCodeResponseToJson(this);
}
