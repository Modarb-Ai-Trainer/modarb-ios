import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/workout/data/models/enroll_response.dart';
import 'package:modarb_app/features/workout/data/models/workout_program_response.dart';
part 'workout_states.freezed.dart';

@freezed

class WorkoutState <T> with _$WorkoutState<T> {


  const factory WorkoutState.initial() = _Initial;


  const factory WorkoutState.switchChange(bool newValue) = SwitchChange;

  const factory WorkoutState.changeSelection(String? newSelect) = ChangeSelection;


  const factory WorkoutState.exerciseLoading() = ExerciseLoading;
  const factory WorkoutState.exerciseSuccess(AllExerciseResponse allExerciseResponse) = ExerciseSuccess;
  const factory WorkoutState.exerciseError() = ExerciseError;

  const factory WorkoutState.searchExerciseLoading() = SearchExerciseLoading;
  const factory WorkoutState.searchExerciseSuccess(AllExerciseResponse searchExercise) = SearchExerciseSuccess;
  const factory WorkoutState.searchExerciseError() = SearchExerciseError;



  const factory WorkoutState.workoutProgramsLoading() = WorkoutProgramsLoading;
  const factory WorkoutState.workoutProgramsSuccess(  WorkoutProgramResponse ? workoutProgramResponse) = WorkoutProgramsSuccess;
  const factory WorkoutState.workoutProgramsError() = WorkoutProgramsError;

  const factory WorkoutState.enrollProgramsLoading() = EnrollProgramsLoading;
  const factory WorkoutState.enrollProgramsSuccess(  EnrollResponse ? enrollResponse) = EnrollProgramsSuccess;
  const factory WorkoutState.enrollProgramsError() = EnrollProgramsError;


}