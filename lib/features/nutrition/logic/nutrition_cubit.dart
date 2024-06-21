import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/nutrition/data/models/daily_goals_response.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_plans_request_body.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_plans_response.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_request_body.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_search_response.dart';
import 'package:modarb_app/features/nutrition/data/models/meal_of_week_response.dart';
import 'package:modarb_app/features/nutrition/data/models/meal_plans_response.dart';
import 'package:modarb_app/features/nutrition/data/models/today_intake_response.dart';
import 'package:modarb_app/features/nutrition/data/repos/nutrition_repo.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';
import 'package:modarb_app/features/nutrition/data/models/today_meal_response.dart';

class NutritionCubit extends Cubit<NutritionState> {


  final NutritionRepo _nutritionRepo;
  NutritionCubit(this._nutritionRepo) : super(const NutritionState.initial());


  TodayIntakeResponse? todayIntakeResponse;
  void getTodayIntake() async {
    emit(const NutritionState.todayIntakeLoading());
    try {
      todayIntakeResponse = await _nutritionRepo.getTodayIntake();

      emit(NutritionState.todayIntakeSuccess(todayIntakeResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.todayIntakeError());
    }
  }


  List<String> imageAssets = [
    'assets/images/break_fast_meal.png',
    'assets/images/lunch_meal_2.png',
    'assets/images/snack_meal_2.png',
    'assets/images/dinner_meal_2.png',
  ];

  List<String> imageOfContainer = [
    'assets/images/1.svg',
    'assets/images/2.svg',
    'assets/images/3.svg',
    'assets/images/4.svg',
  ];

  List<String> nameOfMeals =[
    'Breakfast',
    'Lunch',
    'Dinner',
    'Snack',
  ];

  List<String> nameOfDays =[
    'Saturday',
    'Sunday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];
  final List<String> itemsList =[
    'My Plan',
    'Other Plan',
  ];

  String? valueChoose = 'My Plan';

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(NutritionState.changeSelection(valueChoose));

  }

  TodayMealResponse ? todayMealResponse;
  void getTodayMeal() async {
    emit(const NutritionState.todayMealLoading());
    try {
      todayMealResponse = await _nutritionRepo.getTodayMeal();

      emit(NutritionState.todayMealSuccess(todayMealResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.todayMealError());
    }
  }


  IngredientsResponse ? ingredientsResponse;
  void getIngredients() async {
    emit(const NutritionState.getIngredientsLoading());
    try {
      ingredientsResponse = await _nutritionRepo.getIngredients();

      emit(NutritionState.getIngredientsSuccess(ingredientsResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.getIngredientsError());
    }
  }

  TextEditingController searchController = TextEditingController();
  IngredientsSearchResponse ? ingredientsSearchResponse;
  void getIngredientsSearch() async {
    emit(const NutritionState.getIngredientsSearchLoading());
    try {
      ingredientsSearchResponse = await _nutritionRepo.getIngredientsSearch(searchController.text);

      emit(NutritionState.getIngredientsSearchSuccess(ingredientsSearchResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.getIngredientsSearchError());
    }
  }




  List<Ingredientt> convertToIngredientList(List<Datum> data) {
    return data.map((datum) => Ingredientt(id: datum.id, noServings: 0)).toList();
  }
  List<Datum> selectedItems = [];
  EnrollMealResponse? enrollMealResponse;
  void enrollMeal() async {
    emit(const NutritionState.enrollMealLoading());
    try {
      enrollMealResponse = await _nutritionRepo.enrollMeal(
        EnrollMealRequestBody(ingredients: convertToIngredientList(selectedItems)),
      );

      emit(NutritionState.enrollMealSuccess(enrollMealResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.enrollMealError());
    }
  }



  MealPlansResponse? mealPlansResponse;
  void getMealPlan() async {
    emit(const NutritionState.getMealPlanLoading());
    try {
      mealPlansResponse = await _nutritionRepo.getMealPlan();

      emit(NutritionState.getMealPlanSuccess(mealPlansResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.getMealPlanError());
    }
  }

  EnrollMealPlansResponse? enrollMealPlansResponse;
  void enrollMealPlan(EnrollMealPlansRequestBody? enrollMealPlansRequestBody) async {
    emit(const NutritionState.enrollMealPlanLoading());
    try {
      enrollMealPlansResponse = await _nutritionRepo.enrollMealPlan(enrollMealPlansRequestBody);

      emit(NutritionState.enrollMealPlanSuccess(enrollMealPlansResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.enrollMealPlanError());
    }
  }

  MealOfWeekResponse? mealOfWeekResponse;
  void getMealOfWeek() async {
    emit(const NutritionState.getMealOfWeekLoading());
    try {
      mealOfWeekResponse = await _nutritionRepo.getMealOfWeek();

      emit(NutritionState.getMealOfWeekSuccess(mealOfWeekResponse));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.getMealOfWeekError());
    }
  }

  DailyGoalsResponse? dailyGoalsResponse;
  int currentWater = 0;
  int newCurrentWater =0;

  void getDailyGoals() async {
    emit(const NutritionState.getDailyGoalsLoading());
    try {
      dailyGoalsResponse = await _nutritionRepo.getDailyGoals();
      if(dailyGoalsResponse?.data != null){
       currentWater = dailyGoalsResponse?.data?.waterConsumed ?? 0;
       newCurrentWater = dailyGoalsResponse?.data?.waterConsumed ?? 0;
      }

      emit(NutritionState.getDailyGoalsSuccess(dailyGoalsResponse));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.getDailyGoalsError());
    }
  }

  void emitAddWater(value){
    if(value !=null) {
      currentWater ++ ;
    }
    newCurrentWater = currentWater;
    emit(NutritionState.updateWaterConsumption(newCurrentWater));
    print(newCurrentWater);

  }
  void emitMinusWater(value){
    if(value !=null) {
      currentWater -- ;
    }
    newCurrentWater = currentWater;
    emit(NutritionState.updateWaterConsumption(newCurrentWater));
    print(newCurrentWater);

  }



}