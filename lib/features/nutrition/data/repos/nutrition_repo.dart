import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_request_body.dart';
import 'package:modarb_app/features/nutrition/data/models/enroll_meal_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_search_response.dart';
import 'package:modarb_app/features/nutrition/data/models/today_intake_response.dart';
import 'package:modarb_app/features/nutrition/data/models/today_meal_response.dart';

class NutritionRepo{

  final ApiService _apiService ;
  NutritionRepo(this._apiService);

  Future<TodayIntakeResponse> getTodayIntake() async {
    try {
      return await _apiService.getTodayIntake();
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }
 Future<TodayMealResponse> getTodayMeal() async {
    try {
      return await _apiService.getTodayMeal();
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }
 Future<IngredientsResponse> getIngredients() async {
    try {
      return await _apiService.getIngredients();
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

  Future<IngredientsSearchResponse> getIngredientsSearch(String? searchTerm) async {
    try {
      return await _apiService.getIngredientsSearch(searchTerm);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

 Future<EnrollMealResponse> enrollMeal(EnrollMealRequestBody enrollMealRequestBody) async {
    try {
      return await _apiService.enrollMeal(enrollMealRequestBody);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }





}