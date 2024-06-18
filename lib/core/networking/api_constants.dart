class ApiConstants{

  // static const String apiBaseUrl = "http://localhost:4000/api/v1/user/";
  // static const String apiBaseUrl = "http://10.0.2.2:4000/api/v1/user/";
  static const String apiBaseUrl = "https://moahmedwafy-modarb-be.hf.space/api/v1/user/";
  static const String register = "auth/register";
  static const String login = "auth/login";
  static const String homePage = "homePage";
  static const String myWorkoutsWithId = "myWorkouts/{id}";
  static const String workouts = "workouts";
  static const String myWorkouts = "myWorkouts";
  static const String allExercise = "exercises";
  static const String exercisesSearch = "exercises/search";
  static const String templates = "templates";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}