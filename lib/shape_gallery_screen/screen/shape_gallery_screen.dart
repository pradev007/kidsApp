import 'package:color_app/core/material/custom_app_bar.dart';
import 'package:color_app/shape_gallery_screen/cubit/shape_gallery_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../injection_container.dart';

class ShapeGalleryScreen extends StatelessWidget {
  const ShapeGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Shape Page",
        onTap: () {
          context.pop();
        },
      ),
      body: BlocProvider(
        create: (context) => sl<ShapeGalleryCubit>(),
        child: BlocBuilder<ShapeGalleryCubit, ShapeGalleryState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 4,
                mainAxisSpacing: 5,
                children: List.generate(
                  state.shapeImageList.length,
                  (index) {
                    final shape = state.shapeImageList[index];
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: GestureDetector(
                        onTap: () {
                          if (index == state.shapeImageList.length - 1) {
                            context
                                .read<ShapeGalleryCubit>()
                                .playAudio(soundName: "sounds/square.mp3");
                          }
                        },
                        child: Card(
                          child: Image.asset('assets/shapes/$shape'),
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
