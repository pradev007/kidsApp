import 'package:color_app/art_category/art_bird_screen.dart';
import 'package:color_app/art_category/art_elephant_screen.dart';
import 'package:color_app/art_category/art_horse_screen.dart';
import 'package:color_app/art_category/art_rabbit_screen.dart';
import 'package:color_app/learn_color_screen/learn_color_screen.dart';
import 'package:color_app/learn_letter_screen/screen/learn_letter_screen.dart';
import 'package:color_app/shape_gallery_screen/screen/shape_gallery_screen.dart';
import 'package:go_router/go_router.dart';

import 'home_screen/screen/home_screen.dart';
import 'learn_animal_screen/learn_animal_screen.dart';
import 'art_category/art_categories_screen.dart';
import 'custom/image_detail_page.dart';
import 'learn_number_screen/screen/learn_number_screen.dart';

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
        path: '/art-horse-screen',
        name: 'art-horse-screen',
        builder: (context, state) => const ArtHorseScreen(),
      ),
      GoRoute(
        path: '/art-rabbit-screen',
        name: 'art-rabbit-screen',
        builder: (context, state) => const ArtRabbitScreen(),
      ),
      GoRoute(
        path: '/art-elephant-screen',
        name: 'art-elephant-screen',
        builder: (context, state) => const ArtElephantScreen(),
      ),
      GoRoute(
        path: '/art-bird-screen',
        name: 'art-bird-screen',
        builder: (context, state) => const ArtBirdScreen(),
      ),
      GoRoute(
        path: '/image-detail-screen',
        name: "image-detail-screen",
        builder: (context, state) => const ImageDetailPage(
          imagePath: '',
        ),
      ),
      GoRoute(
        path: '/learn-letter-screen',
        name: "learn-letter-screen",
        builder: (context, state) => const LearnLetterScreen(),
      ),
      GoRoute(
        path: '/art-categories-screen',
        name: "art-categories-screen",
        builder: (context, state) => const ArtCategoriesScreen(),
      ),
      GoRoute(
        path: '/learn-animal-screen',
        name: "learn-animal-screen",
        builder: (context, state) => const LearnAnimalScreen(),
      ),
      GoRoute(
        path: '/learn-color-screen',
        name: "learn-color-screen",
        builder: (context, state) => const LearnColorScreen(),
      ),
      GoRoute(
        path: '/learn-number-screen',
        name: "learn-number-screen",
        builder: (context, state) => const LearnNumberScreen(),
      ),
      GoRoute(
        path: '/learn-shape-gallery',
        name: "learn-shape-gallery",
        builder: (context, state) => const ShapeGalleryScreen(),
      ),
    ],
  );
}
