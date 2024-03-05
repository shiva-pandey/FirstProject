import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block_api/fetch_post.dart';
import 'package:gym/block_api/post_state.dart';

 //  import 'package:http/http.dart';

class PostCubit extends Cubit<PostState>{
final FetchClass  fetchClass ;
PostCubit(this.fetchClass) : super(PostLoadingState()); // it takes fetch class 

Future<void> fetchPosts()async{
try { 
 List<PostModel> posts = await fetchClass.fetchPosts();
 emit(PostLoadedState(posts));
} catch (error) {
  emit(PostErrorState(error.toString())); 
}}}