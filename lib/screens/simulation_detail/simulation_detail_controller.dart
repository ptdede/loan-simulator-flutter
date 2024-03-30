import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/config.dart';
import 'package:loan_simulator/data/models/network_exception.dart';
import 'package:loan_simulator/data/models/simulation_model.dart';
import 'package:loan_simulator/data/models/user_single_response.dart';
import 'package:loan_simulator/data/repositories/simulation_repository.dart';
import 'package:loan_simulator/data/repositories/user_repository.dart';

part 'simulation_detail_controller.freezed.dart';

class SimulationDetailController
    extends StateNotifier<SimulationDetailControllerState> {
  SimulationDetailController(
    this._userRepository,
    this._simulationRepository,
  ) : super(const SimulationDetailControllerState());

  static final provider = StateNotifierProvider.autoDispose<
      SimulationDetailController, SimulationDetailControllerState>(
    (ref) => SimulationDetailController(
      ref.watch(UserRepository.provider),
      ref.watch(SimulationRepository.provider),
    ),
  );

  final UserRepository _userRepository;
  final SimulationRepository _simulationRepository;
  late final String userId;

  void onScreenLoaded({required String userId}) {
    userId = userId;
    onFetchUserDetail(userId);
  }

  void onFetchUserDetail(String userId) async {
    state = state.copyWith(userDetail: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _userRepository
          .getSingleUser(int.tryParse(userId) ?? AppConfig.tempUserId),
    );

    if (!mounted) return;

    if (result is AsyncData) {
      state = state.copyWith(userDetail: result);
    }

    if (result is AsyncError) {
      state =
          state.copyWith(userDetail: AsyncError(result, StackTrace.current));
    }
  }

  void onFetchSimulation({
    required String calcType,
    required String amount,
    required String tenor,
    required String rate,
    required String rateType,
  }) async {
    state = state.copyWith(
      simulationResult: const AsyncValue.loading(),
      simulationLoading: true,
    );

    final result = await AsyncValue.guard(
      () => _simulationRepository.getLoanSimulationData(
        calcType: calcType,
        amount: amount,
        tenor: tenor,
        rate: rate,
        rateType: rateType,
      ),
    );

    if (!mounted) return;

    if (result is AsyncData) {
      state = state.copyWith(
        simulationResult: result,
        simulationLoading: false,
      );
    }

    if (result is AsyncError) {
      final error = result.error;
      if (error is NetworkExpection) {
        state = state.copyWith(
          simulationResult: AsyncError(
            error.message,
            StackTrace.current,
          ),
          simulationLoading: false,
        );
      }
    }
  }
}

@freezed
class SimulationDetailControllerState with _$SimulationDetailControllerState {
  const factory SimulationDetailControllerState({
    @Default(AsyncLoading()) AsyncValue<UserSingleResponse> userDetail,
    @Default(null) AsyncValue<SimulationModel>? simulationResult,
    @Default(false) bool simulationLoading,
  }) = _SimulationDetailControllerState;
}
