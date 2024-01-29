import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/features/loading/loading.dart';
import 'package:modarb_app/features/onboarding/ui/fitness_choise.dart';
import 'package:modarb_app/features/register/data/repos/register_repo.dart';
import 'package:modarb_app/features/register/ui/register_screen.dart';
import 'package:modarb_app/features/smart_trainer/ui/screens/trainer_after_loading.dart';
import 'package:modarb_app/features/smart_trainer/ui/screens/trainer_after_register.dart';
import 'package:modarb_app/features/splash/ui/screens/last_splash.dart';
import 'package:modarb_app/features/splash/ui/screens/splash_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';
import '../../features/register/logic/register_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';



class AppRouter {

  final RegisterRepo registerRepo = RegisterRepo(
    ApiService(DioFactory.getDio()),
  );
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;


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
          builder: (_) => const OnBoardingScreen(),
        );
        case Routes.fitnessChoice:
        return MaterialPageRoute(
          builder: (_) => const FitnessChoice(),
        );

        case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => RegisterCubit(registerRepo),
            child: const RegisterScreen(),
          ),
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