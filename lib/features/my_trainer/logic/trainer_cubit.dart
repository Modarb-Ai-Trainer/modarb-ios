import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/constant.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_template_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/progress_of_workout_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/templateResponse.dart';
import 'package:modarb_app/features/my_trainer/data/models/template_request_body.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';
import 'package:modarb_app/features/my_trainer/data/repos/trainer_repo.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TrainerCubit extends Cubit<TrainerState> {


  final TrainerRepo _trainerRepo;
  TrainerCubit(this._trainerRepo) : super(const TrainerState.initial());


  var warmController = PageController();
  int index = 0;

  void emitClosingTrainer(){
    emit(const TrainerState.closingTraining());

  }



  int counter = 0;
  bool exerciseIsDone = false;
  Timer? _timer;

  int get newCounterOfExercise => counter;

  void startTimerOfExercise(int duration) {
    counter = duration;
    emit(const TrainerState.startExercise());
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 1) {
        counter--;
        emit(TrainerState.counterChangeOfExercise(exerciseTime: counter));
      } else {
        counter = 0;

        timer.cancel();
        exerciseIsDone = true;
        emit(const TrainerState.exerciseFinished());
      }
    });
  }
  void stopTimer() {
    _timer?.cancel();
    emit(const TrainerState.exerciseFinished());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }




  int getTotalMinDuration(List<Day> dayModel) {
    return dayModel
        .map((day) => day.exercises
        .map((exercise) => exercise.expectedDurationRange?.min ?? 0)
        .reduce((value, element) => value + element))
        .reduce((value, element) => value + element);
  }
  int getTotalMaxDuration(List<Day> dayModel) {
    return dayModel
        .map((day) => day.exercises
        .map((exercise) => exercise.expectedDurationRange?.max ?? 0)
        .reduce((value, element) => value + element))
        .reduce((value, element) => value + element);
  }

  final List<String>itemsExercisesList =[
    'All',
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




  WorkoutResponse? workoutResponse;
  Week? weekModel;
  Day? dayModel ;
  int currentWeekIndex = 0;

  void getWorkoutData() async {
    emit(const TrainerState.workoutLoading());

    try {
      final myWorkoutId = await SharedPrefHelper.getString(SharedPrefKeys.myWorkoutId);
      workoutResponse = await _trainerRepo.getWorkoutData(myWorkoutId);
      weekModel = workoutResponse?.data?.weeks[currentWeekIndex];
      dayModel = workoutResponse?.data?.weeks[currentWeekIndex].days[currentWeekIndex];
      emit(TrainerState.workoutSuccess(workoutResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.workoutError());
    }
  }
  ProgressOfWorkoutResponse ?progressOfWorkoutResponse;
  void workoutProgress(int week,int day) async {
    emit(const TrainerState.workoutProgressLoading());
    try {
      final myWorkoutId = await SharedPrefHelper.getString(SharedPrefKeys.myWorkoutId);
      progressOfWorkoutResponse = await _trainerRepo.workoutProgress(myWorkoutId,week,day);

      emit(TrainerState.workoutProgressSuccess(progressOfWorkoutResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.workoutProgressError());
    }
  }

  bool isDone = false;




  String? valueChoose = 'All';
  AllExerciseResponse? allExerciseResponse;
  void getFilterExercise() async {
    emit(const TrainerState.getExerciseLoading());

    try {
      allExerciseResponse = await _trainerRepo.getFilterExercise(
          limit: 10,
          skip: 0,
          filterVal: (valueChoose == 'All') ? null : valueChoose,
      );

      emit(TrainerState.getExerciseSuccess(allExerciseResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.getExerciseError());
    }
  }

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(TrainerState.changeSelection(valueChoose));
    getFilterExercise();

  }

  final TextEditingController searchController = TextEditingController();
  TextEditingController templateController = TextEditingController();
  AllExerciseResponse? searchExercise;
  void getSearchExercise() async {
    emit(const TrainerState.getSearchExerciseLoading());

    try {
      searchExercise = await _trainerRepo.getSearchExercise(
        searchTerm: searchController.text,
        filter: valueChoose,
      );

      emit(TrainerState.getSearchExerciseSuccess(searchExercise!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.getSearchExerciseError());
    }
  }

  List<String> resultSelected =[];

  void updateSelectedExercises(List<String> newExercises) {
    for (String exercise in newExercises) {
      if (!resultSelected.contains(exercise)) {
        resultSelected.add(exercise);
      }
    }

    emit(TrainerState.exerciseUpdated(resultSelected));
  }


/// new

  TemplateResponse ?templateResponse;
  void createCustomPlan() async {
    emit(const TrainerState.createCustomPlanLoading());

    try {
      final userId = await SharedPrefHelper.getString(SharedPrefKeys.userId);

      templateResponse = await _trainerRepo.createCustomPlan(
          TemplateRequestBody(
            user: userId,
            name:templateController.text ,
            exercises: resultSelected,

          ),
      );

      emit(TrainerState.createCustomPlanSuccess(templateResponse!));
      getCustomPlan();
      templateController.clear();
      resultSelected.clear();
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.createCustomPlanError());
    }
  }


  AllTemplateResponse ?allTemplateResponse;
  void getCustomPlan() async {
    emit(const TrainerState.getCustomPlanLoading());

    try {
      allTemplateResponse = await _trainerRepo.getCustomPlan();

      emit(TrainerState.getCustomPlanSuccess(allTemplateResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.getCustomPlanError());
    }
  }

}


