import 'package:modarb_app/core/networking/api_error_handler.dart';
import 'package:modarb_app/core/networking/api_result.dart';
import 'package:modarb_app/core/networking/api_service.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';

import '../models/register_response.dart';

class RegisterRepo{

  final ApiService _apiService ;
  RegisterRepo(this._apiService);


  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


  // Future<Map<String, dynamic>> registerUser(String email,String name ,String password, String passwordConfirm ) async {
  //
  //   try {
  //
  //     Map<String, dynamic> userData = {
  //       'email': email,
  //       'name': name,
  //       'password': password,
  //       'password_confirmation': passwordConfirm,
  //     };
  //     final response = await _apiService.post(endPoint: 'register', data: userData );
  //
  //     if (response.statusCode == 200) {
  //       return response.data;
  //     } else {
  //       throw Exception('Failed to register user. Status code: ${response.statusCode}');
  //
  //     }
  //   } catch (e) {
  //     throw Exception('Error during registration: $e');
  //
  //   }
  // }


}