import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_template_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/templateResponse.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';
part 'trainer_states.freezed.dart';

@freezed

class TrainerState <T> with _$TrainerState<T> {


  const factory TrainerState.initial() = _Initial;

  const factory TrainerState.beforeWarming() = BeforeWarming;
  const factory TrainerState.counterChange({required int savedCounter}) = CounterChange;
  const factory TrainerState.counterChangeOfWarming({required int newCounter}) = CounterChangeOfWarming;
  const factory TrainerState.warmingFinished() = WarmingFinished;
  const factory TrainerState.closingTraining() = ClosingTraining;

  const factory TrainerState.counterChangeOfExercise({required int exerciseTime}) = CounterChangeOfExercise;
  const factory TrainerState.exerciseFinished() = ExerciseFinished;

  const factory TrainerState.changeSelection(String? newSelect) = ChangeSelection;

  const factory TrainerState.workoutLoading() = WorkoutLoading;
  const factory TrainerState.workoutSuccess(WorkoutResponse workoutResponse) = WorkoutSuccess;
  const factory TrainerState.workoutError() = WorkoutError;


  const factory TrainerState.getExerciseLoading() = GetExerciseLoading;
  const factory TrainerState.getExerciseSuccess(AllExerciseResponse allExerciseResponse) = GetExerciseSuccess;
  const factory TrainerState.getExerciseError() = GetExerciseError;

  const factory TrainerState.getSearchExerciseLoading() = GetSearchExerciseLoading;
  const factory TrainerState.getSearchExerciseSuccess(AllExerciseResponse searchExercise) = GetSearchExerciseSuccess;
  const factory TrainerState.getSearchExerciseError() = GetSearchExerciseError;


  const factory TrainerState.createCustomPlanLoading() = CreateCustomPlanLoading;
  const factory TrainerState.createCustomPlanSuccess(TemplateResponse templateResponse) = CreateCustomPlanSuccess;
  const factory TrainerState.createCustomPlanError() = CreateCustomPlanError;


  const factory TrainerState.getCustomPlanLoading() = GetCustomPlanLoading;
  const factory TrainerState.getCustomPlanSuccess(AllTemplateResponse allTemplateResponse) = GetCustomPlanSuccess;
  const factory TrainerState.getCustomPlanError() = GetCustomPlanError;



  const factory TrainerState.exerciseUpdated(List<String> exercises) = ExerciseUpdated;



}