import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/features/home/data/models/home_response_model.dart';

class HomeRepo{

  final ApiService _apiService ;
  HomeRepo(this._apiService);

  Future<HomeResponse> getHomeData() async {
    try {
      final response =  await _apiService.getHome();

      if (response.status == 401) {
        await SharedPrefHelper.clearAllData();
        throw Exception('${response.message}');
      } else if (response.status != 200) {
        throw Exception('Failed to get data : ${response.message}');
      }else{
        return response;
      }
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

}