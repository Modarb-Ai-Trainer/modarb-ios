import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/constant.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';
import 'package:modarb_app/features/my_trainer/data/repos/trainer_repo.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TrainerCubit extends Cubit<TrainerState> {


  final TrainerRepo _trainerRepo;
  TrainerCubit(this._trainerRepo) : super(const TrainerState.initial());


  var warmController = PageController();
  int index = 0;


  int counter = 15;
  int newCounter = 15 ;
  late Timer _timer;

  void startTimerOfBeforeWarming() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 0) {
        counter--;
        newCounter = counter;
        emit(TrainerState.counterChange(savedCounter: newCounter));
      } else {
        _timer.cancel();
        startTimerOfWarming();
      }
    });

  }


  int counterOfWarming = 30;
  int newCounterOfWarming = 30 ;
  late Timer timerOfWarming;

  void startTimerOfWarming() {
    timerOfWarming = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counterOfWarming > 0) {
        counterOfWarming--;
        newCounterOfWarming = counterOfWarming;
        emit(TrainerState.counterChangeOfWarming(newCounter: newCounterOfWarming));
      } else {
        timerOfWarming.cancel();
        emit(const TrainerState.warmingFinished());

      }
    });

  }

  void emitClosingTrainer(){
    emit(const TrainerState.closingTraining());

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
  List<Week>? weekModel;
  List<Day>? dayModel;
  int currentWeekIndex = 0;
  int currentDayIndex = 0;

  void getWorkoutData() async {
    emit(const TrainerState.workoutLoading());

    try {
      final myWorkoutId = await SharedPrefHelper.getString(SharedPrefKeys.myWorkoutId);
      workoutResponse = await _trainerRepo.getWorkoutData(myWorkoutId);
      weekModel = workoutResponse?.data?.weeks;
      dayModel = workoutResponse?.data?.weeks[currentWeekIndex].days;
      emit(TrainerState.workoutSuccess(workoutResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.workoutError());
    }
  }


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


  TemplateModel? template;
  List<TemplateModel> templateList =[];
  List<String>? savedResultSelected;
  void saveTemplate(){
    savedResultSelected = List<String>.from(resultSelected);
    template = TemplateModel(
        exercise: savedResultSelected,
        nameOfTemplate: templateController.text,
    );
    // print(savedResultSelected?.length);
    templateList.add(template!);
    print(templateList);
    emit(TrainerState.templateUpdated(templateList));
    // resultSelected.clear();
    // templateController.clear();
  }



}

class TemplateModel{
  String nameOfTemplate;
  List<String> ?exercise;
  TemplateModel({
    required this.exercise,
    required this.nameOfTemplate,
});
}

