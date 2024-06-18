import 'package:dio/dio.dart';
import 'package:modarb_app/features/home/data/models/home_response_model.dart';
import 'package:modarb_app/features/login/data/models/login_request_body.dart';
import 'package:modarb_app/features/login/data/models/login_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_template_response.dart';
import 'package:modarb_app/features/my_trainer/data/models/templateResponse.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/my_trainer/data/models/template_request_body.dart';
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

  @GET(ApiConstants.myWorkouts)
  Future<WorkoutResponse> getWorkout(@Path("id") String workoutId);

  @GET(ApiConstants.allExercise)
  Future<AllExerciseResponse> getFilterExercise(
      @Query("limit") int? limit,
      @Query("skip") int? skip,
      @Query("filterName") String? filterName,
      @Query("filterVal") String? filterVal,
      );

  @GET(ApiConstants.exercisesSearch)
  Future<AllExerciseResponse> getSearchExercise(
      @Query("searchTerm") String? searchTerm,
      @Query("filter") String? filter,
      );

  // @POST(ApiConstants.templates)
  // Future<TemplateResponse> createCustomPlan(
  //     @Query("name") String name,
  //     @Query("user") String user,
  //     @Query("creationDate") String creationDate,
  //     @Query("exercises") List<String> exercises,
  //     );

  @POST(ApiConstants.templates)
  Future<TemplateResponse>createCustomPlan(
      @Body() TemplateRequestBody templateRequestBody,
      );


  @GET(ApiConstants.templates)
  Future<AllTemplateResponse> getCustomPlan();
}
