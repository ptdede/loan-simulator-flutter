import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/screens/simulation/simulation_controller.dart';
import 'package:loan_simulator/screens/simulation/widgets/simulation_user_row.dart';

class SimulationScreen extends HookConsumerWidget {
  const SimulationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(SimulationController.provider.notifier).onScreenLoaded();
      });
      return null;
    }, const []);

    final userList = ref
        .watch(SimulationController.provider.select((value) => value.userList));

    return Scaffold(
      body: userList.when(
        data: (users) => ListView.separated(
          itemBuilder: (context, index) {
            final currentData = users.data?[index];
            return SimulationUserRow(
              userData: currentData,
            );
          },
          itemCount: users.data?.length ?? 0,
          separatorBuilder: (context, index) => const Divider(),
        ),
        error: (error, stackTrace) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }
}
