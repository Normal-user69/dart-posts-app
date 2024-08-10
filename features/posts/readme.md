# Project Architecture

> posts
> > domain
> > > entity
> > > > post.dart > Post [id?, title, body] 
> > > repository
> > > > post_repository.dart abstract
> List<Post> getAllPosts()
> Post getPost(int id)
> void addPost(Post post)
> void updatePost(Post post)
> void deletePost(int id)
> > > usecases
> get_all_posts.dart
> class GetAllPosts > PostRepository 
> List<Post> call() {
>   return postRepository.;
> }
> > data
> > > Future
> > > api
> > > Dio
> > > PostModel [NamedConstructor, factory]
> > presentation