import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/workout/data/models/search_response.dart';
part 'workout_states.freezed.dart';

@freezed

class WorkoutState <T> with _$WorkoutState<T> {


  const factory WorkoutState.initial() = _Initial;


  const factory WorkoutState.switchChange(bool newValue) = SwitchChange;

  const factory WorkoutState.changeSelection(String? newSelect) = ChangeSelection;

  const factory WorkoutState.searchLoading() = SearchLoading;
  const factory WorkoutState.searchSuccess(SearchResponse searchResponse) = SearchSuccess;
  const factory WorkoutState.searchError() = SearchError;


}