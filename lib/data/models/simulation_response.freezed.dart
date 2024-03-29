// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimulationResponse _$SimulationResponseFromJson(Map<String, dynamic> json) {
  return _SimulationResponse.fromJson(json);
}

/// @nodoc
mixin _$SimulationResponse {
  @JsonKey(name: 'Plafond')
  double? get plafond => throw _privateConstructorUsedError;
  @JsonKey(name: 'AngsuranPokok')
  double? get angsuranPokok => throw _privateConstructorUsedError;
  @JsonKey(name: 'AngsuranBunga')
  double? get angsuranBunga => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalAngsuran')
  double? get totalAngsuran => throw _privateConstructorUsedError;
  @JsonKey(name: 'TabelAngsuran')
  List<TabelAngsuran>? get tabelAngsuran => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimulationResponseCopyWith<SimulationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationResponseCopyWith<$Res> {
  factory $SimulationResponseCopyWith(
          SimulationResponse value, $Res Function(SimulationResponse) then) =
      _$SimulationResponseCopyWithImpl<$Res, SimulationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Plafond') double? plafond,
      @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
      @JsonKey(name: 'TabelAngsuran') List<TabelAngsuran>? tabelAngsuran});
}

/// @nodoc
class _$SimulationResponseCopyWithImpl<$Res, $Val extends SimulationResponse>
    implements $SimulationResponseCopyWith<$Res> {
  _$SimulationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plafond = freezed,
    Object? angsuranPokok = freezed,
    Object? angsuranBunga = freezed,
    Object? totalAngsuran = freezed,
    Object? tabelAngsuran = freezed,
  }) {
    return _then(_value.copyWith(
      plafond: freezed == plafond
          ? _value.plafond
          : plafond // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranPokok: freezed == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranBunga: freezed == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAngsuran: freezed == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as double?,
      tabelAngsuran: freezed == tabelAngsuran
          ? _value.tabelAngsuran
          : tabelAngsuran // ignore: cast_nullable_to_non_nullable
              as List<TabelAngsuran>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationResponseImplCopyWith<$Res>
    implements $SimulationResponseCopyWith<$Res> {
  factory _$$SimulationResponseImplCopyWith(_$SimulationResponseImpl value,
          $Res Function(_$SimulationResponseImpl) then) =
      __$$SimulationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Plafond') double? plafond,
      @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
      @JsonKey(name: 'TabelAngsuran') List<TabelAngsuran>? tabelAngsuran});
}

/// @nodoc
class __$$SimulationResponseImplCopyWithImpl<$Res>
    extends _$SimulationResponseCopyWithImpl<$Res, _$SimulationResponseImpl>
    implements _$$SimulationResponseImplCopyWith<$Res> {
  __$$SimulationResponseImplCopyWithImpl(_$SimulationResponseImpl _value,
      $Res Function(_$SimulationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plafond = freezed,
    Object? angsuranPokok = freezed,
    Object? angsuranBunga = freezed,
    Object? totalAngsuran = freezed,
    Object? tabelAngsuran = freezed,
  }) {
    return _then(_$SimulationResponseImpl(
      plafond: freezed == plafond
          ? _value.plafond
          : plafond // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranPokok: freezed == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranBunga: freezed == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAngsuran: freezed == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as double?,
      tabelAngsuran: freezed == tabelAngsuran
          ? _value._tabelAngsuran
          : tabelAngsuran // ignore: cast_nullable_to_non_nullable
              as List<TabelAngsuran>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimulationResponseImpl
    with DiagnosticableTreeMixin
    implements _SimulationResponse {
  const _$SimulationResponseImpl(
      {@JsonKey(name: 'Plafond') this.plafond,
      @JsonKey(name: 'AngsuranPokok') this.angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') this.angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') this.totalAngsuran,
      @JsonKey(name: 'TabelAngsuran') final List<TabelAngsuran>? tabelAngsuran})
      : _tabelAngsuran = tabelAngsuran;

  factory _$SimulationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimulationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Plafond')
  final double? plafond;
  @override
  @JsonKey(name: 'AngsuranPokok')
  final double? angsuranPokok;
  @override
  @JsonKey(name: 'AngsuranBunga')
  final double? angsuranBunga;
  @override
  @JsonKey(name: 'TotalAngsuran')
  final double? totalAngsuran;
  final List<TabelAngsuran>? _tabelAngsuran;
  @override
  @JsonKey(name: 'TabelAngsuran')
  List<TabelAngsuran>? get tabelAngsuran {
    final value = _tabelAngsuran;
    if (value == null) return null;
    if (_tabelAngsuran is EqualUnmodifiableListView) return _tabelAngsuran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulationResponse(plafond: $plafond, angsuranPokok: $angsuranPokok, angsuranBunga: $angsuranBunga, totalAngsuran: $totalAngsuran, tabelAngsuran: $tabelAngsuran)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulationResponse'))
      ..add(DiagnosticsProperty('plafond', plafond))
      ..add(DiagnosticsProperty('angsuranPokok', angsuranPokok))
      ..add(DiagnosticsProperty('angsuranBunga', angsuranBunga))
      ..add(DiagnosticsProperty('totalAngsuran', totalAngsuran))
      ..add(DiagnosticsProperty('tabelAngsuran', tabelAngsuran));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulationResponseImpl &&
            (identical(other.plafond, plafond) || other.plafond == plafond) &&
            (identical(other.angsuranPokok, angsuranPokok) ||
                other.angsuranPokok == angsuranPokok) &&
            (identical(other.angsuranBunga, angsuranBunga) ||
                other.angsuranBunga == angsuranBunga) &&
            (identical(other.totalAngsuran, totalAngsuran) ||
                other.totalAngsuran == totalAngsuran) &&
            const DeepCollectionEquality()
                .equals(other._tabelAngsuran, _tabelAngsuran));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      plafond,
      angsuranPokok,
      angsuranBunga,
      totalAngsuran,
      const DeepCollectionEquality().hash(_tabelAngsuran));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationResponseImplCopyWith<_$SimulationResponseImpl> get copyWith =>
      __$$SimulationResponseImplCopyWithImpl<_$SimulationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimulationResponseImplToJson(
      this,
    );
  }
}

abstract class _SimulationResponse implements SimulationResponse {
  const factory _SimulationResponse(
      {@JsonKey(name: 'Plafond') final double? plafond,
      @JsonKey(name: 'AngsuranPokok') final double? angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') final double? angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') final double? totalAngsuran,
      @JsonKey(name: 'TabelAngsuran')
      final List<TabelAngsuran>? tabelAngsuran}) = _$SimulationResponseImpl;

  factory _SimulationResponse.fromJson(Map<String, dynamic> json) =
      _$SimulationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Plafond')
  double? get plafond;
  @override
  @JsonKey(name: 'AngsuranPokok')
  double? get angsuranPokok;
  @override
  @JsonKey(name: 'AngsuranBunga')
  double? get angsuranBunga;
  @override
  @JsonKey(name: 'TotalAngsuran')
  double? get totalAngsuran;
  @override
  @JsonKey(name: 'TabelAngsuran')
  List<TabelAngsuran>? get tabelAngsuran;
  @override
  @JsonKey(ignore: true)
  _$$SimulationResponseImplCopyWith<_$SimulationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TabelAngsuran _$TabelAngsuranFromJson(Map<String, dynamic> json) {
  return _TabelAngsuran.fromJson(json);
}

/// @nodoc
mixin _$TabelAngsuran {
  @JsonKey(name: 'BulanKe')
  int? get bulanKe => throw _privateConstructorUsedError;
  @JsonKey(name: 'AngsuranPokok')
  double? get angsuranPokok => throw _privateConstructorUsedError;
  @JsonKey(name: 'AngsuranBunga')
  double? get angsuranBunga => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalAngsuran')
  double? get totalAngsuran => throw _privateConstructorUsedError;
  @JsonKey(name: 'SisaPinjaman')
  double? get sisaPinjaman => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabelAngsuranCopyWith<TabelAngsuran> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabelAngsuranCopyWith<$Res> {
  factory $TabelAngsuranCopyWith(
          TabelAngsuran value, $Res Function(TabelAngsuran) then) =
      _$TabelAngsuranCopyWithImpl<$Res, TabelAngsuran>;
  @useResult
  $Res call(
      {@JsonKey(name: 'BulanKe') int? bulanKe,
      @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
      @JsonKey(name: 'SisaPinjaman') double? sisaPinjaman});
}

/// @nodoc
class _$TabelAngsuranCopyWithImpl<$Res, $Val extends TabelAngsuran>
    implements $TabelAngsuranCopyWith<$Res> {
  _$TabelAngsuranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bulanKe = freezed,
    Object? angsuranPokok = freezed,
    Object? angsuranBunga = freezed,
    Object? totalAngsuran = freezed,
    Object? sisaPinjaman = freezed,
  }) {
    return _then(_value.copyWith(
      bulanKe: freezed == bulanKe
          ? _value.bulanKe
          : bulanKe // ignore: cast_nullable_to_non_nullable
              as int?,
      angsuranPokok: freezed == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranBunga: freezed == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAngsuran: freezed == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as double?,
      sisaPinjaman: freezed == sisaPinjaman
          ? _value.sisaPinjaman
          : sisaPinjaman // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabelAngsuranImplCopyWith<$Res>
    implements $TabelAngsuranCopyWith<$Res> {
  factory _$$TabelAngsuranImplCopyWith(
          _$TabelAngsuranImpl value, $Res Function(_$TabelAngsuranImpl) then) =
      __$$TabelAngsuranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'BulanKe') int? bulanKe,
      @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
      @JsonKey(name: 'SisaPinjaman') double? sisaPinjaman});
}

/// @nodoc
class __$$TabelAngsuranImplCopyWithImpl<$Res>
    extends _$TabelAngsuranCopyWithImpl<$Res, _$TabelAngsuranImpl>
    implements _$$TabelAngsuranImplCopyWith<$Res> {
  __$$TabelAngsuranImplCopyWithImpl(
      _$TabelAngsuranImpl _value, $Res Function(_$TabelAngsuranImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bulanKe = freezed,
    Object? angsuranPokok = freezed,
    Object? angsuranBunga = freezed,
    Object? totalAngsuran = freezed,
    Object? sisaPinjaman = freezed,
  }) {
    return _then(_$TabelAngsuranImpl(
      bulanKe: freezed == bulanKe
          ? _value.bulanKe
          : bulanKe // ignore: cast_nullable_to_non_nullable
              as int?,
      angsuranPokok: freezed == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as double?,
      angsuranBunga: freezed == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAngsuran: freezed == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as double?,
      sisaPinjaman: freezed == sisaPinjaman
          ? _value.sisaPinjaman
          : sisaPinjaman // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabelAngsuranImpl
    with DiagnosticableTreeMixin
    implements _TabelAngsuran {
  const _$TabelAngsuranImpl(
      {@JsonKey(name: 'BulanKe') this.bulanKe,
      @JsonKey(name: 'AngsuranPokok') this.angsuranPokok,
      @JsonKey(name: 'AngsuranBunga') this.angsuranBunga,
      @JsonKey(name: 'TotalAngsuran') this.totalAngsuran,
      @JsonKey(name: 'SisaPinjaman') this.sisaPinjaman});

  factory _$TabelAngsuranImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabelAngsuranImplFromJson(json);

  @override
  @JsonKey(name: 'BulanKe')
  final int? bulanKe;
  @override
  @JsonKey(name: 'AngsuranPokok')
  final double? angsuranPokok;
  @override
  @JsonKey(name: 'AngsuranBunga')
  final double? angsuranBunga;
  @override
  @JsonKey(name: 'TotalAngsuran')
  final double? totalAngsuran;
  @override
  @JsonKey(name: 'SisaPinjaman')
  final double? sisaPinjaman;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabelAngsuran(bulanKe: $bulanKe, angsuranPokok: $angsuranPokok, angsuranBunga: $angsuranBunga, totalAngsuran: $totalAngsuran, sisaPinjaman: $sisaPinjaman)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabelAngsuran'))
      ..add(DiagnosticsProperty('bulanKe', bulanKe))
      ..add(DiagnosticsProperty('angsuranPokok', angsuranPokok))
      ..add(DiagnosticsProperty('angsuranBunga', angsuranBunga))
      ..add(DiagnosticsProperty('totalAngsuran', totalAngsuran))
      ..add(DiagnosticsProperty('sisaPinjaman', sisaPinjaman));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabelAngsuranImpl &&
            (identical(other.bulanKe, bulanKe) || other.bulanKe == bulanKe) &&
            (identical(other.angsuranPokok, angsuranPokok) ||
                other.angsuranPokok == angsuranPokok) &&
            (identical(other.angsuranBunga, angsuranBunga) ||
                other.angsuranBunga == angsuranBunga) &&
            (identical(other.totalAngsuran, totalAngsuran) ||
                other.totalAngsuran == totalAngsuran) &&
            (identical(other.sisaPinjaman, sisaPinjaman) ||
                other.sisaPinjaman == sisaPinjaman));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bulanKe, angsuranPokok,
      angsuranBunga, totalAngsuran, sisaPinjaman);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabelAngsuranImplCopyWith<_$TabelAngsuranImpl> get copyWith =>
      __$$TabelAngsuranImplCopyWithImpl<_$TabelAngsuranImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TabelAngsuranImplToJson(
      this,
    );
  }
}

abstract class _TabelAngsuran implements TabelAngsuran {
  const factory _TabelAngsuran(
          {@JsonKey(name: 'BulanKe') final int? bulanKe,
          @JsonKey(name: 'AngsuranPokok') final double? angsuranPokok,
          @JsonKey(name: 'AngsuranBunga') final double? angsuranBunga,
          @JsonKey(name: 'TotalAngsuran') final double? totalAngsuran,
          @JsonKey(name: 'SisaPinjaman') final double? sisaPinjaman}) =
      _$TabelAngsuranImpl;

  factory _TabelAngsuran.fromJson(Map<String, dynamic> json) =
      _$TabelAngsuranImpl.fromJson;

  @override
  @JsonKey(name: 'BulanKe')
  int? get bulanKe;
  @override
  @JsonKey(name: 'AngsuranPokok')
  double? get angsuranPokok;
  @override
  @JsonKey(name: 'AngsuranBunga')
  double? get angsuranBunga;
  @override
  @JsonKey(name: 'TotalAngsuran')
  double? get totalAngsuran;
  @override
  @JsonKey(name: 'SisaPinjaman')
  double? get sisaPinjaman;
  @override
  @JsonKey(ignore: true)
  _$$TabelAngsuranImplCopyWith<_$TabelAngsuranImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
