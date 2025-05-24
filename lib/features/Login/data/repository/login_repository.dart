import 'package:baseapp/core/models/CommonResponse.dart';
import 'package:baseapp/features/Login/data/api/login_api.dart';
import 'package:dio/dio.dart';

class LoginRepository {

  final LoginApi loginApi;

  LoginRepository({required this.loginApi});

  Future<CommonResponse> callLoginApiRequest(requestData) async {
    try {
      final res = await loginApi.callLoginApi(
          requestData);
      final response = CommonResponse.fromJson(res);
      return response;
    } on DioException catch (e) {
      rethrow;
    }
  }
}