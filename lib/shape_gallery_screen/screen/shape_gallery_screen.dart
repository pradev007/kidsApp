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
      appBar: const CustomAppBar(
        title: "Shape Page",
        // onTap: () {
        //   context.pop();
        // },
        // iconColor: Colors.black,
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
                            print("object");
                            context.read<ShapeGalleryCubit>().playAudio();
                          }
                        },
                        child: Card(
                          child: Image.asset('assets/shapes/$shape'),
                        ),
                      ),
                    );
                  },
                ),
                // children: [
                //   StaggeredGridTile.count(
                //     crossAxisCellCount: 2,
                //     mainAxisCellCount: 2,
                //     child: Card(
                //       child: Image.asset('assets/shapes/square.gif'),
                //     ),
                //   ),
                //   StaggeredGridTile.count(
                //     crossAxisCellCount: 2,
                //     mainAxisCellCount: 2,
                //     child: InkWell(
                //       onTap: () {},
                //       child: Card(
                //         child: Image.asset('assets/shapes/triangle.gif'),
                //       ),
                //     ),
                //   ),
                //   StaggeredGridTile.count(
                //     crossAxisCellCount: 2,
                //     mainAxisCellCount: 2,
                //     child: InkWell(
                //       onTap: () {},
                //       child: Card(
                //         child: Image.asset('assets/shapes/circle.gif'),
                //       ),
                //     ),
                //   ),
                //   StaggeredGridTile.count(
                //     crossAxisCellCount: 2,
                //     mainAxisCellCount: 2,
                //     child: InkWell(
                //       onTap: () {
                //         playAudio();
                //       },
                //       child: Card(
                //         child: Image.asset('assets/shapes/cube.gif'),
                //       ),
                //     ),
                //   ),
                // ],
              ),
            );
          },
        ),
      ),
    );
  }
}
