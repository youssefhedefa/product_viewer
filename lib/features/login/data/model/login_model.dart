class LogInModel {
  int? status;
  String? message;
  String? code;

  LogInModel({this.status, this.message, this.code});

  LogInModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['code'] = code;
    return data;
  }
}
