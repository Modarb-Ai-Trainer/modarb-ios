import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/my_trainer/data/models/day_model.dart';
import 'package:modarb_app/features/my_trainer/data/models/week_model.dart';
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

  final List<String> userExercisesList =[];

  String? valueChoose;
  final List<String>itemsExercisesList =[
    'All',
    'Leg',
    'Shoulder',
  ];

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(TrainerState.changeSelection(valueChoose));

  }



  WorkoutResponse? workoutResponse;
  List<Week>? weekModel;
  List<Day>? dayModel;
  void getWorkoutData(String workoutId) async {
    emit(const TrainerState.workoutLoading());

    try {
      workoutResponse = await _trainerRepo.getWorkoutData(workoutId);
      weekModel = workoutResponse?.data?.weeks;
      dayModel = workoutResponse?.data?.weeks[index].days;
      emit(TrainerState.workoutSuccess(workoutResponse!));
    } catch (error) {
      print(error.toString());
      emit(const TrainerState.workoutError());
    }
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





}