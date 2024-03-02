import 'package:gym/block_api/fetch_post.dart';

abstract class PostState{}

class PostLoadingState extends PostState{}

class PostLoadedState extends PostState{
late  List<PostModel> posts;
   PostLoadedState(this.posts);
}
class PostErrorState extends PostState{
  final String error;
  PostErrorState(this.error);
}