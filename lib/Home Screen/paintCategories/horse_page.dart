import 'package:colorapp/custom/art_tile.dart';
import 'package:colorapp/custom/Image%20Details/image_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HorsePage extends StatelessWidget {
  HorsePage({super.key});

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
            customArtTile(
                context: context, imageName: "assets/horse/horse1.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse2.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse3.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse4.avif"),
            customArtTile(
                context: context, imageName: "assets/horse/horse5.avif"),
            customArtTile(
                context: context, imageName: "assets/horse/horse6.jpg"),

            customArtTile(
                context: context, imageName: "assets/horse/horse7.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse8.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse9.jpeg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse10.jpg"),

            customArtTile(
                context: context, imageName: "assets/horse/horse11.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse12.png"),
            customArtTile(
                context: context, imageName: "assets/horse/horse13.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse14.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse14.png"),
            customArtTile(
                context: context, imageName: "assets/horse/horse15.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse16.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse17.jpg"),
            customArtTile(
                context: context, imageName: "assets/horse/horse18.png"),
            customArtTile(
                context: context, imageName: "assets/horse/horse19.png"),
            customArtTile(
                context: context, imageName: "assets/horse/horse20.png"),
            customArtTile(
                context: context, imageName: "assets/horse/horse21.jpg"),
            // Add other tiles as needed
          ],
        ),
      ),
    );
  }
}
