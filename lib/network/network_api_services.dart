import 'dart:convert';

import 'package:bloc_demo/network/base_api_services.dart';
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(headers: { 'Content-Type': 'application/json' }));
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic> getApi(String url) {
    // TODO: implement getApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> postApi(String url, data) async {

    final response = await dio.post("", data: data);

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      throw Exception("Something went wrong");
    }

  }
}