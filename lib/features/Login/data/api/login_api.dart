import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;

import '../../../../core/network/client/dio_client.dart';
import '../../../../core/network/core/network/endpoints.dart';
class LoginApi {
  final DioClient _dioClient;

  LoginApi(this._dioClient);

  Future<Map<String, dynamic>> callLoginApi(requestData) async {
    try {
      final Response response = await _dioClient.post(Endpoints.loginUrl, data: requestData);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
