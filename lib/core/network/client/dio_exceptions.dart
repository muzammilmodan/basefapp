import 'package:baseapp/core/constants/app_constants.dart';
import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;
  String? error;

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioException.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioException.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioException.badResponse:
        error = error;
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioException.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        if ((dioError.message ?? '').contains("SocketException")) {
          message = 'No Internet';
          break;
        } else if ((dioError.message ?? '').contains('HandshakeException')) {
          message = 'Response data not found';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = AppConstants.errorMessage;
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return error['message'] ?? 'Bad request';
      case 401:
        return error['message'] ?? 'Unauthorized';
      case 403:
        return error['message'] ?? 'Forbidden';
      case 404:
        return error['message'];
      case 420:
        return 'Session Expired. Please LogIn again';
      case 500:
        return error['message'] ?? 'Internal server error';
      case 502:
        return error['message'] ?? 'Server unavailable';
      default:
        return AppConstants.errorMessage;
    }
  }

  @override
  String toString() => message;
}
