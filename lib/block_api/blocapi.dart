import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block_api/fetch_post.dart';
import 'package:gym/block_api/post_state.dart';

 //  import 'package:http/http.dart';

class PostCubit extends Cubit<PostState>{

PostCubit() : super(PostLoadingState()){fetchPosts();}

 // FetchClass fetchClass = FetchClass();

void fetchPosts()async{

try { 
 List<PostModel> posts = await FetchClass().fetchPosts();
 
 emit(PostLoadedState(posts));
  
} catch (error) {
  emit(PostErrorState(error.toString()));
  
}

}
 
}