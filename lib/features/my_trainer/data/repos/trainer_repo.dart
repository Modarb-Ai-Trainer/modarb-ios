import 'package:modarb_app/core/networking/api_service.dart';
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

}