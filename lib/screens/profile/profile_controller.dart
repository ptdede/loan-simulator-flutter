import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/config.dart';
import 'package:loan_simulator/data/models/user_data.dart';
import 'package:loan_simulator/data/repositories/user_repository.dart';

part 'profile_controller.freezed.dart';

class ProfileController extends StateNotifier<ProfileControllerState> {
  ProfileController(this._userRepository)
      : super(const ProfileControllerState());

  static final provider = StateNotifierProvider.autoDispose<ProfileController,
      ProfileControllerState>(
    (ref) => ProfileController(
      ref.watch(UserRepository.provider),
    ),
  );

  final UserRepository _userRepository;

  void onScreenLoaded() {
    onFetchCurrentUser();
  }

  void onFetchCurrentUser({int page = 1}) async {
    state = state.copyWith(currentUser: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _userRepository.getSingleUser(AppConfig.tempUserId),
    );

    if (!mounted) return;

    if (result is AsyncData) {
      state = state.copyWith(currentUser: AsyncData(result.asData?.value.data));
    }

    // TODO: handle error
    if (result is AsyncError) {
      state =
          state.copyWith(currentUser: AsyncError(result, StackTrace.current));
    }
  }
}

@freezed
class ProfileControllerState with _$ProfileControllerState {
  const factory ProfileControllerState({
    @Default(AsyncLoading()) AsyncValue<UserData?> currentUser,
  }) = _ProfileControllerState;
}
