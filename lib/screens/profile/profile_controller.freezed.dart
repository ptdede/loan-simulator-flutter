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
  $Res call({AsyncValue<UserData?> currentUser});
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
  }) {
    return _then(_value.copyWith(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserData?>,
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
  $Res call({AsyncValue<UserData?> currentUser});
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
  }) {
    return _then(_$ProfileControllerStateImpl(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserData?>,
    ));
  }
}

/// @nodoc

class _$ProfileControllerStateImpl implements _ProfileControllerState {
  const _$ProfileControllerStateImpl({this.currentUser = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<UserData?> currentUser;

  @override
  String toString() {
    return 'ProfileControllerState(currentUser: $currentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileControllerStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileControllerStateImplCopyWith<_$ProfileControllerStateImpl>
      get copyWith => __$$ProfileControllerStateImplCopyWithImpl<
          _$ProfileControllerStateImpl>(this, _$identity);
}

abstract class _ProfileControllerState implements ProfileControllerState {
  const factory _ProfileControllerState(
      {final AsyncValue<UserData?> currentUser}) = _$ProfileControllerStateImpl;

  @override
  AsyncValue<UserData?> get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$ProfileControllerStateImplCopyWith<_$ProfileControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
