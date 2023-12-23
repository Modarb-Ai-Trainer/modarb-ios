import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';


class ModarbApp extends StatelessWidget{
  final AppRouter appRouter;

  const ModarbApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: ColorsManager.mainPurple,
          scaffoldBackgroundColor: ColorsManager.darkGray,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.firstSplash,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
