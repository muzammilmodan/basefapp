class CommonResponse {
  String? status;
  String? data;
  String? message;
  String? authToken;

  CommonResponse({this.status, this.data, this.message,this.authToken,});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    data = json['Data'];
    message = json['Message'];
    authToken = json['AuthToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Data'] = this.data;
    data['Message'] = this.message;
    return data;
  }
}
