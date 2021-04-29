import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/model/blogs_response.dart';
import 'package:flutter_mvvm/data/remote/api/blogs_api_impl.dart';
import 'package:flutter_mvvm/data/repositories/blog_repositories_impl.dart';
import 'package:flutter_mvvm/view/screens/details_page.dart';
import 'package:flutter_mvvm/view_model/blog_view_model.dart';
import 'package:provider/provider.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  Future<BlogsResponse> blogs() async => await BlogRepositoriesImpl(BlogApiImpl()).fetchBlog();
  //BlogViewModel viewModel() => Provider.of<BlogViewModel>(context) ;
  @override
  void initState() {
    super.initState();
    //viewModel();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("List"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: FutureBuilder(
          future:blogs(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              var listOfBlog = (snapshot.data as BlogsResponse).blogs;
              return ListView.builder(
                   itemCount: listOfBlog?.length ?? 0,
                   itemBuilder: (BuildContext context, int index){
                     var blog = listOfBlog?[index];
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PageDetails(blog!)
                    ));
                  },
                  leading: Icon(Icons.access_alarm) ,
                  title:Text(blog?.title ?? ""),
                  subtitle: Text(blog?.author?.name ?? ""),
                );
              });
            }else{
              return Container(child: Center(child: Text("Loading..")),);
            }
          },
        ),
      ),
    );
  }
}
