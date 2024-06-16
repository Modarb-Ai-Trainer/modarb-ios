import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/constant.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/features/login/logic/login_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';


class ModarbApp extends StatelessWidget{
  final AppRouter appRouter;

  const ModarbApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userToken = SharedPrefHelper.getString(SharedPrefKeys.userToken);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          ),
          BlocProvider(
          create: (context) => getIt<RegisterCubit>(),
          ),
          BlocProvider(
          create: (context) => getIt<TrainerCubit>(),
          ),
          BlocProvider(
          create: (context) => getIt<WorkoutCubit>(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            primaryColor: ColorsManager.mainPurple,
            scaffoldBackgroundColor: ColorsManager.darkGray,
            appBarTheme: const AppBarTheme(
              backgroundColor: ColorsManager.darkGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: userToken != null ?  Routes.homePage : Routes.firstSplash,
          // initialRoute: Routes.firstSplash,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }

}
