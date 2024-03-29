// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthControllerState {
  bool get isLoginSuccess => throw _privateConstructorUsedError;
  bool get isRegisterSuccess => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorAuth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthControllerStateCopyWith<AuthControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthControllerStateCopyWith<$Res> {
  factory $AuthControllerStateCopyWith(
          AuthControllerState value, $Res Function(AuthControllerState) then) =
      _$AuthControllerStateCopyWithImpl<$Res, AuthControllerState>;
  @useResult
  $Res call(
      {bool isLoginSuccess,
      bool isRegisterSuccess,
      String token,
      String email,
      String password,
      bool isLoading,
      String errorAuth});
}

/// @nodoc
class _$AuthControllerStateCopyWithImpl<$Res, $Val extends AuthControllerState>
    implements $AuthControllerStateCopyWith<$Res> {
  _$AuthControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoginSuccess = null,
    Object? isRegisterSuccess = null,
    Object? token = null,
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
    Object? errorAuth = null,
  }) {
    return _then(_value.copyWith(
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorAuth: null == errorAuth
          ? _value.errorAuth
          : errorAuth // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthControllerStateImplCopyWith<$Res>
    implements $AuthControllerStateCopyWith<$Res> {
  factory _$$AuthControllerStateImplCopyWith(_$AuthControllerStateImpl value,
          $Res Function(_$AuthControllerStateImpl) then) =
      __$$AuthControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoginSuccess,
      bool isRegisterSuccess,
      String token,
      String email,
      String password,
      bool isLoading,
      String errorAuth});
}

/// @nodoc
class __$$AuthControllerStateImplCopyWithImpl<$Res>
    extends _$AuthControllerStateCopyWithImpl<$Res, _$AuthControllerStateImpl>
    implements _$$AuthControllerStateImplCopyWith<$Res> {
  __$$AuthControllerStateImplCopyWithImpl(_$AuthControllerStateImpl _value,
      $Res Function(_$AuthControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoginSuccess = null,
    Object? isRegisterSuccess = null,
    Object? token = null,
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
    Object? errorAuth = null,
  }) {
    return _then(_$AuthControllerStateImpl(
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorAuth: null == errorAuth
          ? _value.errorAuth
          : errorAuth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthControllerStateImpl implements _AuthControllerState {
  const _$AuthControllerStateImpl(
      {this.isLoginSuccess = false,
      this.isRegisterSuccess = false,
      this.token = '',
      this.email = '',
      this.password = '',
      this.isLoading = false,
      this.errorAuth = ''});

  @override
  @JsonKey()
  final bool isLoginSuccess;
  @override
  @JsonKey()
  final bool isRegisterSuccess;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorAuth;

  @override
  String toString() {
    return 'AuthControllerState(isLoginSuccess: $isLoginSuccess, isRegisterSuccess: $isRegisterSuccess, token: $token, email: $email, password: $password, isLoading: $isLoading, errorAuth: $errorAuth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthControllerStateImpl &&
            (identical(other.isLoginSuccess, isLoginSuccess) ||
                other.isLoginSuccess == isLoginSuccess) &&
            (identical(other.isRegisterSuccess, isRegisterSuccess) ||
                other.isRegisterSuccess == isRegisterSuccess) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorAuth, errorAuth) ||
                other.errorAuth == errorAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoginSuccess,
      isRegisterSuccess, token, email, password, isLoading, errorAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthControllerStateImplCopyWith<_$AuthControllerStateImpl> get copyWith =>
      __$$AuthControllerStateImplCopyWithImpl<_$AuthControllerStateImpl>(
          this, _$identity);
}

abstract class _AuthControllerState implements AuthControllerState {
  const factory _AuthControllerState(
      {final bool isLoginSuccess,
      final bool isRegisterSuccess,
      final String token,
      final String email,
      final String password,
      final bool isLoading,
      final String errorAuth}) = _$AuthControllerStateImpl;

  @override
  bool get isLoginSuccess;
  @override
  bool get isRegisterSuccess;
  @override
  String get token;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isLoading;
  @override
  String get errorAuth;
  @override
  @JsonKey(ignore: true)
  _$$AuthControllerStateImplCopyWith<_$AuthControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
