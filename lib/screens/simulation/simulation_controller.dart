import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/data/models/user_list_response.dart';
import 'package:loan_simulator/data/repositories/user_repository.dart';

part 'simulation_controller.freezed.dart';

class SimulationController extends StateNotifier<SimulationControllerState> {
  SimulationController(this._userRepository)
      : super(const SimulationControllerState());

  static final provider = StateNotifierProvider.autoDispose<
      SimulationController, SimulationControllerState>(
    (ref) => SimulationController(
      ref.watch(UserRepository.provider),
    ),
  );

  final UserRepository _userRepository;

  void onScreenLoaded() {
    onFetchUserList();
  }

  void onFetchUserList({int page = 1}) async {
    state = state.copyWith(userList: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _userRepository.getUserList(page: page),
    );

    if (result is AsyncData) {
      state = state.copyWith(userList: result);
    }

    if (result is AsyncError) {
      state = state.copyWith(userList: AsyncError(result, StackTrace.current));
    }
  }
}

@freezed
class SimulationControllerState with _$SimulationControllerState {
  const factory SimulationControllerState({
    @Default(AsyncLoading()) AsyncValue<UserListResponse> userList,
  }) = _SimulationControllerState;
}
