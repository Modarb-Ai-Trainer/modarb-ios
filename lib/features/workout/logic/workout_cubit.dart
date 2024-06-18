import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/workout/data/models/enroll_request_body.dart';
import 'package:modarb_app/features/workout/data/models/enroll_response.dart';
import 'package:modarb_app/features/workout/data/models/workout_program_response.dart';
import 'package:modarb_app/features/workout/data/repos/workout_repo.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';


class WorkoutCubit extends Cubit<WorkoutState> {


  final WorkoutRepo _workoutRepo;
  WorkoutCubit(this._workoutRepo) : super(const WorkoutState.initial());

  final TextEditingController searchController = TextEditingController();

  String? valueChoose;
  final List<String> itemsExercisesList =[

    'waist',
    'upper legs',
    'lower legs',
    'upper arms',
    'lower arms',
    'chest',
    'back',
    'neck',
    'shoulder',
    'cardio',
  ];

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(WorkoutState.changeSelection(valueChoose));

  }

  AllExerciseResponse? allExerciseResponse;
  void getExerciseByCategory(categoryName) async {
    emit(const WorkoutState.exerciseLoading());

    try {
      allExerciseResponse = await _workoutRepo.getExerciseByCategory(
        limit: 10,
        skip: 0,
        filterVal:categoryName ,
      );

      emit( WorkoutState.exerciseSuccess(allExerciseResponse!));
    } catch (error) {
      print(error.toString());
      emit(const WorkoutState.exerciseError());
    }
  }


  AllExerciseResponse? searchExercise;
  String? nameOfCategory;
  void getSearchExercise() async {
    emit(const WorkoutState.searchExerciseLoading());
    try {
      searchExercise = await _workoutRepo.getExerciseBySearch(
        searchTerm: searchController.text,
        filter: nameOfCategory,
      );

      emit(WorkoutState.searchExerciseSuccess(searchExercise!));
    } catch (error) {
      print(error.toString());
      emit(const WorkoutState.searchExerciseError());
    }
  }


  WorkoutProgramResponse ? workoutProgramResponse;
  void getWorkoutPrograms() async {
    emit(const WorkoutState.workoutProgramsLoading());
    try {
      workoutProgramResponse = await _workoutRepo.getWorkoutPrograms();

      emit(WorkoutState.workoutProgramsSuccess(workoutProgramResponse!));
    } catch (error) {
      print(error.toString());
      emit(const WorkoutState.workoutProgramsError());
    }
  }


  EnrollResponse ? enrollResponse;
  void enrollPrograms(String? workout) async {
    emit(const WorkoutState.enrollProgramsLoading());
    try {
      enrollResponse = await _workoutRepo.enrollPrograms(
          EnrollRequestBody(
              workout: workout,

          )
      );

      emit(WorkoutState.enrollProgramsSuccess(enrollResponse!));
    } catch (error) {
      print(error.toString());
      emit(const WorkoutState.enrollProgramsError());
    }
  }



}