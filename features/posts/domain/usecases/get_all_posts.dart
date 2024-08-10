import '../../data/model/post_model.dart';
import '../repository/post_repository.dart';

class GetAllPosts {
  final PostRepository postRepository;
  const GetAllPosts(this.postRepository);
  List<PostModel> call() {
    return postRepository.getAllPosts();
  }
}
