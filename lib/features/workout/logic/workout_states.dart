import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/workout/data/models/search_response.dart';
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


}