// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimulationModel {
  String get plafond => throw _privateConstructorUsedError;
  String get angsuranPokok => throw _privateConstructorUsedError;
  String get angsuranBunga => throw _privateConstructorUsedError;
  String get totalAngsuran => throw _privateConstructorUsedError;
  List<SimulationModelTabelAngsuran> get tabelAngsuran =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulationModelCopyWith<SimulationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationModelCopyWith<$Res> {
  factory $SimulationModelCopyWith(
          SimulationModel value, $Res Function(SimulationModel) then) =
      _$SimulationModelCopyWithImpl<$Res, SimulationModel>;
  @useResult
  $Res call(
      {String plafond,
      String angsuranPokok,
      String angsuranBunga,
      String totalAngsuran,
      List<SimulationModelTabelAngsuran> tabelAngsuran});
}

/// @nodoc
class _$SimulationModelCopyWithImpl<$Res, $Val extends SimulationModel>
    implements $SimulationModelCopyWith<$Res> {
  _$SimulationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plafond = null,
    Object? angsuranPokok = null,
    Object? angsuranBunga = null,
    Object? totalAngsuran = null,
    Object? tabelAngsuran = null,
  }) {
    return _then(_value.copyWith(
      plafond: null == plafond
          ? _value.plafond
          : plafond // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranPokok: null == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranBunga: null == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as String,
      totalAngsuran: null == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as String,
      tabelAngsuran: null == tabelAngsuran
          ? _value.tabelAngsuran
          : tabelAngsuran // ignore: cast_nullable_to_non_nullable
              as List<SimulationModelTabelAngsuran>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationModelImplCopyWith<$Res>
    implements $SimulationModelCopyWith<$Res> {
  factory _$$SimulationModelImplCopyWith(_$SimulationModelImpl value,
          $Res Function(_$SimulationModelImpl) then) =
      __$$SimulationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String plafond,
      String angsuranPokok,
      String angsuranBunga,
      String totalAngsuran,
      List<SimulationModelTabelAngsuran> tabelAngsuran});
}

/// @nodoc
class __$$SimulationModelImplCopyWithImpl<$Res>
    extends _$SimulationModelCopyWithImpl<$Res, _$SimulationModelImpl>
    implements _$$SimulationModelImplCopyWith<$Res> {
  __$$SimulationModelImplCopyWithImpl(
      _$SimulationModelImpl _value, $Res Function(_$SimulationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plafond = null,
    Object? angsuranPokok = null,
    Object? angsuranBunga = null,
    Object? totalAngsuran = null,
    Object? tabelAngsuran = null,
  }) {
    return _then(_$SimulationModelImpl(
      plafond: null == plafond
          ? _value.plafond
          : plafond // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranPokok: null == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranBunga: null == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as String,
      totalAngsuran: null == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as String,
      tabelAngsuran: null == tabelAngsuran
          ? _value._tabelAngsuran
          : tabelAngsuran // ignore: cast_nullable_to_non_nullable
              as List<SimulationModelTabelAngsuran>,
    ));
  }
}

/// @nodoc

class _$SimulationModelImpl
    with DiagnosticableTreeMixin
    implements _SimulationModel {
  const _$SimulationModelImpl(
      {this.plafond = '',
      this.angsuranPokok = '',
      this.angsuranBunga = '',
      this.totalAngsuran = '',
      final List<SimulationModelTabelAngsuran> tabelAngsuran = const []})
      : _tabelAngsuran = tabelAngsuran;

  @override
  @JsonKey()
  final String plafond;
  @override
  @JsonKey()
  final String angsuranPokok;
  @override
  @JsonKey()
  final String angsuranBunga;
  @override
  @JsonKey()
  final String totalAngsuran;
  final List<SimulationModelTabelAngsuran> _tabelAngsuran;
  @override
  @JsonKey()
  List<SimulationModelTabelAngsuran> get tabelAngsuran {
    if (_tabelAngsuran is EqualUnmodifiableListView) return _tabelAngsuran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabelAngsuran);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulationModel(plafond: $plafond, angsuranPokok: $angsuranPokok, angsuranBunga: $angsuranBunga, totalAngsuran: $totalAngsuran, tabelAngsuran: $tabelAngsuran)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulationModel'))
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
            other is _$SimulationModelImpl &&
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
  _$$SimulationModelImplCopyWith<_$SimulationModelImpl> get copyWith =>
      __$$SimulationModelImplCopyWithImpl<_$SimulationModelImpl>(
          this, _$identity);
}

abstract class _SimulationModel implements SimulationModel {
  const factory _SimulationModel(
          {final String plafond,
          final String angsuranPokok,
          final String angsuranBunga,
          final String totalAngsuran,
          final List<SimulationModelTabelAngsuran> tabelAngsuran}) =
      _$SimulationModelImpl;

  @override
  String get plafond;
  @override
  String get angsuranPokok;
  @override
  String get angsuranBunga;
  @override
  String get totalAngsuran;
  @override
  List<SimulationModelTabelAngsuran> get tabelAngsuran;
  @override
  @JsonKey(ignore: true)
  _$$SimulationModelImplCopyWith<_$SimulationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimulationModelTabelAngsuran {
  int get bulanKe => throw _privateConstructorUsedError;
  String get angsuranPokok => throw _privateConstructorUsedError;
  String get angsuranBunga => throw _privateConstructorUsedError;
  String get totalAngsuran => throw _privateConstructorUsedError;
  String get sisaPinjaman => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimulationModelTabelAngsuranCopyWith<SimulationModelTabelAngsuran>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationModelTabelAngsuranCopyWith<$Res> {
  factory $SimulationModelTabelAngsuranCopyWith(
          SimulationModelTabelAngsuran value,
          $Res Function(SimulationModelTabelAngsuran) then) =
      _$SimulationModelTabelAngsuranCopyWithImpl<$Res,
          SimulationModelTabelAngsuran>;
  @useResult
  $Res call(
      {int bulanKe,
      String angsuranPokok,
      String angsuranBunga,
      String totalAngsuran,
      String sisaPinjaman});
}

/// @nodoc
class _$SimulationModelTabelAngsuranCopyWithImpl<$Res,
        $Val extends SimulationModelTabelAngsuran>
    implements $SimulationModelTabelAngsuranCopyWith<$Res> {
  _$SimulationModelTabelAngsuranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bulanKe = null,
    Object? angsuranPokok = null,
    Object? angsuranBunga = null,
    Object? totalAngsuran = null,
    Object? sisaPinjaman = null,
  }) {
    return _then(_value.copyWith(
      bulanKe: null == bulanKe
          ? _value.bulanKe
          : bulanKe // ignore: cast_nullable_to_non_nullable
              as int,
      angsuranPokok: null == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranBunga: null == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as String,
      totalAngsuran: null == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as String,
      sisaPinjaman: null == sisaPinjaman
          ? _value.sisaPinjaman
          : sisaPinjaman // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationModelTabelAngsuranImplCopyWith<$Res>
    implements $SimulationModelTabelAngsuranCopyWith<$Res> {
  factory _$$SimulationModelTabelAngsuranImplCopyWith(
          _$SimulationModelTabelAngsuranImpl value,
          $Res Function(_$SimulationModelTabelAngsuranImpl) then) =
      __$$SimulationModelTabelAngsuranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bulanKe,
      String angsuranPokok,
      String angsuranBunga,
      String totalAngsuran,
      String sisaPinjaman});
}

/// @nodoc
class __$$SimulationModelTabelAngsuranImplCopyWithImpl<$Res>
    extends _$SimulationModelTabelAngsuranCopyWithImpl<$Res,
        _$SimulationModelTabelAngsuranImpl>
    implements _$$SimulationModelTabelAngsuranImplCopyWith<$Res> {
  __$$SimulationModelTabelAngsuranImplCopyWithImpl(
      _$SimulationModelTabelAngsuranImpl _value,
      $Res Function(_$SimulationModelTabelAngsuranImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bulanKe = null,
    Object? angsuranPokok = null,
    Object? angsuranBunga = null,
    Object? totalAngsuran = null,
    Object? sisaPinjaman = null,
  }) {
    return _then(_$SimulationModelTabelAngsuranImpl(
      bulanKe: null == bulanKe
          ? _value.bulanKe
          : bulanKe // ignore: cast_nullable_to_non_nullable
              as int,
      angsuranPokok: null == angsuranPokok
          ? _value.angsuranPokok
          : angsuranPokok // ignore: cast_nullable_to_non_nullable
              as String,
      angsuranBunga: null == angsuranBunga
          ? _value.angsuranBunga
          : angsuranBunga // ignore: cast_nullable_to_non_nullable
              as String,
      totalAngsuran: null == totalAngsuran
          ? _value.totalAngsuran
          : totalAngsuran // ignore: cast_nullable_to_non_nullable
              as String,
      sisaPinjaman: null == sisaPinjaman
          ? _value.sisaPinjaman
          : sisaPinjaman // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SimulationModelTabelAngsuranImpl
    with DiagnosticableTreeMixin
    implements _SimulationModelTabelAngsuran {
  const _$SimulationModelTabelAngsuranImpl(
      {this.bulanKe = 0,
      this.angsuranPokok = '',
      this.angsuranBunga = '',
      this.totalAngsuran = '',
      this.sisaPinjaman = ''});

  @override
  @JsonKey()
  final int bulanKe;
  @override
  @JsonKey()
  final String angsuranPokok;
  @override
  @JsonKey()
  final String angsuranBunga;
  @override
  @JsonKey()
  final String totalAngsuran;
  @override
  @JsonKey()
  final String sisaPinjaman;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SimulationModelTabelAngsuran(bulanKe: $bulanKe, angsuranPokok: $angsuranPokok, angsuranBunga: $angsuranBunga, totalAngsuran: $totalAngsuran, sisaPinjaman: $sisaPinjaman)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SimulationModelTabelAngsuran'))
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
            other is _$SimulationModelTabelAngsuranImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, bulanKe, angsuranPokok,
      angsuranBunga, totalAngsuran, sisaPinjaman);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationModelTabelAngsuranImplCopyWith<
          _$SimulationModelTabelAngsuranImpl>
      get copyWith => __$$SimulationModelTabelAngsuranImplCopyWithImpl<
          _$SimulationModelTabelAngsuranImpl>(this, _$identity);
}

abstract class _SimulationModelTabelAngsuran
    implements SimulationModelTabelAngsuran {
  const factory _SimulationModelTabelAngsuran(
      {final int bulanKe,
      final String angsuranPokok,
      final String angsuranBunga,
      final String totalAngsuran,
      final String sisaPinjaman}) = _$SimulationModelTabelAngsuranImpl;

  @override
  int get bulanKe;
  @override
  String get angsuranPokok;
  @override
  String get angsuranBunga;
  @override
  String get totalAngsuran;
  @override
  String get sisaPinjaman;
  @override
  @JsonKey(ignore: true)
  _$$SimulationModelTabelAngsuranImplCopyWith<
          _$SimulationModelTabelAngsuranImpl>
      get copyWith => throw _privateConstructorUsedError;
}
