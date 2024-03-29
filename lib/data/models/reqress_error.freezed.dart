// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reqress_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqressError _$ReqressErrorFromJson(Map<String, dynamic> json) {
  return _ReqressError.fromJson(json);
}

/// @nodoc
mixin _$ReqressError {
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqressErrorCopyWith<ReqressError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqressErrorCopyWith<$Res> {
  factory $ReqressErrorCopyWith(
          ReqressError value, $Res Function(ReqressError) then) =
      _$ReqressErrorCopyWithImpl<$Res, ReqressError>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error') String? error,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class _$ReqressErrorCopyWithImpl<$Res, $Val extends ReqressError>
    implements $ReqressErrorCopyWith<$Res> {
  _$ReqressErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqressErrorImplCopyWith<$Res>
    implements $ReqressErrorCopyWith<$Res> {
  factory _$$ReqressErrorImplCopyWith(
          _$ReqressErrorImpl value, $Res Function(_$ReqressErrorImpl) then) =
      __$$ReqressErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error') String? error,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class __$$ReqressErrorImplCopyWithImpl<$Res>
    extends _$ReqressErrorCopyWithImpl<$Res, _$ReqressErrorImpl>
    implements _$$ReqressErrorImplCopyWith<$Res> {
  __$$ReqressErrorImplCopyWithImpl(
      _$ReqressErrorImpl _value, $Res Function(_$ReqressErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ReqressErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqressErrorImpl implements _ReqressError {
  const _$ReqressErrorImpl(
      {@JsonKey(name: 'error') this.error,
      @JsonKey(name: 'Message') this.message});

  factory _$ReqressErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqressErrorImplFromJson(json);

  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'Message')
  final String? message;

  @override
  String toString() {
    return 'ReqressError(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqressErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqressErrorImplCopyWith<_$ReqressErrorImpl> get copyWith =>
      __$$ReqressErrorImplCopyWithImpl<_$ReqressErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqressErrorImplToJson(
      this,
    );
  }
}

abstract class _ReqressError implements ReqressError {
  const factory _ReqressError(
      {@JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'Message') final String? message}) = _$ReqressErrorImpl;

  factory _ReqressError.fromJson(Map<String, dynamic> json) =
      _$ReqressErrorImpl.fromJson;

  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ReqressErrorImplCopyWith<_$ReqressErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
