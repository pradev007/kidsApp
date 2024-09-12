import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:color_app/injection_container.dart';
import 'package:color_app/learn_letter_screen/cubit/learn_letter_cubit.dart';
import 'package:color_app/shape_gallery_screen/cubit/shape_gallery_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LearnLetterScreen extends StatelessWidget {
  const LearnLetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Letter Learning',
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<LearnLetterCubit>(),
          ),
          BlocProvider(
            create: (context) => sl<ShapeGalleryCubit>(),
          ),
        ],
        child: BlocBuilder<LearnLetterCubit, LearnLetterState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 4,
                children: List.generate(
                  state.letterNameList.length,
                  (index) {
                    final letter = state.letterNameList[index];
                    return BlocBuilder<ShapeGalleryCubit, ShapeGalleryState>(
                      builder: (context, shapeCubit) {
                        return StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: GestureDetector(
                            onTap: () {
                              if (index == state.letterNameList.length - 1) {
                                context
                                    .read<ShapeGalleryCubit>()
                                    .playAudio(soundName: "sounds/square.mp3");
                              }
                            },
                            child: Card(
                              child: Image.asset('assets/letters/$letter'),
                            ),
                          ),
                        );
                      },
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
