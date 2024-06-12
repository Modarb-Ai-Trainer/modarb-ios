import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/login/data/models/login_request_body.dart';
import 'package:modarb_app/features/login/data/models/login_response.dart';


class LoginRepository{

  final ApiService _apiService ;
  LoginRepository(this._apiService);


  Future<LoginResponse> loginUser(LoginRequestBody loginRequestBody) async {
    try {
      return await _apiService.login(loginRequestBody);
    } catch (error) {
      throw Exception('Failed to login : $error');
    }
  }

}