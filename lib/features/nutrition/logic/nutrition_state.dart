import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_plans_response.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_search_response.dart';
import 'package:modarb_app/features/nutrition/data/models/meal_of_week_response.dart';
import 'package:modarb_app/features/nutrition/data/models/meal_plans_response.dart';
import 'package:modarb_app/features/nutrition/data/models/today_intake_response.dart';
import 'package:modarb_app/features/nutrition/data/models/today_meal_response.dart';
part 'nutrition_state.freezed.dart';


@freezed

class NutritionState <T> with _$NutritionState<T> {


  const factory NutritionState.initial() = _Initial;


  const factory NutritionState.todayIntakeLoading() = TodayIntakeLoading;
  const factory NutritionState.todayIntakeSuccess(TodayIntakeResponse ? todayIntakeResponse) = TodayIntakeSuccess;
  const factory NutritionState.todayIntakeError() = TodayIntakeError;


  const factory NutritionState.todayMealLoading() = TodayMealLoading;
  const factory NutritionState.todayMealSuccess(TodayMealResponse ? todayMealResponse) = TodayMealSuccess;
  const factory NutritionState.todayMealError() = TodayMealError;

  const factory NutritionState.getIngredientsLoading() = GetIngredientsLoading;
  const factory NutritionState.getIngredientsSuccess(IngredientsResponse ? ingredientsResponse) = GetIngredientsSuccess;
  const factory NutritionState.getIngredientsError() = GetIngredientsError;

  const factory NutritionState.getIngredientsSearchLoading() = GetIngredientsSearchLoading;
  const factory NutritionState.getIngredientsSearchSuccess(IngredientsSearchResponse ? ingredientsSearchResponse) = GetIngredientsSearchSuccess;
  const factory NutritionState.getIngredientsSearchError() = GetIngredientsSearchError;


  const factory NutritionState.enrollMealLoading() = EnrollMealLoading;
  const factory NutritionState.enrollMealSuccess(EnrollMealResponse? enrollMealResponse) = EnrollMealSuccess;
  const factory NutritionState.enrollMealError() = EnrollMealError;

  const factory NutritionState.getMealPlanLoading() = GetMealPlanLoading;
  const factory NutritionState.getMealPlanSuccess(MealPlansResponse? mealPlansResponse) = GetMealPlanSuccess;
  const factory NutritionState.getMealPlanError() = GetMealPlanError;

  const factory NutritionState.enrollMealPlanLoading() = EnrollMealPlanLoading;
  const factory NutritionState.enrollMealPlanSuccess(EnrollMealPlansResponse? enrollMealPlansResponse) = EnrollMealPlanSuccess;
  const factory NutritionState.enrollMealPlanError() = EnrollMealPlanError;

  const factory NutritionState.getMealOfWeekLoading() = GetMealOfWeekLoading;
  const factory NutritionState.getMealOfWeekSuccess( MealOfWeekResponse? mealOfWeekResponse) = GetMealOfWeekSuccess;
  const factory NutritionState.getMealOfWeekError() = GetMealOfWeekError;


  const factory NutritionState.changeSelection(String? newSelect) = ChangeSelection;


}