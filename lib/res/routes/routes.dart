import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ref_ai/res/routes/routes_name.dart';
import 'package:ref_ai/views/HomeScreen/home_screen.dart';
import 'package:ref_ai/views/SplashScreen/first_splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => FirstSplashScreen(),

    ),
    GetPage(
      name: RouteName.homeScreen,
      page: () => HomeScreen(),
    ),
  ];
}
