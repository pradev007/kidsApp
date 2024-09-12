import 'package:audioplayers/audioplayers.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shape_gallery_state.dart';

class ShapeGalleryCubit extends Cubit<ShapeGalleryState> {
  final audioPlayer = AudioPlayer();

  ShapeGalleryCubit()
      : super(
          const ShapeGalleryState(
            shapeImageList: [
              'square.gif',
              'triangle.gif',
              'circle.gif',
              'cube.gif',
            ],
            soundNameList: ['sounds/square.mp3']
          ),
        );

  Future<void> playAudio({required String soundName}) async {
    audioPlayer.play(AssetSource(soundName));
  }
}
