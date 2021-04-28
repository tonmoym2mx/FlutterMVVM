import 'package:flutter_mvvm/data/model/blogs_response.dart';
import 'package:http/http.dart' as http;

abstract class BlogApi{
  Future<BlogsResponse> fetchBlog() ;
}