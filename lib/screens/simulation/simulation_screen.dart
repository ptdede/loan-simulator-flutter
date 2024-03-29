import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/screens/simulation/simulation_controller.dart';
import 'package:loan_simulator/screens/simulation/widgets/simulation_user_row.dart';

class SimulationScreen extends HookConsumerWidget {
  const SimulationScreen({
    super.key,
    this.onRedirectToSimulationDetail,
  });

  final Function(String id)? onRedirectToSimulationDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(SimulationController.provider.notifier).onScreenLoaded();
      });
      return null;
    }, const []);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          Theme(
            data: ThemeData(
              primaryIconTheme: const IconThemeData(color: Colors.white),
            ),
            child: const SliverAppBar(
              expandedHeight: 150.0,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Select User'),
              ),
              floating: true,
              pinned: true,
            ),
          )
        ],
        body: _buildProfiles(),
      ),
    );
  }

  Widget _buildProfiles() {
    return Consumer(
      builder: (context, ref, child) {
        final userList = ref.watch(
            SimulationController.provider.select((value) => value.userList));

        return userList.when(
          data: (users) => ListView.separated(
            itemBuilder: (context, index) {
              final currentData = users.data?[index];

              if (currentData == null) return const SizedBox.shrink();

              return InkWell(
                onTap: () {
                  onRedirectToSimulationDetail?.call(currentData.id.toString());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SimulationUserRow(
                    userData: currentData,
                  ),
                ),
              );
            },
            itemCount: users.data?.length ?? 0,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
