import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredTile extends StatelessWidget {
  final int crossAxisCellCount;
  final int mainAxisCellCount;
  final String image;
  final BoxFit boxFit;
  final Function()? onTap;
  final Color cardColor;
  final Color? splashColor;

  const StaggeredTile({
    super.key,
    this.crossAxisCellCount = 1,
    this.mainAxisCellCount = 1,
    required this.image,
    this.boxFit = BoxFit.contain,
    this.onTap,
    required this.cardColor,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCellCount,
      mainAxisCellCount: mainAxisCellCount,
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor,
        child: Card(
          color: cardColor,
          child: Image.asset(
            image,
            fit: boxFit,
          ),
        ),
      ),
    );
  }
}
