// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_detail_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimulationDetailControllerState {
  AsyncValue<UserSingleResponse> get userDetail =>
      throw _privateConstructorUsedError;
  AsyncValue<SimulationModel> get simulationResult =>
      throw _privateConstructorUsedError;
  bool get simulationLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulationDetailControllerStateCopyWith<SimulationDetailControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationDetailControllerStateCopyWith<$Res> {
  factory $SimulationDetailControllerStateCopyWith(
          SimulationDetailControllerState value,
          $Res Function(SimulationDetailControllerState) then) =
      _$SimulationDetailControllerStateCopyWithImpl<$Res,
          SimulationDetailControllerState>;
  @useResult
  $Res call(
      {AsyncValue<UserSingleResponse> userDetail,
      AsyncValue<SimulationModel> simulationResult,
      bool simulationLoading});
}

/// @nodoc
class _$SimulationDetailControllerStateCopyWithImpl<$Res,
        $Val extends SimulationDetailControllerState>
    implements $SimulationDetailControllerStateCopyWith<$Res> {
  _$SimulationDetailControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? simulationResult = null,
    Object? simulationLoading = null,
  }) {
    return _then(_value.copyWith(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserSingleResponse>,
      simulationResult: null == simulationResult
          ? _value.simulationResult
          : simulationResult // ignore: cast_nullable_to_non_nullable
              as AsyncValue<SimulationModel>,
      simulationLoading: null == simulationLoading
          ? _value.simulationLoading
          : simulationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationDetailControllerStateImplCopyWith<$Res>
    implements $SimulationDetailControllerStateCopyWith<$Res> {
  factory _$$SimulationDetailControllerStateImplCopyWith(
          _$SimulationDetailControllerStateImpl value,
          $Res Function(_$SimulationDetailControllerStateImpl) then) =
      __$$SimulationDetailControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<UserSingleResponse> userDetail,
      AsyncValue<SimulationModel> simulationResult,
      bool simulationLoading});
}

/// @nodoc
class __$$SimulationDetailControllerStateImplCopyWithImpl<$Res>
    extends _$SimulationDetailControllerStateCopyWithImpl<$Res,
        _$SimulationDetailControllerStateImpl>
    implements _$$SimulationDetailControllerStateImplCopyWith<$Res> {
  __$$SimulationDetailControllerStateImplCopyWithImpl(
      _$SimulationDetailControllerStateImpl _value,
      $Res Function(_$SimulationDetailControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? simulationResult = null,
    Object? simulationLoading = null,
  }) {
    return _then(_$SimulationDetailControllerStateImpl(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserSingleResponse>,
      simulationResult: null == simulationResult
          ? _value.simulationResult
          : simulationResult // ignore: cast_nullable_to_non_nullable
              as AsyncValue<SimulationModel>,
      simulationLoading: null == simulationLoading
          ? _value.simulationLoading
          : simulationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SimulationDetailControllerStateImpl
    implements _SimulationDetailControllerState {
  const _$SimulationDetailControllerStateImpl(
      {this.userDetail = const AsyncLoading(),
      this.simulationResult = const AsyncLoading(),
      this.simulationLoading = false});

  @override
  @JsonKey()
  final AsyncValue<UserSingleResponse> userDetail;
  @override
  @JsonKey()
  final AsyncValue<SimulationModel> simulationResult;
  @override
  @JsonKey()
  final bool simulationLoading;

  @override
  String toString() {
    return 'SimulationDetailControllerState(userDetail: $userDetail, simulationResult: $simulationResult, simulationLoading: $simulationLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulationDetailControllerStateImpl &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail) &&
            (identical(other.simulationResult, simulationResult) ||
                other.simulationResult == simulationResult) &&
            (identical(other.simulationLoading, simulationLoading) ||
                other.simulationLoading == simulationLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userDetail, simulationResult, simulationLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationDetailControllerStateImplCopyWith<
          _$SimulationDetailControllerStateImpl>
      get copyWith => __$$SimulationDetailControllerStateImplCopyWithImpl<
          _$SimulationDetailControllerStateImpl>(this, _$identity);
}

abstract class _SimulationDetailControllerState
    implements SimulationDetailControllerState {
  const factory _SimulationDetailControllerState(
      {final AsyncValue<UserSingleResponse> userDetail,
      final AsyncValue<SimulationModel> simulationResult,
      final bool simulationLoading}) = _$SimulationDetailControllerStateImpl;

  @override
  AsyncValue<UserSingleResponse> get userDetail;
  @override
  AsyncValue<SimulationModel> get simulationResult;
  @override
  bool get simulationLoading;
  @override
  @JsonKey(ignore: true)
  _$$SimulationDetailControllerStateImplCopyWith<
          _$SimulationDetailControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
