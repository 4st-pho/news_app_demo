import 'package:get/get.dart';
import 'package:news_app/presentation/binding/home_binding.dart';
import 'package:news_app/presentation/pages/home/home_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: RouteName.initPage,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}

class RouteName {
  static const initPage = '/';
  static const homePage = '/homePage';
}
