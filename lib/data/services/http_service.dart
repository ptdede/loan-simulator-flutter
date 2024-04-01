import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:loan_simulator/data/models/network_exception.dart';
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
    await _checkInternet();

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
    await _checkInternet();

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

  Future<void> _checkInternet() async {
    try {
      bool result = await InternetConnectionChecker().hasConnection;

      if (result == true) {
        print('Connected to the internet!');
      } else {
        throw NetworkExpection(code: 4000, message: 'network error');
      }
    } catch (err) {
      throw NetworkExpection(code: 4000, message: 'network error');
    }
  }
}
