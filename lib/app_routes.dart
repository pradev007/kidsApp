import 'package:color_app/shape_screen/shape_page.dart';
import 'package:go_router/go_router.dart';
import 'Home Screen/paintCategories/bird_page.dart';
import 'Home Screen/paintCategories/elephant_page.dart';
import 'Home Screen/paintCategories/horse_page.dart';
import 'Home Screen/paintCategories/rabbit_page.dart';
import 'Home_screen/screen/home_screen.dart';
import 'alphabet_screen/alphabet_page.dart';
import 'animal_screen/animal_page.dart';
import 'art_category/categories_page.dart';
import 'color_screen/color_page.dart';
import 'custom/Image Details/image_detail_page.dart';
import 'number_screen/number_page.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/horse-screen',
        name: 'horse-screen',
        builder: (context, state) => const HorsePage(),
      ),
      GoRoute(
        path: '/rabbit-screen',
        name: 'rabbit-screen',
        builder: (context, state) => const RabbitPage(),
      ),
      GoRoute(
        path: '/elephant-screen',
        name: 'elephant-screen',
        builder: (context, state) => const ElephantPage(),
      ),
      GoRoute(
        path: '/bird-screen',
        name: 'bird-screen',
        builder: (context, state) => const BirdPage(),
      ),
      GoRoute(
        path: '/image-detail-screen',
        name: "image-detail-screen",
        builder: (context, state) => const ImageDetailPage(
          imagePath: '',
        ),
      ),
      GoRoute(
        path: '/alphabet-screen',
        name: "alphabet-screen",
        builder: (context, state) => const AlphabetPage(),
      ),
      GoRoute(
        path: '/categories-screen',
        name: "categories-screen",
        builder: (context, state) => const CategoriesPage(),
      ),
      GoRoute(
        path: '/animal-screen',
        name: "animal-screen",
        builder: (context, state) => const AnimalPage(),
      ),
      GoRoute(
        path: '/color-screen',
        name: "color-screen",
        builder: (context, state) => const ColorPage(),
      ),
      GoRoute(
        path: '/number-screen',
        name: "number-screen",
        builder: (context, state) => const NumberPage(),
      ),
      GoRoute(
        path: '/shape-screen',
        name: "shape-screen",
        builder: (context, state) => const ShapePage(),
      ),
    ],
  );
}
