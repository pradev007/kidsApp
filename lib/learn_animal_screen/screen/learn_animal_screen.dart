// lib/animal_name_list/animal_name_list.dart
import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:color_app/injection_container.dart';
import 'package:color_app/learn_animal_screen/cubit/learn_animal_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LearnAnimalScreen extends StatelessWidget {
  const LearnAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Animal Learning'),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<LearnAnimalCubit>(),
          ),
        ],
        child: BlocBuilder<LearnAnimalCubit, LearnAnimalState>(
          builder: (context, state) {
            return ListView.builder(
                itemCount: state.animalNameList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(20),
                    // tileColor: Colors.amber,
                    // leading: Image.asset(state.animalImageList[index]),
                    title: Image.asset(
                        'assets/animals/${state.animalImageList[index]}'),
                    subtitle: Center(
                      child: Text(state.animalNameList[index]),
                    ),
                    subtitleTextStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(12, 233, 241, 1),
                    ),
                    trailing: IconButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 12, 233, 241),
                        ),
                      ),
                      onPressed: () {
                        context.read<LearnAnimalCubit>().speakAnimalName(index);
                      },
                      icon: const Icon(Icons.play_arrow_rounded),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
