import 'package:json_annotation/json_annotation.dart';
part 'base_message_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseMessageResponse {
  @JsonKey(includeIfNull: true)
  String? message;

  BaseMessageResponse();

  factory BaseMessageResponse.fromJson(Map<String, dynamic> json) => _$BaseMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseMessageResponseToJson(this);
}
