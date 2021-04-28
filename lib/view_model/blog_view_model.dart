import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/model/blogs_response.dart';
import 'package:flutter_mvvm/data/remote/api/blogs_api_impl.dart';
import 'package:flutter_mvvm/data/repositories/blog_repositories_impl.dart';

class BlogViewModel extends ChangeNotifier{
  late BlogRepositoriesImpl blogRepositories;
  late List<String>? blogNames;

  Future<void> loadBlogs() async {
    var blogs = await BlogRepositoriesImpl(BlogApiImpl()).fetchBlog();
    if(blogs.blogs !=null){
      blogNames = blogs.blogs?.map((e) => "EX ${e.title}").toList();
    }
  }
  Future<void> fetchBlog() async => await BlogRepositoriesImpl(BlogApiImpl()).fetchBlog();
}