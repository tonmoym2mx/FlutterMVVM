import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/model/blogs_response.dart';

class PageDetails extends StatefulWidget {
  late Blogs blogs;
  PageDetails(this.blogs);

  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(title: Text(widget.blogs.title ?? "")),
      body: Container(
        width: size.width,
        child: Column(
          children: [
            Container(
                width: size.width,
                height: 120,
                child: Icon(Icons.access_alarm)
            ),
            Text(widget.blogs.title ?? "",style: TextStyle(fontSize: 30)),
            Text(widget.blogs.author?.name ?? "",style: TextStyle(fontSize: 20))
          ],
        ),
      ),
      
    );
  }
}
