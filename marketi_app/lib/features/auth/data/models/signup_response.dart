import 'package:json_annotation/json_annotation.dart';
import 'package:marketi_app/core/model/base_message_response.dart';

part 'signup_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUpResponse extends BaseMessageResponse {
  SignUpResponse();

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
