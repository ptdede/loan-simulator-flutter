import 'dart:io';

import 'package:dio/dio.dart';
import 'package:loan_simulator/data/models/network_exception.dart';

Future<Response<T>> catchDioError<T>(
  Future<Response<T>> Function() apiCall,
) async {
  try {
    return await apiCall();
  } on DioException catch (e) {
    switch (e.type) {
      case DioExceptionType.badResponse:
        throw NetworkExpection(
            code: HttpStatus.badRequest, message: e.message ?? 'bad request');
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
        throw NetworkExpection(code: 1001, message: 'unknown error');
    }
  } catch (e) {
    throw NetworkExpection(code: 1001, message: e.toString());
  }
}
