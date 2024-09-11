import 'package:colorapp/custom/art_tile.dart';
import 'package:colorapp/custom/Image%20Details/image_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class BirdPage extends StatelessWidget {
  const BirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Bird Page',
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
            customArtTile(
                context: context, imageName: "assets/birds/bird1.avif"),
            customArtTile(
                context: context, imageName: "assets/birds/bird2.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird3.avif"),
            customArtTile(
                context: context, imageName: "assets/birds/bird4.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird5.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird6.avif"),
            customArtTile(
                context: context, imageName: "assets/birds/bird7.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird8.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird9.jpg"),
            customArtTile(
                context: context, imageName: "assets/birds/bird10.jpg"),

            // Add other tiles as needed
          ],
        ),
      ),
    );
  }
}
