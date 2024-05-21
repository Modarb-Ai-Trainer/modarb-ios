import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/home/data/models/home_response_model.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/trainer_screen.dart';
import 'package:modarb_app/features/workout/ui/screens/workout_screen.dart';
import '../../more_info/ui/more_info_screen.dart';
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


  // List<Day>? dayModel;
  // void checkADate(){
  //   final startDate = DateTime.now();
  //
  //   for (var day in dayModel!) {
  //     for(var isDone is day.isDone){
  //
  //       final endDate = startDate.add(Duration(days: day.isDone));
  //       final formattedEndDate = DateFormat.yMd().format(endDate);
  //     print('Exercise "${exercise.name}" finishes on: $formattedEndDate');
  //   }
  //   }
  //
  // }

  void onTabChanged(int index) {
    currentIndexOfPage = index;
    emit(HomeState.tabChanged(index));
  }


  HomeResponse? homeResponse;
  void getHomeData() async {
    emit(const HomeState.homeLoading());

    try {
      homeResponse = await _homeRepo.geHomeData();
      emit(HomeState.homeSuccess(homeResponse!));
    } catch (error) {
      print(error.toString());
      emit(const HomeState.homeError());
    }
  }



}