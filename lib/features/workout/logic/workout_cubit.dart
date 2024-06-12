
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/workout/data/models/data_of_search.dart';
import 'package:modarb_app/features/workout/data/models/search_response.dart';
import 'package:modarb_app/features/workout/data/repos/workout_repo.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';


class WorkoutCubit extends Cubit<WorkoutState> {


  final WorkoutRepo _workoutRepo;
  WorkoutCubit(this._workoutRepo) : super(const WorkoutState.initial());

  final TextEditingController searchController = TextEditingController();

  bool switchButton = true ;
  int index = 0;

  void switchChange(){
    switchButton =! switchButton;
    emit(WorkoutState.switchChange(switchButton));
  }


  String? valueChoose;
  final List<String>itemsExercisesList =[
    'All',
    'Leg',
    'Shoulder',
  ];

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(WorkoutState.changeSelection(valueChoose));

  }


  SearchResponse ?searchResponse ;
  List<DataOfSearch> ?dataModel ;

  // void getSearchData(String searchQuery) async {
  //   emit(const WorkoutState.searchLoading());
  //
  //   try {
  //
  //     searchResponse = await _workoutRepo.getSearchData(searchQuery);
  //     dataModel = searchResponse!.data;
  //     emit(WorkoutState.searchSuccess(searchResponse!));
  //   } catch (error) {
  //     print(error.toString());
  //     emit(const WorkoutState.searchError());
  //   }
  // }




}