import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:bloc_demo/network/network_api_services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserRepo {
  final _api = NetworkApiServices();
  
  Future<UserDetailsModel> getUserDetailsApi() async{
    final baseUrl = dotenv.env["API_URL"] ?? "";
    final response = await _api.getApi("${baseUrl}me");
    print("User Repo $response");
    return UserDetailsModel.fromJson(response);
  }
}