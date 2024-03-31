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
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

}