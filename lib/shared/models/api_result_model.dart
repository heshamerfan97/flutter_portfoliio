import 'package:dio/dio.dart';

import '../../utils/logger.dart';

class APIResultModel<T> {
  final bool success, authorized;
  final String? message;
  final T? data;

  static String tag = 'API Result Model';

  APIResultModel({
    required this.success,
    this.authorized = true,
    this.message,
    this.data,
  });

  factory APIResultModel.fromResponse({Response? response, String? data}) {
    if (response != null) {
      try {
        Logger.log(response.data, tag: tag);
        Logger.log(response.statusCode, tag: tag);
        final Map<String, dynamic> responseBody = (response.data as Map<String, dynamic>);
        final res = APIResultModel<T>(
          success: response.statusCode == 200 || response.statusCode == 201,
          authorized: response.statusCode != 401,
          message: responseBody['message'],
          data: data == null ? responseBody : responseBody[data],
        );
        if(!res.authorized){
         //AppBloc.authCubit.logout();
        }
        return res;
      } catch (error) {
        Logger.log('Error in getting result from response:\n $error', tag: tag);
        return APIResultModel(
          success: false,
          data: null,
          message: "cannot init result api",
        );
      }
    } else {
      Logger.log('Response is null', tag: tag);
      return APIResultModel(
        success: false,
        data: null,
        message: "Response is null",
      );
    }
  }
}
