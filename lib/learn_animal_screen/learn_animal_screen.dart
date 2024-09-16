// lib/animal_name_list/animal_name_list.dart
import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:color_app/learn_animal_screen/animal_data.dart';
import 'package:color_app/custom/text_to_speech.dart';
import 'package:go_router/go_router.dart';

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
          duration: const Duration(seconds: 1),
          content: Text('Details about: $animalName'),
        ),
      );
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: "Animal's Name",
        onTap: () {
          context.pop();
        },
      ),
      body: ListView.builder(
        itemCount:
            AnimalData.animalNames.length, // Use the list from AnimalData
        itemBuilder: (context, index) {
          final animalName = AnimalData.animalNames[index];
          final animalImage = AnimalData.animalImage[index];
          return ListTile(
            splashColor: Colors.amber,
            subtitle: Container(
                color: Colors.red,
                child: Center(
                    child: Text(
                  animalName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ))),
            title: Container(
              child: animalImage,
            ),
            onTap: () => handleTap(animalName),
          );
        },
      ),
    );
  }
}
