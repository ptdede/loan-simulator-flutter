import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_simulator/data/models/user_data.dart';

class ProfileHeaderDelegate extends SliverPersistentHeaderDelegate {
  ProfileHeaderDelegate({
    required this.userData,
    required this.vsync,
    required this.collapsedHeight,
    required this.expandedHeight,
  });

  final AsyncValue<UserData?> userData;
  final double collapsedHeight;
  final double expandedHeight;

  @override
  final TickerProvider vsync;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(_) => true;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration =>
      FloatingHeaderSnapConfiguration(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 200),
      );

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final scrollProgress = shrinkOffset / maxExtent;

    return Material(
      color: Colors.white,
      shape: const Border(
        bottom: BorderSide(width: 1, color: Colors.black12),
      ),
      child: SafeArea(
        child: userData.when(
          data: (data) => data != null
              ? _buildProfileCard(
                  context: context,
                  user: data,
                  scrollProgress: scrollProgress,
                )
              : const SizedBox.expand(),
          error: (error, stackTrace) => const SizedBox.expand(),
          loading: () => const SizedBox.expand(),
        ),
      ),
    );
  }

  Widget _buildProfileCard({
    required BuildContext context,
    required UserData user,
    required double scrollProgress,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            top: 0,
            left: lerpDouble(
                MediaQuery.of(context).size.width / 2 - 88, 0, scrollProgress),
            duration: Duration.zero,
            curve: Curves.linear,
            child: CachedNetworkImage(
              imageUrl: user.avatar ?? '',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) => AnimatedScale(
                duration: Duration.zero,
                scale: lerpDouble(1, 0.5, scrollProgress)!,
                alignment: Alignment.topLeft,
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(128),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration.zero,
            top: lerpDouble(140, 0, scrollProgress),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Text('${user.firstName} ${user.lastName}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                if (user.email != null) Text(user.email!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
