import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/home/data/models/home_response.dart';

class HomeRepo{

  final ApiService _apiService ;
  HomeRepo(this._apiService);

  Future<HomeResponse> geHomeData(String token) async {
    try {
      return await _apiService.getHome(token);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

}