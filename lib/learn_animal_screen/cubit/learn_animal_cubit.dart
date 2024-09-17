import 'package:bloc/bloc.dart';
import 'package:color_app/custom/text_to_speech.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'learn_animal_state.dart';

class LearnAnimalCubit extends Cubit<LearnAnimalState> {
  final tts = TtsService();
  LearnAnimalCubit()
      : super(
          const LearnAnimalState(
            animalNameList: [
              'Antelope',
              'Bear',
              'Cat',
              'Dog',
              'Elephant',
              'Flamingo',
              'Giraffe',
              'Hyena',
              'Iguana',
              'Jaguar',
            ],
            animalImageList: [
              'antelope.gif',
              'bear.gif',
              'cat.gif',
              'dog.gif',
              'elephants.gif',
              'flamingo.gif',
              'giraffe.gif',
              'hyena.gif',
              'iguana.gif',
              'jaguar.gif',
            ],
            // This will hold the current animal to be spoken
            animalTts: '',
          ),
        );

  // function to tigger TTS for specific animal by index
  Future<void> speakAnimalName(int index) async {
    // animalName holds state of current animal
    final animalName = state.animalNameList[index];
    await TtsService.speak(animalName); // Use the TTS service
    emit(
      LearnAnimalState(
        animalNameList: state.animalNameList,
        animalImageList: state.animalImageList,
        animalTts: animalName,
      ),
    );
  }
}
