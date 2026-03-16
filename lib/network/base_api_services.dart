abstract class BaseApiServices {
  Future<dynamic> postApi(String url, var data);

  Future<dynamic> getApi(String url);
}
