import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class ArtCategoriesScreen extends StatelessWidget {
  const ArtCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: CustomAppBar(
        title: 'Art Categories',
        onTap: () {
          context.pop();
        },
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 10.0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              // category 1: Horse
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: InkWell(
                  onTap: () =>
                      context.push('/horsePage'), // Use go_router navigation
                  child: Image.asset("assets/categories/horse10.jpg",
                      fit: BoxFit.cover),
                ),
              ),

              // category 2: Rabbit

              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: InkWell(
                  onTap: () =>
                      context.push('/rabbitPage'), // Use go_router navigation
                  child: Image.asset("assets/categories/rabbit1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
              // category 3: Elephant
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: InkWell(
                  onTap: () =>
                      context.push('/elephantPage'), // Use go_router navigation
                  child: Image.asset("assets/categories/elephant1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
              // category 4: Bear
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: InkWell(
                  onTap: () =>
                      context.push('/birdPage'), // Use go_router navigation
                  child: Image.asset("assets/categories/bird1.avif",
                      fit: BoxFit.cover),
                ),
              ),
              // Repeat for other images
            ],
          ),
        ),
      ),
    );
  }
}
