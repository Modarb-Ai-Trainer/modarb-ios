import 'package:dio/dio.dart';
import 'package:modarb_app/features/home/data/models/home_response_model.dart';
import 'package:modarb_app/features/login/data/models/login_request_body.dart';
import 'package:modarb_app/features/login/data/models/login_response.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/register/data/models/register_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody,
      );

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );


  @GET(ApiConstants.homePage)
  Future<HomeResponse> getHome();

}
