import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/data/mappers/simulation_response_mapper.dart';
import 'package:loan_simulator/data/models/simulation_model.dart';
import 'package:loan_simulator/data/models/simulation_response.dart';
import 'package:loan_simulator/data/services/simulation_service.dart';

class SimulationRepository {
  const SimulationRepository(this._simulationService);

  static final provider = Provider(
    (ref) => SimulationRepository(
      ref.watch(SimulationService.provider),
    ),
  );

  final SimulationService _simulationService;

  Future<SimulationModel> getLoanSimulationData({
    required String calcType,
    required String amount,
    required String tenor,
    required String rate,
    required String rateType,
  }) async {
    final result = await _simulationService.post(path: '/', body: {
      'CalcType': calcType,
      'Amount': amount,
      'Tenor': tenor,
      'Rate': rate,
      'RateType': rateType,
    });

    return SimulationResponse.fromJson(result).toModel();
  }
}
