import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'simulation_model.freezed.dart';

@freezed
class SimulationModel with _$SimulationModel {
  const factory SimulationModel({
    @Default('') String plafond,
    @Default('') String angsuranPokok,
    @Default('') String angsuranBunga,
    @Default('') String totalAngsuran,
    @Default([]) List<SimulationModelTabelAngsuran> tabelAngsuran,
  }) = _SimulationModel;
}

@freezed
class SimulationModelTabelAngsuran with _$SimulationModelTabelAngsuran {
  const factory SimulationModelTabelAngsuran({
    @Default(0) int bulanKe,
    @Default('') String angsuranPokok,
    @Default('') String angsuranBunga,
    @Default('') String totalAngsuran,
    @Default('') String sisaPinjaman,
  }) = _SimulationModelTabelAngsuran;
}
