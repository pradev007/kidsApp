import 'package:color_app/custom/art_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class ArtHorseScreen extends StatelessWidget {
  const ArtHorseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Horse Page',
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
                context: context, imageName: "assets/horse/horse1.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse2.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse3.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse4.avif"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse5.avif"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse6.jpg"),

            CustomArtTile(
                context: context, imageName: "assets/horse/horse7.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse8.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse9.jpeg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse10.jpg"),

            CustomArtTile(
                context: context, imageName: "assets/horse/horse11.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse12.png"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse13.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse14.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse14.png"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse15.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse16.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse17.jpg"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse18.png"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse19.png"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse20.png"),
            CustomArtTile(
                context: context, imageName: "assets/horse/horse21.jpg"),
            // Add other tiles as needed
          ],
        ),
      ),
    );
  }
}
