import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.interceptors.add(
    DioInterceptor(),
  );

  return dio;
});

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print ('Req ${options.method}');
    return super.onRequest(options, handler);

  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    return super.onResponse(response, handler);
  }
}