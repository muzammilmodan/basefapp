// To parse this JSON data, do
//
//     final JsonModel = JsonModelFromJson(jsonString);

import 'dart:convert';

JsonModel jsonModelFromJson(String str) => JsonModel.fromJson(json.decode(str));

String jsonModelToJson(JsonModel data) => json.encode(data.toJson());

class JsonModel {
  JsonModel({
    this.status,
    this.data,
    this.message,
  });

  String? status;
  String? data;
  String? message;

  factory JsonModel.fromJson(Map<String, dynamic> json) => JsonModel(
        status: json["Status"],
        data: json["Data"],
        message: json["Message"],
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Data": data,
        "Message": message,
      };
}
