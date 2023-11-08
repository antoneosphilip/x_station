
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:x_station_app/core/route_manager/page_name.dart';
import 'package:x_station_app/view/screens/login/login_screen/login_screen.dart';
import 'package:x_station_app/view/screens/onboarding/onboarding_screen/onboarding_screen.dart';
import 'package:x_station_app/view/screens/splash/splash_screen/splash_screen.dart';

List<GetPage> pages = [
  GetPage(
      name: PageName.splash,
      page: () => const SplashScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.onBoarding,
      page: () => const OnBoardingScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
  GetPage(
      name: PageName.login,
      page: () => const LoginScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(
        milliseconds: 250,
      )),
];
