import 'package:flutter_mvvm/config/app_config.dart';
import 'package:flutter_mvvm/data/model/blogs_response.dart';
import 'package:flutter_mvvm/data/remote/api/blogs_api.dart';
import 'package:flutter_mvvm/data/remote/network/api_helper.dart';

import 'package:http/http.dart' as http;

class BlogApiImpl extends BlogApi{
  @override
  Future<BlogsResponse> fetchBlog() async{
    var response = await http.get(AppConfig.apiUrl("db"));
    return BlogsResponse.fromJson(response.jsonBody());
  }

}