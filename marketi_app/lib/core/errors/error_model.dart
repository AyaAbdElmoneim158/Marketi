import '../api/end_points.dart';

////! Based each_api
class ErrorModel {
  final String errorMessage;
  ErrorModel(this.errorMessage);

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(jsonData[ApiKey.errorMessage]);
  }
}
