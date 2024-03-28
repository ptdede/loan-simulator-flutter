// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileControllerState {
  AsyncValue<UserData?> get currentUser => throw _privateConstructorUsedError;
  AsyncValue<List<BaseDeviceInfo>> get deviceInformationList =>
      throw _privateConstructorUsedError;
  AsyncValue<Position> get userLocationPosition =>
      throw _privateConstructorUsedError;
  AsyncValue<String> get userLocationAddress =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileControllerStateCopyWith<ProfileControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileControllerStateCopyWith<$Res> {
  factory $ProfileControllerStateCopyWith(ProfileControllerState value,
          $Res Function(ProfileControllerState) then) =
      _$ProfileControllerStateCopyWithImpl<$Res, ProfileControllerState>;
  @useResult
  $Res call(
      {AsyncValue<UserData?> currentUser,
      AsyncValue<List<BaseDeviceInfo>> deviceInformationList,
      AsyncValue<Position> userLocationPosition,
      AsyncValue<String> userLocationAddress});
}

/// @nodoc
class _$ProfileControllerStateCopyWithImpl<$Res,
        $Val extends ProfileControllerState>
    implements $ProfileControllerStateCopyWith<$Res> {
  _$ProfileControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? deviceInformationList = null,
    Object? userLocationPosition = null,
    Object? userLocationAddress = null,
  }) {
    return _then(_value.copyWith(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserData?>,
      deviceInformationList: null == deviceInformationList
          ? _value.deviceInformationList
          : deviceInformationList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BaseDeviceInfo>>,
      userLocationPosition: null == userLocationPosition
          ? _value.userLocationPosition
          : userLocationPosition // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Position>,
      userLocationAddress: null == userLocationAddress
          ? _value.userLocationAddress
          : userLocationAddress // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileControllerStateImplCopyWith<$Res>
    implements $ProfileControllerStateCopyWith<$Res> {
  factory _$$ProfileControllerStateImplCopyWith(
          _$ProfileControllerStateImpl value,
          $Res Function(_$ProfileControllerStateImpl) then) =
      __$$ProfileControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<UserData?> currentUser,
      AsyncValue<List<BaseDeviceInfo>> deviceInformationList,
      AsyncValue<Position> userLocationPosition,
      AsyncValue<String> userLocationAddress});
}

/// @nodoc
class __$$ProfileControllerStateImplCopyWithImpl<$Res>
    extends _$ProfileControllerStateCopyWithImpl<$Res,
        _$ProfileControllerStateImpl>
    implements _$$ProfileControllerStateImplCopyWith<$Res> {
  __$$ProfileControllerStateImplCopyWithImpl(
      _$ProfileControllerStateImpl _value,
      $Res Function(_$ProfileControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? deviceInformationList = null,
    Object? userLocationPosition = null,
    Object? userLocationAddress = null,
  }) {
    return _then(_$ProfileControllerStateImpl(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserData?>,
      deviceInformationList: null == deviceInformationList
          ? _value.deviceInformationList
          : deviceInformationList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<BaseDeviceInfo>>,
      userLocationPosition: null == userLocationPosition
          ? _value.userLocationPosition
          : userLocationPosition // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Position>,
      userLocationAddress: null == userLocationAddress
          ? _value.userLocationAddress
          : userLocationAddress // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String>,
    ));
  }
}

/// @nodoc

class _$ProfileControllerStateImpl implements _ProfileControllerState {
  const _$ProfileControllerStateImpl(
      {this.currentUser = const AsyncLoading(),
      this.deviceInformationList = const AsyncLoading(),
      this.userLocationPosition = const AsyncLoading(),
      this.userLocationAddress = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<UserData?> currentUser;
  @override
  @JsonKey()
  final AsyncValue<List<BaseDeviceInfo>> deviceInformationList;
  @override
  @JsonKey()
  final AsyncValue<Position> userLocationPosition;
  @override
  @JsonKey()
  final AsyncValue<String> userLocationAddress;

  @override
  String toString() {
    return 'ProfileControllerState(currentUser: $currentUser, deviceInformationList: $deviceInformationList, userLocationPosition: $userLocationPosition, userLocationAddress: $userLocationAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileControllerStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.deviceInformationList, deviceInformationList) ||
                other.deviceInformationList == deviceInformationList) &&
            (identical(other.userLocationPosition, userLocationPosition) ||
                other.userLocationPosition == userLocationPosition) &&
            (identical(other.userLocationAddress, userLocationAddress) ||
                other.userLocationAddress == userLocationAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser,
      deviceInformationList, userLocationPosition, userLocationAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileControllerStateImplCopyWith<_$ProfileControllerStateImpl>
      get copyWith => __$$ProfileControllerStateImplCopyWithImpl<
          _$ProfileControllerStateImpl>(this, _$identity);
}

abstract class _ProfileControllerState implements ProfileControllerState {
  const factory _ProfileControllerState(
          {final AsyncValue<UserData?> currentUser,
          final AsyncValue<List<BaseDeviceInfo>> deviceInformationList,
          final AsyncValue<Position> userLocationPosition,
          final AsyncValue<String> userLocationAddress}) =
      _$ProfileControllerStateImpl;

  @override
  AsyncValue<UserData?> get currentUser;
  @override
  AsyncValue<List<BaseDeviceInfo>> get deviceInformationList;
  @override
  AsyncValue<Position> get userLocationPosition;
  @override
  AsyncValue<String> get userLocationAddress;
  @override
  @JsonKey(ignore: true)
  _$$ProfileControllerStateImplCopyWith<_$ProfileControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseDeviceInfo {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseDeviceInfoCopyWith<BaseDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDeviceInfoCopyWith<$Res> {
  factory $BaseDeviceInfoCopyWith(
          BaseDeviceInfo value, $Res Function(BaseDeviceInfo) then) =
      _$BaseDeviceInfoCopyWithImpl<$Res, BaseDeviceInfo>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$BaseDeviceInfoCopyWithImpl<$Res, $Val extends BaseDeviceInfo>
    implements $BaseDeviceInfoCopyWith<$Res> {
  _$BaseDeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseDeviceInfoImplCopyWith<$Res>
    implements $BaseDeviceInfoCopyWith<$Res> {
  factory _$$BaseDeviceInfoImplCopyWith(_$BaseDeviceInfoImpl value,
          $Res Function(_$BaseDeviceInfoImpl) then) =
      __$$BaseDeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$BaseDeviceInfoImplCopyWithImpl<$Res>
    extends _$BaseDeviceInfoCopyWithImpl<$Res, _$BaseDeviceInfoImpl>
    implements _$$BaseDeviceInfoImplCopyWith<$Res> {
  __$$BaseDeviceInfoImplCopyWithImpl(
      _$BaseDeviceInfoImpl _value, $Res Function(_$BaseDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$BaseDeviceInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseDeviceInfoImpl implements _BaseDeviceInfo {
  const _$BaseDeviceInfoImpl({required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'BaseDeviceInfo(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseDeviceInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseDeviceInfoImplCopyWith<_$BaseDeviceInfoImpl> get copyWith =>
      __$$BaseDeviceInfoImplCopyWithImpl<_$BaseDeviceInfoImpl>(
          this, _$identity);
}

abstract class _BaseDeviceInfo implements BaseDeviceInfo {
  const factory _BaseDeviceInfo(
      {required final String title,
      required final String description}) = _$BaseDeviceInfoImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BaseDeviceInfoImplCopyWith<_$BaseDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
