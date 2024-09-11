import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../widgets/staggered_grid_vew_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 0,
          children: [
            const StaggeredTile(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              image: "assets/cover.png",
              cardColor: Colors.pink,
            ),
            // Art page

            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              image: "assets/paint.png",
              cardColor: Colors.amber,
              boxFit: BoxFit.fill,
              onTap: () => context.push('/categoriesPage'),
              splashColor: Colors.purple,
            ),
            // Shape page

            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              image: "assets/shapes.png",
              cardColor: Colors.blueAccent,
              onTap: () => context.push('/shapePage'),
            ),
            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              image: "assets/number.png",
              cardColor: Colors.greenAccent,
              onTap: () => context.push('/numberPage'),
              boxFit: BoxFit.cover,
            ),
            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              image: "assets/color.png",
              cardColor: Colors.deepPurple,
              boxFit: BoxFit.fill,
              onTap: () => context.push('/colorPage'),
            ),
            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              image: "assets/animal.png",
              cardColor: Colors.amber,
              boxFit: BoxFit.contain,
              onTap: () => context.push('/animalPage'),
            ),
            StaggeredTile(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              image: "assets/alpha.jpg",
              cardColor: Colors.pink,
              boxFit: BoxFit.fitWidth,
              onTap: () => context.push('/alphabetPage'),
            ),
          ],
        ),
      ),
    );
  }
}
