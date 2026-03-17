import 'package:bloc_demo/network/base_api_services.dart';
import 'package:bloc_demo/utils/local_storage.dart';
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));

class NetworkApiServices extends BaseApiServices {
  
  @override
  Future<dynamic> getApi(String url) async {
    final accessToken = await LocalStorage().readValue("accessKey");
    final response = await dio.get(
      url,
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return response.data;
    }
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    final response = await dio.post(url, data: data);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return response.data;
    }
  }
}
