import 'package:freezed_annotation/freezed_annotation.dart';
part 'workout_states.freezed.dart';

@freezed

class WorkoutState <T> with _$WorkoutState<T> {


  const factory WorkoutState.initial() = _Initial;


  const factory WorkoutState.switchChange(bool newValue) = SwitchChange;

  const factory WorkoutState.changeSelection(String? newSelect) = ChangeSelection;




}