class ErrorMarketiModel {
  String? message;

  ErrorMarketiModel(String? message);

  factory ErrorMarketiModel.fromJson(Map<String, dynamic> json) {
    return ErrorMarketiModel(json['message'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
// DartError: TypeError: Instance of 'ServerException': type 'ServerException' is not a subtype of type 'Map<String, dynamic>'
