import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {

  final Dio dio;

  RequestInterceptor(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {

    DioException dioError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: err.error.toString(),
      message: getErroMessage(err.response?.statusCode??500),
    );
    return handler.next(dioError);
  }

  
}


String getErroMessage(int statutCode) {
  switch (statutCode) {
    case 404:
      return "Not found";
    default:
      return "Server Error";
  }
}
