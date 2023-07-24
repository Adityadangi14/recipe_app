import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/resources/data_state.dart';

import 'dart:io' show HttpStatus;

import 'package:retrofit/retrofit.dart';

abstract class BaseApiRepository {
  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        throw DioException(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response);
      }
    } on DioException catch (error) {
      return DataFailed(error);
    }
  }
}
