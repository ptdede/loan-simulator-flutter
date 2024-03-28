// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimulationControllerState {
  AsyncValue<UserListResponse> get userList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulationControllerStateCopyWith<SimulationControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationControllerStateCopyWith<$Res> {
  factory $SimulationControllerStateCopyWith(SimulationControllerState value,
          $Res Function(SimulationControllerState) then) =
      _$SimulationControllerStateCopyWithImpl<$Res, SimulationControllerState>;
  @useResult
  $Res call({AsyncValue<UserListResponse> userList});
}

/// @nodoc
class _$SimulationControllerStateCopyWithImpl<$Res,
        $Val extends SimulationControllerState>
    implements $SimulationControllerStateCopyWith<$Res> {
  _$SimulationControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_value.copyWith(
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserListResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationControllerStateImplCopyWith<$Res>
    implements $SimulationControllerStateCopyWith<$Res> {
  factory _$$SimulationControllerStateImplCopyWith(
          _$SimulationControllerStateImpl value,
          $Res Function(_$SimulationControllerStateImpl) then) =
      __$$SimulationControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<UserListResponse> userList});
}

/// @nodoc
class __$$SimulationControllerStateImplCopyWithImpl<$Res>
    extends _$SimulationControllerStateCopyWithImpl<$Res,
        _$SimulationControllerStateImpl>
    implements _$$SimulationControllerStateImplCopyWith<$Res> {
  __$$SimulationControllerStateImplCopyWithImpl(
      _$SimulationControllerStateImpl _value,
      $Res Function(_$SimulationControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_$SimulationControllerStateImpl(
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserListResponse>,
    ));
  }
}

/// @nodoc

class _$SimulationControllerStateImpl implements _SimulationControllerState {
  const _$SimulationControllerStateImpl({this.userList = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<UserListResponse> userList;

  @override
  String toString() {
    return 'SimulationControllerState(userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulationControllerStateImpl &&
            (identical(other.userList, userList) ||
                other.userList == userList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationControllerStateImplCopyWith<_$SimulationControllerStateImpl>
      get copyWith => __$$SimulationControllerStateImplCopyWithImpl<
          _$SimulationControllerStateImpl>(this, _$identity);
}

abstract class _SimulationControllerState implements SimulationControllerState {
  const factory _SimulationControllerState(
          {final AsyncValue<UserListResponse> userList}) =
      _$SimulationControllerStateImpl;

  @override
  AsyncValue<UserListResponse> get userList;
  @override
  @JsonKey(ignore: true)
  _$$SimulationControllerStateImplCopyWith<_$SimulationControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
