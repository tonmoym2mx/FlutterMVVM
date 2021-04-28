/// blogs : [{"id":1,"title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry","description":"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum","cover_photo":"https://i.picsum.photos/id/579/200/300.jpg?hmac=9MD8EV4Jl9EqKLkTj5kyNdBUKQWyHk2m4pE4UCBGc8Q","categories":["Business","Lifestyle"],"author":{"id":1,"name":"John Doe","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}},{"id":2,"title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry 2","description":"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum 2","cover_photo":"https://i.picsum.photos/id/608/200/300.jpg?hmac=b-eDmVyhr3rI_4k3z2J_PNwOxEwSKa5EDC9uFH4jERU","categories":["Entertainment","Lifestyle"],"author":{"id":2,"name":"John Snow","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}},{"id":3,"title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry","description":"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum","cover_photo":"https://i.picsum.photos/id/579/200/300.jpg?hmac=9MD8EV4Jl9EqKLkTj5kyNdBUKQWyHk2m4pE4UCBGc8Q","categories":["Productivity","Lifestyle"],"author":{"id":1,"name":"John Doe","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}},{"id":4,"title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry","description":"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum","cover_photo":"https://i.picsum.photos/id/579/200/300.jpg?hmac=9MD8EV4Jl9EqKLkTj5kyNdBUKQWyHk2m4pE4UCBGc8Q","categories":["Business","Lifestyle"],"author":{"id":1,"name":"John Doe","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}},{"id":5,"title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry","description":"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum","cover_photo":"https://i.picsum.photos/id/579/200/300.jpg?hmac=9MD8EV4Jl9EqKLkTj5kyNdBUKQWyHk2m4pE4UCBGc8Q","categories":["Business","Lifestyle"],"author":{"id":1,"name":"John Doe","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}}]

class BlogsResponse {
  List<Blogs>? _blogs;

  List<Blogs>? get blogs => _blogs;

  BlogsResponse({
      List<Blogs>? blogs}){
    _blogs = blogs;
}

  BlogsResponse.fromJson(dynamic json) {
    if (json["blogs"] != null) {
      _blogs = [];
      json["blogs"].forEach((v) {
        _blogs?.add(Blogs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_blogs != null) {
      map["blogs"] = _blogs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// title : "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
/// description : "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum"
/// cover_photo : "https://i.picsum.photos/id/579/200/300.jpg?hmac=9MD8EV4Jl9EqKLkTj5kyNdBUKQWyHk2m4pE4UCBGc8Q"
/// categories : ["Business","Lifestyle"]
/// author : {"id":1,"name":"John Doe","avatar":"https://i.pravatar.cc/250","profession":"Content Writer"}

class Blogs {
  int? _id;
  String? _title;
  String? _description;
  String? _coverPhoto;
  List<String>? _categories;
  Author? _author;

  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get coverPhoto => _coverPhoto;
  List<String>? get categories => _categories;
  Author? get author => _author;

  Blogs({
      int? id, 
      String? title, 
      String? description, 
      String? coverPhoto, 
      List<String>? categories, 
      Author? author}){
    _id = id;
    _title = title;
    _description = description;
    _coverPhoto = coverPhoto;
    _categories = categories;
    _author = author;
}

  Blogs.fromJson(dynamic json) {
    _id = json["id"];
    _title = json["title"];
    _description = json["description"];
    _coverPhoto = json["cover_photo"];
    _categories = json["categories"] != null ? json["categories"].cast<String>() : [];
    _author = json["author"] != null ? Author.fromJson(json["author"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["title"] = _title;
    map["description"] = _description;
    map["cover_photo"] = _coverPhoto;
    map["categories"] = _categories;
    if (_author != null) {
      map["author"] = _author?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "John Doe"
/// avatar : "https://i.pravatar.cc/250"
/// profession : "Content Writer"

class Author {
  int? _id;
  String? _name;
  String? _avatar;
  String? _profession;

  int? get id => _id;
  String? get name => _name;
  String? get avatar => _avatar;
  String? get profession => _profession;

  Author({
      int? id, 
      String? name, 
      String? avatar, 
      String? profession}){
    _id = id;
    _name = name;
    _avatar = avatar;
    _profession = profession;
}

  Author.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _avatar = json["avatar"];
    _profession = json["profession"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["avatar"] = _avatar;
    map["profession"] = _profession;
    return map;
  }

}