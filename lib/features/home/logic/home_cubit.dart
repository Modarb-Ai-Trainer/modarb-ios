import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/features/home/data/models/home_response_model.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/trainer_screen.dart';
import 'package:modarb_app/features/workout/ui/screens/workout_screen.dart';
import '../../../core/helper/constant.dart';
import '../../more_info/ui/screens/more_info_screen.dart';
import '../../nutrition/ui/screens/nutrition_screen.dart';
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

  List<String> days = ['M','T','W','T','F','S','S'];
  List<int> points = [10,15,20,25,30,35,40];


  void onTabChanged(int index) {
    currentIndexOfPage = index;
    emit(HomeState.tabChanged(index));
  }


  HomeResponse? homeResponse;
  void getHomeData() async {
    emit(const HomeState.homeLoading());
    try {
      homeResponse = await _homeRepo.getHomeData();
      final userId = homeResponse?.data?.user?.id;
      if(userId != null) {
        await SharedPrefHelper.setData(SharedPrefKeys.userId, userId);
      }
      final myWorkoutId = homeResponse?.data?.myWorkout?.id;
      if(myWorkoutId != null) {
        await SharedPrefHelper.setData(SharedPrefKeys.myWorkoutId, myWorkoutId);
      }
      emit(HomeState.homeSuccess(homeResponse!));
    } catch (error) {
      print(error.toString());
      emit(const HomeState.homeError());
    }
  }





}