import 'dart:convert';

import '../../../../core/mixins.dart';
import '../model/post_model.dart';

class PostRemoteData with GenerateId<PostModel> {
  static String posts = '';

  List<PostModel> getAllPosts () {
    if(posts.isEmpty){
      print("Sorry No Data Added yet :( ");
      return [];
    }
    List<dynamic> data = jsonDecode(posts);
    print(data);
    return data.map<PostModel>((post)=>PostModel.fromJson(post)).toList();
  }

    List<PostModel> _getAllPosts () {
    if(posts.isEmpty){
      return [];
    }
    List<dynamic> data = jsonDecode(posts);
    return data.map<PostModel>((post)=>PostModel.fromJson(post)).toList();
  }

  PostModel getPost(int id) {
    List<PostModel> data = _getAllPosts();
    try{
    PostModel post = data.firstWhere((post) => post.id == id);
    print(post);
        return data.firstWhere((post) => post.id == id);
    }catch(e){
      print("no post found with this id");
    return PostModel(id: -1, title: "", body: "");
    }
  }
  void addPost(PostModel post) {
    List<PostModel> data = _getAllPosts();
    post.id = getId(data);
    data.add(post);
    posts = jsonEncode(data);
    print('Post is added');
  }
  void updatePost(PostModel post) {
    List<PostModel> data = _getAllPosts();
    data = data.map<PostModel>((p) {
      if(p.id == post.id) {
        return post;
      }
      return p;
    }).toList();
    posts = jsonEncode(data);
    print('post is updated');
  }

  void deletePost(int id) {
    List<PostModel> data = _getAllPosts();
    data.removeWhere((post) => post.id == id);
    posts = jsonEncode(data);
    print('post is deleted');
  }
}