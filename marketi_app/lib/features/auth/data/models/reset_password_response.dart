import 'package:json_annotation/json_annotation.dart';
import 'package:marketi_app/core/model/base_message_response.dart';

part 'reset_password_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordResponse extends BaseMessageResponse {
  ResetPasswordResponse();

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ResetPasswordResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);
}
