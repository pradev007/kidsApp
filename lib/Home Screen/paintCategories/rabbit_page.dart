import 'package:colorapp/custom/art_tile.dart';
import 'package:colorapp/custom/Image%20Details/image_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class RabbitPage extends StatelessWidget {
  const RabbitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Rabbit Page',
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
                context: context, imageName: "assets/rabbit/rabbit1.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit2.avif"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit3.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit4.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit5.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit6.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit7.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit8.png"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit9.jpg"),
            customArtTile(
                context: context, imageName: "assets/rabbit/rabbit10.png"),

            // Add other tiles as needed
          ],
        ),
      ),
    );
  }
}
