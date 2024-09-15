// lib/animal_name_list/animal_name_list.dart
import 'package:flutter/material.dart';
import 'package:color_app/learn_animal_screen/animal_data.dart';
import 'package:color_app/text_to_speech/text_to_speech.dart';

class LearnAnimalScreen extends StatelessWidget {
  const LearnAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This function handles what happens when an animal is tapped
    void handleTap(String animalName) {
      TtsService.speak(animalName); // Speak the animal name
      // Show a snackbar with animal details
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.horizontal,
          duration: Duration(seconds: 1),
          content: Text('Details about: $animalName'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Name List'),
      ),
      body: ListView.builder(
        itemCount:
            AnimalData.animalNames.length, // Use the list from AnimalData
        itemBuilder: (context, index) {
          final animalName = AnimalData.animalNames[index];
          return ListTile(
            title: Text(animalName),
            onTap: () => handleTap(animalName),
          );
        },
      ),
    );
  }
}
