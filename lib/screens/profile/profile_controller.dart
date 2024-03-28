import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loan_simulator/config.dart';
import 'package:loan_simulator/data/models/user_data.dart';
import 'package:loan_simulator/data/repositories/user_repository.dart';
import 'package:loan_simulator/data/services/location_service.dart';

part 'profile_controller.freezed.dart';

class ProfileController extends StateNotifier<ProfileControllerState> {
  ProfileController(this._userRepository, this._locationService)
      : super(const ProfileControllerState());

  static final provider = StateNotifierProvider.autoDispose<ProfileController,
      ProfileControllerState>(
    (ref) => ProfileController(
      ref.watch(UserRepository.provider),
      ref.watch(LocationService.provider),
    ),
  );

  final UserRepository _userRepository;
  final LocationService _locationService;

  void onScreenLoaded() {
    onFetchCurrentUser();
    onRetrieveUserLocation();
    onRetrieveDeviceInfo();
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

  void onRetrieveDeviceInfo() async {
    state = state.copyWith(deviceInformationList: const AsyncLoading());

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    List<BaseDeviceInfo> deviceInfoList = [];

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      deviceInfoList.add(BaseDeviceInfo(
        title: 'Brand',
        description: androidInfo.brand,
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'Model',
        description: androidInfo.model,
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'Android Version',
        description: androidInfo.version.sdkInt.toString(),
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'Android Name',
        description: androidInfo.version.codename,
      ));
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      deviceInfoList.add(const BaseDeviceInfo(
        title: 'Brand',
        description: 'Apple',
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'Model',
        description: iosInfo.name,
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'System Name',
        description: iosInfo.systemName,
      ));

      deviceInfoList.add(BaseDeviceInfo(
        title: 'System Version',
        description: iosInfo.systemVersion,
      ));
    }

    state = state.copyWith(deviceInformationList: AsyncData(deviceInfoList));
  }

  void onRetrieveUserLocation() async {
    Position? location;

    state = state.copyWith(
      userLocationPosition: const AsyncLoading(),
      userLocationAddress: const AsyncLoading(),
    );

    try {
      location = await _locationService.getLatLong();

      state = state.copyWith(
        userLocationPosition: AsyncData(location),
      );
    } catch (err) {
      state = state.copyWith(
        userLocationPosition: AsyncError(err, StackTrace.current),
      );
    }

    try {
      if (location != null) {
        final address = await _locationService.getAddressByLatLong(location);
        state = state.copyWith(
          userLocationAddress: AsyncData(address),
        );
      }
    } catch (err) {
      state = state.copyWith(
        userLocationAddress: AsyncError(err, StackTrace.current),
      );
    }
  }
}

@freezed
class ProfileControllerState with _$ProfileControllerState {
  const factory ProfileControllerState({
    @Default(AsyncLoading()) AsyncValue<UserData?> currentUser,
    @Default(AsyncLoading())
    AsyncValue<List<BaseDeviceInfo>> deviceInformationList,
    @Default(AsyncLoading()) AsyncValue<Position> userLocationPosition,
    @Default(AsyncLoading()) AsyncValue<String> userLocationAddress,
  }) = _ProfileControllerState;
}

@freezed
class BaseDeviceInfo with _$BaseDeviceInfo {
  const factory BaseDeviceInfo({
    required String title,
    required String description,
  }) = _BaseDeviceInfo;
}
