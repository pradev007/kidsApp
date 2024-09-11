import 'package:colorapp/screens/ArtCategories/bird_page.dart';
import 'package:colorapp/screens/ArtCategories/categories_page.dart';
import 'package:colorapp/screens/ArtCategories/elephant_page.dart';
import 'package:colorapp/screens/ArtCategories/rabbit_page.dart';
import 'package:colorapp/screens/AlphabetPage/alphabet_page.dart';
import 'package:colorapp/screens/AnimalPage/animal_page.dart';
import 'package:colorapp/screens/ArtCategories/horse_page.dart';
import 'package:colorapp/screens/ColorPage/color_page.dart';
import 'package:colorapp/custom/Image%20Details/image_detail_page.dart';
import 'package:colorapp/screens/HomeScreen/home_page.dart';
import 'package:colorapp/screens/NumberPage/number_page.dart';
import 'package:colorapp/screens/ShapePage/shape_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: "HomePage",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/horsePage',
    name: "HorsePage",
    builder: (context, state) => HorsePage(),
    // routes: [
    //   GoRoute(
    //       path: 'horses', // no need to add '/' in child route
    //       builder: (context, state) {
    //         return const HorsePaint();
    //       })
    // ],
  ),
  GoRoute(
    path: '/rabbitPage',
    name: "RabbitPage",
    builder: (context, state) => const RabbitPage(
        // imagePath: '',
        ),
  ),
  GoRoute(
    path: '/elephantPage',
    name: "ElephantPage",
    builder: (context, state) => const ElephantPage(
        // imagePath: '',
        ),
  ),
  GoRoute(
    path: '/birdPage',
    name: "BirdPage",
    builder: (context, state) => const BirdPage(
        // imagePath: '',
        ),
  ),
  GoRoute(
    path: '/imageDetailPage',
    name: "ImageDetailPage",
    builder: (context, state) => const ImageDetailPage(
      imagePath: '',
    ),
  ),
  GoRoute(
    path: '/alphabetPage',
    name: "AlphabetPage",
    builder: (context, state) => const AlphabetPage(),
  ),
  GoRoute(
    path: '/categoriesPage',
    name: "CategoriesPage",
    builder: (context, state) => const CategoriesPage(),
  ),
  GoRoute(
    path: '/animalPage',
    name: "AnimalPage",
    builder: (context, state) => const AnimalPage(),
  ),
  GoRoute(
    path: '/colorPage',
    name: "ColorPage",
    builder: (context, state) => const ColorPage(),
  ),
  GoRoute(
    path: '/numberPage',
    name: "NumberPage",
    builder: (context, state) => const NumberPage(),
  ),
  GoRoute(
    path: '/shapePage',
    name: "ShapePage",
    builder: (context, state) => ShapePage(),
  ),
]);
