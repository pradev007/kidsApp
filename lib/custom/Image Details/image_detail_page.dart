import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';

class ImageDetailPage extends StatefulWidget {
  final String imagePath;

  const ImageDetailPage({super.key, required this.imagePath});

  @override
  State<ImageDetailPage> createState() => _ImageDetailPageState();
}

class _ImageDetailPageState extends State<ImageDetailPage> {
  final DrawingController _drawingController = DrawingController();
  Color currentColor = Colors.red;
  // List<Color> currentColors = [Colors.green, Colors.blue, Colors.orange];
  // List<Color> colorHistory = [];

  void changeColor(Color color) {
    setState(() {
      // change color of color picker's background
      currentColor = color;
      // update drawing controller's style to new color
      // update selected color from color picker
      _drawingController.setStyle(
        color: currentColor,
      );
    });
  }

  void _pickColor() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pick a color'),
            content: SingleChildScrollView(
              child: BlockPicker(
                pickerColor: currentColor,
                onColorChanged: (color) {
                  changeColor(color);
                },
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Image detail'),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentColor,
              ),
              // height: 50.0,
              // color: currentColor,
              child: IconButton(
                onPressed: _pickColor,
                icon: const Icon(
                  Icons.color_lens,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.9,
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: drawingBoard(context, widget.imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawingBoard(BuildContext context, String imagePath) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: DrawingBoard(
        controller: _drawingController,
        showDefaultActions: true,
        showDefaultTools: true,
        background: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
