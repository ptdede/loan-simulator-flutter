import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LcShimmer extends StatelessWidget {
  const LcShimmer({
    super.key,
    this.borderRadius,
    this.width = double.infinity,
    this.height = 10,
  });

  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(Object context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.black26,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
