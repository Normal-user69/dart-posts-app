import '../../data/model/post_model.dart';
import '../repository/post_repository.dart';

class AddPost {
  final PostRepository postRepository;
  const AddPost(this.postRepository);

  void call (PostModel post) {
    postRepository.addPost(post);
  }
}