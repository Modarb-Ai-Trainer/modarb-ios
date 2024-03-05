import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/my_trainer/ui/trainer_screen.dart';
import 'package:modarb_app/features/workout/ui/workout_screen.dart';
import '../../more_info/ui/more_info_screen.dart';
import '../../nutrition/ui/nutrition_screen.dart';
import '../data/repos/home_repo.dart';
import '../ui/screens/home_screen.dart';

class HomeCubit extends Cubit<HomeState> {

  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  int currentIndexOfPage = 0;
  List<Widget> bottomScreens = [
    const HomeScreen(),
    const TrainerScreen(),
    const WorkoutScreen(),
    const NutritionScreen(),
    const MoreInfoScreen(),
  ];

  void onTabChanged(int index) {
    currentIndexOfPage = index;
    emit(HomeState.tabChanged(index));
  }
}