import 'package:flutter/material.dart';

import '../../core/core.dart';

class StickySliverWidget extends SliverPersistentHeaderDelegate {
  StickySliverWidget({
    required this.child,
    this.minHeight = 48,
    this.maxHeight = 48,
    this.backgroundColor = Colors.white,
    this.borderRadius = BorderRadius.zero,
    this.clipper,
    this.clipBehavior = Clip.antiAlias,
  });
  final Widget child;
  final Color? backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final CustomClipper<RRect>? clipper;
  final Clip clipBehavior;
  final double maxHeight;
  final double minHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double currentExtent = maxExtent -
        (shrinkOffset > maxExtent - minExtent
            ? maxExtent - minExtent
            : shrinkOffset);

    return SizedBox.fromSize(
      size: Size.fromHeight(currentExtent),
      child: ClipRRect(
        clipper: clipper,
        clipBehavior: clipBehavior,
        borderRadius: borderRadius,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor!,
            boxShadow: [DAppBoxShadowStyles.boxShadow1],
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.minExtent != minExtent ||
        oldDelegate.maxExtent != maxExtent;
  }
}
