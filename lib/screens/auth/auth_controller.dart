import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/data/models/network_exception.dart';
import 'package:loan_simulator/data/repositories/user_repository.dart';

part 'auth_controller.freezed.dart';

class AuthController extends StateNotifier<AuthControllerState> {
  AuthController(this._userRepository) : super(const AuthControllerState());

  static final provider =
      StateNotifierProvider.autoDispose<AuthController, AuthControllerState>(
    (ref) => AuthController(
      ref.watch(UserRepository.provider),
    ),
  );

  final UserRepository _userRepository;

  void onScreenLoaded() {
    state = state.copyWith(
      email: '',
      password: '',
      token: '',
    );
  }

  void onUpdateEmail(String email) {
    state = state.copyWith(
      email: email,
    );
  }

  void onUpdatePassword(String password) {
    state = state.copyWith(
      password: password,
    );
  }

  void onLoginUser() async {
    state = state.copyWith(isLoading: true);

    try {
      final result = await _userRepository.login(
        email: state.email,
        password: state.password,
      );

      state = state.copyWith(
        isLoginSuccess: true,
        token: result.token ?? '',
      );
    } catch (err) {
      _handleError(err);
    }

    state = state.copyWith(isLoading: false);
  }

  void onRegisterUser() async {
    state = state.copyWith(isLoading: true);

    try {
      final result = await _userRepository.login(
        email: state.email,
        password: state.password,
      );

      state = state.copyWith(
        isRegisterSuccess: true,
        token: result.token ?? '',
      );
    } catch (err) {
      _handleError(err);
    }

    state = state.copyWith(isLoading: false);
  }

  void _handleError(dynamic err) {
    if (err is NetworkExpection) {
      state = state.copyWith(
        errorAuth: err.message,
        isLoginSuccess: false,
        isRegisterSuccess: false,
      );
    } else {
      state = state.copyWith(
        errorAuth: 'unknown error = ${err.toString()}',
        isLoginSuccess: false,
        isRegisterSuccess: false,
      );
    }
  }
}

@freezed
class AuthControllerState with _$AuthControllerState {
  const factory AuthControllerState({
    @Default(false) bool isLoginSuccess,
    @Default(false) bool isRegisterSuccess,
    @Default('') String token,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
    @Default('') String errorAuth,
  }) = _AuthControllerState;
}
