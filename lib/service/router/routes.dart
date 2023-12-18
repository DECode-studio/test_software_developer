import 'package:get/get.dart';
import 'package:test_software_developer/view/main_page/main.dart';

var appRoutes = [
  GetPage(
    name: '/',
    page: () => const MainViewPage(),
    transition: Transition.fadeIn,
  ),
];
