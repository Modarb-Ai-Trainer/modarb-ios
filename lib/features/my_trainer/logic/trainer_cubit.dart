import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/my_trainer/data/repos/trainer_repo.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TrainerCubit extends Cubit<TrainerState> {

  final TrainerRepo _trainerRepo;
  TrainerCubit(this._trainerRepo) : super(const TrainerState.initial());


  var warmController = PageController();
  int index = 0;
  bool isVisible = true;


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
      }
    });

  }

  void emitClosingTrainer(){
    emit(const TrainerState.closingTraining());

  }

}