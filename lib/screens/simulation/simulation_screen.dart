import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/screens/simulation/simulation_controller.dart';
import 'package:loan_simulator/screens/simulation/widgets/simulation_user_row.dart';
import 'package:loan_simulator/widgets/lc_shimmer.dart';

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
                title: Text(
                  'All Customer',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              floating: true,
              pinned: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.greenAccent,
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: const Row(
                children: [
                  Icon(Icons.info_outline_rounded),
                  SizedBox(width: 8),
                  Text('Choose a customer to see loan calculation')
                ],
              ),
            ),
          ),
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
          loading: () => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 62),
              _buildLoading(context),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),
              _buildLoading(context),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),
              _buildLoading(context),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),
              _buildLoading(context),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),
              _buildLoading(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLoading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LcShimmer(
                height: 64,
                width: 64,
                borderRadius: BorderRadius.circular(64),
              ),
              const SizedBox(width: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LcShimmer(
                    height: 16,
                    width: MediaQuery.of(context).size.width / 2.7,
                  ),
                  const SizedBox(height: 12),
                  LcShimmer(
                    height: 16,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
