import 'dart:convert';

//import 'package:social_app/feeds/post.dart';

class Post{
  int id;
  String title;
  Post({
    required this.id,
    required this.title,
});
  Post copyWith({
    int? id,
    String? title,
  }){
    return Post(
        id: id ?? this.id,
        title: title ?? this.title
    );
  }
  Map<String,dynamic> toMap(){
    return{
      'id':id,
      'title':title,
    };
  }
factory Post.fromMap(Map<String,dynamic>map){
    return Post(
      id: map['id'],
      title: map['title']
    );
}
// String toJson()=>json.encode(toMap());
//   factory Post.fromJson(String source)=>Post.fromMap(json.decode(
// @override
//
//   String toString()=>'Post(id: $id, title: $title)';
// @override
//   ));



}



