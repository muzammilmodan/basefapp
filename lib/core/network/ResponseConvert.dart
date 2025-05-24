import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../utils/StringUtil.dart';
import '../models/jsonModel.dart';


class ResponseConvert {
  static responseErrorHandle(http.Response response) {
    // If that call was not successful, throw an error.
    if (response.statusCode == 404) {
      throw ('Unable to connect server api.');
    } else if (response.statusCode == 400) {
      throw ('Syntax Error in API');
    } else if (response.statusCode == 502) {
      throw Exception('Unable to connect server.');
    } else {
      throw ('Please contact administrator.');
    }
  }

  static responseFailedErrorHandle(
    http.Response response,
  ) {
    if (json.decode(response.body)['Status'] != null &&
        json.decode(response.body)['Status'] == "F" &&
        json.decode(response.body)['Message'] != null &&
        json.decode(response.body)['Message'] != "") {
      print(json.decode(response.body)['Message']);

      String message = json.decode(response.body)['Message'];

      if (message.contains('You are not authorised. Please try again.')) {
       // sessionExpiredDialog();
      } else {
        throw Exception(json.decode(response.body)['Message']);
      }
    }
  }

  static Map<String, dynamic> convertDataToModelJson(
      String body, String modelName) {
    JsonModel jsonModel = JsonModel.fromJson(jsonDecode(body));
    String decriptedString = jsonModel.data == null || jsonModel.data == ""
        ? ""
        : StringUtil.decrypt(jsonModel.data);

    Map<String, dynamic> newResponse1;

    newResponse1 = {
      "Status": jsonModel.status,
      "" + modelName + "": json.decode(decriptedString),
      "Message": jsonModel.message
    };
    // Loggers.printData(newResponse1.toString());
    return newResponse1;
  }

  static Map<String, dynamic> convertDataToGenericModelJson(
      String body, String modelName) {
    JsonModel jsonModel = JsonModel.fromJson(jsonDecode(body));

    String decriptedString = jsonModel.data == null || jsonModel.data == ""
        ? ""
        : StringUtil.decrypt(jsonModel.data);

    Map<String, dynamic> newResponse1;

    newResponse1 = {
      "Status": jsonModel.status,
      "" + modelName + "": decriptedString,
      "Message": jsonModel.message
    };
    return newResponse1;
  }

  static String convertDataToModel(String body, String modelName) {
    return body.replaceFirst('"Data"', '"' + modelName + '"');
  }


  static Map<String, dynamic> convertDataToModelValue(
      String body, String modelName) {

    String decriptedString = StringUtil.decrypt(body);

    Map<String, dynamic> newResponse1;

    newResponse1 = {
      "" + modelName + "": json.decode(decriptedString),
    };
    // Loggers.printData(newResponse1.toString());
    return newResponse1;
  }
}
