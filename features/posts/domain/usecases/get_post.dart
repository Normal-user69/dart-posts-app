import '../../data/model/post_model.dart';
import '../repository/post_repository.dart';

class GetPost {
  final PostRepository postRepository;
  const GetPost(this.postRepository);
  PostModel call(int id) {
    return postRepository.getPost(id);
  }
}