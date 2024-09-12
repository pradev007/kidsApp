import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShapeScreen extends StatefulWidget {
  const ShapeScreen({super.key});

  @override
  State<ShapeScreen> createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapeScreen> {
  final audioPlayer = AudioPlayer();

  void playAudio() async {
    await audioPlayer.play(AssetSource('sounds/square.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shape Page'),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                child: Image.asset('assets/shapes/square.gif'),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Image.asset('assets/shapes/triangle.gif'),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Image.asset('assets/shapes/circle.gif'),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: InkWell(
                onTap: () {
                  playAudio();
                },
                child: Card(
                  child: Image.asset('assets/shapes/cube.gif'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
