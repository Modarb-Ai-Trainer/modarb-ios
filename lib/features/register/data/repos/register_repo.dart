
import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';

import '../models/register_response.dart';

class RegisterRepo{

  final ApiService _apiService ;
  RegisterRepo(this._apiService);


  Future<RegisterResponse> register(RegisterRequestBody registerRequestBody) async {
    try {
      return await _apiService.register(registerRequestBody);
    } catch (error) {
      throw Exception('Failed to get data: $error');
    }
  }

}