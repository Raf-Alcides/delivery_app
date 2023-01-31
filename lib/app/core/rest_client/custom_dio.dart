import 'package:delivery_app/app/core/config/env/env.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/material.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(BaseOptions(
            baseUrl: Env.i['url'] ?? '',
            connectTimeout: 5000,
            receiveTimeout: 60000)) {
    interceptors.add(LogInterceptor(
        requestBody: true, responseBody: true, requestHeader: true));
  }

  CustomDio auth() {
    return this;
  }

  CustomDio unAuth() {
    return this;
  }
}
