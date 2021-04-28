import 'package:flutter_mvvm/data/model/blogs_response.dart';
import 'package:flutter_mvvm/data/remote/api/blogs_api_impl.dart';
import 'package:flutter_mvvm/data/repositories/blog_repositories.dart';

class BlogRepositoriesImpl extends BlogRepositories{
  late BlogApiImpl _blogApiImpl;
  BlogRepositoriesImpl(this._blogApiImpl);

  @override
  Future<BlogsResponse> fetchBlog() async {
    return await _blogApiImpl.fetchBlog();
  }

}