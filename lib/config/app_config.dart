import 'package:http/http.dart' as http;
class AppConfig{
  static const String BASE_URL = "https://my-json-server.typicode.com/sohel-cse/simple-blog-api/";
  static apiUrl(String path) => Uri.parse("$BASE_URL$path");
}