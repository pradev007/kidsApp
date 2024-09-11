import 'package:color_app/shape_gallery_screen/cubit/shape_gallery_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
//   cubit
  sl.registerFactory(() => ShapeGalleryCubit());
}
