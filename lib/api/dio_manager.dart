import 'package:dio/dio.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../app_bloc.dart';
import '../application/application.dart';
import '../config/constants.dart';
import '../language/app_language.dart';
import '../utils/logger.dart';
import '../utils/toast_utils.dart';


class DIOManger {
  static Dio mainDio = Dio(BaseOptions(
      baseUrl: Application.debug ? Constants.debugBaseUrl : Constants.releaseBaseUrl /*, headers: getHeader()*/));

  ///POST Method
  static Future<Response?> post(
      {Dio? dio, required String path, required Map<String, dynamic>? body, Map<String, dynamic>? parameters}) async {
    if (isConnected()) {
      dio ??= mainDio;
      final options = getOptions();
      try {
        Logger.logInfo(
            "Body posted to ${dio.options.baseUrl + path}: $body with header ${options.headers}, and Parameters: $parameters");
        final response = await dio.post(path, data: body, options: options, queryParameters: parameters);
        Logger.log('Response of posting to ${dio.options.baseUrl + path}:\n ${response.data}');
        return response;
      } catch (error) {
        Logger.log('Error in ${dio.options.baseUrl + path}:\n $error');
        return null;
      }
    } else {
      return null;
    }
  }

  static Options getOptions() => Options(
        headers: {
          //'Authorization': 'Bearer ${Application.userData?.token}',
          "Accept-Language": AppLanguage.defaultLanguage?.locale.languageCode,
        },
        validateStatus: (_) => true,
        contentType: "application/json",
        responseType: ResponseType.json,
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
      );

  ///GET Method
  static Future<Response?> get({
    Dio? dio,
    required String path,
    required Map<String, dynamic>? parameters,
  }) async {
    if (isConnected()) {
      dio ??= mainDio;
      try {
        final options = getOptions();
        Logger.log(
            'we are getting ${dio.options.baseUrl + path}:\n with param $parameters with header ${options.headers}');
        final response = await dio.get(path, queryParameters: parameters, options: options);
        //final responseBody = json.decode(response.body);
        Logger.log('Response of getting ${dio.options.baseUrl + path}:\n ${response.data}');
        return response;
      } catch (error) {
        Logger.log('Error in getting ${dio.options.baseUrl + path}:\n $error');
        return null;
      }
    } else {
      return null;
    }
  }

  ///Upload Method
  static Future<Response?> uploadAndPost({
    Dio? dio,
    required String path,
    required Map<String, dynamic> body,
  }) async {
    if (isConnected()) {
      dio ??= mainDio;
      try {
        var formData = FormData.fromMap(body);
        //TODO: Confirm content type for uploading
        final response = await dio.post(path, data: formData, options: getOptions());
        return response;
      } catch (error) {
        return null;
      }
    } else {
      return null;
    }
  }

  static bool isConnected() {
    if (!AppBloc.connectivityCubit.isConnected) {
      return false;
    } else {
      return true;
    }
  }
}
