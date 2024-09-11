import 'package:colorapp/custom/Image%20Details/image_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class customArtTile extends StatelessWidget {
  const customArtTile({
    super.key,
    required this.context,
    required this.imageName,
  });

  final BuildContext context;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: InkWell(
        onTap: ()
            // {
            //   // Use go_router navigation for image detail if it's a separate route
            //   context.go('/imageDetailPage');
            // },
            {
          // Navigate to ImageDetailPage with the image path
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageDetailPage(imagePath: imageName),
            ),
          );
        },
        splashColor: Colors.purple,
        child: Image.asset(imageName, fit: BoxFit.cover),
      ),
    );
  }
}
