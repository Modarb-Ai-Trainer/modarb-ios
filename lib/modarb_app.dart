import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/login/logic/login_cubit.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';
import 'features/home/ui/home_page.dart';


class ModarbApp extends StatelessWidget{
  final AppRouter appRouter;

  const ModarbApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            primaryColor: ColorsManager.mainPurple,
            scaffoldBackgroundColor: ColorsManager.darkGray,
            appBarTheme: const AppBarTheme(
              backgroundColor: ColorsManager.darkGray,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.firstSplash,
          onGenerateRoute: appRouter.generateRoute,
          // home: const HomePage(),
        ),
      ),
    );
  }
}
