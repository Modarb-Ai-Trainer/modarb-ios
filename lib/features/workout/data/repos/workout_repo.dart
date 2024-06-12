import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/workout/data/models/search_response.dart';


class WorkoutRepo{

  final ApiService _apiService ;
  WorkoutRepo(this._apiService);


  // Future<SearchResponse> getSearchData(String searchQuery) async {
  //   try {
  //     return await _apiService.getSearchData(searchQuery);
  //   } catch (error) {
  //     throw Exception('Failed to get data: $error');
  //   }
  // }


}