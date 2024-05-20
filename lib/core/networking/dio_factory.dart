import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 60000);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.contentType = Headers.jsonContentType;
      // ..options.headers['Authorization'] = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OGUzNWFhY2E4NjZkYzc4YWEwMThhOCIsImVtYWlsIjoidGVzdGluZ191c2VyQGdtYWlsLmNvbSIsIm5hbWUiOiJOZXcgVXNlciIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNzE1NTU5MTk0LCJleHAiOjE3MTU2NDU1OTR9.-HpSOJc_sFhHbq7k8tNlTwM-nw1PDGE9uaQ7efmb9CM';
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2NGE0YjE3MGRhNGU0Mjg4NDk4NTlhMiIsImVtYWlsIjoidXNlci0yQGFwcC5jb20iLCJuYW1lIjoiVXNlciAyIiwidHlwZSI6InVzZXIiLCJpYXQiOjE3MTYxNTcwNjIsImV4cCI6MTcxODc0OTA2Mn0.IoMKEH2ci0sr2blU0qxso7jzmSRw-4IdsDT6wI0QGD8';
          return handler.next(options);
        },
      ),
    );
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),

    );
  }
}
