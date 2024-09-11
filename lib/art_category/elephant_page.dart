import 'package:color_app/custom/art_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class ElephantPage extends StatelessWidget {
  const ElephantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Elephant Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () =>
              context.pop(), // Use go_router's context.pop() method
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            CustomArtTile(
                context: context, imageName: "assets/elephant/el1.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el2.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el3.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el4.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el5.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el6.avif"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el7.png"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el8.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el9.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/elephant/el10.jfif"),

            // Add other tiles as needed
          ],
        ),
      ),
    );
  }
}
