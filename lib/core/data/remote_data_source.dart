import 'dart:async';

import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:dio/dio.dart';

base class RemoteDataSource {
  RemoteDataSource({
    required this.dio,
    String? baseUrl,
  }) {
    _baseUrl = baseUrl ?? const String.fromEnvironment('api_base_url');
    _initDioClient();
  }

  late final String _baseUrl;
  final Dio dio;

  Duration get timeoutWs => const Duration(seconds: 10);

  void _initDioClient() {
    dio.interceptors.clear();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options
            ..validateStatus = (status) {
              return status! < 400;
            }
            ..connectTimeout = timeoutWs
            ..receiveTimeout = timeoutWs;

          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) async {
          handler.next(error);
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> performDeleteRequestApi<T>({
    required String apiEndpoint,
    String? token,
  }) async {
    Future<Response<T>> request() => dio.delete<T>(
      _path(apiEndpoint),
      options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
    );

    return _performRequestApi<T>(request);
  }

  Future<T> performPostRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) {
    Options localOptions = options ?? Options();
    if (token != null) {
      final headers = localOptions.headers;
      localOptions = localOptions.copyWith(
        headers: {
          if (headers != null) ...headers,
          'Authorization': 'Bearer $token',
        },
      );
    }
    Future<Response<T>> request() async => dio.post<T>(
      _path(apiEndpoint),
      data: data,
      options: localOptions,
      queryParameters: _queryParameters(queryParameters),
    );

    return _performRequestApi<T>(request);
  }

  Future<T> performPatchRequestApi<T>({
    required String apiEndpoint,
    String? body,
    String? token,
  }) async {
    Future<Response<T>> request() => dio.patch<T>(
      _path(apiEndpoint),
      data: body,
      options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
    );

    return _performRequestApi<T>(request);
  }

  Future<T> performPutRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
  }) {
    Future<Response<T>> request() => dio.put<T>(
      _path(apiEndpoint),
      data: data,
      options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
    );

    return _performRequestApi<T>(request);
  }

  Future<T> performGetRequestApi<T>({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    Future<Response<T>> request() async {
      return dio.get<T>(
        _path(apiEndpoint),
        queryParameters: _queryParameters(queryParameters),
        options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
      );
    }

    return _performRequestApi(request);
  }

  Future<void> performDownloadRequestApi({
    required String apiEndpoint,
    dynamic savePath,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    Future<Response> request() async {
      return dio.download(
        _path(apiEndpoint),
        savePath,
        queryParameters: _queryParameters(queryParameters),
        options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
      );
    }

    return _performRequestApi(request);
  }

  Future<T> _performRequestApi<T>(
      Future<Response<T>> Function() request,
      ) async {
    try {
      final Response<T> response = await request();
      return response.data!;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw TimeoutException();
      }
      if (e.response?.statusCode == 401) {
        throw UnauthorizedException();
      } else if (e.response?.statusCode == 404) {
        throw NotFoundException();
      } else if (e.response?.statusCode == 400) {
        throw BadRequestException();
      } else if (e.response?.statusCode == 504) {
        throw TimeoutException();
      }
      throw ServerException();
    }
  }

  Map<String, dynamic> _queryParameters(
      Map<String, dynamic>? requestQueryParameters,
      ) {
    final Map<String, dynamic> apiQueryParameters = {};
    if (requestQueryParameters != null) {
      apiQueryParameters.addAll(requestQueryParameters);
    }
    return apiQueryParameters;
  }

  String _path(String endpoint) {
    return '$_baseUrl$endpoint';
  }
}
