import '../../data/model/post_model.dart';

abstract class PostRepository {
  // CRUD
  List<PostModel> getAllPosts ();
  PostModel getPost(int id);
  void addPost(PostModel post);
  void deletePost(int id);
  void updatePost(PostModel post);
}