import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:color_app/learn_letter_screen/cubit/learn_letter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:color_app/injection_container.dart';

class LearnLetterScreen extends StatelessWidget {
  const LearnLetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Lettr Learning',
      ),
      body: BlocProvider(
        create: (context) => sl<LearnLetterCubit>(),
        child: BlocBuilder<LearnLetterCubit, LearnLetterState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 4,
                children: List.generate(
                  state.letterName.length,
                  (index) {
                    final letter = state.letterName[index];
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: GestureDetector(
                        onTap: () {
                          if (index == state.letterName.length - 1) {
                            print('object');
                            context.read<LearnLetterCubit>().playAudio();
                          }
                        },
                        child: Card(
                          child: Image.asset('assets/letters/$letter'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
