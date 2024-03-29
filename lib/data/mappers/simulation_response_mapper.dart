import 'package:loan_simulator/data/models/simulation_model.dart';
import 'package:loan_simulator/data/models/simulation_response.dart';
import 'package:loan_simulator/utils/thousands_formatter.dart';

extension SimulationResponseMapper on SimulationResponse {
  SimulationModel toModel() {
    return SimulationModel(
      plafond: thousandFormater(angsuranPokok?.toStringAsFixed(2) ?? '0'),
      angsuranPokok: thousandFormater(angsuranPokok?.toStringAsFixed(2) ?? '0'),
      angsuranBunga: thousandFormater(angsuranBunga?.toStringAsFixed(2) ?? '0'),
      totalAngsuran: thousandFormater(totalAngsuran?.toStringAsFixed(2) ?? '0'),
      tabelAngsuran: tabelAngsuran?.map((e) => e.toModel()).toList() ?? [],
    );
  }
}

extension SimulationTabelAnsuranResponseMapper on TabelAngsuran {
  SimulationModelTabelAngsuran toModel() {
    return SimulationModelTabelAngsuran(
      bulanKe: bulanKe ?? 0,
      angsuranPokok: thousandFormater(angsuranPokok?.toStringAsFixed(2) ?? '0'),
      angsuranBunga: thousandFormater(angsuranBunga?.toStringAsFixed(2) ?? '0'),
      totalAngsuran: thousandFormater(totalAngsuran?.toStringAsFixed(2) ?? '0'),
      sisaPinjaman: thousandFormater(sisaPinjaman?.toStringAsFixed(2) ?? '0'),
    );
  }
}
