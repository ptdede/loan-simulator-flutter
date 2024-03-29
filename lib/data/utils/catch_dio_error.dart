import 'dart:io';

import 'package:dio/dio.dart';
import 'package:loan_simulator/data/models/network_exception.dart';
import 'package:loan_simulator/data/models/reqress_error.dart';

Future<Response<T>> catchDioError<T>(
  Future<Response<T>> Function() apiCall,
) async {
  try {
    return await apiCall();
  } on DioException catch (e) {
    final errorResponse = ReqressError.fromJson(e.response?.data);

    switch (e.type) {
      case DioExceptionType.badResponse:
        throw NetworkExpection(
            code: HttpStatus.badRequest,
            message: errorResponse.error ??
                errorResponse.message ??
                e.message ??
                'bad request');
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        throw NetworkExpection(
          code: HttpStatus.networkConnectTimeoutError,
          message: 'connection error',
        );
      case DioExceptionType.unknown:
      default:
        throw NetworkExpection(
            code: 1001,
            message: errorResponse.error ??
                errorResponse.message ??
                'unknown error');
    }
  } catch (e) {
    throw NetworkExpection(code: 1001, message: e.toString());
  }
}
