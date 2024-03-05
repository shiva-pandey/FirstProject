import 'package:gym/block_api/fetch_post.dart';

abstract class PostState{}

class PostLoadingState extends PostState{}

class PostLoadedState extends PostState{
  List<PostModel> posts;               // it takes list of modelclass
   PostLoadedState(this.posts);
}
class PostErrorState extends PostState{
  final String error;
  PostErrorState(this.error);
}