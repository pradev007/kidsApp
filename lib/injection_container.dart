import 'package:color_app/learn_letter_screen/cubit/learn_letter_cubit.dart';
import 'package:color_app/shape_gallery_screen/cubit/shape_gallery_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
//   cubit
  sl.registerFactory(() => ShapeGalleryCubit());
  sl.registerFactory(() => LearnLetterCubit());
}
