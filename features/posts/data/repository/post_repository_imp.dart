import '../../domain/repository/post_repository.dart';
import '../data_source/post_remote_data.dart';
import '../model/post_model.dart';

class PostRepositoryImp implements PostRepository {
  PostRemoteData postRemoteData;
  PostRepositoryImp(this.postRemoteData);
  List<PostModel> getAllPosts () {
    return postRemoteData.getAllPosts();
  }
  PostModel getPost(int id) {
    return postRemoteData.getPost(id);
  }
  void addPost(PostModel post) {
    postRemoteData.addPost(post);
  }
  void updatePost(PostModel post) {
    postRemoteData.updatePost(post);
  }
  void deletePost(int id) {
    postRemoteData.deletePost(id);
  }
}