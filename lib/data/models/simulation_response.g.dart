// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimulationResponseImpl _$$SimulationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SimulationResponseImpl(
      plafond: (json['Plafond'] as num?)?.toDouble(),
      angsuranPokok: (json['AngsuranPokok'] as num?)?.toDouble(),
      angsuranBunga: (json['AngsuranBunga'] as num?)?.toDouble(),
      totalAngsuran: (json['TotalAngsuran'] as num?)?.toDouble(),
      tabelAngsuran: (json['TabelAngsuran'] as List<dynamic>?)
          ?.map((e) => TabelAngsuran.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SimulationResponseImplToJson(
        _$SimulationResponseImpl instance) =>
    <String, dynamic>{
      'Plafond': instance.plafond,
      'AngsuranPokok': instance.angsuranPokok,
      'AngsuranBunga': instance.angsuranBunga,
      'TotalAngsuran': instance.totalAngsuran,
      'TabelAngsuran': instance.tabelAngsuran,
    };

_$TabelAngsuranImpl _$$TabelAngsuranImplFromJson(Map<String, dynamic> json) =>
    _$TabelAngsuranImpl(
      bulanKe: json['BulanKe'] as int?,
      angsuranPokok: (json['AngsuranPokok'] as num?)?.toDouble(),
      angsuranBunga: (json['AngsuranBunga'] as num?)?.toDouble(),
      totalAngsuran: (json['TotalAngsuran'] as num?)?.toDouble(),
      sisaPinjaman: (json['SisaPinjaman'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TabelAngsuranImplToJson(_$TabelAngsuranImpl instance) =>
    <String, dynamic>{
      'BulanKe': instance.bulanKe,
      'AngsuranPokok': instance.angsuranPokok,
      'AngsuranBunga': instance.angsuranBunga,
      'TotalAngsuran': instance.totalAngsuran,
      'SisaPinjaman': instance.sisaPinjaman,
    };
