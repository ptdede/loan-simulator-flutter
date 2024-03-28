import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_simulator/config.dart';
import 'package:loan_simulator/data/services/http_service.dart';

class UserService extends HTTPService {
  UserService() {
    httpClient.options.baseUrl = AppConfig.userApi;

    if (!AppConfig.isProd) {
      httpClient.interceptors.add(LogInterceptor(
        requestBody: true,
      ));
    }
  }

  static final provider = Provider((ref) => UserService());
}
