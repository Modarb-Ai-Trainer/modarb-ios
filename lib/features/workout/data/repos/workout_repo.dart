import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/workout/data/models/enroll_request_body.dart';
import 'package:modarb_app/features/workout/data/models/enroll_response.dart';
import 'package:modarb_app/features/workout/data/models/workout_program_response.dart';

class WorkoutRepo{

  final ApiService _apiService ;
  WorkoutRepo(this._apiService);

  Future<AllExerciseResponse> getExerciseByCategory({int? limit,int ?skip, String? filterName, String ?filterVal} ) async {
    try {
      return await _apiService.getFilterExercise(limit,skip,'category',filterVal);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }


  Future<AllExerciseResponse> getExerciseBySearch({String? searchTerm, String ?filter} ) async {
    try {
      return await _apiService.getSearchExercise(searchTerm,filter);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }




  Future<WorkoutProgramResponse> getWorkoutPrograms() async {
    try {
      return await _apiService.getWorkoutPrograms();
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }
  Future<EnrollResponse> enrollPrograms(EnrollRequestBody enrollRequestBody) async {
    try {
      return await _apiService.enrollPrograms(enrollRequestBody);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }




}