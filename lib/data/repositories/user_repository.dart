import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_simulator/data/models/user_list_response.dart';
import 'package:loan_simulator/data/models/user_single_response.dart';
import 'package:loan_simulator/data/services/user_service.dart';

class UserRepository {
  UserRepository(this._userService);

  static final provider = Provider(
    (ref) => UserRepository(
      ref.watch(UserService.provider),
    ),
  );

  final UserService _userService;

  Future<UserListResponse> getUserList({int? page = 1}) async {
    final result = await _userService.get<Map<String, dynamic>>(
        path: '/api/users?page=$page');
    return UserListResponse.fromJson(result);
  }

  Future<UserSingleResponse> getSingleUser(int id) async {
    final result =
        await _userService.get<Map<String, dynamic>>(path: '/api/users/$id');
    return UserSingleResponse.fromJson(result);
  }

  void register() {}

  void login() {}
}
