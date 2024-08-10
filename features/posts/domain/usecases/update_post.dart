import '../../data/model/post_model.dart';
import '../repository/post_repository.dart';

class UpdatePost {
  final PostRepository postRepository;
  const UpdatePost(this.postRepository);

  void call (PostModel post) {
    postRepository.updatePost(post);
  }
}