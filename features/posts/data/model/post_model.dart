import '../../domain/entity/post.dart';

class PostModel extends Post{
  PostModel(
      {super.id,
      required super.title,
      required super.body});

  factory PostModel.fromJson(Map<String , dynamic> data){
    return PostModel(
      id: data['id'],
      title: data['title'],
      body: data['body']
    );
  }

    Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
@override
  String toString() {
    // TODO: implement toString
    return "Post: id:${super.id} , title:${super.title} , body:${super.body} \n";
  }
}
