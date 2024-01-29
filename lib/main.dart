import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/modarb_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/networking/bloc_observer.dart';
import 'core/routing/app_router.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  runApp( ModarbApp(
    appRouter: AppRouter(),
  ),
  );
}


