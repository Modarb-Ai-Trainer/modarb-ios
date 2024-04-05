import 'package:flutter/material.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/features/home/ui/screens/todays_workout_screen.dart';
import 'package:modarb_app/features/loading/ui/loading.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/exercise_details.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/week_of_plan_screen.dart';
import 'package:modarb_app/features/nutrition/ui/nutrition_screen.dart';
import 'package:modarb_app/features/onboarding/ui/fitness_choise.dart';
import 'package:modarb_app/features/register/ui/register_screen.dart';
import 'package:modarb_app/features/smart_trainer/ui/screens/trainer_after_loading.dart';
import 'package:modarb_app/features/smart_trainer/ui/screens/trainer_after_register.dart';
import 'package:modarb_app/features/splash/ui/screens/last_splash.dart';
import 'package:modarb_app/features/splash/ui/screens/splash_screen.dart';
import '../../features/home/ui/home_page.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';


class AppRouter {

  Route generateRoute(RouteSettings settings) {

    switch (settings.name) {

      // this is the route name for splash screen
      case Routes.firstSplash:
        return MaterialPageRoute(
          builder: (_) => const FirstSplashScreen(),
        );

      case Routes.lastSplash:
        return MaterialPageRoute(
          builder: (_) => const LastSplashScreen(),
        );

        // this is the route name for login screen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

        // this is the route name for onBoarding screens
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder:(_) => const OnBoardingScreen(),
        );

        case Routes.fitnessChoice:
        return MaterialPageRoute(
          builder: (_) => const FitnessChoice(),
        );

        case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

        case Routes.trainerAfterRegister:
        return MaterialPageRoute(
          builder: (_) => const TrainerAfterRegister(),
        );

        case Routes.loading:
        return MaterialPageRoute(
          builder: (_) => const LoadingScreen(),
        );

        case Routes.trainerAfterLoading:
        return MaterialPageRoute(
          builder: (_) => const TrainerAfterLoading(),
        );

      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

        case Routes.todayWorkoutScreen:
        return MaterialPageRoute(
          builder: (_) => const TodayWorkoutScreen(),
        );

        case Routes.nutritionScreen:
        return MaterialPageRoute(
          builder: (_) => const NutritionScreen(),
        );

      case Routes.weekOfPlanScreen:
        return MaterialPageRoute(
          builder: (_) => const WeekOfPlanScreen(),
        );

        case Routes.exerciseDetails:
        return MaterialPageRoute(
          builder: (_) => const ExerciseDetails(),
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