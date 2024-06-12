import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';


class TrainerRepo{

  final ApiService _apiService ;
  TrainerRepo(this._apiService);

  Future<WorkoutResponse> getWorkoutData(String workoutId) async {
    try {
      return await _apiService.getWorkout(workoutId);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }


  Future<AllExerciseResponse> getFilterExercise({int? limit,int ?skip, String? filterName, String ?filterVal} ) async {
    try {
      return await _apiService.getFilterExercise(limit,skip,'category',filterVal);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }


  Future<AllExerciseResponse> getSearchExercise({String? searchTerm, String ?filter} ) async {
    try {
      return await _apiService.getSearchExercise(searchTerm,filter);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }



}