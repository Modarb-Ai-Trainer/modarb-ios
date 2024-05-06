
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/workout/data/repos/workout_repo.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';


class WorkoutCubit extends Cubit<WorkoutState> {


  final WorkoutRepo _workoutRepo;
  WorkoutCubit(this._workoutRepo) : super(const WorkoutState.initial());

  bool switchButton = true ;

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



}