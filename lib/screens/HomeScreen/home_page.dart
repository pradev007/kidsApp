import 'package:colorapp/screens/ArtCategories/horse_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 0,
          children: [
            staggeredGridTileMethod(
              2, // crossAxisCellCount
              1, // mainAxisCellCount
              'assets/cover.png',
              BoxFit.fill,
              color: Colors.pink,
              // goToPage: () {},
            ),

            staggeredGridTileMethod(
                1, // crossAxisCellCount
                1, // mainAxisCellCount
                'assets/paint.png',
                BoxFit.fill,
                color: Colors.amber,
                goToPage: () => context.push('/categoriesPage'),
                splashColor: Colors.purple),
            // Art page

            // Shape page
            staggeredGridTileMethod(
              1, // crossAxisCellCount
              2, // mainAxisCellCount
              'assets/shapes.png',
              BoxFit.contain,
              color: Colors.blueAccent,
              goToPage: () => context.push('/shapePage'),
            ),
            staggeredGridTileMethod(
              1, // crossAxisCellCount
              2, // mainAxisCellCount
              'assets/number.png',
              BoxFit.cover,
              color: Colors.greenAccent,
              goToPage: () => context.push('/numberPage'),
            ),
            staggeredGridTileMethod(
              1, // crossAxisCellCount
              1, // mainAxisCellCount
              'assets/color.png',
              BoxFit.contain,
              color: Colors.deepPurple,
              goToPage: () => context.push('/colorPage'),
            ),
            staggeredGridTileMethod(
              1, // crossAxisCellCount
              1, // mainAxisCellCount
              'assets/animal.png',
              BoxFit.contain,
              color: Colors.amber,
              goToPage: () => context.push('/animalPage'),
            ),

            staggeredGridTileMethod(
              1, // crossAxisCellCount
              1, // mainAxisCellCount
              'assets/alpha.jpg',
              BoxFit.contain,
              color: Colors.pink,
              goToPage: () => context.push('/alphabetPage'),
            ),
          ],
        ),
      ),
    );
  }

  StaggeredGridTile staggeredGridTileMethod(
    int crossAxisCellCount,
    int mainAxisCellCount,
    String image,
    BoxFit fit, {
    VoidCallback? goToPage,
    Color? color,
    Color? splashColor,
  }) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCellCount,
      mainAxisCellCount: mainAxisCellCount,
      child: InkWell(
        onTap: goToPage != null ? goToPage : () {},
        splashColor: splashColor,
        child: Card(
          color: color,
          child: Image.asset(
            image,
            // 'assets/alpha.jpg',
            fit: fit,
          ),
        ),
      ),
    );
  }
}
