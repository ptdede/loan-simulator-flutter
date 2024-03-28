// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_single_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSingleResponse _$UserSingleResponseFromJson(Map<String, dynamic> json) {
  return _UserSingleResponse.fromJson(json);
}

/// @nodoc
mixin _$UserSingleResponse {
  UserData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSingleResponseCopyWith<UserSingleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSingleResponseCopyWith<$Res> {
  factory $UserSingleResponseCopyWith(
          UserSingleResponse value, $Res Function(UserSingleResponse) then) =
      _$UserSingleResponseCopyWithImpl<$Res, UserSingleResponse>;
  @useResult
  $Res call({UserData? data});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserSingleResponseCopyWithImpl<$Res, $Val extends UserSingleResponse>
    implements $UserSingleResponseCopyWith<$Res> {
  _$UserSingleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSingleResponseImplCopyWith<$Res>
    implements $UserSingleResponseCopyWith<$Res> {
  factory _$$UserSingleResponseImplCopyWith(_$UserSingleResponseImpl value,
          $Res Function(_$UserSingleResponseImpl) then) =
      __$$UserSingleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? data});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserSingleResponseImplCopyWithImpl<$Res>
    extends _$UserSingleResponseCopyWithImpl<$Res, _$UserSingleResponseImpl>
    implements _$$UserSingleResponseImplCopyWith<$Res> {
  __$$UserSingleResponseImplCopyWithImpl(_$UserSingleResponseImpl _value,
      $Res Function(_$UserSingleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserSingleResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UserSingleResponseImpl implements _UserSingleResponse {
  const _$UserSingleResponseImpl({this.data});

  factory _$UserSingleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSingleResponseImplFromJson(json);

  @override
  final UserData? data;

  @override
  String toString() {
    return 'UserSingleResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSingleResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSingleResponseImplCopyWith<_$UserSingleResponseImpl> get copyWith =>
      __$$UserSingleResponseImplCopyWithImpl<_$UserSingleResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSingleResponseImplToJson(
      this,
    );
  }
}

abstract class _UserSingleResponse implements UserSingleResponse {
  const factory _UserSingleResponse({final UserData? data}) =
      _$UserSingleResponseImpl;

  factory _UserSingleResponse.fromJson(Map<String, dynamic> json) =
      _$UserSingleResponseImpl.fromJson;

  @override
  UserData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserSingleResponseImplCopyWith<_$UserSingleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
