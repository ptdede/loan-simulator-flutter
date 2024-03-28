import 'package:dio/dio.dart';
import 'package:loan_simulator/data/utils/catch_dio_error.dart';

abstract class HTTPService {
  late final Dio httpClient = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  Future<T> get<T>({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await catchDioError(
      () => httpClient.get<T>(
        path,
        options: Options(
          headers: headers,
        ),
        queryParameters: queryParameters,
      ),
    );

    return result.data as T;
  }

  Future<T> post<T>({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    final result = await catchDioError(
      () => httpClient.post<T>(
        path,
        options: Options(
          headers: headers,
        ),
        data: body,
      ),
    );

    return result.data as T;
  }
}
