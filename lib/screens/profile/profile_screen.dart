import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/router.dart';
import 'package:loan_simulator/screens/profile/profile_controller.dart';
import 'package:loan_simulator/screens/profile/widgets/profile_header_delegate.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with TickerProviderStateMixin {
  final double _collapsedHeight = kToolbarHeight + 80;
  final double _expandedHeight = kToolbarHeight + 230;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(ProfileController.provider.notifier).onScreenLoaded();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentProfile = ref.watch(ProfileController.provider.select(
      (value) => value.currentUser,
    ));

    return Scaffold(
      backgroundColor: Colors.white70,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: ProfileHeaderDelegate(
              vsync: this,
              collapsedHeight: _collapsedHeight,
              expandedHeight: _expandedHeight,
              userData: currentProfile,
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 48,
              horizontal: 24,
            ),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLocationInfoSection(),
        const SizedBox(height: 32),
        ..._buildDeviceInfoSection(),
        const SizedBox(height: 32),
        InkWell(
          onTap: () {
            context.pushReplacementNamed(AppRouter.login);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.exit_to_app, color: Colors.red),
                SizedBox(width: 8),
                Text('Logout', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLocationInfoSection() {
    final state = ref.watch(ProfileController.provider.select((value) => (
          userLocationPosition: value.userLocationPosition,
          userLocationAddress: value.userLocationAddress,
        )));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title: 'Location Information'),
        const SizedBox(height: 24),
        ...state.userLocationPosition.when(
          data: (position) => [
            Row(
              children: [
                Expanded(
                  child: _buildProfileRow(
                    title: 'Latitude',
                    description: '${position.latitude}',
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildProfileRow(
                    title: 'Longitude',
                    description: '${position.longitude}',
                  ),
                ),
              ],
            ),
          ],
          error: (error, stackTrace) => [],
          loading: () => [],
        ),
        const SizedBox(height: 8),
        state.userLocationAddress.when(
          data: (data) {
            return SizedBox(
              width: double.infinity,
              child: _buildProfileRow(
                title: 'Address',
                description: data,
              ),
            );
          },
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
        ),
      ],
    );
  }

  List<Widget> _buildDeviceInfoSection() {
    final deviceInfoList = ref.watch(
      ProfileController.provider.select((value) => value.deviceInformationList),
    );

    return [
      _buildSectionTitle(title: 'Device Information'),
      const SizedBox(height: 24),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: deviceInfoList.when(
            data: (list) => Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 16,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: list
                  .map(
                    (info) => _buildBaseInfoRow(
                        title: info.title, description: info.description),
                  )
                  .toList(),
            ),
            error: (error, stackTrace) => const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
          ),
        ),
      ),
    ];
  }

  Widget _buildSectionTitle({required String title}) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildProfileRow({
    required String title,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: _buildBaseInfoRow(title: title, description: description),
      ),
    );
  }

  Widget _buildBaseInfoRow({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
