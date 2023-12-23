import 'package:flutter/material.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/features/splash/ui/screens/last_splash.dart';
import 'package:modarb_app/features/splash/ui/screens/splash_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login_screen/ui/login_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';


class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {

      case Routes.firstSplash:
        return MaterialPageRoute(
          builder: (_) => const FirstSplashScreen(),
        );

      case Routes.lastSplash:
        return MaterialPageRoute(
          builder: (_) => const LastSplashScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}