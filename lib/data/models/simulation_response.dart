import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'simulation_response.freezed.dart';
part 'simulation_response.g.dart';

@freezed
class SimulationResponse with _$SimulationResponse {
  const factory SimulationResponse({
    @JsonKey(name: 'Plafond') double? plafond,
    @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
    @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
    @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
    @JsonKey(name: 'TabelAngsuran') List<TabelAngsuran>? tabelAngsuran,
  }) = _SimulationResponse;

  factory SimulationResponse.fromJson(Map<String, Object?> json) =>
      _$SimulationResponseFromJson(json);
}

@freezed
class TabelAngsuran with _$TabelAngsuran {
  const factory TabelAngsuran({
    @JsonKey(name: 'BulanKe') int? bulanKe,
    @JsonKey(name: 'AngsuranPokok') double? angsuranPokok,
    @JsonKey(name: 'AngsuranBunga') double? angsuranBunga,
    @JsonKey(name: 'TotalAngsuran') double? totalAngsuran,
    @JsonKey(name: 'SisaPinjaman') double? sisaPinjaman,
  }) = _TabelAngsuran;

  factory TabelAngsuran.fromJson(Map<String, Object?> json) =>
      _$TabelAngsuranFromJson(json);
}
