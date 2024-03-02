import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block_api/blocapi.dart';
import 'package:gym/block_api/post_state.dart';
 // import 'package:gym/block_api/fetch_post.dart';


class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}
class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("POST From API")),
      body: SafeArea(child: BlocBuilder<PostCubit,PostState>(
        builder: (context,state){
           if(state is PostLoadingState){ return  Center(child: CircularProgressIndicator());}
           if(state is PostLoadedState){
            return 
             ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text({state.posts[index].title}.toString()),
                );
              });    
           } return Center(child: Text("error"),);
        })
      ),
    );
  }
}