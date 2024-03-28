import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/screens/profile/profile_controller.dart';
import 'package:loan_simulator/screens/profile/widgets/profile_header_delegate.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(ProfileController.provider.notifier).onScreenLoaded();
      });
      return null;
    }, []);

    final currentProfile = ref.watch(ProfileController.provider.select(
      (value) => value.currentUser,
    ));

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            pinned: true,
            delegate: ProfileHeaderDelegate(
              collapsedHeight: kToolbarHeight + 80,
              expandedHeight: kToolbarHeight + 240,
              userData: currentProfile,
            ),
          )
        ],
        body: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.separated(
      itemBuilder: (context, index) => Text('list = $index'),
      itemCount: 100,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
