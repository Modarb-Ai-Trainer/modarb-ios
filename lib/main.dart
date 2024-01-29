import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/modarb_app.dart';
import 'core/di/dependency_injection.dart';
import 'core/networking/bloc_observer.dart';
import 'core/routing/app_router.dart';

void main() async{
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: ColorsManager.darkGray,
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.dark,
      // systemNavigationBarDividerColor: Colors.grey,
      // systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp( ModarbApp(
    appRouter: AppRouter(),
  ),
  );
}


