import 'package:flutter_mvvm/data/model/blogs_response.dart';

abstract class BlogRepositories{
  Future<BlogsResponse> fetchBlog();
}