import 'package:json_annotation/json_annotation.dart';
import 'package:marketi_app/core/model/base_message_response.dart';

part 'verify_code_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyCodeResponse extends BaseMessageResponse {
  VerifyCodeResponse();

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) => _$VerifyCodeResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VerifyCodeResponseToJson(this);
}
