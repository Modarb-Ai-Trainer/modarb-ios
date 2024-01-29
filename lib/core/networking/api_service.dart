import 'package:dio/dio.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/register/data/models/register_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

// class ApiService{
//
//   static const String apiBaseUrl = "https://modarb.onrender.com/api/v1/user/" ;
//   final Dio _dio ;
//   ApiService(this._dio);
//
//
//   // Future <Map<String, dynamic >> get({required String endPoint }) async{
//   //   var response = await _dio.get('$apiBaseUrl$endPoint' );
//   //   return response.data;
//   // }
//   //
//   // Future <Response<dynamic>> post({required String endPoint , required Map<String, dynamic> data}) async{
//   //   var response = await _dio.post('$apiBaseUrl$endPoint' , data: data);
//   //   return response.data;
//   // }
//
//
// }

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<LoginResponse> login(
  //     @Body() LoginRequestBody loginRequestBody,
  //     );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody,
      );

}