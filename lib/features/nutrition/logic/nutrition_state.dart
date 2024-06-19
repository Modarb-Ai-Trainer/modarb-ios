import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/nutrition/data/models/today_intake_response.dart';
part 'nutrition_state.freezed.dart';


@freezed

class NutritionState <T> with _$NutritionState<T> {


  const factory NutritionState.initial() = _Initial;

  const factory NutritionState.todayIntakeLoading() = TodayIntakeLoading;
  const factory NutritionState.todayIntakeSuccess(TodayIntakeResponse ? todayIntakeResponse) = TodayIntakeSuccess;
  const factory NutritionState.todayIntakeError() = TodayIntakeError;


  const factory NutritionState.changeSelection(String? newSelect) = ChangeSelection;


}