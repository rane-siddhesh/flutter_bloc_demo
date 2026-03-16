import 'dart:convert';

import 'package:bloc_demo/models/login_req_model.dart';
import 'package:bloc_demo/models/login_res_model.dart';
import 'package:bloc_demo/network/network_api_services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginRepo {
  final _api = NetworkApiServices();

  Future<LoginResModel> loginApi(String username, String password) async {
    final data = jsonEncode(LoginReqModel(username: username, password: password).toJson());
    final response = await _api.postApi(dotenv.env['API_URL'] ?? "", data);
    return LoginResModel.fromJson(response);
  }
}